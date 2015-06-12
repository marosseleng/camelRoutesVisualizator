package cz.muni.fi.pb138.visualizator.web;

import cz.muni.fi.pb138.visualizator.transformer.BoardType;
import cz.muni.fi.pb138.visualizator.transformer.XMLToolkit;
import cz.muni.fi.pb138.visualizator.util.SpringTransformerException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.xml.transform.TransformerException;
import java.io.*;


/**
 * Servlet handling uploading file from client to a server
 *
 * @author <a href="mailto:xseleng@fi.muni.cz">Maros Seleng</a>
 */
@WebServlet(name = "FileUploadServlet", urlPatterns = "/transform")
@MultipartConfig
public class FileUploadServlet extends HttpServlet {

    private static final XMLToolkit TOOLKIT = new XMLToolkit();
    private String inFileField;
    private String outFileField;

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {

        //data from editor
        String stringFromEditor = httpServletRequest.getParameter("editor");

        //type of a board
        String board = httpServletRequest.getParameter("doska");

        //file uploaded to server
        Part filePart = httpServletRequest.getPart("file");

        //setting up response
        httpServletResponse.setContentType("text/html");
        PrintWriter writer = httpServletResponse.getWriter();

        //name of input file
        String fileName;

        if (stringFromEditor.length() != 0) {
            //if loaded from editor, name it testFile.xml
            fileName = "testFile.xml";
        } else {
            //if uploaded by user, auto-determine name
            fileName = getFileName(filePart);
        }

        //path to file saved
        String filePath = System.getProperty("catalina.base") + File.separator + fileName;

        if (stringFromEditor.length() == 0) {

            try {
                //"saving" uploaded file to server
                saveUploadedFile(filePart, filePath);
            } catch (SpringTransformerException ex) {
                writer.write("You either did not specify a file to upload " +
                        "or are trying to upload a file to a protected or " +
                        "nonexistent location.");
                writer.write("</br> ERROR: " + ex.getMessage());
            }
        } else {
            try {
                //saving file from editor
                saveFileFromEditor(stringFromEditor, filePath);
            } catch (SpringTransformerException ex) {
                writer.write("An error occurred while saving a file from editor.</br>");
                writer.write("ERROR: " + ex.getMessage());
            }
        }

        //path to output file
        String outFilePath = System.getProperty("catalina.base") + File.separator + "output.svg";

        if (!TOOLKIT.validateRoute(filePath)) {
            writer.write("Uploaded file is not valid. Upload valid xml file containing spring route.");
        } else {

            //transforming
            BoardType boardType;
            try {
                switch (board) {
                    case "common":
                        boardType = BoardType.COMMON;
                        break;
                    case "cubie":
                        boardType = BoardType.CUBIEBOARD;
                        break;
                    case "raspberry":
                        boardType = BoardType.RASPBERRY_PI;
                        break;
                    case "beaglebone":
                        boardType = BoardType.BEAGLEBONE;
                        break;
                    default:
                        boardType = BoardType.COMMON;
                        break;
                }
                TOOLKIT.transformRoute(filePath, outFilePath, boardType);
            } catch (TransformerException ex) {
                writer.println("The transformation could not have been proceeded." + ex.getMessage());
            }

            writeToResponse(writer, outFilePath);

            //cleaning up the mess
            inFileField = filePath;
            outFileField = outFilePath;
        }
    }

    @Override
    public void destroy() {
        System.err.println(new File(inFileField).delete());
        System.err.println(new File(outFileField).delete());
    }

    /**
     * Returns name of uploaded file
     *
     * @param filePart part of request containing file
     * @return name of the uploaded file
     */
    private String getFileName(final Part filePart) {
        final String partHeader = filePart.getHeader("content-disposition");
        for (String content : partHeader.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }

    /**
     * Handles saving file from web editor
     *
     * @param editorData   string, loaded from editor
     * @param fileToCreate path to file, where to save data from editor
     * @throws SpringTransformerException
     */
    private void saveFileFromEditor(String editorData, String fileToCreate) throws SpringTransformerException {
        BufferedWriter bufferedWriter = null;
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(new File(fileToCreate)));
            bufferedWriter.write(editorData);
        } catch (IOException ex) {
            throw new SpringTransformerException(ex);
        } finally {
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.close();
                } catch (IOException ex) {
                    System.err.println(ex.getMessage());
                }
            }
        }
    }

    /**
     * Handles saving uploaded file
     *
     * @param filePart     part of request containing file
     * @param fileToCreate path to file, where to save uploaded file
     * @throws SpringTransformerException
     */
    private void saveUploadedFile(Part filePart, String fileToCreate) throws SpringTransformerException {
        OutputStream out = null;
        InputStream fileContent = null;
        try {
            out = new FileOutputStream(new File(fileToCreate));
            fileContent = filePart.getInputStream();

            int read;
            final byte[] BUFFER = new byte[1024];

            while ((read = fileContent.read(BUFFER)) != -1) {
                out.write(BUFFER, 0, read);
            }
        } catch (IOException ex) {
            throw new SpringTransformerException(ex);
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (IOException ex) {
                    System.err.println(ex.getMessage());
                }
            }
            if (fileContent != null) {
                try {
                    fileContent.close();
                } catch (IOException ex) {
                    System.err.println(ex.getMessage());
                }
            }

        }
    }

    /**
     * Writes output svg file to http response
     *
     * @param writer      PrintWriter object, where to write svg file
     * @param svgFilePath svg file to be written
     * @throws IOException
     */
    private void writeToResponse(PrintWriter writer, String svgFilePath) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(svgFilePath)));
        //writing response (svg file)
        String input;
        while ((input = bufferedReader.readLine()) != null) {
            writer.write(input);
        }

    }
}
