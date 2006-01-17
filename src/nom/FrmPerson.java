
package nom;

public class FrmPerson extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmPerson(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        persFrame = frame;
        prepareConn();
        constructObject(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
    }
    
    // --- Custom Members --- //
    private imakante.com.vcomponents.iFrame persFrame;
    private java.sql.Connection conn;
    private nom.dbPerson personObject;
    private java.sql.ResultSet rs;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    
    
    // --- Custom Methods --- //
    private void prepareConn() {
        try{
            conn =  persFrame.getConn();
            if(conn==null){System.out.println("Connection problem!");
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    
    private void constructObject() {
        try {
            personObject = new nom.dbPerson(conn);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    
    private void initTable() { //OK  -- !!ima za dovyr6wane - skrivane na koloni!!
        try {
            rs = personObject.getTable();
            model = new imakante.com.CustomTableModel(getConn(), rs, null);
            table = new imakante.com.CustomTable(model);
            // da se napravqt skriti kolona "id" i kolona "nom"
        } catch(Exception e) {
            e.printStackTrace();
        }
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {
            
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpTop = new javax.swing.JPanel();
        jpMiddle = new javax.swing.JPanel();
        jpSearch = new javax.swing.JPanel();
        jlCode = new javax.swing.JLabel();
        jtfCode = new javax.swing.JTextField();
        jlName = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jbSearch = new javax.swing.JButton();
        jpsData = new javax.swing.JScrollPane();
        jpBottom = new javax.swing.JPanel();
        jbNew = new javax.swing.JButton();
        jbEdit = new javax.swing.JButton();
        jbPrint = new javax.swing.JButton();
        jbPrintReport = new javax.swing.JButton();
        jbAll = new javax.swing.JButton();
        jbDelete = new javax.swing.JButton();
        jbDropTable = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        jpTop.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpTop.setPreferredSize(new java.awt.Dimension(14, 14));
        org.jdesktop.layout.GroupLayout jpTopLayout = new org.jdesktop.layout.GroupLayout(jpTop);
        jpTop.setLayout(jpTopLayout);
        jpTopLayout.setHorizontalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 772, Short.MAX_VALUE)
        );
        jpTopLayout.setVerticalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jpTop, java.awt.BorderLayout.NORTH);

        jpMiddle.setLayout(new java.awt.BorderLayout());

        jpMiddle.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpSearch.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jlCode.setText("\u041a\u043e\u0434:");
        jpSearch.add(jlCode);

        jtfCode.setPreferredSize(new java.awt.Dimension(80, 20));
        jpSearch.add(jtfCode);

        jlName.setText("\u0418\u043c\u0435:");
        jpSearch.add(jlName);

        jtfName.setPreferredSize(new java.awt.Dimension(160, 20));
        jpSearch.add(jtfName);

        jbSearch.setText("\u041d\u0410\u041c\u0415\u0420\u0418");
        jbSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbSearchActionPerformed(evt);
            }
        });

        jpSearch.add(jbSearch);

        jpMiddle.add(jpSearch, java.awt.BorderLayout.SOUTH);

        jpsData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpMiddle.add(jpsData, java.awt.BorderLayout.CENTER);

        getContentPane().add(jpMiddle, java.awt.BorderLayout.CENTER);

        jpBottom.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jbNew.setText("\u041d\u043e\u0432");
        jbNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNewActionPerformed(evt);
            }
        });

        jpBottom.add(jbNew);

        jbEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jbEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbEditActionPerformed(evt);
            }
        });

        jpBottom.add(jbEdit);

        jbPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jbPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrint);

        jbPrintReport.setText("\u041f\u0435\u0447\u0430\u0442 \u0440\u0430\u043f\u043e\u0440\u0442");
        jbPrintReport.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintReportActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrintReport);

        jbAll.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jbAll.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbAllActionPerformed(evt);
            }
        });

        jpBottom.add(jbAll);

        jbDelete.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jbDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbDeleteActionPerformed(evt);
            }
        });

        jpBottom.add(jbDelete);

        jbDropTable.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        jbDropTable.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbDropTableActionPerformed(evt);
            }
        });

        jpBottom.add(jbDropTable);

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

    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        
    }//GEN-LAST:event_jbCloseActionPerformed

    private void jbDropTableActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDropTableActionPerformed
        
    }//GEN-LAST:event_jbDropTableActionPerformed

    private void jbDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDeleteActionPerformed
        
    }//GEN-LAST:event_jbDeleteActionPerformed

    private void jbAllActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbAllActionPerformed
        
    }//GEN-LAST:event_jbAllActionPerformed

    private void jbPrintReportActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintReportActionPerformed
        
    }//GEN-LAST:event_jbPrintReportActionPerformed

    private void jbPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintActionPerformed
        
    }//GEN-LAST:event_jbPrintActionPerformed

    private void jbEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbEditActionPerformed
        
    }//GEN-LAST:event_jbEditActionPerformed

    private void jbNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbNewActionPerformed
        
    }//GEN-LAST:event_jbNewActionPerformed

    private void jbSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbSearchActionPerformed
        
    }//GEN-LAST:event_jbSearchActionPerformed

    public void windowOpened(java.awt.event.WindowEvent e) {
    }
    public void windowClosing(java.awt.event.WindowEvent e) {
    }
    public void windowClosed(java.awt.event.WindowEvent e) {
    }
    public void windowIconified(java.awt.event.WindowEvent e) {
    }
    public void windowDeiconified(java.awt.event.WindowEvent e) {
    }
    public void windowActivated(java.awt.event.WindowEvent e) {
    }
    public void windowDeactivated(java.awt.event.WindowEvent e) {
    }
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbAll;
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbDelete;
    private javax.swing.JButton jbDropTable;
    private javax.swing.JButton jbEdit;
    private javax.swing.JButton jbNew;
    private javax.swing.JButton jbPrint;
    private javax.swing.JButton jbPrintReport;
    private javax.swing.JButton jbSearch;
    private javax.swing.JLabel jlCode;
    private javax.swing.JLabel jlName;
    private javax.swing.JPanel jpBottom;
    private javax.swing.JPanel jpMiddle;
    private javax.swing.JPanel jpSearch;
    private javax.swing.JPanel jpTop;
    private javax.swing.JScrollPane jpsData;
    private javax.swing.JTextField jtfCode;
    private javax.swing.JTextField jtfName;
    // End of variables declaration//GEN-END:variables
    
}
