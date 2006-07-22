
package imakante.com;

public class InputPriceVerifier extends InputDoubleVerifier {
    
    public InputPriceVerifier() {
        super();
    }
    
    public boolean verify(javax.swing.JComponent input) {
        javax.swing.JTextField tf = (javax.swing.JTextField) input;
        double price = Double.parseDouble(tf.getText());
        if (price <= 0) 
            return false;
        else
            return true;
    }
}
