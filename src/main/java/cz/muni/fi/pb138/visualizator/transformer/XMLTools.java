package cz.muni.fi.pb138.visualizator.transformer;

import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Class providing methods related to processing of xml files, like validating and transforming
 *
 * @author <a href="mailto:xseleng@fi.muni.cz">Maros Seleng</a>
 */
public class XMLTools {

    private static final TransformerFactory FACTORY = TransformerFactory.newInstance();
    private final String CUBIE = getClass().getResource("/xslt/cubieboard.xsl").getPath();
    private final String RASPBERRY = getClass().getResource("/xslt/raspberrypi.xsl").getPath();
    private final String BEAGLE = getClass().getResource("/xslt/beagleboneblack.xsl").getPath();
    private final String COMMON = getClass().getResource("/xslt/common.xsl").getPath();
    private String error;
    private DocumentBuilder documentBuilder;

    public XMLTools() {
    }

    /**
     * Creates DocumentBuilder and Schema from given schema file name
     *
     * @param schemaName path to xsd file
     * @throws SAXException
     * @throws ParserConfigurationException
     */
    public XMLTools(String schemaName) throws SAXException, ParserConfigurationException {

        SchemaFactory schemaFactory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
        Schema schema = schemaFactory.newSchema(new File(schemaName));

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(false);

        factory.setSchema(schema);
        documentBuilder = factory.newDocumentBuilder();
        documentBuilder.setErrorHandler(new ValidationErrorsHandler());
    }

    /**
     * Creates svg file with path on selected board
     *
     * @param inFilePath  path to input xml file
     * @param outFilePath path, where to store generated svg file
     * @param boardType   type of board
     * @throws TransformerException
     */
    public void transformRoute(String inFilePath, String outFilePath, BoardType boardType) throws TransformerException {

        System.out.println(CUBIE);
        System.out.println(COMMON);
        System.out.println(RASPBERRY);
        System.out.println(BEAGLE);
        Transformer transformer;

        switch (boardType) {
            case BEAGLEBONE:
                transformer = FACTORY.newTransformer(new StreamSource(new File(BEAGLE)));
                break;
            case CUBIEBOARD:
                transformer = FACTORY.newTransformer(new StreamSource(new File(CUBIE)));
                break;
            case RASPBERRY_PI:
                transformer = FACTORY.newTransformer(new StreamSource(new File(RASPBERRY)));
                break;
            default:
                transformer = FACTORY.newTransformer(new StreamSource(new File(COMMON)));
                break;
        }

        transformer.transform(new StreamSource(new File(inFilePath)), new StreamResult(new File(outFilePath)));
    }

    /**
     * Validates given file with route
     *
     * @param routeFile xml file to validate
     * @throws IOException
     * @throws SAXException
     */
    public void validateRoute(String routeFile) throws IOException, SAXException {
        documentBuilder.parse(new File(routeFile));
    }

    /**
     * Error handler for document builder
     */
    class ValidationErrorsHandler implements ErrorHandler {

        @Override
        public void warning(SAXParseException exception) throws SAXException {
            Logger.getAnonymousLogger(getClass().getName()).log(Level.INFO, exception.getMessage());
        }

        @Override
        public void error(SAXParseException exception) throws SAXException {
            error = exception.getMessage();
            throw new SAXException(error);
        }

        @Override
        public void fatalError(SAXParseException exception) throws SAXException {
            error = exception.getMessage();
            throw new SAXException(error);
        }
    }

}
