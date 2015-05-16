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
    public static void main(String[] args) throws TransformerException {
        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer(new StreamSource(new File("src/main/resources/cubieboard.xsl")));
        transformer.transform(new StreamSource(new File("src/main/resources/test01.xml")), new StreamResult(new File("src/main/resources/output.svg")));
        //TODO better use try-catch
    }
}
