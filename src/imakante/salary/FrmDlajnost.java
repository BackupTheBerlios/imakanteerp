package imakante.salary;


import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.JScrollPane;
import java.awt.Dimension;
import java.awt.Rectangle;
import javax.swing.JPanel;
import javax.swing.BorderFactory;
import javax.swing.border.EtchedBorder;

public class FrmDlajnost extends JInternalFrame implements WindowListener {
    JFrame JFParentFrame;
    public static Connection cnCus;
    public static Statement stCus;
    public static ResultSet rsCus;
    public static String strSQL;
    public static Object Content[][];
    public static int rowNum = 0;
    public static int total = 0;
    public static JPanel jPanel1 = new JPanel();
    private JButton jButton1 = new JButton();
    private JButton jButton2 = new JButton();
    private JButton jButton3 = new JButton();
    private JButton jButton4 = new JButton();
    public static final String Names[] = {"", "Номер", "Име на длъжността", "Код по Номенклатура"};
    public static CustomTableModel model;
    public static CustomTable jTable;
    
    Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
    private JPanel jPanel3 = new JPanel();
    public static JScrollPane jScrollPane1 = new JScrollPane();
    
    public FrmDlajnost(Connection srcCN, JFrame getParentFrame)
    throws SQLException {
        super("Списък Длъжности", false, true, false, true);
        this.setClosable(true);
        
        setSize((screen.width - 540), (screen.height - 360));
        setLocation(100,20);
        JFParentFrame = getParentFrame;
        
        cnCus = srcCN;
        stCus = cnCus.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        strSQL = "SELECT * FROM dlaj ORDER BY nomer ASC";
        try {
            rsCus = stCus.executeQuery(strSQL);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
        
        model = new CustomTableModel(cnCus, rsCus, Names);
        jTable = new CustomTable(model);
        try {
            jbInit();
        } catch(Exception e) {
            e.printStackTrace();
        }
        jScrollPane1.getViewport().add(jTable, null);
    }
    
    private void jbInit() throws Exception {
        
        this.setSize(new Dimension(545, 398));
        this.getContentPane().setLayout(null);
        jPanel1.setLayout(null);
        jPanel1.setBounds(new Rectangle(5, 5, 380, 355));
        jPanel1.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        
        jButton1.setText("Новa длъжност");
        jButton1.setBounds(new Rectangle(10, 5, 120, 25));
        jButton2.setText("Редакция");
        jButton2.setBounds(new Rectangle(10, 40, 120, 25));
        jButton3.setText("Изтриване");
        jButton3.setBounds(new Rectangle(10, 75, 125, 25));
        jButton4.setText("Опресни");
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
        JDialog JDAdd = new frmAdddlaj(true, JFParentFrame,cnCus, "");
        JDAdd.show();
    }
    
    private void jButton2_actionPerformed(ActionEvent e)
    
    {
        try{
            if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                JDialog JDEdit = new frmAdddlaj(false,
                        JFParentFrame, cnCus,
                        "SELECT * FROM dlaj WHERE id = "
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
            strSQL = "SELECT * FROM dlaj ORDER BY nomer ASC";
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