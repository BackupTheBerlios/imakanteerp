
package imakante.salary;

import java.io.FileInputStream;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperManager;
import net.sf.jasperreports.view.JRViewer;
public class frmPrint extends javax.swing.JDialog {
    java.sql.Connection dbInternal;
    java.util.HashMap reportParam;
    java.io.FileInputStream fs;
    String freport;
    net.sf.jasperreports.engine.JasperReport template;
    net.sf.jasperreports.engine.JasperPrint print1;
    net.sf.jasperreports.view.JRViewer jrv;
    public java.awt.Dimension dim;
    public frmPrint(javax.swing.JFrame parent, boolean modal, java.sql.Connection dbCon, String fileName,
            java.util.HashMap hashM) {
        super(parent, modal);
        
        freport = fileName;
        dbInternal = dbCon;
        reportParam = hashM;
        
        try{
            fs = new FileInputStream(freport);
        } catch (java.io.FileNotFoundException  ioex){
            System.out.println("Ne moga da nameria faila  ");
        }
        
        
        try {
            
            if (reportParam  != null){
                
            }
            //JasperDesign jasperDesign = JRXmlLoader.load("c:/ved3.xml");
            //  JasperReport template= JasperCompileManager.compileReport(jasperDesign);
            template = JasperManager.loadReport(fs);
            print1 = JasperFillManager.fillReport(template,reportParam, dbInternal);
            // report1 = JasperManager.fillReport(report, reportParam, dbInternal);
            
            jrv = new JRViewer(print1);
            
            
            
        } catch (JRException jrev){
            
            
            jrev.printStackTrace();
        }
        
        
        
        
        initComponents();
        dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        this.setSize(dim.width, dim.height);
        int  x = (((dim.width)-(this.getSize().width))/2);
        int  y = (((dim.height)-(this.getSize().height))/2);
       
        this.setLocation(x,y);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();

        setFont(new java.awt.Font("Tahoma", 0, 12));
        setModal(true);
        setTitle("\u041f\u0440\u0438\u043d\u0442\u0438\u0440\u0430\u043d\u0435 \u043f\u0440\u0435\u0437 Jasper");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                closeDialog(evt);
            }
        });

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jrv);
        add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u0417\u0410\u0422\u0412\u041e\u0420\u0418");
        jPanel2.add(jButton1);

        add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    
    private void closeDialog(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_closeDialog
        setVisible(false);
        dispose();
    }//GEN-LAST:event_closeDialog
    
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
    
}
