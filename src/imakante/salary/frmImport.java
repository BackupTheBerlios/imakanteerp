
package imakante.salary;

import imakante.com.CustomTable;
import imakante.com.CustomTableModel;




public class frmImport extends javax.swing.JDialog {
    
    public frmImport(java.awt.Frame parent, boolean modal, java.sql.Connection dbCon) {
        super(parent, modal);
        cnCus = dbCon;
        initTable();
        initComponents();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x,y);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        jTextPane1 = new javax.swing.JTextPane();
        jPanel6 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(jTable,null);
        jPanel3 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        jButton4 = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel2.setLayout(new java.awt.BorderLayout());

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jPanel5.setLayout(new java.awt.BorderLayout());

        jPanel5.setBorder(new javax.swing.border.EtchedBorder());
        jPanel5.add(jTextPane1, java.awt.BorderLayout.CENTER);

        jPanel2.add(jPanel5, java.awt.BorderLayout.SOUTH);

        jPanel6.setLayout(new java.awt.BorderLayout());

        jPanel6.setBorder(new javax.swing.border.EtchedBorder());
        jPanel6.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel2.add(jPanel6, java.awt.BorderLayout.CENTER);

        jPanel1.add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanel3.setLayout(new java.awt.GridBagLayout());

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 12));
        jLabel5.setForeground(new java.awt.Color(255, 0, 0));
        jLabel5.setText("\u0412\u041d\u0418\u041c\u0410\u041d\u0418\u0415!!! \u0412\u0421\u042f\u041a\u041e \u0412\u0410\u0428\u0415 \u0414\u0415\u0419\u0421\u0422\u0412\u0418\u0415 \u0420\u0415\u0424\u041b\u0415\u041a\u0422\u0418\u0420\u0410 \u0414\u0418\u0420\u0415\u041a\u0422\u041d\u041e \u0412\u042a\u0420\u0425\u0423 \u0411\u0410\u0417\u0410\u0422\u0410. \u041f\u0420\u0415\u041f\u041e\u0420\u042a\u0427\u0412\u0410\u041c\u0415 \u0414\u0410 \u041d\u0410\u041f\u0420\u0410\u0412\u0418\u0422\u0415 \u041f\u042a\u0420\u0412\u041e \u0415\u041a\u0421\u041f\u041e\u0420\u0422.");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
        jPanel3.add(jLabel5, gridBagConstraints);

        jPanel1.add(jPanel3, java.awt.BorderLayout.NORTH);

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jButton4.setText("\u0418\u0417\u0411\u0415\u0420\u0418 \u0422\u0410\u0411\u041b\u0418\u0426\u0410");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton4);

        jButton1.setText("\u041e\u0422\u0412\u041e\u0420\u0418 \u0424\u0410\u0419\u041b");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton1);

        jButton2.setText("\u041f\u0420\u0415\u041d\u0415\u0421\u0418 \u0418\u041d\u0424\u041e\u0420\u041c\u0410\u0426\u0418\u042f");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton2);

        jButton3.setText("\u041e\u0422\u041a\u0410\u0417");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton3);

        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        closeResource();
        this.dispose();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    public static javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextPane jTextPane1;
    // End of variables declaration//GEN-END:variables
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    public static java.sql.Connection cnCus;
    public static java.sql.Statement stCus;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    
    
    public void initTable(){
        
        try {  strSQL = "SHOW TABLE STATUS FROM mida";
        
        stCus = cnCus.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);
        rsCus = stCus.executeQuery(strSQL);
        } catch (java.sql.SQLException sqle) {
            sqle.printStackTrace();
           
        }
        model = new CustomTableModel(cnCus, rsCus, null);
        jTable = new CustomTable(model);
        
    }
    
    public void closeResource(){
        try{
            rsCus.close();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        try{
            stCus.close();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
}
