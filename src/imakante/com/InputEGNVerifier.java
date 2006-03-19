
package imakante.com;

public class InputEGNVerifier extends javax.swing.InputVerifier {
    
    public InputEGNVerifier() {
        super();
    }
    
    public boolean verify(javax.swing.JComponent input) {
        boolean checkSymbol = false;
        javax.swing.JTextField tf = (javax.swing.JTextField) input;
        String EGN = tf.getText();
        if (EGNChecker.ValidEGN(EGN)) {
            checkSymbol = true;
        } else {
            checkSymbol = false;
        }
        return checkSymbol;
    }
    
}
