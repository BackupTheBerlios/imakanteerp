
package imakante.sales;

import java.awt.event.WindowEvent;
import java.net.MalformedURLException;
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
        jCheckBox1 = new javax.swing.JCheckBox();
        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jCheckBox2 = new javax.swing.JCheckBox();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        jCheckBox3 = new javax.swing.JCheckBox();
        jCheckBox4 = new javax.swing.JCheckBox();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442\u0438");
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel1.setText("\u0421\u043a\u043b\u0430\u0434          \u043e\u0442:");

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

        jCheckBox1.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox1.setToolTipText("\u041f\u0440\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043e\u043f\u0446\u0438\u044f \u0432 \u0441\u043f\u0440\u0430\u0432\u043a\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u0432\u0437\u0438\u043c\u0430\u0442 \u043f\u0440\u0435\u0434\u0432\u0438\u0434 \u0441\u043a\u043b\u0430\u0434\u043e\u0432\u0435\u0442\u0435");
        jCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));

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
                .add(19, 19, 19)
                .add(jCheckBox1)
                .addContainerGap(44, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jLabel1)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel2)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jCheckBox1))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel3.setText("\u0414\u043e\u0441\u0442\u0430\u0432\u0447\u0438\u043a  \u043e\u0442:");

        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        jLabel4.setText("\u0434\u043e:");

        jTextField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField4KeyPressed(evt);
            }
        });

        jCheckBox2.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox2.setToolTipText("\u041f\u0440\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043e\u043f\u0446\u0438\u044f \u0432 \u0441\u043f\u0440\u0430\u0432\u043a\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u0438\u043c\u0430 \u0432 \u043f\u0440\u0435\u0434\u0432\u0438\u0434 \u0434\u043e\u0441\u0442\u0430\u0432\u0447\u0438\u043a\u0430 \u043d\u0430 \u0430\u0440\u0442\u0438\u043a\u0443\u043b\u0430");
        jCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox2.setMargin(new java.awt.Insets(0, 0, 0, 0));

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
                .add(20, 20, 20)
                .add(jCheckBox2)
                .addContainerGap(44, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jLabel3)
                .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel4)
                .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jCheckBox2))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 11));
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

        jButton3.setText("\u0417\u0430\u043f\u0430\u0437\u0438 \u0441\u043f\u0440\u0430\u0432\u043a\u0430\u0442\u0430");

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jButton3)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 227, Short.MAX_VALUE)
                .add(jButton1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButton2)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jButton1)
                .add(jButton2)
                .add(jButton3))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel5.setText("\u0410\u0440\u0442\u0438\u043a\u0443\u043b\u0438    \u043e\u0442:");

        jTextField5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField5KeyPressed(evt);
            }
        });

        jLabel6.setText("\u0434\u043e:");

        jTextField6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField6KeyPressed(evt);
            }
        });

        jCheckBox3.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox3.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox4.setSelected(true);
        jCheckBox4.setText("\u0410\u0440\u0442\u0438\u043a\u0443\u043b\u0438 \u043f\u043e \u043f\u0430\u0440\u0442\u0438\u0434\u0438");
        jCheckBox4.setToolTipText("\u041f\u0440\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043e\u043f\u0446\u0438\u044f \u0432 \u0441\u043f\u0440\u0430\u0432\u043a\u0430\u0442\u0430 \u0441\u0435 \u043f\u043e\u0434\u0430\u0432\u0430\u0442 \u0430\u0440\u0442\u0438\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e \u043f\u0430\u0440\u0442\u0438\u0434\u0430");
        jCheckBox4.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox4.setMargin(new java.awt.Insets(0, 0, 0, 0));

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jLabel5)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jCheckBox4)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 138, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel6)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 153, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(22, 22, 22)
                        .add(jCheckBox3)))
                .addContainerGap(42, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel5)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel6)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox3))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jCheckBox4)
                .addContainerGap())
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
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
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 52, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-578)/2, (screenSize.height-236)/2, 578, 236);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField6();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField6.getText().equals("")){jTextField6.setText("999999999");jTextField6.transferFocus();}
        }
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jTextField5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField5KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField5();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField5.getText().equals("")){jTextField5.setText("1");jTextField5.transferFocus();}
        }
    }//GEN-LAST:event_jTextField5KeyPressed
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField4();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField4.getText().equals("")){jTextField4.setText("999999999");jTextField4.transferFocus();}
        }
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField3();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField3.getText().equals("")){jTextField3.setText("1");jTextField3.transferFocus();}
        }
    }//GEN-LAST:event_jTextField3KeyPressed
    
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
    private javax.swing.JButton jButton3;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JCheckBox jCheckBox2;
    private javax.swing.JCheckBox jCheckBox3;
    private javax.swing.JCheckBox jCheckBox4;
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
    
    private String strContragent = "SELECT "
            + "`rep_comm_nal`.`code_contragent`, `rep_comm_nal`.`name_n_contragent`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_contragent` LIKE  '%";
    
    private String strProduct = "SELECT "
            + "`rep_comm_nal`.`code_pm`, `rep_comm_nal`.`name_pm`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_pm` LIKE  '%";
    
    private String strStore = "SELECT "
            + "`rep_comm_nal`.`code_n_storage`, `rep_comm_nal`.`name_n_storage`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_n_storage` LIKE  '%";
    
    private String[] NamesQ= {"\u041a\u043e\u0434 \u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442",
    "\u0418\u043c\u0435 \u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442",
    "\u041a\u043e\u0434 \u043d\u0430 \u043f\u0440\u043e\u0434\u0443\u043a\u0442",
    "\u0418\u043c\u0435 \u043d\u0430 \u043f\u0440\u043e\u0434\u0443\u043a\u0442",
    "\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442",
    "\u041a\u043e\u0434 \u043d\u0430 \u0441\u043a\u043b\u0430\u0434",
    "\u0418\u043c\u0435 \u043d\u0430 \u0441\u043a\u043b\u0430\u0434"};
    
    private String qu =   "SELECT DISTINCT CONCAT(1";
   
    
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
        if(CompNumber == 3){
            this.jTextField3.setText(""+this.intTransfer);}
        if(CompNumber == 4){
            this.jTextField4.setText(""+this.intTransfer);}
        if(CompNumber == 5){
            this.jTextField5.setText(""+this.intTransfer);}
        if(CompNumber == 6){
            this.jTextField6.setText(""+this.intTransfer);}
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
    
    private void processField5() {
        String newString =strProduct + this.jTextField5.getText() + "%'";
        constructDialod(newString, 5, Names);
        
    }
    
    private void processField6() {
        if(this.jTextField5.getText()==""){this.jTextField5.setText("0");}
        String newString = strProduct + this.jTextField6.getText() + "%' AND `rep_comm_nal`.`code_pm` >= " + this.jTextField5.getText() + ";";
        constructDialod(newString, 6, Names);
    }
    private void processField3() {
        String newString = strContragent + this.jTextField3.getText() + "%'";
        constructDialod(newString, 3, Names);
        
    }
    
    private void processField4() {
        if(this.jTextField3.getText()==""){this.jTextField3.setText("0");}
        String newString = strContragent + this.jTextField4.getText() + "%' AND `rep_comm_nal`.`code_contragent` >= " + this.jTextField3.getText() + ";";
        constructDialod(newString, 4, Names);
    }
    
    private void processReport(){
        String newString=qu;
        if (this.jCheckBox4.isSelected()==false){
            if (this.jCheckBox1.isSelected()){
                newString = newString + ",rep_comm_nal.code_n_storage ";
            }
            if (this.jCheckBox2.isSelected()){
                newString = newString + ",rep_comm_nal.code_contragent ";
            }
            if (this.jCheckBox2.isSelected()){
                newString = newString + ",rep_comm_nal.id_pm ";
            }
        }
        newString = newString + ") AS con ";
        
        if (this.jCheckBox1.isSelected()==false){
            newString = newString
                    + "rep_comm_nal.code_n_storage, ";
            
        }
        
        if (this.jCheckBox2.isSelected()==false){
            newString = newString
                    + "rep_comm_nal.code_contragent, "
                    + "rep_comm_nal.name_n_contragent, ";
        }
        
        if (this.jCheckBox3.isSelected()==false){
            
            newString = newString
                    + "rep_comm_nal.code_pm, "
                    + "rep_comm_nal.name_pm, "
                    + "rep_comm_nal.barcod_pm, ";
            if(this.jCheckBox4.isSelected()){
                newString = newString
                        + "rep_comm_nal.parcel_pc, ";
            }
        }
        newString = newString
                + "SUM(rep_comm_nal.quant_nal), "
                + "SUM(rep_comm_nal.miarka3), "
                + "SUM(rep_comm_nal.miarka2) "
                + "SUM(rep_comm_nal.ostatak)"
                + "SUM(rep_comm_nal.TSENA0)"
                + "SUM(rep_comm_nal.TSENA2)"
                + "SUM(rep_comm_nal.TSENA3)"
                + "rep_comm_nal.code_contragent"
                + "rep_comm_nal.name_n_contragent"
                + " FROM "
                + " `rep_comm_nal` ";
        
        
        try {
            newString = newString + " WHERE `rep_comm_nal`.`code_contragent` BETWEEN '" +
                    (Integer.parseInt(this.jTextField5.getText())-1) + "' AND '" + (Integer.parseInt(this.jTextField6.getText())+1) +
                    "' AND " + " `rep_comm_nal`.`code_pm` BETWEEN '" + (Integer.parseInt(this.jTextField3.getText())-1) +
                    "' AND '" + (Integer.parseInt(this.jTextField4.getText())+1) + "' AND " + " `rep_comm_nal`.`code_n_storage` BETWEEN '" +
                    (Integer.parseInt(this.jTextField1.getText())-1) + "' AND '" + (Integer.parseInt(this.jTextField2.getText())+1) + "'; ";
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        //Create Dialog with print
        try{
            initTable(newString, NamesQ);
            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table,
                    myframe.getConn(), hm, "/imakante/sales/jasper/nal_simp_01.jasper");
            td.setVisible(true);
        } catch (Exception  ex){
            ex.printStackTrace();
            constructDialod(newString, 0, NamesQ);
            System.out.println("Ne moga da nameria faila  ");
        }
        
    }
    
    private void fillBlanck(){
        if(jTextField1.getText()==""){jTextField1.setText("1");}
        if(jTextField2.getText()==""){jTextField2.setText("999999999");}
        if(jTextField3.getText()==""){jTextField3.setText("1");}
        if(jTextField4.getText()==""){jTextField4.setText("999999999");}
        if(jTextField5.getText()==""){jTextField5.setText("1");}
        if(jTextField6.getText()==""){jTextField6.setText("999999999");}
    }
    
}
