package cz.muni.fi.pb138.visualizator.transformer;

import javax.xml.transform.TransformerException;
import java.io.IOException;

/**
 * Demo class
 * Transforms file test01.xml into a file output.svg
 *
 * @author <a href="mailto:xseleng@fi.muni.cz">Maros Seleng</a>
 */
public class Demo {
    public static void main(String[] args) throws TransformerException, IOException {
        new XMLTools().transformRoute("src/main/resources/routes/test01.xml", "src/main/resources/out/output.svg", BoardType.RASPBERRY_PI);
    }
}
