package imakante.com;

public class NewMain extends javax.swing.JFrame {
    
    public NewMain() {
        getSProp();
        //  ConstructRights(); // ??
        this.setTitle("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415 - \u0413\u041b\u0410\u0412\u0415\u041d \u041f\u0410\u041d\u0415\u041b     \u0432\u0435\u0440\u0441\u0438\u044f 0.7.2");
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        defaultTip1 = new org.jdesktop.swingx.tips.DefaultTip();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jBSales = new javax.swing.JButton();
        jBLS = new javax.swing.JButton();
        jBACC = new javax.swing.JButton();
        jBMN = new javax.swing.JButton();
        jbExit = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jBLS1 = new javax.swing.JButton();
        jBLS2 = new javax.swing.JButton();
        jBLS3 = new javax.swing.JButton();
        labelUser = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        jmMainMenu = new javax.swing.JMenu();
        jmiLogin = new javax.swing.JMenuItem();
        jmiLogout = new javax.swing.JMenuItem();
        jSeparator1 = new javax.swing.JSeparator();
        jmLF = new javax.swing.JMenu();
        jSeparator2 = new javax.swing.JSeparator();
        jmiExit = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(0, 0, 153));
        setIconImage(getIconImage());
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        jPanel1.setBackground(new java.awt.Color(47, 90, 145));
        jLabel1.setBackground(new java.awt.Color(0, 0, 153));
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakantebeta.png")));
        jLabel1.setText("Imakante Screen");

