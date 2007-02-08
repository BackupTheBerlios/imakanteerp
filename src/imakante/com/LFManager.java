
package imakante.com;

public class LFManager {
    
    public LFManager() {
        MenuConstructor();
        LookAndFeelChooser();
    }
    
    public LFManager(javax.swing.JMenu lfMenu) {
        
    }
    
    
    private void CheckDefaultLookAndFeel() {
        
        
        
    }
    
    private void MenuConstructor() {
        
        
        
    }
    
    private void LookAndFeelChooser() {
        String sysLook = javax.swing.UIManager.getSystemLookAndFeelClassName();
        try {
            javax.swing.UIManager.setLookAndFeel(sysLook);
        } catch(Exception ex) { ex.printStackTrace(); }
    }
}
