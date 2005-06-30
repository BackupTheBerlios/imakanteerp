package imakante.salary;



import imakante.com.CustomTable;
import imakante.com.CustomTableModel;

import java.awt.event.*;


import javax.swing.JScrollPane;
import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.Toolkit;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.border.EtchedBorder;
import javax.swing.JPanel;

public class FrmOtdel extends javax.swing.JInternalFrame implements WindowListener {
    javax.swing.JFrame JFParentFrame;
    public static java.sql.Connection cnCus;
    public static java.sql.Statement stCus;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    public static Object Content[][];
    public static int rowNum = 0;
    public static int total = 0;
    public static JPanel jPanel1 = new JPanel();
    private javax.swing.JButton jButton1 = new JButton();
    private javax.swing.JButton jButton2 = new JButton();
    private javax.swing.JButton jButton3 = new JButton();
    private javax.swing.JButton jButton4 = new JButton();
    public static final String Names[] = {"", "Номер", "Име на отделa"};
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    
    Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
    private JPanel jPanel2 = new JPanel();
    public static JScrollPane jScrollPane1 = new JScrollPane();
    
    public FrmOtdel(Connection srcCN, JFrame getParentFrame)
    throws SQLException {
        super("Списък Отдели", false, true, false, true);
        this.setClosable(true);
        
        setSize((screen.width - 480), (screen.height - 360));
        setLocation(50,25);
        JFParentFrame = getParentFrame;
        
        cnCus = srcCN;
        stCus = cnCus.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        strSQL = "SELECT * FROM ls_otdeli ORDER BY nomer ASC";
        try {
            rsCus = stCus.executeQuery(strSQL);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
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
        
        jPanel1.setLayout(null);
        jPanel1.setBounds(new Rectangle(5, 5, 335, 350));
        jPanel1.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        
        this.setSize(new Dimension(480, 396));
        this.getContentPane().setLayout(null);
        jButton1.setText("Нов отдел");
        jButton1.setBounds(new Rectangle(10, 5, 100, 25));
        jButton2.setText("Редакция");
        jButton2.setBounds(new Rectangle(10, 40, 100, 25));
        jButton3.setText("Изтриване");
        jButton3.setBounds(new Rectangle(10, 75, 100, 25));
        jButton4.setText("Опресни");
        jButton4.setBounds(new Rectangle(10, 320, 100, 25));
        jPanel2.setBounds(new Rectangle(345, 5, 120, 350));
        jPanel2.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel2.setLayout(null);
        jScrollPane1.setBounds(new Rectangle(5, 5, 325, 340));
        jPanel2.add(jButton1, null);
        jPanel2.add(jButton2, null);
        jPanel2.add(jButton3, null);
        jPanel2.add(jButton4, null);
        this.getContentPane().add(jPanel2, null);
        jPanel1.add(jScrollPane1, null);
        this.getContentPane().add(jPanel1, null);
        
        jButton1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton1_actionPerformed(e);
            }
        });
        jButton2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton2_actionPerformed(e);
            }
        });
        jButton3.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton3_actionPerformed(e);
            }
        });
        jButton4.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton4_actionPerformed(e);
            }
        });
    }
    
    private void jButton1_actionPerformed(ActionEvent e) {
        JDialog JDAdd = new imakante.salary.frmAddOtdeli(true, JFParentFrame,cnCus, "");
        JDAdd.show();
    }
    
    private void jButton2_actionPerformed(ActionEvent e)
    
    {
        try{
            if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                JDialog JDEdit = new frmAddOtdeli(false,
                        JFParentFrame, cnCus,
                        "SELECT * FROM ls_otdeli WHERE id = "
                        + jTable.getValueAt(jTable.getSelectedRow(), 0));
                
                JDEdit.show();}
        } catch (Exception sqlE) {
            if (sqlE.getMessage() != null) {
                System.out.println(sqlE.getMessage());
            } else {
                JOptionPane.showMessageDialog(null,"Моля изберете запис.","Не е избран запис",
                        JOptionPane.INFORMATION_MESSAGE);
            }
        }
    }
    
    private void jButton3_actionPerformed(ActionEvent e) {
        
    }
    
    private void jButton4_actionPerformed(ActionEvent e) {
        reloadRecord();
    }
    
    public static void reloadRecord() {
        try{
            rsCus.close();
            stCus.close();
            stCus = cnCus.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            strSQL = "SELECT * FROM ls_otdeli ORDER BY nomer ASC";
            try {
                rsCus = stCus.executeQuery(strSQL);
            } catch (SQLException e) {JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);}
            
            jScrollPane1.getViewport().remove(jTable);
            model = new CustomTableModel(cnCus, rsCus, Names);
            jTable = new CustomTable(model);
            jScrollPane1.getViewport().add(jTable);
            jPanel1.repaint();
            
        } catch (Exception e){}
    }
    protected void UnloadWindow(){
        try {
            rsCus.close();
            stCus.close();
        } catch(SQLException e) {
            JOptionPane.showMessageDialog(null,"Грешка ИЛС-С03Р  Възникнал проблем при затваряне на ресурси.\n","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
        this.dispose();
        
    }
    
    
    public void windowOpened(WindowEvent e){
    }
    public void windowClosing(WindowEvent e){
        UnloadWindow();
    }
    public void windowClosed(WindowEvent e){
    }
    public void windowIconified(WindowEvent e){
    }
    public void windowDeiconified(WindowEvent e){
    }
    public void windowActivated(WindowEvent e){
    }
    public void windowDeactivated(WindowEvent e){
    }
}