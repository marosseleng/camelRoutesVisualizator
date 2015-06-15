package cz.muni.fi.pb138.visualizator.transformer;

import javax.xml.transform.TransformerException;

/**
 * Demo class
 * Transforms file test_beaglebone.xml into a file output.svg
 *
 * @author <a href="mailto:xseleng@fi.muni.cz">Maros Seleng</a>
 */
public class Demo {
    private static final XMLToolkit TOOLKIT = new XMLToolkit();

    public static void main(String[] args) {
        try {
            if (TOOLKIT.validateRoute("src/main/resources/routes/test_common.xml")) {
                System.out.println("valid");
                TOOLKIT.transformRoute("src/main/resources/routes/test_common.xml", "src/main/resources/out/output.svg", BoardType.COMMON);
            } else {
                throw new AssertionError("This should never occur.");
            }
        } catch (AssertionError | TransformerException ex) {
            System.err.println(ex.getMessage());
        }

    }
}
