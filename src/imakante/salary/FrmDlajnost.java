package imakante.salary;



import java.awt.Rectangle;

import javax.swing.BorderFactory;
import javax.swing.border.EtchedBorder;

public class FrmDlajnost extends javax.swing.JInternalFrame implements java.awt.event.WindowListener {
    javax.swing.JFrame JFParentFrame;
    public static java.sql.Connection cnCus;
    public static java.sql.Statement stCus;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    public static Object Content[][];
    public static int rowNum = 0;
    public static int total = 0;
    public static javax.swing.JPanel jPanel1 = new javax.swing.JPanel();
    private javax.swing.JButton jButton1 = new javax.swing.JButton();
    private javax.swing.JButton jButton2 = new javax.swing.JButton();
    private javax.swing.JButton jButton3 = new javax.swing.JButton();
    private javax.swing.JButton jButton4 = new javax.swing.JButton();
    public static final String Names[] = {"", "\u041d\u043e\u043c\u0435\u0440",
            "\u0418\u043c\u0435 \u043d\u0430 \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0442\u0430", 
            "\u041a\u043e\u0434 \u043f\u043e \u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430"};
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    
    java.awt.Dimension screen = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
    private javax.swing.JPanel jPanel3 = new javax.swing.JPanel();
    public static javax.swing.JScrollPane jScrollPane1 = new javax.swing.JScrollPane();
    
    public FrmDlajnost(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame)
    throws java.sql.SQLException {
        super("\u0421\u043f\u0438\u0441\u044a\u043a \u0414\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0438", false, true, false, true);
        this.setClosable(true);
        
        setSize((screen.width - 540), (screen.height - 360));
        setLocation(100,20);
        JFParentFrame = getParentFrame;
        
        cnCus = srcCN;
        stCus = cnCus.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,java.sql.ResultSet.CONCUR_UPDATABLE);
        strSQL = "SELECT * FROM ls_dlajnosti ORDER BY nomer ASC";
        try {
            rsCus = stCus.executeQuery(strSQL);
        } catch (java.sql.SQLException e) {
          javax.swing.JOptionPane.showMessageDialog(null,"\u0412\u044a\u0437\u043d\u0438\u043a\u043d\u0430\u043b \u043f\u0440\u043e\u0431\u043b\u0435\u043c \u043f\u0440\u0438 \u043e\u0441\u044a\u0449\u0435\u0441\u0442\u0432\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430.\n "
                  ,"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.WARNING_MESSAGE);
        }
        
        model = new imakante.com.CustomTableModel(cnCus, rsCus, Names);
        jTable = new imakante.com.CustomTable(model);
        try {
            jbInit();
        } catch(Exception e) {
            e.printStackTrace();
        }
        jScrollPane1.getViewport().add(jTable, null);
        java.awt.Dimension  dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int   x = (((dim.width)-(this.getSize().width))/2);
        int  y = (((dim.height)-(this.getSize().height))/2);
                
        this.setLocation(x,y);
    }
    
