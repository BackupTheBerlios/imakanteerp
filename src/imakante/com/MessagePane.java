
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
    public static final void NotYetImplemented() { // message = "Tazi funkcia e w proces na razrabotka"
        javax.swing.JOptionPane.showMessageDialog(null, "\u0422\u0430\u0437\u0438 \u0444\u0443\u043D\u043A\u0446\u0438\u044F \u0435 \u0432 " +
                "\u043F\u0440\u043E\u0446\u0435\u0441 \u043D\u0430 \u0440\u0430\u0437\u0440\u0430\u0431\u043E\u0442\u043A\u0430!", 
                "\u0418\u041C\u0410\u041A\u0410\u041D\u0422\u0415", // IMAKANTE
                javax.swing.JOptionPane.WARNING_MESSAGE);
    }
    
    public static final void NotYetImplemented(String message) {
        javax.swing.JOptionPane.showMessageDialog(null, message, 
                "\u0418\u041C\u0410\u041A\u0410\u041D\u0422\u0415", // IMAKANTE
                javax.swing.JOptionPane.WARNING_MESSAGE);
    }
    
    public static final void MissingData() {    // message = "Ima nepopylneni poleta!"
        javax.swing.JOptionPane.showMessageDialog(null, "\u0418\u043C\u0430 \u043D\u0435\u043F\u043E\u043F\u044A\u043B\u043D\u0435\u043D\u0438 " +
                "\u043F\u043E\u043B\u0435\u0442\u0430!", "\u0418\u041C\u0410\u041A\u0410\u041D\u0422\u0415", // IMAKANTE
                javax.swing.JOptionPane.WARNING_MESSAGE);
    }
    
    public static final void AdminOnly() {      // message = "Tazi funkciq e samo za administrirane!"
        javax.swing.JOptionPane.showMessageDialog(null, "\u0422\u0430\u0437\u0438 \u0444\u0443\u043D\u043A\u0446\u0438\u044F \u0435 " +
                "\u0441\u0430\u043C\u043E \u0437\u0430 \u0430\u0434\u043C\u0438\u043D\u0438\u0441\u0442\u0440\u0438\u0440\u0430\u043D\u0435!", 
                "\u0418\u041C\u0410\u041A\u0410\u041D\u0422\u0415", // IMAKANTE
                javax.swing.JOptionPane.WARNING_MESSAGE);
    }
    
    // custom Info panes
    
}
