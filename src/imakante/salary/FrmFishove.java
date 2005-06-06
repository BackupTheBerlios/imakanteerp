package imakante.salary;

import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.sql.Statement;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.HashMap;
import net.sf.jasperreports.engine.JasperReport;
import java.sql.SQLException;
import javax.swing.JFrame;




public class FrmFishove extends javax.swing.JInternalFrame {
    
    
    public FrmFishove(JFrame getParentFrame, java.sql.Connection dbCon, int tYear, int tMonth, String FName) {
        
        JFParentFrame = getParentFrame;
        dbInternal = dbCon;
        lYear = tYear;
        lMonth = tMonth;
        fName = FName;
        try{
            stm = dbInternal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
        } catch (SQLException sqle){
            System.out.println("Problem v statement - date");
        }
        
        strSQL = "SELECT main_ls.id, main_ls.first, main_ls.second,  main_ls.family," +
                " lsresult.zaplata, lsresult.psuma, lsresult.nsuma FROM main_ls" +
                " INNER JOIN lsresult ON (main_ls.Id = lsresult.idrab)  WHERE lsresult.year = " + lYear + " AND " + "lsresult.month = " + lMonth+";";
        try{
            rsCus = stm.executeQuery(strSQL);} catch (SQLException sd){}
        
        jmodel = new CustomTableModel(dbInternal, rsCus, null);
        jTable = new CustomTable(jmodel);
        
        initComponents();
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();

        setIconifiable(true);
        setTitle("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f \u043d\u0430 \u0444\u0438\u0448");
        getAccessibleContext().setAccessibleName("\u0424\u0418\u0428\u041e\u0412\u0415");
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jScrollPane1.getViewport().add(jTable, null);
        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jPanel3.add(jScrollPane1);

        jPanel1.add(jPanel3, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jPanel4.add(jLabel2);

        jPanel1.add(jPanel4, java.awt.BorderLayout.NORTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jButton1.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jPanel2.add(jButton1);

        jButton2.setText("\u041f\u0435\u0447\u0430\u0442 \u0435\u0434\u0438\u043d \u0444\u0438\u0448");
        jPanel2.add(jButton2);

        jButton3.setText("\u041f\u0435\u0447\u0430\u0442 \u043d\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u0444\u0438\u0448\u043e\u0432\u0435");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton3);

        jButton4.setText("\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435");
        jPanel2.add(jButton4);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
       
        frmFishPrev FrmFishPrev = new frmFishPrev(JFParentFrame, dbInternal, lYear,lMonth, fName, 0);
        FrmFishPrev.setVisible(true);
    }//GEN-LAST:event_jButton3ActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    JFrame JFParentFrame;
    public int lYear,lMonth,NL;
    public CustomTable jTable;
    public CustomTableModel jmodel;
    InputStream fs = null;
    JasperReport template = null;
    HashMap reportParam;
    String fName;
    Connection dbInternal;
    Statement stm;
    ResultSet rsCus;
    String strSQL;
   
}
