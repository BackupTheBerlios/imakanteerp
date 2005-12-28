package imakante.com;

public class NewMain extends javax.swing.JFrame {
    
    public NewMain() {
        getSProp();
        ConstructRights();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        jButton1.setText("\u0421\u041a\u041b\u0410\u0414");

        jButton2.setText("\u041b\u0421 \u0418 \u0422\u0420\u0417");

        jButton3.setText("\u0421\u0427\u0415\u0422\u041e\u0412\u041e\u0414\u0421\u0422\u0412\u041e");

        jButton4.setText("\u041f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0441\u0442\u0432\u043e");

        jButton5.setText("\u0418\u0417\u0425\u041e\u0414");

        jLabel1.setText("jLabel1");

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, layout.createSequentialGroup()
                        .add(jButton1)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton2)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton3)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton4)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton5))
                    .add(jLabel1))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 279, Short.MAX_VALUE)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton1)
                    .add(jButton2)
                    .add(jButton3)
                    .add(jButton4)
                    .add(jButton5))
                .addContainerGap())
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    
    public static void main(String args[]) {
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
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    // End of variables declaration//GEN-END:variables
    /// Important constants
    // Modules count
    public static final int MOD_COUNT = 4;
    // Module indexes
    public static final int MOD_ADMINISTRATIV = 0;
    public static final int MOD_SALARY = 1;
    public static final int MOD_SALES = 2;
    public static final int MOD_ACCOUNTING = 3;
    /// Other variables
    // Module status
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
    
    public static String getUser_home() {
        return user_home;
    }
    
    public static void setUser_home(String aUser_home) {
        user_home = aUser_home;
    }
    
    public static void setUser_dir(String aUser_dir) {
        user_dir = aUser_dir;
    }
    
}
