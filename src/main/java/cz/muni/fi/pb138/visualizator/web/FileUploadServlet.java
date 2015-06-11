package cz.muni.fi.pb138.visualizator.web;

import cz.muni.fi.pb138.visualizator.transformer.BoardType;
import cz.muni.fi.pb138.visualizator.transformer.XMLTools;
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

    private String inFileField;
    private String outFileField;

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {

        //data from editor
        String stringFromEditor = httpServletRequest.getParameter("editor");

        //retrieving type of a board
        String board = httpServletRequest.getParameter("doska");

        httpServletResponse.setContentType("text/html");
        PrintWriter writer = httpServletResponse.getWriter();

        //file uploaded to server
        Part filePart = httpServletRequest.getPart("file");

        String fileName;

        if (stringFromEditor.length() != 0) {
            fileName = "testFile.xml";
        } else {
            fileName = getFileName(filePart);
        }

        //path to file saved
        String filePath = System.getProperty("catalina.base") + File.separator + fileName;

        if (stringFromEditor.length() == 0) {

            try {
                //"saving" file to server
                saveUploadedFile(filePart, new File(filePath));
            } catch (SpringTransformerException ex) {
                writer.write("You either did not specify a file to upload " +
                        "or are trying to upload a file to a protected or " +
                        "nonexistent location.");
                writer.write("</br> ERROR: " + ex.getMessage());
            }
        } else {
            try {
                saveFileFromEditor(stringFromEditor, new File(filePath));
            } catch (SpringTransformerException ex) {
                ex.printStackTrace();
            }
        }

        //path to output file
        String outFilePath = System.getProperty("catalina.base") + File.separator + "output.svg";

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
            new XMLTools().transformRoute(filePath, outFilePath, boardType);
        } catch (TransformerException ex) {
            writer.println("The transformation could not have been proceeded." + ex.getMessage());
        }

        //writing response (svg file)
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(outFilePath)));

        String input;
        while ((input = bufferedReader.readLine()) != null) {
            writer.write(input);
        }
        writer.close();
        bufferedReader.close();

        //cleaning up the mess
        inFileField = filePath;
        outFileField = outFilePath;
    }

    @Override
    public void destroy() {
        new File(inFileField).delete();
        new File(outFileField).delete();
    }

    /**
     * @param filePart
     * @return
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
     * @param editorData
     * @param fileToCreate
     * @throws SpringTransformerException
     */
    private void saveFileFromEditor(String editorData, File fileToCreate) throws SpringTransformerException {
        try (BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(fileToCreate))) {
            bufferedWriter.write(editorData);
            bufferedWriter.flush();
        } catch (IOException ex) {
            throw new SpringTransformerException(ex);
        }
    }


    /**
     * @param filePart
     * @param fileToCreate
     * @throws SpringTransformerException
     */
    private void saveUploadedFile(Part filePart, File fileToCreate) throws SpringTransformerException {
        try (OutputStream out = new FileOutputStream(fileToCreate);
             InputStream fileContent = filePart.getInputStream()) {

            int read;
            final byte[] BUFFER = new byte[1024];

            while ((read = fileContent.read(BUFFER)) != -1) {
                out.write(BUFFER, 0, read);
            }
            out.flush();
        } catch (IOException ex) {
            throw new SpringTransformerException(ex);
        }
    }
}
