package cz.muni.fi.pb138.visualizator.transformer;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;

/**
 * Class providing methods related to processing of xml files, like validating and transforming
 *
 * @author <a href="mailto:xseleng@fi.muni.cz">Maros Seleng</a>
 */
public class XMLTools {

    private static final TransformerFactory FACTORY = TransformerFactory.newInstance();
    private final String CUBIE = getClass().getResource("/xslt/cubieboard.xsl").getPath();
    private final String RASPBERRY = getClass().getResource("/xslt/raspberrypi.xsl").getPath();
    private final String BEAGLE = getClass().getResource("/xslt/common.xsl").getPath();
    private final String COMMON = getClass().getResource("/xslt/common.xsl").getPath();

    /**
     * Creates svg file with path on selected board
     *
     * @param inFilePath  path to input xml file
     * @param outFilePath path, where to store generated svg file
     * @param boardType   type of board
     * @throws TransformerException
     */
    public void transformRoute(String inFilePath, String outFilePath, BoardType boardType) throws TransformerException {

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

    //TODO add validating method
}
