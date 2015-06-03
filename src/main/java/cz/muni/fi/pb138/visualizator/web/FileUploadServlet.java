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
@WebServlet(name = "FileUploadServlet", urlPatterns = "/FileUploadServlet")
@MultipartConfig
public class FileUploadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        processRequest(httpServletRequest, httpServletResponse);
    }

    protected void processRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException, ServletException {

        httpServletResponse.setContentType("text/html");


        final String dirPath = System.getProperty("catalina.home") + File.separator + "webapps" + File.separator + "visualizator";

        //direcotry for this page's files
        (new File(dirPath)).mkdir();

        final Part filePart = httpServletRequest.getPart("file");
        final PrintWriter writer = httpServletResponse.getWriter();
        final String fileName = getFileName(filePart);
        final String filePath = dirPath + File.separator + fileName;

        try (OutputStream out = new FileOutputStream(new File(filePath));
             InputStream fileContent = filePart.getInputStream()) {

            int read;
            final byte[] buffer = new byte[1024];

            while ((read = fileContent.read(buffer)) != -1) {
                out.write(buffer, 0, read);
            }
            writer.println("File saved: " + filePath);
        } catch (FileNotFoundException ex) {
            writer.println("You either did not specify a file to upload " +
                    "or are trying to upload a file to a protected or " +
                    "nonexistent location.");
            writer.println("</br> ERROR: " + ex.getMessage());
        }

        try {
            XMLTools.transformRoute(dirPath + File.separator + "test01.xml", dirPath + File.separator + "output.svg", BoardType.RASPBERRY_PI);
        } catch (TransformerException ex) {
            writer.println("The transformation could not have been proceeded." + ex.getMessage());
        }
        writer.write("<h1> NADPIS </h1>");
        writer.close();
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
