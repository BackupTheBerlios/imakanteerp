package imakante.salary;

import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.io.InputStream;
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
            
        }
        
        strSQL = "SELECT ls_main.id, ls_main.first, ls_main.second,  ls_main.family," +
                " lsresult.zaplata, lsresult.psuma, lsresult.nsuma FROM ls_main" +
                " INNER JOIN ls_result ON (ls_main.Id = ls_result.idrab)  WHERE ls_result.year = " + lYear + " AND " + "ls_result.month = " + lMonth+";";
        try{
            rsCus = stm.executeQuery(strSQL);} catch (SQLException sd){}
        
        model = new CustomTableModel(dbInternal, rsCus, null);
        jTable = new CustomTable(model);
        
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
        jPanel3.setLayout(new java.awt.BorderLayout());

        jScrollPane1.getViewport().add(jTable, null);
        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jPanel3.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel1.add(jPanel3, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jPanel4.add(jLabel2);

        jPanel1.add(jPanel4, java.awt.BorderLayout.NORTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jButton1.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jButton1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton1KeyPressed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u041f\u0435\u0447\u0430\u0442 \u0435\u0434\u0438\u043d \u0444\u0438\u0448");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton2KeyPressed(evt);
            }
        });

        jPanel2.add(jButton2);

        jButton3.setText("\u041f\u0435\u0447\u0430\u0442 \u043d\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u0444\u0438\u0448\u043e\u0432\u0435");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jButton3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton3KeyPressed(evt);
            }
        });

        jPanel2.add(jButton3);

        jButton4.setText("\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jButton4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton4KeyPressed(evt);
            }
        });

        jPanel2.add(jButton4);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents

    private void jButton4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton4KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton4KeyPressed

    private void jButton3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton3KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton3KeyPressed

    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton2KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton2KeyPressed

    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton1KeyPressed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed
    
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
    public static javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    JFrame JFParentFrame;
    public int lYear,lMonth,NL;
    public static imakante.com.CustomTable jTable;
    public static imakante.com.CustomTableModel model;
    InputStream fs = null;
    JasperReport template = null;
    HashMap reportParam;
    String fName;
     public static final String Names[] = {"","\u041d\u043e\u043c\u0435\u0440", "\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043e",
             "\u041f\u0440\u0435\u0437\u0438\u043c\u0435","\u0424\u0430\u043c\u0438\u043b\u0438\u044f","\u0429\u0430\u0442\u043d\u0430 \u0437\u0430\u043f\u043b\u0430\u0442\u0430",
     "\u0421\u0443\u043c\u0430 \u0443\u0434\u0440\u044a\u0436\u043a\u0438","\u0421\u0443\u043c\u0430 \u0437\u0430 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u043d\u0435"};
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stm;
    public static java.sql.ResultSet rsCus;
    String strSQL;
    
    protected void UnloadWindow(){
        try {
            rsCus.close();
            stm.close();
        } catch(java.sql.SQLException e) {
            javax.swing.JOptionPane.showMessageDialog(null,
                    "\u0413\u0440\u0435\u0448\u043a\u0430 \u0418\u041b\u0421-\u042103\u0420  \u0412\u044a\u0437\u043d\u0438\u043a\u043d\u0430\u043b \u043f\u0440\u043e\u0431\u043b\u0435\u043c \u043f\u0440\u0438 \u0437\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u0440\u0435\u0441\u0443\u0440\u0441\u0438.\n",
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.WARNING_MESSAGE);
        
        }
        this.dispose();
        
    }
    
    public static void initModelTable(){
        model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
        jTable = new imakante.com.CustomTable(model);
    }
    public static void reloadRecord() {
        try{
            rsCus.close();
            stm.close();
            jScrollPane1.getViewport().remove(jTable);
            initModelTable();
            jScrollPane1.getViewport().add(jTable);
            jScrollPane1.repaint();
            
        } catch (Exception e){}
    }
}