    private void jbInit() throws Exception {
        
        this.setSize(new java.awt.Dimension(545, 398));
        this.getContentPane().setLayout(null);
        jPanel1.setLayout(null);
        jPanel1.setBounds(new Rectangle(5, 5, 380, 355));
        jPanel1.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        
        jButton1.setText("\u041d\u043e\u0432a \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442");
        jButton1.setBounds(new Rectangle(10, 5, 120, 25));
        jButton2.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButton2.setBounds(new Rectangle(10, 40, 120, 25));
        jButton3.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButton3.setBounds(new Rectangle(10, 75, 125, 25));
        jButton4.setText("\u041e\u043f\u0440\u0435\u0441\u043d\u0438");
        jButton4.setBounds(new Rectangle(15, 320, 120, 25));
        jPanel3.setBounds(new Rectangle(390, 5, 140, 355));
        jPanel3.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel3.setLayout(null);
        jScrollPane1.setBounds(new Rectangle(5, 5, 370, 345));
        jPanel3.add(jButton1, null);
        jPanel3.add(jButton2, null);
        jPanel3.add(jButton3, null);
        jPanel3.add(jButton4, null);
        jPanel1.add(jScrollPane1, null);
        this.getContentPane().add(jPanel1, null);
        this.getContentPane().add(jPanel3, null);
        
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent e) {
                jButton1_actionPerformed(e);
            }
        });
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent e) {
                jButton2_actionPerformed(e);
            }
        });
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent e) {
                jButton3_actionPerformed(e);
            }
        });
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent e) {
                jButton4_actionPerformed(e);
            }
        });
    }
    
    private void jButton1_actionPerformed(java.awt.event.ActionEvent e) {
        javax.swing.JDialog JDAdd = new frmAdddlaj(true, JFParentFrame,cnCus, "");
        JDAdd.setVisible(true);
    }
    
    private void jButton2_actionPerformed(java.awt.event.ActionEvent e)
    
    {
        try{
            if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                javax.swing.JDialog JDEdit = new frmAdddlaj(false,
                        JFParentFrame, cnCus,
                        "SELECT * FROM ls_dlajnosti WHERE id = "
                        + jTable.getValueAt(jTable.getSelectedRow(), 0));
                
                JDEdit.show();}
        } catch (Exception sqlE) {
            if (sqlE.getMessage() != null) {
                System.out.println(sqlE.getMessage());
            } else {
                javax.swing.JOptionPane.showMessageDialog(null,"\u041c\u043e\u043b\u044f \u0438\u0437\u0431\u0435\u0440\u0435\u0442\u0435 \u0437\u0430\u043f\u0438\u0441.",
                        "\u041d\u0435 \u0435 \u0438\u0437\u0431\u0440\u0430\u043d \u0437\u0430\u043f\u0438\u0441",
                        javax.swing.JOptionPane.INFORMATION_MESSAGE);
            }
        }
    }
    
    private void jButton3_actionPerformed(java.awt.event.ActionEvent e) {
        
    }
    
    private void jButton4_actionPerformed(java.awt.event.ActionEvent e) {
        reloadRecord();
    }
    
    public static void reloadRecord() {
        try{
            rsCus.close();
            stCus.close();
            stCus = cnCus.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE, java.sql.ResultSet.CONCUR_UPDATABLE);
            strSQL = "SELECT * FROM ls_dlajnosti ORDER BY nomer ASC";
            try {
                rsCus = stCus.executeQuery(strSQL);
            } catch (java.sql.SQLException e) {javax.swing.JOptionPane.showMessageDialog(null,"\u0413\u0440\u0435\u0448\u043a\u0430 \u0418\u041b\u0421-\u042102\u0420  \u0412\u044a\u0437\u043d\u0438\u043a\u043d\u0430\u043b \u043f\u0440\u043e\u0431\u043b\u0435\u043c \u043f\u0440\u0438 \u043e\u0441\u044a\u0449\u0435\u0441\u0442\u0432\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430.\n",
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.WARNING_MESSAGE);}
            
            jScrollPane1.getViewport().remove(jTable);
            model = new imakante.com.CustomTableModel(cnCus, rsCus, Names);
            jTable = new imakante.com.CustomTable(model);
            jScrollPane1.getViewport().add(jTable);
            jPanel1.repaint();
            
        } catch (Exception e){}
    }
    protected void UnloadWindow(){
        try {
            rsCus.close();
            stCus.close();
        } catch(java.sql.SQLException e) {
            javax.swing.JOptionPane.showMessageDialog(null,"\u0412\u044a\u0437\u043d\u0438\u043a\u043d\u0430\u043b \u043f\u0440\u043e\u0431\u043b\u0435\u043c \u043f\u0440\u0438 \u0437\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u0440\u0435\u0441\u0443\u0440\u0441\u0438\n",
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.WARNING_MESSAGE);
        }
        this.dispose();
        
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