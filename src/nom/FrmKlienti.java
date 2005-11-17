
package nom;

import imakante.sales.*;
import javax.swing.JOptionPane;

public class FrmKlienti extends javax.swing.JInternalFrame {
    
    public FrmKlienti(java.sql.Connection conn
            ) throws java.sql.SQLException {
        intConn = parent.getDbConn();
        
        stm = intConn.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);
        
        
        try {
            rs = stm.executeQuery(strQU);
            
        } catch (java.sql.SQLException e) {
           javax.swing.JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
        model = new imakante.com.CustomTableModel(intConn, rs, null);
        jTable = new imakante.com.CustomTable(model);
        
        
        
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setTitle("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0438");
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jScrollPane1.setViewport(null);
        jScrollPane1.setViewportView(jTable);
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jButton1.setText("\u041d\u041e\u0412");
        jPanel2.add(jButton1);

        jButton2.setText("\u0420\u0415\u0414\u0410\u041a\u0426\u0418\u042f");
        jPanel2.add(jButton2);

        jButton3.setText("\u0422\u042a\u0420\u0421\u0415\u041d\u0415");
        jPanel2.add(jButton3);

        jButton4.setText("\u041e\u041f\u0420\u0415\u0421\u041d\u042f\u0412\u0410\u041d\u0415");
        jPanel2.add(jButton4);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    private imakante.sales.sales_main parent;
    String strQU = "SELECT * FROM sl_n_customer";
    java.sql.Connection intConn;
    java.sql.Statement stm;
    java.sql.ResultSet rs;
    imakante.com.CustomTable jTable;
    imakante.com.CustomTableModel model;
    
    
    
}
