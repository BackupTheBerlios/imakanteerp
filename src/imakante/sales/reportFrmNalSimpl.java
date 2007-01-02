
package imakante.sales;

import java.awt.event.WindowEvent;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class reportFrmNalSimpl extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public reportFrmNalSimpl(String title,imakante.com.vcomponents.iFrame frame, int levelx) {
        super(title);
        myframe = frame;
        this.levelx = levelx;
        prepareConn();     // zapazva connection
        prepareStm();
        initComponents();
        this.jLabel7.setText(""+this.levelx);
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jCheckBox4 = new javax.swing.JCheckBox();
        jCheckBox5 = new javax.swing.JCheckBox();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        jButton5 = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442\u0438 \u041e\u043f\u0440\u043e\u0441\u0442\u0435\u043d\u0430");
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel1.setText("\u0421\u043a\u043b\u0430\u0434         ");

        jTextField1.setText("\u0432\u0441\u0438\u0447\u043a\u0438");
        jTextField1.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                jTextField1PropertyChange(evt);
            }
        });
        jTextField1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField1FocusLost(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jLabel3.setText("\u0414\u043e\u0441\u0442\u0430\u0432\u0447\u0438\u043a  ");

        jTextField3.setText("\u0432\u0441\u0438\u0447\u043a\u0438");
        jTextField3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField3FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField3FocusLost(evt);
            }
        });
        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        jCheckBox4.setSelected(true);
        jCheckBox4.setText("\u0410\u0440\u0442\u0438\u043a\u0443\u043b\u0438 \u043f\u043e \u043f\u0430\u0440\u0442\u0438\u0434\u0438");
        jCheckBox4.setToolTipText("\u041f\u0440\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043e\u043f\u0446\u0438\u044f \u0432 \u0441\u043f\u0440\u0430\u0432\u043a\u0430\u0442\u0430 \u0441\u0435 \u043f\u043e\u0434\u0430\u0432\u0430\u0442 \u0430\u0440\u0442\u0438\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e \u043f\u0430\u0440\u0442\u0438\u0434\u0430");
        jCheckBox4.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox4.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCheckBox4ActionPerformed(evt);
            }
        });
        jCheckBox4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox4KeyPressed(evt);
            }
        });

        jCheckBox5.setText("\u0426\u0435\u043d\u0438 \u0431\u0435\u0437 \u0414\u0414\u0421");
        jCheckBox5.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox5.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox5KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 139, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel3))
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(jCheckBox4)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(jCheckBox5))
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 139, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(112, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jCheckBox4)
                    .add(jCheckBox5)))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jButton1.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u0439 \u0433\u0440\u0430\u0444\u0438\u0447\u043d\u043e");
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

        jButton3.setText("\u0420\u0435\u0434\u0430\u043a\u0442\u043e\u0440 \u043d\u0430 \u0441\u043f\u0440\u0430\u0432\u043a\u0438");

        jButton4.setText("\u0417\u0430\u043f\u0430\u0437\u0438 \u0441\u043f\u0440\u0430\u0432\u043a\u0430");

        jButton5.setFont(new java.awt.Font("Tahoma", 1, 11));
        jButton5.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u0439 \u0437\u0430 \u0414\u041e\u0421");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3Layout.createSequentialGroup()
                .add(jLabel7)
                .add(30, 30, 30)
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jButton5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 168, Short.MAX_VALUE)
                    .add(jButton1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 168, Short.MAX_VALUE))
                .add(56, 56, 56)
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jButton4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 187, Short.MAX_VALUE)
                    .add(jButton3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 187, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButton2)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton2)
                    .add(jLabel7)
                    .add(jButton5)
                    .add(jButton3))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton1)
                    .add(jButton4)))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
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
        setBounds((screenSize.width-557)/2, (screenSize.height-171)/2, 557, 171);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton5ActionPerformed
    
    private void jTextField3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusLost
        fLost(jTextField3);
    }//GEN-LAST:event_jTextField3FocusLost
    
    private void jTextField3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusGained
        fGain(jTextField3);
    }//GEN-LAST:event_jTextField3FocusGained
    
    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        fGain(jTextField1);
    }//GEN-LAST:event_jTextField1FocusGained
    
    private void jCheckBox5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox5KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            jCheckBox5.transferFocus();
        }
    }//GEN-LAST:event_jCheckBox5KeyPressed
    
    private void jCheckBox4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCheckBox4ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jCheckBox4ActionPerformed
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        fLost(jTextField1);
    }//GEN-LAST:event_jTextField1FocusLost
    
    private void jCheckBox4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox4KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            jCheckBox4.transferFocus();
        }
        
    }//GEN-LAST:event_jCheckBox4KeyPressed
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        codeContrFiedProcess(evt);
    }//GEN-LAST:event_jTextField3KeyPressed

    private void codeContrFiedProcess(final java.awt.event.KeyEvent evt) {
        if(java.awt.event.KeyEvent.VK_ESCAPE== evt.getKeyCode()){
            jTextField3.setText("\u0432\u0441\u0438\u0447\u043a\u0438");
            code_sklad = "";
        }
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField3();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField3.getText().equals("")){
            jTextField3.setText("\u0432\u0441\u0438\u0447\u043a\u0438");
            }
            jTextField3.transferFocus();
        }
    }
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        fillBlanck();
        if(checkFieldsInt()){
            processReport();}else {
            javax.swing.JOptionPane.showMessageDialog(null,
                    "\u041D\u0435\u043A\u043E\u0440\u0435\u043A\u0442\u043D\u0430 \u0441\u0442\u043E\u0439\u043D\u043E\u0441\u0442",
                    "\u0413\u0420\u0415\u0428\u041A\u0410 \u0412 \u0417\u0410\u042F\u0412\u041A\u0410\u0422\u0410!",
                    javax.swing.JOptionPane.ERROR_MESSAGE);
            }
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jTextField1PropertyChange(java.beans.PropertyChangeEvent evt) {//GEN-FIRST:event_jTextField1PropertyChange
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField1PropertyChange
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        codeSkladFiedProcess(evt);
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void codeSkladFiedProcess(final java.awt.event.KeyEvent evt) {
        if(java.awt.event.KeyEvent.VK_ESCAPE== evt.getKeyCode()){
            jTextField1.setText("\u0432\u0441\u0438\u0447\u043a\u0438");
            code_sklad = "";
        }
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField1();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField1.getText().equals("")){jTextField1.setText("1");jTextField1.transferFocus();}else{jTextField1.transferFocus();}
            
        }
    }
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JCheckBox jCheckBox4;
    private javax.swing.JCheckBox jCheckBox5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField3;
    // End of variables declaration//GEN-END:variables
    private  imakante.com.vcomponents.iFrame myframe;
    
    private  java.sql.Connection conn;
    private java.sql.Statement stm;
    private  java.sql.ResultSet rs;
    
    private java.io.FileInputStream fs=null;
    private java.net.URL url=null;
    
    private java.util.HashMap hm = null;
    private int levelx = 3;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    private String idFCodeContr = "0";
    private String code_contragent = "";
    private String code_sklad = "";
    private String[] Names= { "\u041a\u041e\u0414", "\u0418\u041c\u0415"};
    private  int intTransfer;
    private  int CompNumber = 0;
    
    private String strContragent = "SELECT "
            + "`rep_comm_nal`.`code_contragent` , `rep_comm_nal`.`name_n_contragent` "
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_contragent` LIKE  '%";
    
    
    private String strStore = "SELECT "
            + "`rep_comm_nal`.`code_n_storage`, `rep_comm_nal`.`name_n_storage`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_n_storage` LIKE  '%";
    
    private String[] NamesQ= {"con"};
    private List namesQ = new ArrayList();
    private int nubColums = 0;
    private String qu =   "SELECT ";
    private String fileName="nal_simp_01.jasper";
    
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
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table, "\u0418\u0437\u0431\u043e\u0440", "","cod");
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
            this.jTextField1.setText(""+this.intTransfer);
            this.code_sklad = "" + intTransfer;
        }
        
        if(CompNumber == 3){
            this.jTextField3.setText(""+this.intTransfer);}
        this.code_contragent = "" + intTransfer;
        
    }
    
    private void processField1() {
        String newString = strStore + this.jTextField1.getText() + "%'";
        constructDialod(newString, 1, Names);
        
    }
    
    
    private void processField3() {
        String newString = strContragent + this.jTextField3.getText() + "%'";
        constructDialod(newString, 3, Names);
        
    }
    
    
    
    private void processReport(){
        String newString=qu;
        // namesQ = "";
        nubColums = 0;
        namesQ.add("con ");
        newString = newString + " DISTINCT CONCAT(rep_comm_nal.level, rep_comm_nal.code_pm ";
        this.nubColums = nubColums + 1;
        
        if (this.jCheckBox4.isSelected()){
            newString = newString + ",rep_comm_nal.parcel_pc ";
        }
        newString = newString + ") AS con ";
        newString = newString
                + ",rep_comm_nal.code_pm "
                + ",rep_comm_nal.name_pm ";
        namesQ.add("\u041A\u043E\u0434 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
        this.nubColums = nubColums + 1;
        namesQ.add("\u0418\u043C\u0435 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
        this.nubColums = nubColums + 1;
        
        if(this.jCheckBox4.isSelected()){
            newString = newString
                    + ",rep_comm_nal.parcel_pc ";
            
            namesQ.add("\u043F\u0430\u0440\u0442\u0438\u0434\u0430"); //v tablitsata pribaviame kolona partida
            this.nubColums = nubColums + 1;
        }
        
        newString = newString
                + ",SUM(rep_comm_nal.quant_nal), "
                + "SUM(rep_comm_nal.miarka3_value) AS suma3, "
                + "SUM(rep_comm_nal.miarka2_value) AS suma2, "
                + "SUM(rep_comm_nal.ostatak) AS suma_ostatak, "
                + "rep_comm_nal.price1_pp, "
                + "SUM(rep_comm_nal.stock_value1) "
                + " FROM "
                + " `rep_comm_nal` ";
        namesQ.add("\u041A\u043E\u043B\u0438\u0447\u0435\u0441\u0442\u0432\u043E"); //kolichestvo
        namesQ.add("\u041E\u043F\u0430\u043A\u043E\u0432\u043A\u0430 3"); //miarka 3
        namesQ.add("\u041E\u043F\u0430\u043A\u043E\u0432\u043A\u0430 2"); // miarka 2
        namesQ.add("\u041E\u0441\u0442\u0430\u0442\u044A\u043A"); // ostatak
        namesQ.add("\u041F\u044A\u0440\u0432\u0430 \u0446\u0435\u043D\u0430"); // parva tsena
        namesQ.add("\u0421\u0442\u043E\u0439\u043D\u043E\u0441\u0442 \u043F\u043E \u043B\u0438\u0441\u0442\u0430 1"); // stoinost po parva tsena
        this.nubColums = nubColums + 6;
        
        try {
            newString = newString + " WHERE `rep_comm_nal`.`code_contragent` LIKE'" +
                    code_contragent
                    + "%' AND `rep_comm_nal`.`code_n_storage` LIKE '" +
                    code_sklad
                    +"%'"
                    ;
            
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        
        if(levelx==3){
            newString = newString + " AND rep_comm_nal.level = 0";
        }
        
        if(levelx==2){
            newString = newString + " AND rep_comm_nal.level = 1";
        }
        if(levelx==1){
            newString = newString + " AND rep_comm_nal.level IN(0,1)";
        }
        newString = newString + " GROUP BY con ORDER BY rep_comm_nal.code_pm ASC";
        
        String[] Names = (String[]) namesQ.toArray(new String[this.nubColums]);
        //Create Dialog with print
        System.out.println(newString);
//
//        if(this.jCheckBox3.isSelected() && this.jCheckBox4.isSelected()==false){
//            if(jCheckBox5.isSelected()){
//                fileName="nal_simp_03.jasper";}else{fileName="nal_simp_03DDS.jasper";}
//        }
        
        try{
            initTable(newString, Names);
            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table,
                    myframe.getConn(), constructHash(), fileName, "\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u043d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442", "");
            td.setVisible(true);
        } catch (Exception  ex){
            ex.printStackTrace();
            constructDialod(newString, 0, Names);
            System.out.println("Ne moga da nameria faila  ");
        }
        
    }
    
    private void fillBlanck(){
        if(jTextField1.getText().equals("")){jTextField1.setText("");}
        if(jTextField3.getText().equals("")){jTextField3.setText("");}
    }
    
    
    private java.util.HashMap constructHash(){
        java.util.HashMap hmap = new java.util.HashMap();
        hmap.put("sklad",jTextField1.getText());
        hmap.put("kontragent",jTextField3.getText());
        if(levelx==3){
            hmap.put("levex","0");
            hmap.put("levey","");
        }
        if(levelx==2){
            hmap.put("levex","");
            hmap.put("levey","1");
        }
        if(levelx==1){
            hmap.put("levex","0");
            hmap.put("levey","1");
        }
        return hmap;
    }
    private boolean checkFieldsInt(){
        boolean check = false;
        if(jTextField1.getText().equals("") || jTextField1.getText().equals("\u0432\u0441\u0438\u0447\u043a\u0438") ){return true;} else{try {
            
            int i = Integer.parseInt(jTextField1.getText());
            check = true;
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            this.jTextField1.setText("\u0432\u0441\u0438\u0447\u043a\u0438");
            return false;
        }}
        if(jTextField3.getText().equals("") || jTextField3.getText().equals("\u0432\u0441\u0438\u0447\u043a\u0438") ){return true;} else{try {
            int i = Integer.parseInt(jTextField3.getText());
            check = true;
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            this.jTextField3.setText("\u0432\u0441\u0438\u0447\u043a\u0438");
            return false;
        }}
        return check;
        }
        
        private void fGain(javax.swing.JComponent jtf){
            jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 0, 51), null));
        }
        
        private void fLost(javax.swing.JComponent jtf){
            jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 255, 255), null));
        }
    }
