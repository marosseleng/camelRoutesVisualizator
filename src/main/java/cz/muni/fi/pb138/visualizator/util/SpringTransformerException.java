package cz.muni.fi.pb138.visualizator.util;

/**
 * Custom exception
 *
 * @author <a href="mailto:xseleng@fi.muni.cz">Maros Seleng</a>
 */
public class SpringTransformerException extends Exception {
    public SpringTransformerException() {
    }

    public SpringTransformerException(String message) {
        super(message);
    }

    public SpringTransformerException(String message, Throwable cause) {
        super(message, cause);
    }

    public SpringTransformerException(Throwable cause) {
        super(cause);
    }
}
