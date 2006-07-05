
package imakante.com;
import java.io.IOException;
import org.jdesktop.swingx.util.MailTransportProxy;
import org.jdesktop.jdic.desktop.Message;
import org.jdesktop.jdic.desktop.Desktop;
import org.jdesktop.jdic.desktop.DesktopException;

public class ErrorMailTransport implements MailTransportProxy{
    
    public ErrorMailTransport() {
    }
    public void mailMessage(java.util.List toAddr,
            java.util.List ccAddr,
            String subject, String body,
            java.util.List attach) throws Error {
        Error result = null;
        
        Message msg = new Message();
        msg.setToAddrs(toAddr);
        msg.setCcAddrs(ccAddr);
        msg.setSubject(subject);
        msg.setBody(body);
        try {
            msg.setAttachments(attach);
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Desktop.mail(msg);
        } catch (DesktopException e) {
            result = new Error(e);
            result.setStackTrace(Thread.currentThread().getStackTrace());
            throw result;
        }
    }
}
