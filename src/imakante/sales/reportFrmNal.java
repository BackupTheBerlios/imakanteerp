
package imakante.sales;

import java.awt.event.WindowEvent;
import java.sql.SQLException;


public class reportFrmNal extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public reportFrmNal(String title,imakante.com.vcomponents.iFrame frame) {
        super(title);
        myframe = frame;
        prepareConn();     // zapazva connection
        prepareStm();
        initComponents();
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();

        setClosable(true);
        setIconifiable(true);
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel1.setText("\u041e\u0431\u0435\u043a\u0442          \u043e\u0442:");

        jTextField1.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                jTextField1PropertyChange(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jLabel2.setText("\u0434\u043e:");

        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 139, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel2)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 152, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jLabel1)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel2)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel3.setText("\u0414\u043e\u0441\u0442\u0430\u0432\u0447\u0438\u043a  \u043e\u0442:");

        jLabel4.setText("\u0434\u043e:");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jLabel3)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 139, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel4)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 152, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(11, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jLabel3)
                .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel4)
                .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );

        jButton1.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u0439");

        jButton2.setText("\u041e\u0442\u043a\u0430\u0437");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(253, Short.MAX_VALUE)
                .add(jButton1)
                .add(11, 11, 11)
                .add(jButton2)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(12, Short.MAX_VALUE)
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton1)
                    .add(jButton2)))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel5.setText("\u0410\u0440\u0442\u0438\u043a\u0443\u043b\u0438    \u043e\u0442:");

        jLabel6.setText("\u0434\u043e:");

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jLabel5)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 138, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel6)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 150, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(14, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jLabel5)
                .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel6)
                .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(19, Short.MAX_VALUE))
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-454)/2, (screenSize.height-223)/2, 454, 223);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField2();
        }
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jTextField1PropertyChange(java.beans.PropertyChangeEvent evt) {//GEN-FIRST:event_jTextField1PropertyChange
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField1PropertyChange
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField1();
        }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    // End of variables declaration//GEN-END:variables
    private  imakante.com.vcomponents.iFrame myframe;
    
    private  java.sql.Connection conn;
    private java.sql.Statement stm;
    private  java.sql.ResultSet rs;
    
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    private int idFCodeContr = 0;
    private  long  idLastContr = 999999999;
    private String[] Names= {"id", "cod", "names"};
    private  int intTransfer;
    private  int CompNumber = 0;
    private String strContragent = "SELECT `rep_comm_nal`.`id_contragent`,"
            + "`rep_comm_nal`.`code_contragent`, `rep_comm_nal`.`name_n_contragent`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_contragent` LIKE  '%";
    
    
    
    //METHODS
    
    private void prepareConn() {
        try{
            conn =  myframe.getConn();
            if(conn==null){System.out.println("conn problem");
            }
        }catch(Exception e){e.printStackTrace();}
    }
    
    private void prepareStm(){
        try {
            stm = conn.createStatement();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    private void initTable(String str) {
        try {
            rs = stm.executeQuery(str);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        try {
            model = new imakante.com.CustomTableModel(getConn(), rs,Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id"));
        } catch(Exception e) { e.printStackTrace(); }
        
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {  }
    }
    private void initDialog(){
        
        
    }
    private void constructDialod(String str, int rCompNumber){
        this.CompNumber = rCompNumber;
        initTable(str);
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table);
        td.setVisible(true);
        
    }
    
    private int getColumnIndex(String in) //test
    {
        int count = table.getColumnCount();
        for(int i=0; i < count; i++) {
            if(table.getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    
    
    
    private void HideColumns(int col) {
        int iColumn = col;
// set column width
        table.getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getColumnModel().getColumn(iColumn).setMinWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
        
    }
    
    
    
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public void windowOpened(WindowEvent e) {
    }
    
    public void windowClosing(WindowEvent e) {
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
    
    public String[] getNames() {
        return Names;
    }
    
    public void setNames(String[] Names) {
        this.Names = Names;
    }
    
    public int getIntTransfer() {
        
        return intTransfer;
    }
    
    public void setIntTransfer(int intTransfer) {
        this.intTransfer = intTransfer;
        if(CompNumber == 1){
            this.jTextField1.setText(""+this.intTransfer);}
        if(CompNumber == 2){
            this.jTextField2.setText(""+this.intTransfer);}
        if(CompNumber == 3){
            this.jTextField3.setText(""+this.intTransfer);}
        if(CompNumber == 4){
            this.jTextField4.setText(""+this.intTransfer);}
    }
    
    private void processField1() {
        String newString = strContragent + this.jTextField1.getText() + "%'";
        constructDialod(newString, 1);
        
    }

    private void processField2() {
        String newString = strContragent + this.jTextField2.getText() + "%' AND `rep_comm_nal`.`code_contragent` >= " + this.jTextField1.getText() + ";";
        constructDialod(newString, 2);
    }
    
    
}
