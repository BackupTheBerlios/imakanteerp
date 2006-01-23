
package nom;

import java.awt.event.WindowEvent;

public class FrmDoctype extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmDoctype(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        here = frame;
        prepConn();
        constructObject();
        initTable();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpTop = new javax.swing.JPanel();
        jpMiddle = new javax.swing.JPanel();
        jspData = new javax.swing.JScrollPane();
        jpControls = new javax.swing.JPanel();
        jlDocName = new javax.swing.JLabel();
        jtfDocName = new javax.swing.JTextField();
        jbSearch = new javax.swing.JButton();
        jpBottom = new javax.swing.JPanel();
        jbNew = new javax.swing.JButton();
        jbEdit = new javax.swing.JButton();
        jbPrint = new javax.swing.JButton();
        jbPrintRep = new javax.swing.JButton();
        jbAll = new javax.swing.JButton();
        jbDel = new javax.swing.JButton();
        jbDropData = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        jpTop.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpTop.setFont(new java.awt.Font("Tahoma", 0, 11));
        org.jdesktop.layout.GroupLayout jpTopLayout = new org.jdesktop.layout.GroupLayout(jpTop);
        jpTop.setLayout(jpTopLayout);
        jpTopLayout.setHorizontalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 828, Short.MAX_VALUE)
        );
        jpTopLayout.setVerticalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jpTop, java.awt.BorderLayout.NORTH);

        jpMiddle.setLayout(new java.awt.BorderLayout());

        jpMiddle.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpMiddle.setFont(new java.awt.Font("Tahoma", 0, 11));
        jspData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jspData.setFont(new java.awt.Font("Tahoma", 0, 11));
        jpMiddle.add(jspData, java.awt.BorderLayout.CENTER);

        jpControls.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpControls.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlDocName.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlDocName.setText("\u0418\u043c\u0435 \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442:");
        jpControls.add(jlDocName);

        jtfDocName.setFont(new java.awt.Font("Tahoma", 0, 11));
        jtfDocName.setPreferredSize(new java.awt.Dimension(200, 20));
        jpControls.add(jtfDocName);

        jbSearch.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbSearch.setText("\u041d\u0410\u041c\u0415\u0420\u0418");
        jbSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbSearchActionPerformed(evt);
            }
        });

        jpControls.add(jbSearch);

        jpMiddle.add(jpControls, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jpMiddle, java.awt.BorderLayout.CENTER);

        jpBottom.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpBottom.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbNew.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbNew.setText("\u041d\u043e\u0432");
        jbNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNewActionPerformed(evt);
            }
        });

        jpBottom.add(jbNew);

        jbEdit.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jbEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbEditActionPerformed(evt);
            }
        });

        jpBottom.add(jbEdit);

        jbPrint.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jbPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrint);

        jbPrintRep.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbPrintRep.setText("\u041f\u0435\u0447\u0430\u0442 \u0420\u0430\u043f\u043e\u0440\u0442");
        jbPrintRep.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintRepActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrintRep);

        jbAll.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbAll.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jbAll.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbAllActionPerformed(evt);
            }
        });

        jpBottom.add(jbAll);

        jbDel.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbDel.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jbDel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbDelActionPerformed(evt);
            }
        });

        jpBottom.add(jbDel);

        jbDropData.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbDropData.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        jbDropData.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbDropDataActionPerformed(evt);
            }
        });

        jpBottom.add(jbDropData);

        jbClose.setFont(new java.awt.Font("Tahoma", 0, 11));
        jbClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jbClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbCloseActionPerformed(evt);
            }
        });

        jpBottom.add(jbClose);

        getContentPane().add(jpBottom, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jbSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbSearchActionPerformed
        searchRecords();
    }//GEN-LAST:event_jbSearchActionPerformed
    
    private void jbNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbNewActionPerformed
        addNewRecord();
    }//GEN-LAST:event_jbNewActionPerformed
    
    private void jbEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbEditActionPerformed
        editRecord();
    }//GEN-LAST:event_jbEditActionPerformed
    
    private void jbPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintActionPerformed
        printTable();
    }//GEN-LAST:event_jbPrintActionPerformed
    
    private void jbPrintRepActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintRepActionPerformed
        printReport();
    }//GEN-LAST:event_jbPrintRepActionPerformed
    
    private void jbAllActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbAllActionPerformed
        refreshTable();
    }//GEN-LAST:event_jbAllActionPerformed
    
    private void jbDelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDelActionPerformed
        deleteRecord();
    }//GEN-LAST:event_jbDelActionPerformed
    
    private void jbDropDataActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDropDataActionPerformed
        clearTable();
    }//GEN-LAST:event_jbDropDataActionPerformed
    
    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbCloseActionPerformed
    // GUI actions methods
    private void searchRecords() {
        jspData.remove(table);
        System.out.println(jtfDocName.getText());
        try{
            rs = doctypeObject.searchRecords(jtfDocName.getText());
            model = new imakante.com.CustomTableModel(conn, rs, null);
            table = new imakante.com.CustomTable(model);
        } catch(Exception e) { e.printStackTrace(); }
        jspData.getViewport().add(table);
        jspData.repaint();
    }
    
    private void addNewRecord() {
        setID(doctypeObject.getMaxID());
        
    }
    
    private void editRecord() {
        
    }
    
    private void printTable() {
        
    }
    
    private void printReport() {
        
    }
    
    private void refreshTable() {
        
    }
    
    private void deleteRecord() {
        
    }
    
    private void clearTable() {
        
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbAll;
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbDel;
    private javax.swing.JButton jbDropData;
    private javax.swing.JButton jbEdit;
    private javax.swing.JButton jbNew;
    private javax.swing.JButton jbPrint;
    private javax.swing.JButton jbPrintRep;
    private javax.swing.JButton jbSearch;
    private javax.swing.JLabel jlDocName;
    private javax.swing.JPanel jpBottom;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpMiddle;
    private javax.swing.JPanel jpTop;
    private javax.swing.JScrollPane jspData;
    private javax.swing.JTextField jtfDocName;
    // End of variables declaration//GEN-END:variables
    
    // Custom members
    private imakante.com.vcomponents.iFrame here;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private nom.dbDoctype doctypeObject;
    
    // Constructor methods
    private void prepConn() {
        try{
            conn =  here.getConn();
            if(conn==null){
                System.out.println("CONNECTION CAN NOT BE ESTABLISHED!");
            }
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructObject() {
        try {
            doctypeObject = new nom.dbDoctype(conn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() {
        try{
            rs = doctypeObject.getTable();
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
            table.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_OFF);
            table.getColumnModel().getColumn(0).setResizable(false);
            table.getColumnModel().getColumn(0).setWidth(0);
            table.getColumnModel().getColumn(0).setPreferredWidth(0);
        }catch(Exception e){e.printStackTrace();}
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {
        }
    }
    
    // Window implemented methods
    public void windowOpened(WindowEvent e) {
    }
    public void windowClosing(WindowEvent e) {
        unload();
    }
    public void windowClosed(WindowEvent e) {
    }
    public void windowIconified(WindowEvent e) {
    }
    public void windowDeiconified(WindowEvent e) {
    }
    public void windowActivated(WindowEvent e) {
    }
    public void windowDeactivated(WindowEvent e) {
    }
    
    // Custom methods
    private void unload() {
        closeResource();
        this.dispose();
    }
    
    protected void closeResource() {
        try{
            rs.close();
        } catch(java.sql.SQLException sqle) {  }
        rs = null;
        doctypeObject.close();
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
}
