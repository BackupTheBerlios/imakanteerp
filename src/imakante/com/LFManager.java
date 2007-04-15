
package imakante.com;

import it.businesslogic.ireport.util.Java2DUtil;
import java.io.FileNotFoundException;

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
    
    
    
    private static final String SYSTEM_LAF = javax.swing.UIManager.getSystemLookAndFeelClassName();
    
    private javax.swing.JMenu jmLF = new javax.swing.JMenu();
    javax.swing.JCheckBoxMenuItem jcbmiX;
    
    private String currentLookAndFeel = "";
    
    private void CheckOutCurrentLookAndFeel() {
        
        
        java.util.Properties p = new java.util.Properties();
        try {
            java.io.FileInputStream fist = new java.io.FileInputStream(pubMain.getPropFile());
            try {
                p.loadFromXML(fist);
                setCurrentLookAndFeel(String.valueOf(p.getProperty("CurrentLookAndFeel")));
                fist.close();
            } catch (java.io.IOException ex) { ex.printStackTrace(); }
        } catch (java.io.FileNotFoundException ex) { ex.printStackTrace(); }
        
        // TODO da se otbeleji w konstruiranoto meniu, koi e prilojeniqt look and feel!!!!
        
    }
    
    private void CheckInSelectedLookAndFeel() {
        
        
        // TODO da se wzeme izbranata temai da se zapi6e stojnostta (imeto na klasa) w imakante.xml: CurrentLookAndFeel
        
        
        
    }
    
    private void ExtractAvailableLookAndFeels() {
        try {
            java.io.FileInputStream alafs = new java.io.FileInputStream(pubMain.getAvailableLAFsFile());
            org.jdom.Document ajd = new org.jdom.Document();
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        }
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
        
        // TODO da se izwlekat temite ot available_lafs.xml w HashMap i po nego da se postroi meniuto (Array ot JCheckBoxMenuItem(s))
        
        
    }
    
    private void jcbmiXActionPerformed(java.awt.event.ActionEvent evt) {
        
    }
    
    private void LookAndFeelChooser() {
        CheckOutCurrentLookAndFeel();
        try {
//            javax.swing.UIManager.setLookAndFeel(SYSTEM_LAF);
            javax.swing.UIManager.setLookAndFeel(getCurrentLookAndFeel());
            
        } catch(Exception ex) { ex.printStackTrace(); }
    }
    
    public String getCurrentLookAndFeel() {
        return currentLookAndFeel;
    }
    
    public void setCurrentLookAndFeel(String currentLookAndFeel) {
        this.currentLookAndFeel = currentLookAndFeel;
    }
    
}
