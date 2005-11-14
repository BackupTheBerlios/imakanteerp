
package nom;

import java.awt.event.KeyEvent;
import java.sql.*;
import imakante.com.vcomponents.*;
import java.awt.event.*;

public class FrmCountry extends iInternalFrame{
    
    
    public FrmCountry(String title, imakante.com.vcomponents.iFrame frame) {
        super("\u0414\u044a\u0440\u0436\u0430\u0432\u0438");
        myframe = frame;
        this.setClosable(true);
        this.setMaximizable(true);
        prepareConn();
        constructObject();
        initTable();
        initComponents();
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(table);
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jButton4 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        jPanel1.setLayout(new java.awt.BorderLayout());

        jScrollPane1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setText("\u041a\u043e\u0434");
        jPanel4.add(jLabel1);

        jTextField1.setMinimumSize(new java.awt.Dimension(60, 19));
        jTextField1.setPreferredSize(new java.awt.Dimension(60, 19));
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jPanel4.add(jTextField1);

        jLabel2.setText("\u0418\u043c\u0435");
        jPanel4.add(jLabel2);

        jTextField2.setPreferredSize(new java.awt.Dimension(250, 19));
        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        jPanel4.add(jTextField2);

        jButton4.setText("\u0422\u044a\u0440\u0441\u0438");
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

        jPanel4.add(jButton4);

        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041d\u043e\u0432/\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
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

        jPanel3.add(jButton1);

        jButton7.setText("\u041f\u0435\u0447\u0430\u0442");
        jPanel3.add(jButton7);

        jButton2.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
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

        jPanel3.add(jButton2);

        jButton5.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        jButton5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton5KeyPressed(evt);
            }
        });

        jPanel3.add(jButton5);

        jButton6.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430\u0442\u0430");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton6);

        jButton3.setText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435");
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

        jPanel3.add(jButton3);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton6ActionPerformed
    
    private void jButton5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton5KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton5.doClick();}
    }//GEN-LAST:event_jButton5KeyPressed
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        refreshTable();
    }//GEN-LAST:event_jButton5ActionPerformed
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        searchRecords();
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField2.transferFocus();}
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField1.transferFocus();}
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jButton4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton4KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton4.doClick();}
    }//GEN-LAST:event_jButton4KeyPressed
    
    private void jButton3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton3KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton3.doClick();}
    }//GEN-LAST:event_jButton3KeyPressed
    
    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton2.doClick();}
    }//GEN-LAST:event_jButton2KeyPressed
    
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick();}
    }//GEN-LAST:event_jButton1KeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        aeRecord();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        
    }//GEN-LAST:event_jButton3ActionPerformed
    private void prepareConn(){
        try{
            setConn(myframe.getConn());}catch(Exception e){e.printStackTrace();}
    }
    
    private void constructObject(){
        try{
            countriesT = new nom.countries(conn);}catch(Exception e){e.printStackTrace();}
        
    }
    
    
    private void searchRecords(){
        jScrollPane1.remove(table);
        System.out.println(jTextField2.getText());
        try{
            rs = countriesT.searchRecords(imakante.com.pubMethods.makeInt(jTextField1.getText()),jTextField2.getText());
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
        }catch(Exception e){e.printStackTrace();}
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
    }
    
    private void initTable() {
        try{
            rs = countriesT.getTable();
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
        }catch(Exception e){e.printStackTrace();}
    }
    
    protected static void refreshTable(){
        jScrollPane1.remove(table);
        rs = countriesT.getTable();
        model = new imakante.com.CustomTableModel(conn, rs, null);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
        
    }
  
    protected void aeRecord(){
        if (table.getValueAt(table.getSelectedRow(), table.getSelectedColumn()) != null) {
             setRow((Integer) table.getValueAt(table.getSelectedRow(),0));
             setCode((Integer) table.getValueAt(table.getSelectedRow(),1));
             setName((String) table.getValueAt(table.getSelectedRow(),2));
             
            try{
                nom.aeCountry dialog = new nom.aeCountry(this, true, getRow(), getCode(), getName());
                dialog.setVisible(true);
                
            } catch(Exception e){e.printStackTrace();}
        }else{
        code = countriesT.getMaxCode() + 1;
        String name = "";
        countriesT.insertRow(code, name);
        nom.aeCountry dialog = new nom.aeCountry(this, true, 0,code,name);
        dialog.setVisible(true);
        }
        
    }
  
    
    private void setConn(java.sql.Connection connection) {
        this.conn = connection;
    }
    
    private static java.sql.Connection conn;
    private static java.sql.ResultSet rs;
    private static  nom.countries countriesT;
    private static imakante.com.CustomTableModel model;
    private static imakante.com.CustomTable table;
    private imakante.com.vcomponents.iFrame myframe;
    private static int row, code;
    private static String name;
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private static javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    // End of variables declaration//GEN-END:variables
    
    
    protected void closeResource(){
        
        try{  rs.close();
        }catch(java.sql.SQLException sqle){}
        rs =null;
    }
    
    
    protected void UnloadWindow(){
        closeResource();
        this.dispose();
        
    }
    
    
    
    
    public void windowOpened(java.awt.event.WindowEvent e){
    }
    public void windowClosing(java.awt.event.WindowEvent e){
        UnloadWindow();
    }
    public void windowClosed(java.awt.event.WindowEvent e){
    }
    public void windowIconified(java.awt.event.WindowEvent e){
    }
    public void windowDeiconified(java.awt.event.WindowEvent e){
    }
    public void windowActivated(java.awt.event.WindowEvent e){
    }
    public void windowDeactivated(java.awt.event.WindowEvent e){
    }
    
    public ResultSet getRs() {
        return rs;
    }
    
    public void setRs(ResultSet val) {
        this.rs = val;
    }
    
    public iFrame getMyframe() {
        return myframe;
    }
    
    public void setMyframe(iFrame val) {
        this.myframe = val;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int val) {
        this.row = val;
    }

    public static int getCode() {
        return code;
    }

    public static void setCode(int aCode) {
        code = aCode;
    }

    
    
    
}
