/*
 * FrmAct.java
 *
 * Created on Петък, 2005, Юни 24, 12:35
 */

package imakante.salary;

import java.io.FileInputStream;
import java.util.HashMap;

public class FrmAct extends javax.swing.JInternalFrame implements java.awt.event.WindowListener{
  
    public FrmAct(javax.swing.JFrame getParentFrame, java.sql.Connection srcCN,String FnAME, String SQLStrM, String formName)
    throws java.sql.SQLException {
        super(formName,true, true, true, true);
        JFParentFrame = getParentFrame;
        dbInternal=srcCN;
        freport = FnAME;
        initStRs();
        initModelTable();
        initComponents();
        
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        
    }
 
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(jTable);
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041f\u0440\u0435\u0433\u043b\u0435\u0434");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bPerfomPreview(evt);
            }
        });
        jButton1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                bPressPreview(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u041e\u0442\u043a\u0430\u0437");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bPerformQuit(evt);
            }
        });
        jButton2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                bPressQuit(evt);
            }
        });

        jPanel2.add(jButton2);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void bPressPreview(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_bPressPreview
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButton1.doClick();}
    }//GEN-LAST:event_bPressPreview
    
    private void bPressQuit(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_bPressQuit
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButton2.doClick();}
    }//GEN-LAST:event_bPressQuit
    
    private void bPerfomPreview(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bPerfomPreview
        
        java.util.HashMap reportParam = new HashMap();
        
        try{
            java.io.FileInputStream fs = new FileInputStream(freport);
        } catch (java.io.FileNotFoundException  ioex){
            System.out.println("Ne moga da nameria faila  ");
        }
        fName =  salary_main.getNFirm();
        reportParam.put("name", fName);
        try {
            rsCus = stCus.executeQuery(strSQL);
        } catch(java.sql.SQLException sqle) {
            
        }
        javax.swing.JDialog formPrint = new imakante.salary.frmPrint(JFParentFrame,true,dbInternal,freport,reportParam);
        formPrint.setVisible(true);
        
    }//GEN-LAST:event_bPerfomPreview
    
    private void bPerformQuit(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bPerformQuit
        
    }//GEN-LAST:event_bPerformQuit
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    public static javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    javax.swing.JFrame JFParentFrame;
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stCus;
    public static java.sql.ResultSet rsCus;
    public static Object Content[][];
    public static String freport,fName;
    public java.util.HashMap reportParam;
    public static int rowNum = 0;
    public static int total = 0;
    
    public static final String strSQL = "SELECT main_ls.nomer, main_ls.first, main_ls.second, main_ls.family, main_ls.egn FROM main_ls WHERE main_ls.nomer IS NOT NULL AND main_ls.nomer ORDER by main_ls.nomer ";
    public static final String Names[] = {"","\u041d\u043e\u043c\u0435\u0440", "\u0418\u043c\u0435", "\u041f\u0440\u0435\u0437\u0438\u043c\u0435",
            "\u0424\u0430\u043c\u0438\u043b\u0438\u044f","\u0415\u0413\u041d"};
            public static imakante.com.CustomTableModel model;
            public static imakante.com.CustomTable jTable;
            
            
            
            protected void UnloadWindow(){
                try {
                    rsCus.close();
                    stCus.close();
                } catch(java.sql.SQLException e) {
                    javax.swing.JOptionPane.showMessageDialog(null,"\u0413\u0440\u0435\u0448\u043a\u0430 \u0418\u041b\u0421-\u042103\u0420  \u0412\u044a\u0437\u043d\u0438\u043a\u043d\u0430\u043b \u043f\u0440\u043e\u0431\u043b\u0435\u043c \u043f\u0440\u0438 \u0437\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u0440\u0435\u0441\u0443\u0440\u0441\u0438.\n"
                            
                            ,"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.WARNING_MESSAGE);
                }
                this.dispose();
                
            }
            public static void initStRs(){
                try {
                    stCus = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                            java.sql.ResultSet.CONCUR_READ_ONLY);
                    rsCus = stCus.executeQuery(strSQL);
                    if(rsCus!=null){System.out.println("imakame rs");}
                } catch (java.sql.SQLException e) {javax.swing.JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",javax.swing.JOptionPane.WARNING_MESSAGE);}
                
            }
            public static void initModelTable(){
                model = new imakante.com.CustomTableModel(dbInternal, rsCus, null);
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
