
package imakante.sales;

import java.awt.event.WindowEvent;
import java.net.MalformedURLException;
import java.sql.SQLException;


public class FrmNalCasa extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmNalCasa(String title,imakante.com.vcomponents.iFrame frame, int levelx) {
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
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel1.setText("\u041a\u0430\u0441\u0430        \u043e\u0442:");

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
                .addContainerGap(24, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jLabel1)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel2)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );

        jButton1.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u0439");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

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

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-454)/2, (screenSize.height-133)/2, 454, 133);
    }// </editor-fold>//GEN-END:initComponents
                    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        fillBlanck();
        processReport();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField2();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField2.getText().equals("")){jTextField2.setText("999999999");jTextField2.transferFocus();}
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
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField1.getText().equals("")){jTextField1.setText("1");jTextField1.transferFocus();}else{jTextField1.transferFocus();}
            
        }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    // End of variables declaration//GEN-END:variables
    private  imakante.com.vcomponents.iFrame myframe;
    
    private  java.sql.Connection conn;
    private java.sql.Statement stm;
    private  java.sql.ResultSet rs;
    
    private java.io.FileInputStream fs=null;
    private java.net.URL url=null;
    
    private java.util.HashMap hm = null;
    
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    private String idFCodeContr = "0";
    private String  idLastContr = "99999999999";
    private String[] Names= { "\u041a\u041e\u0414", "\u0418\u041c\u0415"};
    private  int intTransfer;
    private  int CompNumber = 0;
    
    private String strCasa = "SELECT "
            + "`rep_comm_nal`.`code_contragent`, `rep_comm_nal`.`name_n_contragent`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_contragent` LIKE  '%";
    
    private String strProduct = "SELECT "
            + "`rep_comm_nal`.`code_pm`, `rep_comm_nal`.`name_pm`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_pm` LIKE  '%";
    
    private String strStore = "SELECT "
            + "`rep_comm_nal`.`code_n_storage`, `rep_comm_nal`.`name_n_storage`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_n_storage` LIKE  '%";
    
    private String[] NamesQ= {"kasa", "prihod", "razhod"};
    private String qu =  "";    
    private int levelx = 1;
    private String beginCasa = "0";
    private String endCasa = "999999999";
    
    
    //METHODS
    private void constString(){
     qu =   " SELECT distinct code_n_casa AS casa "
          + " IFNULL(@prihod := (SELECT rep_casa_nal.suma FROM rep_casa_nal WHERE code_n_casa = casa AND rep_casa_nal.in_type_sl_mop = 1 AND levelx = '" + levelx +"'), 0) AS prihod, "
          + " IFNULL(@razhod :=(SELECT rep_casa_nal.suma FROM rep_casa_nal WHERE code_n_casa = casa AND rep_casa_nal.out_type_sl_mop = 1 AND levelx = '" + levelx +"'), 0) AS razhod,"
          + " (IFNULL(@prihod, 0)- IFNULL(@razhod, 0)) AS nalichni "
          + " FROM rep_casa_nal " 
          + " WHERE casa BETWEEN '" + beginCasa + " AND '" + endCasa +"'"    
          + " GROUP BY casa";  
    }
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
    
    private void initTable(String str , String[] names) {
        try {
            rs = stm.executeQuery(str);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        try {
            model = new imakante.com.CustomTableModel(getConn(), rs, names);
            table = new imakante.com.CustomTable(model);
            
        } catch(Exception e) { e.printStackTrace(); }
        
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {  }
    }
    
    private void constructDialod(String str, int rCompNumber, String[] names){
        this.CompNumber = rCompNumber;
        initTable(str, names );
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
        if (CompNumber == 0){}
        if(CompNumber == 1){
            this.jTextField1.setText(""+this.intTransfer);}
        if(CompNumber == 2){
            this.jTextField2.setText(""+this.intTransfer);}
        
    }
    
    private void processField1() {
        String newString = strStore + this.jTextField1.getText() + "%'";
        constructDialod(newString, 1, Names);
        
    }
    
    private void processField2() {
        if(this.jTextField1.getText()==""){this.jTextField1.setText("0");}
        String newString = strStore + this.jTextField2.getText() + "%' AND `rep_comm_nal`.`code_n_storage` >= " + this.jTextField1.getText() + ";";
        constructDialod(newString, 2, Names);
    }
   
    
    private void processReport(){
//        String newString="";
//        try {
//            newString = qu + " WHERE `rep_comm_nal`.`code_contragent` BETWEEN '" +
//                    (Integer.parseInt(this.jTextField5.getText())-1) + "' AND '" + (Integer.parseInt(this.jTextField6.getText())+1) +
//                    "' AND " + " `rep_comm_nal`.`code_pm` BETWEEN '" + (Integer.parseInt(this.jTextField3.getText())-1) +
//                    "' AND '" + (Integer.parseInt(this.jTextField4.getText())+1) + "' AND " + " `rep_comm_nal`.`code_n_storage` BETWEEN '" +
//                    (Integer.parseInt(this.jTextField1.getText())-1) + "' AND '" + (Integer.parseInt(this.jTextField2.getText())+1) + "'; ";
//        } catch (NumberFormatException ex) {
//            ex.printStackTrace();
//        }
//        //Create Dialog with print
//        try{
//            initTable(newString, NamesQ);
//            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table,
//                    myframe.getConn(), hm, "/imakante/sales/jasper/nal_simp_01.jasper");
//            td.setVisible(true);
//        } catch (Exception  ex){
//            ex.printStackTrace();
//            constructDialod(newString, 0, NamesQ);
//            System.out.println("Ne moga da nameria faila  ");
//        }
//        
    }
    
    private void fillBlanck(){
        if(jTextField1.getText()==""){jTextField1.setText("1");}
        if(jTextField2.getText()==""){jTextField2.setText("999999999");}
       
    }
    
}
