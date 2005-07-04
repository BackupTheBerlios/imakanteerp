package imakante.salary;

import javax.swing.JOptionPane;



public class FrmDOO extends javax.swing.JInternalFrame implements java.awt.event.WindowListener {
        

    public FrmDOO(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame) throws java.sql.SQLException {
        JFParentFrame = getParentFrame;
        cnCus = srcCN;
        initStRs();
        initModelTable();
        initComponents();
    }
  
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;
        
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jButton4 = new javax.swing.JButton();
        
        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("\u0414\u041e\u0414");
        jPanel1.setLayout(new java.awt.BorderLayout());
        
        
        jScrollPane1.getViewport().add(jTable, null);
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);
        
        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);
        
        jPanel2.setLayout(new java.awt.BorderLayout());
        
        
        jPanel3.setLayout(new java.awt.GridBagLayout());
        
        jButton1.setLabel("\u041d\u043e\u0432\u0430 \u0441\u0442\u0430\u0432\u043a\u0430");
        jButton1.setMaximumSize(new java.awt.Dimension(100, 25));
        jButton1.setMinimumSize(new java.awt.Dimension(100, 25));
        jButton1.setPreferredSize(new java.awt.Dimension(100, 25));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 3;
        gridBagConstraints.ipady = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTH;
        gridBagConstraints.insets = new java.awt.Insets(2, 10, 2, 10);
        jPanel3.add(jButton1, gridBagConstraints);
        
        jButton2.setLabel("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButton2.setMaximumSize(new java.awt.Dimension(100, 25));
        jButton2.setMinimumSize(new java.awt.Dimension(100, 25));
        jButton2.setPreferredSize(new java.awt.Dimension(100, 25));
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 3;
        gridBagConstraints.ipady = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTH;
        gridBagConstraints.insets = new java.awt.Insets(2, 10, 2, 10);
        jPanel3.add(jButton2, gridBagConstraints);
        
        jButton3.setLabel("\u041f\u0440\u0435\u043c\u0430\u0445\u0432\u0430\u043d\u0435");
        jButton3.setPreferredSize(new java.awt.Dimension(100, 25));
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 3;
        gridBagConstraints.ipady = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTH;
        gridBagConstraints.insets = new java.awt.Insets(2, 10, 2, 10);
        jPanel3.add(jButton3, gridBagConstraints);
        
        jPanel2.add(jPanel3, java.awt.BorderLayout.NORTH);
        
        jButton4.setLabel("\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435");
        jButton4.setMaximumSize(new java.awt.Dimension(100, 25));
        jButton4.setMinimumSize(new java.awt.Dimension(100, 25));
        jButton4.setPreferredSize(new java.awt.Dimension(100, 25));
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        
        jPanel4.add(jButton4);
        
        jPanel2.add(jPanel4, java.awt.BorderLayout.SOUTH);
        
        getContentPane().add(jPanel2, java.awt.BorderLayout.EAST);
        
        pack();
    }
    // </editor-fold>
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {
        reloadRecord();
    }
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {
        
    }
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {
        try{
            if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                javax.swing.JDialog JDEdit = new imakante.salary.frmAddDOO(false,
                        JFParentFrame, cnCus,
                        "SELECT * FROM dod WHERE id = "
                        + jTable.getValueAt(jTable.getSelectedRow(), 0));
                
                JDEdit.setVisible(true);
            }
        } catch (Exception sqlE) {
            if (sqlE.getMessage() != null) {
                System.out.println(sqlE.getMessage());
            } else {
                JOptionPane.showMessageDialog(null,"Моля изберете запис.","Не е избран запис",
                        JOptionPane.INFORMATION_MESSAGE);
            }
        }
    }
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {
        javax.swing.JDialog JDAdd = new imakante.salary.frmAddDOO(true, JFParentFrame,
                cnCus, "");
        JDAdd.setVisible(true);
    }
    
    
    // Variables declaration 
    private javax.swing.JButton jButton1;
    private javax.swing.JButton  jButton2;
    private javax.swing.JButton  jButton3;
    private javax.swing.JButton  jButton4;
    private javax.swing.JPanel  jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    public static javax.swing.JScrollPane jScrollPane1;
       
    javax.swing.JFrame JFParentFrame;
    public static java.sql.Connection cnCus;
    public static java.sql.Statement stCus;
    public static java.sql.ResultSet rsCus;
    public static Object Content[][];
    
    public static int rowNum = 0;
    public static int total = 0;
    
    public static final String strSQL = "SELECT * FROM dobavki ORDER BY Id ASC";
    
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    
    
    protected void UnloadWindow(){
        try {
            rsCus.close();
            stCus.close();
        } catch(java.sql.SQLException e) {
            JOptionPane.showMessageDialog(null,"Грешка ИЛС-С03Р  Възникнал проблем при затваряне на ресурси.\n","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
        this.dispose();
        
    }
    public static void initStRs(){
        try {
            stCus = cnCus.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                    java.sql.ResultSet.CONCUR_UPDATABLE);
            rsCus = stCus.executeQuery(strSQL);
        } catch (java.sql.SQLException e) {JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);}
        
    }
    public static void initModelTable(){
        model = new imakante.com.CustomTableModel(cnCus, rsCus, null);
        jTable = new imakante.com.CustomTable(model);
    }
    public static void reloadRecord() {
        try{
            rsCus.close();
            stCus.close();
            initStRs();
            jScrollPane1.getViewport().remove(jTable);
            initModelTable();
            jScrollPane1.getViewport().add(jTable);
            jScrollPane1.repaint();
            
        } catch (Exception e){}
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
    
    
}
