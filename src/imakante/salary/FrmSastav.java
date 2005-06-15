package imakante.salary;

import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.JScrollPane;
import javax.swing.border.BevelBorder;
import javax.swing.border.EtchedBorder;
import java.awt.Dimension;
import java.awt.Rectangle;


public class FrmSastav extends JInternalFrame implements WindowListener {
    JFrame JFParentFrame;
    public static Connection cnCus;
    public static Statement stCus;
    public static ResultSet rsCus;
    public static String strSQL;
    public static Object Content[][];
    public static int rowNum = 0;
    public static int total = 0;
    public static JScrollPane jScrollPane1 = new JScrollPane();
    public static JPanel panel = new JPanel();
    public static JPanel jPanelTable = new JPanel();
    public static JPanel jPanelButtons = new JPanel();
    private JButton jButton1 = new JButton();
    private JButton jButton2 = new JButton();
    private JButton jButton3 = new JButton();
    private JButton jButton4 = new JButton();
    private JButton jButton5 = new JButton();
    private JButton jButton6 = new JButton();
    private JButton jButton7 = new JButton();
    public static final String Names[] = {"", "Номер на служител", "Име",
            "Презиме", "Фамилия", "ЕГН", "Дата на раждане", "Пол",
            "Номер на ЛК", "Издадена на", "Област", "Пощенски код",
            "Населено място", "Адрес на местоживеене","Домашен телфон",
            "Мобилен телефон", "Е-м@йл", "Номер на договора", "Дата на назначаване",
            "Дата на постъпване", "Дата на напускане", "Последен ден в осигуряване",
            "Основание на договора", "Срок на договора",
            "Дни стаж", "Месеци стаж", "Години стаж", "Категория работник", "Бележки" };
            public static imakante.com.CustomTableModel model;
            public static imakante.com.CustomTable jTable;
            
            Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
            public int lMonth;
            public int lYear;
            java.awt.Font fontP;
            
            public FrmSastav(Connection srcCN, JFrame getParentFrame,int pMonth, int pYear)
            throws SQLException {
                super("Списък служители", false, true,true, true);
                this.setClosable(true);
                
                
                setSize(900, 600);
                setLocation(20,20);
                JFParentFrame = getParentFrame;
                lMonth = pMonth;
                lYear = pYear;
                cnCus = srcCN;
                stCus = cnCus.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                strSQL = "SELECT Id, nomer, first, second, family, egn, DATE_FORMAT(`b_date`,'%Y-%m-%d') AS bdate, gender, "+
                        "nomer_LK, data_izd_LK, oblast, postcode, grad, address, telefon, "+
                        "mobilen, email, nomer_dogowor, DATE_FORMAT('data_naznach','%Y-%m-%d') AS nazdate, DATE_FORMAT('data_postypwane','%Y-%m-%d') AS postdate, "+
                        "DATE_FORMAT('data_napuskane','%Y-%m-%d') AS napudate, DATE_FORMAT('posl_den_w_osig','%Y-%m-%d') AS posddate, osnowanie_dog, srok_dog, d_st, "+
                        "m_st, g_st, kateg_rabotnik, belejki FROM main_ls ORDER BY nomer ASC";
                try {
                    rsCus = stCus.executeQuery(strSQL);
                } catch (SQLException e) {
                    JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
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
                panel.setLayout(new java.awt.BorderLayout());
                panel.setBounds(new Rectangle(5, 5, 880, 480));
                panel.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
                jPanelTable.setLayout(new java.awt.BorderLayout());
                // jPanelTable.setBounds(new Rectangle(5, 5, 880, 480));
                jPanelTable.setBorder(BorderFactory.createBevelBorder(BevelBorder.RAISED));
                jPanelButtons.setLayout(new java.awt.FlowLayout());
                jPanelButtons.setBounds(new Rectangle(5, 490, 880, 75));
                jPanelButtons.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
                
                jScrollPane1.setBounds(new Rectangle(5, 5, 870, 470));
                jScrollPane1.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
                jScrollPane1.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
                jPanelTable.add(jScrollPane1, java.awt.BorderLayout.CENTER);
                jButton1.setText("Нов служител");
                jButton2.setText("Редакция");
                jButton3.setText("Изтриване");
                jButton4.setText("Печат на личен картон");
                jButton5.setText("Търсене");
                jButton6.setText("Опресни");
                jButton7.setText("Печат списък служители");
                jPanelButtons.add(jButton1);
                jPanelButtons.add(jButton2);
                jPanelButtons.add(jButton3);
                jPanelButtons.add(jButton7);
                jPanelButtons.add(jButton4);
                jPanelButtons.add(jButton5);
                jPanelButtons.add(jButton6);
                panel.add(jPanelTable, java.awt.BorderLayout.CENTER);
                panel.add(jPanelButtons, java.awt.BorderLayout.SOUTH);
                this.getContentPane().add(panel, BorderLayout.CENTER);
                
                
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
                JDialog JDAdd = new frmAddLitse(true, JFParentFrame, cnCus, "", lMonth, lYear);
                JDAdd.setVisible(true);
            }
            
            private void jButton2_actionPerformed(ActionEvent e)
            
            {
                try{
                    if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                        JDialog JDEdit = new frmAddLitse(false,
                                JFParentFrame, cnCus,
                                "SELECT Id, nomer, first, second, family, egn, b_date, gender, "+
                                "nomer_LK, data_izd_LK, oblast, postcode, grad, address, telefon, "+
                                "mobilen, email, nomer_dogowor, data_naznach, data_postypwane, "+
                                "data_napuskane, posl_den_w_osig, osnowanie_dog, srok_dog, d_st, "+
                                "m_st, g_st, kateg_rabotnik, belejki FROM main_ls WHERE id = " + jTable.getValueAt(jTable.getSelectedRow(), 0), lMonth, lYear);
                        JDEdit.setVisible(true);}
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
                        
                        
                    } else {
                        JOptionPane.showMessageDialog(null,
                                "Записът е променян. Моля натиснете бутон 'Опресни'!",
                                "Не е избран запис за печат",
                                JOptionPane.WARNING_MESSAGE);
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
                    
                    try {
                        rsCus = stCus.executeQuery(strSQL);
                    } catch (SQLException e) {JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);}
                    
                    jScrollPane1.getViewport().remove(jTable);
                    model = new CustomTableModel(cnCus, rsCus, Names);
                    jTable = new CustomTable(model);
                    jScrollPane1.getViewport().add(jTable);
                    jPanelTable.repaint();
                    
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