package cz.muni.fi.pb138.visualizator.web;

import cz.muni.fi.pb138.visualizator.transformer.BoardType;
import cz.muni.fi.pb138.visualizator.transformer.XMLTools;

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

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {

        //retrieving type of a board
        String board = httpServletRequest.getParameter("doska");

        httpServletResponse.setContentType("text/html");

        //direcotry for this page's files
        //(new File(dirPath)).mkdir();

        Part filePart = httpServletRequest.getPart("file");
        PrintWriter writer = httpServletResponse.getWriter();

        String fileName = getFileName(filePart);
        //path to file saved
        String filePath = System.getProperty("catalina.base") + File.separator + fileName;
        //path to output file
        String outFilePath = System.getProperty("catalina.base") + File.separator + "output.svg";

        //"saving" file to server
        try (OutputStream out = new FileOutputStream(new File(filePath));
             InputStream fileContent = filePart.getInputStream()) {

            int read;
            final byte[] buffer = new byte[1024];

            while ((read = fileContent.read(buffer)) != -1) {
                out.write(buffer, 0, read);
            }
        } catch (FileNotFoundException ex) {
            writer.write("You either did not specify a file to upload " +
                    "or are trying to upload a file to a protected or " +
                    "nonexistent location.");
            writer.write("</br> ERROR: " + ex.getMessage());
        }

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

        //cleaning up the mess
        new File(outFilePath).delete();
        new File(filePath).delete();
    }

    private String getFileName(final Part filePart) {
        final String partHeader = filePart.getHeader("content-disposition");
        for (String content : partHeader.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
