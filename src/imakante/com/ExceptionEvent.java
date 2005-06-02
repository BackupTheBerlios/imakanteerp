package imakante.com;


import java.util.EventObject;



public class ExceptionEvent extends EventObject {
    String ExceptionMessage;
    
    // source cannot be null
    public ExceptionEvent(Object source, String exceptionMessage) {
        super(source);
        ExceptionMessage = exceptionMessage;
    }
    
    public String getMessage() {
        return ExceptionMessage;
    }
    
    /*
     * Override the super class's toString() method
     */
    public String toString() {
        return ExceptionMessage;
    }
}
