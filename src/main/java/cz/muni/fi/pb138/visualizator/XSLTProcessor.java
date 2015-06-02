package cz.muni.fi.pb138.visualizator;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;

/**
 * Class, with main method that transform file set as 2nd argument,
 * into file set as 3rd argument, using xsl file set as 1st argument
 *
 * @author <a href="mailto:xseleng@fi.muni.cz">Maros Seleng</a>
 */
public class XSLTProcessor {

    private static final String CUBIE = "src/main/resources/xslt/cubieboard.xsl";
    private static final String RASPBERRY = "src/main/resources/xslt/raspberrypi.xsl";
    private static final String BEAGLE = "src/main/resources/xslt/";
    private static final String COMMON = "src/main/resources/xslt/common.xsl";
    private static final TransformerFactory FACTORY = TransformerFactory.newInstance();

    /**
     * Creates svg file with path on selected board
     *
     * @param inFilePath  path to input xml file
     * @param outFilePath path, where to store generated svg file
     * @param boardType   type of board
     * @throws TransformerException
     */
    public static void transformRoute(String inFilePath, String outFilePath, BoardType boardType) throws TransformerException {

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
}
