
package imakante.com;

public class MessagePane {
    
    // custom Error Message panes
    public static final void Error(String message) {
        javax.swing.JOptionPane.showMessageDialog(null, message, 
                "\u0418\u041C\u0410\u041A\u0410\u041D\u0422\u0415 - \u0413\u0420\u0415\u0428\u041A\u0410", // IMAKANTE-GRE6KA
                javax.swing.JOptionPane.ERROR_MESSAGE);
    }
    
    public static final void Error(String title, String message) {
        javax.swing.JOptionPane.showMessageDialog(null, message, title, javax.swing.JOptionPane.ERROR_MESSAGE);
    }
    
    // custom Warning Message pane
    
    // custom Info panes
    
}
