

package imakante.salary;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import javax.swing.JFrame;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.view.JRViewer;

public class frmFishPrev extends javax.swing.JDialog {
    
    public frmFishPrev(JFrame OwnerForm,java.sql.Connection dbCon, int tYear, int tMonth, String FName, int NL) {
        super(OwnerForm, true);
        dbInternal = dbCon;
        lYear = tYear;
        lMonth = tMonth;
        fName = FName;dbInternal = dbCon;
        lYear = tYear;
        lMonth = tMonth;
        fName = FName;
        if (NL != 0){
            String freport = "c:/fishove.jasper";
            
            reportParam = new HashMap();
            
            try{
                fs = new FileInputStream(freport);
            } catch (java.io.FileNotFoundException  ioex){
                System.out.println("Ne moga da nameria faila  ");
            }
            
            
            try {
                reportParam.put("name", fName);
                reportParam.put("lmonth", lMonth);
                reportParam.put("lyear", lYear);
                reportParam.put("id", NL);
                template = JasperManager.loadReport(fs);
                JasperPrint print1 = JasperFillManager.fillReport(template,reportParam, dbInternal);
                JRViewer jrv = new JRViewer(print1);
                //jrv.setSize(490, 490);
                //jrv.setVisible(true);
                
            } catch (JRException jrev){
                
                jrev.printStackTrace();
            }
        } else {
            
        }
        
        initComponents();
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.add(jrv, -1);
        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    public int lYear;
    public int lMonth;
    InputStream fs = null;
    JasperReport template = null;
    HashMap reportParam;
    String fName;
    java.sql.Connection dbInternal;
    JRViewer jrv;
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
    
}
