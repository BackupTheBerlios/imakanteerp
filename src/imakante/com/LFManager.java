
package imakante.com;

public class LFManager {
    
    public LFManager() {
        MenuConstructor();
        LookAndFeelChooser();
    }
    
    public LFManager(javax.swing.JMenu lfMenu) {
        this.jmLF = lfMenu;
        MenuConstructor();
        LookAndFeelChooser();
        
    }
    
    private javax.swing.JMenu jmLF = new javax.swing.JMenu();
    javax.swing.JCheckBoxMenuItem jcbmiX;
    
    private void CheckDefaultLookAndFeel() {
        
        
        
    }
    
    private void MenuConstructor() {
        
        jcbmiX = new javax.swing.JCheckBoxMenuItem();
        
        jmLF.setText("\u0412\u044a\u043d\u0448\u0435\u043d \u0432\u0438\u0434 \u043d\u0430 \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430");
        jcbmiX.setText("\u041f\u043e \u043f\u043e\u0434\u0440\u0430\u0437\u0431\u0438\u0440\u0430\u043d\u0435");
        jcbmiX.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jcbmiXActionPerformed(evt);
            }
        });
        jmLF.add(jcbmiX);
        
        
        
        
    }
    
    private void jcbmiXActionPerformed(java.awt.event.ActionEvent evt) {
        
    }
    
    private void LookAndFeelChooser() {
        String sysLook = javax.swing.UIManager.getSystemLookAndFeelClassName();
        try {
            javax.swing.UIManager.setLookAndFeel(sysLook);
        } catch(Exception ex) { ex.printStackTrace(); }
    }
}