        jBSales.setFont(new java.awt.Font("Tahoma", 0, 10));
        jBSales.setText("\u0421\u041a\u041b\u0410\u0414");
        jBSales.setMaximumSize(new java.awt.Dimension(115, 23));
        jBSales.setMinimumSize(new java.awt.Dimension(115, 23));
        jBSales.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jBSalesActionPerformed(evt);
            }
        });

        jBLS.setFont(new java.awt.Font("Tahoma", 0, 10));
        jBLS.setText("\u041b\u0421 \u0418 \u0422\u0420\u0417");
        jBLS.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jBLSActionPerformed(evt);
            }
        });

        jBACC.setFont(new java.awt.Font("Tahoma", 0, 10));
        jBACC.setText("\u0421\u0427\u0415\u0422\u041e\u0412\u041e\u0414\u0421\u0422\u0412\u041e");
        jBACC.setEnabled(false);

        jBMN.setFont(new java.awt.Font("Tahoma", 0, 10));
        jBMN.setText("\u041f\u0420\u041e\u0418\u0417\u0412\u041e\u0414\u0421\u0422\u0412\u041e");
        jBMN.setEnabled(false);

        jbExit.setText("\u0418\u0417\u0425\u041e\u0414");
        jbExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbExitActionPerformed(evt);
            }
        });

        jButton1.setFont(new java.awt.Font("Tahoma", 0, 10));
        jButton1.setText("\u041b\u041e\u0413\u0418\u0421\u0422\u0418\u041a\u0410");

        jButton2.setFont(new java.awt.Font("Tahoma", 0, 10));
        jButton2.setText("\u0421\u0422\u0410\u0422\u0418\u0421\u0422\u0418\u041a\u0410");

        jBLS1.setFont(new java.awt.Font("Tahoma", 0, 10));
        jBLS1.setText("\u0410\u0414\u041c\u0418\u041d\u0418\u0421\u0422\u0420\u0410\u0426\u0418\u042f");
        jBLS1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jBLS1ActionPerformed(evt);
            }
        });

        jBLS2.setFont(new java.awt.Font("Tahoma", 0, 10));
        jBLS2.setText("\u041b\u0418\u0417\u0418\u041d\u0413");
        jBLS2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jBLS2ActionPerformed(evt);
            }
        });

        jBLS3.setFont(new java.awt.Font("Tahoma", 0, 10));
        jBLS3.setText("\u041e\u0421\u041d\u041e\u0412\u041d\u0418 \u0421\u0420\u0415\u0414\u0421\u0422\u0412\u0410");
        jBLS3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jBLS3ActionPerformed(evt);
            }
        });

        labelUser.setForeground(new java.awt.Color(255, 255, 255));
        labelUser.setText("\u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430");

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                            .add(jBMN, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 126, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jBSales, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 126, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED))
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jButton2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 128, Short.MAX_VALUE)
                        .add(4, 4, 4)))
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                        .add(jButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 139, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jBLS1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 140, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(jBLS, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 143, Short.MAX_VALUE)
                            .add(jBACC, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 143, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                            .add(jBLS3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jBLS2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 140, Short.MAX_VALUE))))
                .add(69, 69, 69)
                .add(jbExit)
                .add(310, 310, 310))
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(labelUser, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 314, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(571, Short.MAX_VALUE))
            .add(jPanel1Layout.createSequentialGroup()
                .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 596, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(299, Short.MAX_VALUE))
        );

        jPanel1Layout.linkSize(new java.awt.Component[] {jBACC, jBLS, jBLS1, jBLS2, jBLS3, jBMN, jBSales, jButton1, jButton2}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jBSales, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jBLS2)
                    .add(jBLS))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jBACC)
                    .add(jBLS3)
                    .add(jBMN))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton2)
                    .add(jButton1)
                    .add(jBLS1)
                    .add(jbExit))
                .add(8, 8, 8)
                .add(labelUser)
                .addContainerGap())
        );

        jmMainMenu.setText("\u041f\u0420\u041e\u0413\u0420\u0410\u041c\u0410");
        jmiLogin.setText("\u0412\u0445\u043e\u0434 \u0432 \u0431\u0430\u0437\u0430\u0442\u0430");
        jmiLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jmiLoginActionPerformed(evt);
            }
        });

        jmMainMenu.add(jmiLogin);

        jmiLogout.setText("\u0418\u0437\u0445\u043e\u0434 \u043e\u0442 \u0431\u0430\u0437\u0430\u0442\u0430");
        jmiLogout.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jmiLogoutActionPerformed(evt);
            }
        });

        jmMainMenu.add(jmiLogout);

        jmMainMenu.add(jSeparator1);

        new LFManager(this.jmLF);
        jmLF.setText("\u0412\u044a\u043d\u0448\u0435\u043d \u0432\u0438\u0434 \u043d\u0430 \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430");
        jmMainMenu.add(jmLF);

        jmMainMenu.add(jSeparator2);

        jmiExit.setFont(new java.awt.Font("Tahoma", 1, 11));
        jmiExit.setText("\u0418\u0417\u0425\u041e\u0414");
        jmMainMenu.add(jmiExit);

        jMenuBar1.add(jmMainMenu);

        setJMenuBar(jMenuBar1);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 598, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 382, Short.MAX_VALUE)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 382, Short.MAX_VALUE))
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-605)/2, (screenSize.height-443)/2, 605, 443);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jmiLogoutActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jmiLogoutActionPerformed
        try {
            if(this.dbConn == null) {
            } else {
                dbConn.close();
                dbConn = null;
            }
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        changeUserLable("\u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430");
    }//GEN-LAST:event_jmiLogoutActionPerformed
    
    private void jBLS3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jBLS3ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jBLS3ActionPerformed
    
    private void jBLS2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jBLS2ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jBLS2ActionPerformed
    
    private void jBLS1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jBLS1ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jBLS1ActionPerformed
    
    private void jBLSActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jBLSActionPerformed
        loadSalaryMain();
    }//GEN-LAST:event_jBLSActionPerformed
    
    private void jbExitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbExitActionPerformed
        try {
            if(this.dbConn == null) {
            } else {
                dbConn.close();
                dbConn = null;
            }
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        System.exit(1);
    }//GEN-LAST:event_jbExitActionPerformed
    
    private void jmiLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jmiLoginActionPerformed
        loginDialog();
    }//GEN-LAST:event_jmiLoginActionPerformed
    
    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        System.out.println("end NewMain - formWindowClosed ");
    }//GEN-LAST:event_formWindowClosed
    
    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        System.out.println("end NewMain - formWindowClosing");
    }//GEN-LAST:event_formWindowClosing
    
    private void jBSalesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jBSalesActionPerformed
        if(this.getConnection() == null) {
            loginDialog();
        } else {
            loadSalesMain();
        }
    }//GEN-LAST:event_jBSalesActionPerformed
    
    
    public static void main(String args[]) {
//        String sysLook = javax.swing.UIManager.getSystemLookAndFeelClassName();
//        try {
//            javax.swing.UIManager.setLookAndFeel(sysLook);
//        } catch(Exception ex) { ex.printStackTrace(); }
        new LFManager();
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NewMain().setVisible(true);
                
            }
        });
    }
    
    // Connection related
    public static final boolean isConnected() {
        return Connected;
    }
    
    public static final java.sql.Connection getConnection() {
        return dbConn;
    }
    
    public static final void setConnection(java.sql.Connection conn) {
        try {
            if (dbConn != null) {
                dbConn.close();
            }
            setDbConn(conn);
            setConnected(true);
        } catch (java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
    }
    
    // User and pass info
    public static final String getUser() {
        return dbUser;
    }
    
    public static final void setUser(String sUser) {
        setDbUser(sUser);
    }
    
    public static final String getPassword() {
        return dbPass;
    }
    
    public static final void setPassword(String sPass) {
        setDbPass(sPass);
    }
    
    
    public static final boolean connect(){
        if (Connected) {
            javax.swing.JOptionPane.showMessageDialog(null,java.util.ResourceBundle.getBundle("{err_mes}").getString("{FirstL_OUT}"),
                    java.util.ResourceBundle.getBundle("{mainB}").getString("{p_name}"),javax.swing.JOptionPane.WARNING_MESSAGE);
            return false;
        }
        dlgLogin dlg = new dlgLogin(null, true);
        dlg.setVisible(true);
        if (dbConn != null){
            return true;
        } else {
            javax.swing.JOptionPane.showMessageDialog(null,java.util.ResourceBundle.getBundle("{err_mes}").getString("{conn_problem}"),
                    java.util.ResourceBundle.getBundle("{mainB}").getString("{p_name}"),javax.swing.JOptionPane.WARNING_MESSAGE);
        }
        return false;
    }
    
    public static final boolean disconnect(){
        if (dbConn != null ){
            try {
                dbConn.close();
            } catch(java.sql.SQLException sqle){
                return false;
            }
        }
        setDbConn(null);
        setDbUser(null);
        setDbPass(null);
        setConnected(false);
        return true;
    }
    
    // GET SYSTEM PROP
    private void  getSProp() {
        setOS_name(System.getProperty("os.name"));
        setUser_home(System.getProperty("user.home"));
        setUser_dir(System.getProperty("user.dir"));
        
    }
    
    // Info related
    public static final String getMsgTitle() {
        return "Imakante";
    }
    
    public static final void showAboutDlg(int nModule, String sModuleInfo) {
        dlgAbout dlg = new dlgAbout(null, true, nModule, sModuleInfo);
        dlg.setVisible(true);
    }
    
    // User RIGHTS
    private void ConstructRights(){
        currentRight = new imakante.com.userRights(dbConn);
    }
    
    public static int getRight(int modul, int rightn){
        int outright = 0;
        outright = currentRight.getRight(modul, rightn);
        return outright;
    }
    
    //BUTON RELATED
    private void disableButtons(){
        
        
    }
    
    //Create login dialog
    private void loginDialog(){
        imakante.com.dlgLogin login = new imakante.com.dlgLogin(this, true);
        login.setVisible(true);
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private org.jdesktop.swingx.tips.DefaultTip defaultTip1;
    private static javax.swing.JButton jBACC;
    private static javax.swing.JButton jBLS;
    private static javax.swing.JButton jBLS1;
    private static javax.swing.JButton jBLS2;
    private static javax.swing.JButton jBLS3;
    private static javax.swing.JButton jBMN;
    private static javax.swing.JButton jBSales;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JButton jbExit;
    private javax.swing.JMenu jmLF;
    private javax.swing.JMenu jmMainMenu;
    private javax.swing.JMenuItem jmiExit;
    private javax.swing.JMenuItem jmiLogin;
    private javax.swing.JMenuItem jmiLogout;
    private static javax.swing.JLabel labelUser;
    // End of variables declaration//GEN-END:variables
    /// Important constants
    // Modules count
    public static final int MOD_COUNT = 5;
    // Module indexes
    public static final int MOD_ADMINISTRATIV = 0;
    public static final int MOD_SALARY = 1;
    public static final int MOD_SALES = 2;
    public static final int MOD_ACCOUNTING = 3;
    
    // Module status booleans
    private static boolean B_AD = false;
    private static boolean B_SR = false;
    private static boolean B_SL = false;
    private static boolean B_AC = false;
    private static boolean B_MN = false;
    
    private static boolean[] ActiveModules = {false, false, false, false};
    // Connection related
    private static boolean Connected = false;
    private static java.sql.Connection dbConn = null;
    private static String dbUser = null;
    private static String dbPass = null;
    private static int userId = 0;
    private static String userName = null;
    
    
    //SYSTEM PROP
    private static String OS_name;
    private static String user_home;
    private static String user_dir;
    private static String pathrep;
    
    //USER RIGHTS
    private static imakante.com.userRights currentRight;
    private static imakante.com.paramFirm ParamFirm;
    
    public static void setParamFirm(){
        setParamFirm(new imakante.com.paramFirm());
    }
    
    public static void setActiveModules(boolean[] aActiveModules) {
        ActiveModules = aActiveModules;
    }
    
    public static void setConnected(boolean aConnected) {
        Connected = aConnected;
    }
    
    public static void setDbConn(java.sql.Connection aDbConn) {
        dbConn = aDbConn;
    }
    
    public static void setDbUser(String aDbUser) {
        dbUser = aDbUser;
    }
    
    public static String getDbUser(){
        return dbUser;
    }
    
    public static void setDbPass(String aDbPass) {
        dbPass = aDbPass;
    }
    
    public static void setOS_name(String aOS_name) {
        OS_name = aOS_name;
    }
    public static String getOS_name(){
        return OS_name;
    }
    public static String getUser_home() {
        return user_home;
    }
    
    public static void setUser_home(String aUser_home) {
        user_home = aUser_home;
    }
    
    public static void setUser_dir(String aUser_dir) {
        user_dir = aUser_dir;
    }
    public static void changeUserLable(String Label){
        labelUser.setText(Label);
        labelUser.repaint();
    }
   
    //thread for Sale
    private void loadSalesMain() {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new imakante.sales.sales_main("\u0418\u041C\u0410\u041A\u0410\u041D\u0422\u0415   \u041C\u041E\u0414\u0423\u041B: " +
                        "'\u0421\u041A\u041B\u0410\u0414 / \u041F\u0420\u041E\u0414\u0410\u0416\u0411\u0418'").setVisible(true);
            }
        });
        
    }
    
    // Salary's thread
    private void loadSalaryMain() {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run()  {
                new imakante.salary.salary_main().setVisible(true);
            }
        });
    }
    
    public static boolean isB_AD() {
        return B_AD;
    }
    
    public static void setB_AD(boolean aB_AD) {
        
        B_AD = aB_AD;
    }
    
    public static boolean isB_SR() {
        return B_SR;
    }
    
    public static void setB_SR(boolean aB_SR) {
        if(aB_SR)
            jBLS.setEnabled(false);
        else
            jBLS.setEnabled(true);
        B_SR = aB_SR;
    }
    
    public static boolean isB_SL() {
        return B_SL;
    }
    
    public static void setB_SL(boolean aB_SL) {
        if(aB_SL)
            jBSales.setEnabled(false);
        else
            jBSales.setEnabled(true);
        B_SL = aB_SL;
    }
    
    public static boolean isB_AC() {
        return B_AC;
    }
    
    public static void setB_AC(boolean aB_AC) {
        if(aB_AC)
            jBACC.setEnabled(false);
        else
            jBACC.setEnabled(true);
        B_AC = aB_AC;
    }
    
    public static boolean isB_MN() {
        return B_MN;
    }
    
    public static void setB_MN(boolean aB_MN) {
        if(aB_MN)
            jBMN.setEnabled(false);
        else
            jBMN.setEnabled(true);
        B_MN = aB_MN;
    }
    
    public static int getUserId() {
        return userId;
    }
    
    public static void setUserId(int aUserId) {
        userId = aUserId;
    }
    
    public static String getUserName() {
        return userName;
    }
    
    public static void setUserName(String aUserName) {
        userName = aUserName;
    }
    
    public static imakante.com.paramFirm getParamFirm() {
        return ParamFirm;
    }
    
    public static void setParamFirm(imakante.com.paramFirm aParamFirm) {
        ParamFirm = aParamFirm;
    }
    
    public static String getPathrep() {
        return pathrep;
    }
    
    public static void setPathrep(String aPathrep) {
        pathrep = aPathrep;
    }
    
}// end class

