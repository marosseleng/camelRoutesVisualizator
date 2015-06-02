package cz.muni.fi.pb138.visualizator;

import javax.xml.transform.TransformerException;

/**
 * Demo class
 *
 * @author <a href="mailto:xseleng@fi.muni.cz">Maros Seleng</a>
 */
public class Demo {
    public static void main(String[] args) throws TransformerException {
        XSLTProcessor.transformRoute("src/main/resources/routes/test01.xml", "src/main/resources/out/output.svg", BoardType.RASPBERRY_PI);
    }
}
