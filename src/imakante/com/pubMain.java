

package imakante.com;

import imakante.com.*;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JFrame;
import java.util.Properties;

public class pubMain {
 
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
    // Main frame
    public static JFrame mainJFrame = null;
    
    /** Creates a new instance of pubMain */
    public pubMain() {
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
            dbConn = conn;
            Connected = true;
        } catch (SQLException e) {
            System.err.println("SQLException: " + e.getMessage());
            e.printStackTrace();
        }
    }
    // User and pass info
    public static final String getUser() {
        return dbUser;
    }
    public static final void setUser(String sUser) {
        dbUser = sUser;
    }
    public static final String getPassword() {
        return dbPass;
    }
    public static final void setPassword(String sPass) {
        dbPass = sPass;
    }
    // Login / logout
    public static final boolean connect(){
        if (Connected) {
            JOptionPane.showMessageDialog(null,"Най - напред излезте от базата !",getMsgTitle(),JOptionPane.WARNING_MESSAGE);
            return false;
        }
        // Do login
        dlgLogin dlg = new dlgLogin(null, true);
        dlg.setVisible(true);
        if (dbConn == null){
            JOptionPane.showMessageDialog(null,"Възникнал проблем при осъществаване на връзка с базата.",getMsgTitle(),JOptionPane.WARNING_MESSAGE);
        }
        // Update user log
        return true;
    }
    public static final boolean disconnect(){
        if (dbConn != null ){
            try {
                dbConn.close();
            } catch(SQLException e){
                JOptionPane.showMessageDialog(null,"Неуспешен изход от базата.",getMsgTitle(),JOptionPane.WARNING_MESSAGE);
                System.err.println("SQLException: " + e.getMessage());
                return false;
            }
        }
        dbConn = null;
        dbUser = null;
        dbPass = null;
        Connected = false;
        // Update user log
        return true;
    }
    //// Module related
    public static final boolean IsModuleActive(int nModIndex) {
        if (nModIndex<0 || nModIndex>MOD_COUNT) return false;
        return ActiveModules[nModIndex];
    }
    public static final boolean StartModule(int nModIndex) {
        // Check if it is already active
        if (IsModuleActive(nModIndex)) return true;
        // Activate module
        ActiveModules[nModIndex] = true;
        switch(nModIndex){
            case MOD_ADMINISTRATIV:
                break;
            case MOD_SALARY:
                break;
            case MOD_SALES:
                break;
            case MOD_ACCOUNTING:
                break;
            default:
                return false;
        }
        return true;
    }
    public static final boolean StopModule(int nModIndex) {
        // Check if it is already active
        if (!IsModuleActive(nModIndex)) return true;
        // Activate module
        switch(nModIndex){
            case MOD_ADMINISTRATIV:
                break;
            case MOD_SALARY:
                break;
            case MOD_SALES:
                break;
            case MOD_ACCOUNTING:
                break;
            default:
                return false;
        }
        ActiveModules[nModIndex] = false;
        return true;
    }
    //// Info related
    public static final String getMsgTitle() {
        return "Imakante ERP";
    }
    /** Returns system properties filename with full path,
     * depending on OS type
     */
    
    public static final String getPropFile() {
        String s, ss;
        try {
            ss = System.getProperty("os.name");
            if (ss.startsWith("Windows")) {
                s = System.getenv("windir");
            } else {
                s = "/etc";
            }
            s += System.getProperty("file.separator");
            s += "imakante.xml";
        } catch (SecurityException e) {
            System.err.println("SecurityException: " + e.getMessage());
            return "";
        } catch (Exception e) {
            System.err.println("Exception: " + e.getMessage());
            return "";
        }
        return s;
    }
    
    public static final String getAvailableLAFsFile() {
        String s, ss;
        try {
            ss = System.getProperty("os.name");
            if (ss.startsWith("Windows")) {
                s = System.getenv("windir");
            } else {
                s = "/etc";
            }
            s += System.getProperty("file.separator");
            s += "available_lafs.xml";
        } catch (SecurityException e) {
            System.err.println("SecurityException: " + e.getMessage());
            return "";
        } catch (Exception e) {
            System.err.println("Exception: " + e.getMessage());
            return "";
        }
        return s;
    }
    
    
    
    /**
     * This method creates and displays tipical About dialog
     * Dialog is based on dlgAbout class and displays custom info,
     * provided in sModuleInfo string.
     * nModule is a module index in Imakante ERP
     */
    
    
    
    public static final void showAboutDlg(int nModule, String sModuleInfo) {
        dlgAbout dlg = new dlgAbout(null, true, nModule, sModuleInfo);
        dlg.setVisible(true);
    }
}
    
