package imakante.com;

import imakante.sales.sales_main;

public class NewMain extends javax.swing.JFrame {
    
    public NewMain() {
        getSProp();
        //  ConstructRights(); // ??
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jBSales = new javax.swing.JButton();
        jBLS = new javax.swing.JButton();
        jBACC = new javax.swing.JButton();
        jBMN = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();
        jSeparator1 = new javax.swing.JSeparator();
        jMenuItem3 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(0, 0, 153));
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        jPanel1.setBackground(new java.awt.Color(0, 0, 102));
        jLabel1.setBackground(new java.awt.Color(0, 0, 153));
        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\imakante\\imakante_l2.jpg"));
        jLabel1.setText("jLabel1");

        jBSales.setText("\u0421\u041a\u041b\u0410\u0414");
        jBSales.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jBSalesActionPerformed(evt);
            }
        });

        jBLS.setText("\u041b\u0421 \u0418 \u0422\u0420\u0417");

        jBACC.setText("\u0421\u0427\u0415\u0422\u041e\u0412\u041e\u0414\u0421\u0422\u0412\u041e");

        jBMN.setText("\u041f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0441\u0442\u0432\u043e");

        jButton5.setText("\u0418\u0417\u0425\u041e\u0414");

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 598, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(47, Short.MAX_VALUE))
            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jBSales)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jBLS)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jBACC)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jBMN)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 93, Short.MAX_VALUE)
                .add(jButton5)
                .add(91, 91, 91))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jBSales)
                    .add(jBLS)
                    .add(jBACC)
                    .add(jBMN)
                    .add(jButton5))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jMenu1.setText("\u041f\u0420\u041e\u0413\u0420\u0410\u041c\u0410");
        jMenuItem1.setText("\u0412\u0445\u043e\u0434 \u0432 \u0431\u0430\u0437\u0430\u0442\u0430");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });

        jMenu1.add(jMenuItem1);

        jMenuItem2.setText("\u0418\u0437\u0445\u043e\u0434 \u043e\u0442 \u0431\u0430\u0437\u0430\u0442\u0430");
        jMenu1.add(jMenuItem2);

        jMenu1.add(jSeparator1);

        jMenuItem3.setFont(new java.awt.Font("Tahoma", 1, 11));
        jMenuItem3.setText("\u0418\u0417\u0425\u041e\u0414");
        jMenu1.add(jMenuItem3);

        jMenuBar1.add(jMenu1);

        setJMenuBar(jMenuBar1);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(47, 47, 47))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 334, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
            .add(org.jdesktop.layout.GroupLayout.LEADING, layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 334, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-605)/2, (screenSize.height-389)/2, 605, 389);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
        loginDialog();
    }//GEN-LAST:event_jMenuItem1ActionPerformed
    
    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
// TODO add your handling code here:
        System.out.println("end NewMain - formWindowClosed ");
    }//GEN-LAST:event_formWindowClosed
    
    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
// TODO add your handling code here:
        System.out.println("end NewMain - formWindowClosing");
    }//GEN-LAST:event_formWindowClosing
    
    private void jBSalesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jBSalesActionPerformed
// TODO add your handling code here:
        loadSalesMain();
    }//GEN-LAST:event_jBSalesActionPerformed
    
    
    public static void main(String args[]) {
        String sysLook = javax.swing.UIManager.getSystemLookAndFeelClassName();
        try{
            javax.swing.UIManager.setLookAndFeel(sysLook);} catch(Exception ex){ex.printStackTrace();}
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
            if (null == conn) return;
            if (dbConn != null) dbConn.close();
            setDbConn(conn);
            setConnected(true);
        } catch (java.sql.SQLException sqle) {
            System.err.println("SQLException: " + sqle.getMessage());
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
                System.err.println("SQLException: " + sqle.getMessage());
                return false;
            }
        }
        setDbConn(null);
        setDbUser(null);
        setDbPass(null);
        setConnected(false);
        return true;
    }
    
    
    /// GET SYSTEM PROP
    private void  getSProp(){
        
        setOS_name(System.getProperty("os.name"));
        setUser_home(System.getProperty("user.home"));
        setUser_dir(System.getProperty("user.dir"));
        
    }
    
    //// Info related
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
        outright = currentRight.getRight(modul,rightn);
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
    private static javax.swing.JButton jBACC;
    private static javax.swing.JButton jBLS;
    private static javax.swing.JButton jBMN;
    private static javax.swing.JButton jBSales;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JSeparator jSeparator1;
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
    
    private static boolean[] ActiveModules = {false,false,false,false};
    // Connection related
    private static boolean Connected = false;
    private static java.sql.Connection dbConn = null;
    private static String dbUser = null;
    private static String dbPass = null;
    
    //SYSTEM PROP
    private static String OS_name;
    private static String user_home;
    private static String user_dir;
    
    //USER RIGHTS
    private static imakante.com.userRights currentRight;
    
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
    
    //tread for Sale
    private void loadSalesMain() {
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new imakante.sales.sales_main().setVisible(true);
                
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
        
        if(aB_SR){
            jBLS.setEnabled(false);
        }else{
            jBLS.setEnabled(true);
        }
        B_SR = aB_SR;
    }
    
    public static boolean isB_SL() {
        
        return B_SL;
    }
    
    public static void setB_SL(boolean aB_SL) {
        if(aB_SL){
            jBSales.setEnabled(false);
        }else{
            jBSales.setEnabled(true);
        }
        B_SL = aB_SL;
    }
    
    public static boolean isB_AC() {
        return B_AC;
    }
    
    public static void setB_AC(boolean aB_AC) {
        if(aB_AC){
            jBACC.setEnabled(false);
        }else{
            jBACC.setEnabled(true);
        }
        B_AC = aB_AC;
    }
    
    public static boolean isB_MN() {
        return B_MN;
    }
    
    public static void setB_MN(boolean aB_MN) {
         if(aB_MN){
            jBMN.setEnabled(false);
        }else{
            jBMN.setEnabled(true);
        }
        B_MN = aB_MN;
    }
    
}// end class

