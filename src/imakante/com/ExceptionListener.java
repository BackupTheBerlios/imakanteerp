package imakante.com;

import java.util.EventListener;

public interface ExceptionListener extends EventListener {
    public void exceptionGenerated(ExceptionEvent ex);
}