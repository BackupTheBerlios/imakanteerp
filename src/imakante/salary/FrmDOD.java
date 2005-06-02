package imakante.salary;

import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.awt.*;
import java.awt.event.*;

import java.sql.*;

import java.text.*;

import java.util.*;

import javax.swing.*;
import javax.swing.JScrollPane;
import java.awt.Dimension;
import java.awt.Rectangle;

public class FrmDOD extends JInternalFrame implements WindowListener {
    JFrame JFParentFrame;
    public static Connection cnCus;
    public static Statement stCus;
    public static ResultSet rsCus;
    public static String strSQL;
    public static Object Content[][];
    public static int rowNum = 0;
    public static int total = 0;
    public static JScrollPane jScrollPane1 = new JScrollPane();
    public static JPanel jPanel1 = new JPanel();
    private JButton jButton1 = new JButton();
    private JButton jButton2 = new JButton();
    private JButton jButton3 = new JButton();
    private JButton jButton4 = new JButton();
    private JButton jButton5 = new JButton();
    public static final String Names[] = {"","Дата", "Доход", "Сума","Процент"};
    
    public static CustomTableModel model;
    public static CustomTable jTable;
    private JButton jButton6 = new JButton();
    Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
    
    public FrmDOD(Connection srcCN, JFrame getParentFrame)
    throws SQLException {
        super("Списък отдели", false, true, false, true);
        this.setClosable(true);
        
        
        
        setSize((screen.width - 20), (screen.height - 120));
        setLocation(0,0);
        JFParentFrame = getParentFrame;
        
        cnCus = srcCN;
        stCus = cnCus.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_UPDATABLE);
        strSQL = "SELECT * FROM dod ORDER BY Id ASC";
        try {
            rsCus = stCus.executeQuery(strSQL);
        } catch (SQLException e) {JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);}
        
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
        
        jPanel1.setLayout(null);
        
        jScrollPane1.setBounds(new Rectangle(0, 0, screen.width - 30, screen.height - 200));
        jScrollPane1.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
        jScrollPane1.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        jButton1.setText("Нов отдел");
        jButton1.setBounds(new Rectangle(15, screen.height - 180, 120, 23));
        jButton2.setText("Редакция");
        jButton2.setBounds(new Rectangle(140, screen.height - 180, 120, 23));
        jButton3.setText("Изтриване");
        jButton3.setBounds(new Rectangle(265, screen.height - 180, 120, 23));
        jButton4.setText("Печат");
        jButton4.setBounds(new Rectangle(390, screen.height - 180, 120, 23));
        jButton5.setText("Търсене");
        jButton5.setBounds(new Rectangle(515, screen.height - 180, 120, 23));
        jButton6.setText("Опресни");
        jButton6.setBounds(new Rectangle(660, screen.height - 180, 120, 23));
        jPanel1.add(jButton5, null);
        jPanel1.add(jButton4, null);
        jPanel1.add(jButton3, null);
        jPanel1.add(jButton2, null);
        jPanel1.add(jButton1, null);
        jPanel1.add(jButton6, null);
        jPanel1.add(jScrollPane1, null);
        this.getContentPane().add(jPanel1, BorderLayout.CENTER);
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
        jButton5.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton5_actionPerformed(e);
            }
        });
        jButton6.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton6_actionPerformed(e);
            }
        });
        
    }
    
    private void jButton1_actionPerformed(ActionEvent e) {
        JDialog JDAdd = new frmAddDOD(true, JFParentFrame,
                cnCus, "");
        JDAdd.show();
    }
    
    private void jButton2_actionPerformed(ActionEvent e)
    
    {
        try{
            if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                JDialog JDEdit = new frmAddDOD(false,
                        JFParentFrame, cnCus,
                        "SELECT * FROM dod WHERE id = "
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
        try {
            if (jTable.getValueAt(jTable.getSelectedRow(),
                    jTable.getSelectedColumn()) != null) {
                imakante.com.pubMethods PrintingClass = new imakante.com.pubMethods();
                ResultSet rsPrint = stCus
                        .executeQuery("SELECT * FROM dod WHERE id = "
                        + jTable.getValueAt(jTable
                        .getSelectedRow(), 0));
                if (rsPrint.next() == true) {
                    String RecordToPrint = "";
                    java.util.Date CurrentDate = new java.util.Date();
                    SimpleDateFormat SDFDateFormatter = new SimpleDateFormat(
                            "MMM. dd, yyyy", Locale.getDefault());
                    
                    RecordToPrint += "                            ОТДЕЛИ\n";
                    RecordToPrint += "                   Дата на печат          "
                            + SDFDateFormatter.format(CurrentDate)
                            .toString() + "\n\n\n";
                    
                    RecordToPrint += "___________________________________________________________________________________\n\n\n";
                    
                    RecordToPrint += " Номер: "
                            + rsPrint.getString("Id")
                            + "      Име: "
                            + rsPrint.getString("first") + " " + rsPrint.getString("second") + " " +rsPrint.getString("family")
                            + "\n";
                    RecordToPrint += " ЕГН: "
                            + rsPrint.getString("egn") + "     Дата на раждане: " + rsPrint.getString("b_date")
                            + "\n";
                    
                    RecordToPrint += "___________________________________________________________________________________\n";
                    RecordToPrint += "___________________________________________________________________________________\n\n";
                    
                    
                    PrintingClass.printRecord(RecordToPrint,
                            JFParentFrame);
                    
                    CurrentDate = null;
                    SDFDateFormatter = null;
                    RecordToPrint = null;
                    
                } else {
                    JOptionPane
                            .showMessageDialog(
                            null,
                            "Записът е променян. Моля натиснете бутон 'Опресни'!",
                            "Не е избран запис за печат",
                            JOptionPane.WARNING_MESSAGE);
                }
                //Dispose the variable
                rsPrint = null;
                
            }
        } catch (Exception sqlE) {
            if (sqlE.getMessage() != null) {
                System.out.println(sqlE.getMessage());
            } else {
                JOptionPane.showMessageDialog(null,
                        "Моля изберете запис за печат.",
                        "Не е избран зпис",
                        JOptionPane.INFORMATION_MESSAGE);
            }
        }
    }
    
    
    private void jButton5_actionPerformed(ActionEvent e) {
    }
    
    private void jButton6_actionPerformed(ActionEvent e) {
        reloadRecord();
    }
    
    public static void reloadRecord() {
        try{
            rsCus.close();
            stCus.close();
            stCus = cnCus.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            strSQL = "SELECT * FROM dod ORDER BY Id ASC";
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