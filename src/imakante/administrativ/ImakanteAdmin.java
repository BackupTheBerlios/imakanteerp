/*
 * ImakanteAdmin.java
 *
 * Created on ����������, 2005, ��� 23, 12:27
 */

package imakante.administrativ;

import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author  user
 */
public class ImakanteAdmin extends javax.swing.JFrame {
    
    /** Creates new form ImakanteAdmin */
    public ImakanteAdmin() {
        
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        desktopPane = new javax.swing.JDesktopPane();
        jToolBar1 = new javax.swing.JToolBar();
        jLabel1 = new javax.swing.JLabel();
        menuBar = new javax.swing.JMenuBar();
        jConn = new javax.swing.JMenu();
        jConnIn = new javax.swing.JMenuItem();
        jConnExit = new javax.swing.JMenuItem();
        jSeparator1 = new javax.swing.JSeparator();
        jExit = new javax.swing.JMenuItem();
        tableMenu = new javax.swing.JMenu();
        openMenuItem = new javax.swing.JMenuItem();
        saveMenuItem = new javax.swing.JMenuItem();
        saveAsMenuItem = new javax.swing.JMenuItem();
        dbMenu = new javax.swing.JMenu();
        cutMenuItem = new javax.swing.JMenuItem();
        copyMenuItem = new javax.swing.JMenuItem();
        pasteMenuItem = new javax.swing.JMenuItem();
        deleteMenuItem = new javax.swing.JMenuItem();
        helpMenu = new javax.swing.JMenu();
        contentMenuItem = new javax.swing.JMenuItem();
        aboutMenuItem = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("\u0418\u041c\u0410\u041a\u041d\u0422\u0415 \u0410\u0414\u041c\u0418\u041d");
        getContentPane().add(desktopPane, java.awt.BorderLayout.CENTER);

        jLabel1.setText("��������� ���� - " + dbName+ "   ����������" + dbUser);
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jToolBar1.add(jLabel1);

        getContentPane().add(jToolBar1, java.awt.BorderLayout.NORTH);

        jConn.setText("\u0412\u0440\u044a\u0437\u043a\u0430");
        jConnIn.setText("\u0412\u0445\u043e\u0434 \u0432 \u0431\u0430\u0437\u0430 ...");
        jConnIn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jConnInActionPerformed(evt);
            }
        });

        jConn.add(jConnIn);

        jConnExit.setText("\u0418\u0437\u0445\u043e\u0434 \u043e\u0442 \u0431\u0430\u0437\u0430");
        jConnExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jConnExitActionPerformed(evt);
            }
        });

        jConn.add(jConnExit);

        jConn.add(jSeparator1);

        jExit.setText("\u0418\u0417\u0425\u041e\u0414");
        jExit.setToolTipText("\u0418\u0437\u0445\u043e\u0434 \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430");
        jExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jExitActionPerformed(evt);
            }
        });

        jConn.add(jExit);

        menuBar.add(jConn);

        tableMenu.setText("\u0422\u0430\u0431\u043b\u0438\u0446\u0438");
        openMenuItem.setText("\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        openMenuItem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                openMenuItemActionPerformed(evt);
            }
        });

        tableMenu.add(openMenuItem);

        saveMenuItem.setText("Save");
        tableMenu.add(saveMenuItem);

        saveAsMenuItem.setText("Save As ...");
        tableMenu.add(saveAsMenuItem);

        menuBar.add(tableMenu);

        dbMenu.setText("\u0411\u0430\u0437\u0438");
        cutMenuItem.setText("Cut");
        dbMenu.add(cutMenuItem);

        copyMenuItem.setText("Copy");
        dbMenu.add(copyMenuItem);

        pasteMenuItem.setText("Paste");
        dbMenu.add(pasteMenuItem);

        deleteMenuItem.setText("Delete");
        dbMenu.add(deleteMenuItem);

        menuBar.add(dbMenu);

        helpMenu.setText("\u041f\u043e\u043c\u043e\u0449");
        contentMenuItem.setText("Contents");
        helpMenu.add(contentMenuItem);

        aboutMenuItem.setText("About");
        helpMenu.add(aboutMenuItem);

        menuBar.add(helpMenu);

        setJMenuBar(menuBar);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jExitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jExitActionPerformed
        closeConn();
        System.exit(0);
    }//GEN-LAST:event_jExitActionPerformed
    
    private void jConnExitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jConnExitActionPerformed
        closeConn();
    }//GEN-LAST:event_jConnExitActionPerformed
    
    private void openMenuItemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_openMenuItemActionPerformed
        try {
            loadOpen();
        } catch (java.sql.SQLException sqEx){}
    }//GEN-LAST:event_openMenuItemActionPerformed
    
    private void jConnInActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jConnInActionPerformed
        loadConn();
        try {
            makeConn(dbDriver,dbURL,dbUser,dbPass);
        } catch (java.sql.SQLException sql1){
            JOptionPane.showMessageDialog(null,"jConn  ��������� ������� ��� ������������� �� ������ � ������.","��������",JOptionPane.WARNING_MESSAGE);
        }
        
        
    }//GEN-LAST:event_jConnInActionPerformed
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ImakanteAdmin().setVisible(true);
            }
        });
    }
    
    java.sql.Connection dbConn = null;
    public String dbName = null;
    public String dbURL = null;
    public String dbDriver = null;
    public String dbUser = null;
    public String dbPass = null;
    
    public void loadOpen() throws java.sql.SQLException {
        if (dbConn != null){
            OpenTables FormOpen = new OpenTables(dbConn);
            desktopPane.add(FormOpen);
            FormOpen.setVisible(true);
            
        } else {
            JOptionPane.showMessageDialog(null,"Ot open  ��������� ������� ��� ������������� �� ������ � ������.","��������",JOptionPane.WARNING_MESSAGE);
        }
        
    }
    public void loadConn(){
        imakante.com.pubFrmConnection fconn = new imakante.com.pubFrmConnection(this);
        fconn.setVisible(true);
    }
    public java.sql.Connection makeConn(String dbDriver,String dbURL,String dbUser, String dbPass) throws java.sql.SQLException {
        
        String DBDriver = dbDriver;
        String DBSource = dbURL;
        String DBUserName = dbUser;
        String DBPassword = dbPass;
        System.out.println(dbURL);
        System.out.println(dbUser);
        System.out.println(dbPass);
        
        try{
            Class.forName(DBDriver);
            dbConn = DriverManager.getConnection(DBSource,DBUserName ,DBPassword);
        } catch(ClassNotFoundException e)  {
            System.err.println("Failed to load driver");
            e.printStackTrace();
            System.exit(1);
        } catch(SQLException e){
            System.err.println("Unable to connect");
            e.printStackTrace();
            System.exit(1);
        }
        if (dbConn != null){
            
        } else {
            JOptionPane.showMessageDialog(null,"��������� ������� ��� ������������� �� ������ � ������.","��������",JOptionPane.WARNING_MESSAGE);
        }
        return dbConn;
    }
    public void closeConn() {
        if (dbConn != null ){
            try {
                dbConn.close();
            } catch(SQLException sq2){
            }}
        dbName = null;
        dbURL = null;
        dbDriver = null;
        dbUser = null;
        dbPass = null;
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenuItem aboutMenuItem;
    private javax.swing.JMenuItem contentMenuItem;
    private javax.swing.JMenuItem copyMenuItem;
    private javax.swing.JMenuItem cutMenuItem;
    private javax.swing.JMenu dbMenu;
    private javax.swing.JMenuItem deleteMenuItem;
    private javax.swing.JDesktopPane desktopPane;
    private javax.swing.JMenu helpMenu;
    private javax.swing.JMenu jConn;
    private javax.swing.JMenuItem jConnExit;
    private javax.swing.JMenuItem jConnIn;
    private javax.swing.JMenuItem jExit;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JToolBar jToolBar1;
    private javax.swing.JMenuBar menuBar;
    private javax.swing.JMenuItem openMenuItem;
    private javax.swing.JMenuItem pasteMenuItem;
    private javax.swing.JMenuItem saveAsMenuItem;
    private javax.swing.JMenuItem saveMenuItem;
    private javax.swing.JMenu tableMenu;
    // End of variables declaration//GEN-END:variables
    
    
    public String setDBDriver(String strDriver){
        dbDriver = strDriver;
        return dbDriver;
    }
    
    
    public String setDBSource(String strSource){
        dbURL = strSource;
        return dbURL;
    }
    
    
    public String setUser(String strUser){
        dbUser = strUser;
        return dbUser;
    }
    public String setFirm(String strFirm){
        
        dbName = strFirm;
        return dbName;
    }
    
    public String setPass(String strPass){
        dbPass = strPass;
        return dbPass;
    }
    
}
