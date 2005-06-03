/*
 * FrmSastav.java
 *
 * Created on Понеделник, 2005, Май 23, 11:18
 *
 * To change this template, choose Tools | Options and locate the template under
 * the Source Creation and Management node. Right-click the template and choose
 * Open. You can then make changes to the template in the Source Editor.
 */

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
            private JButton jButton6 = new JButton();
            Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
            public int lMonth;
            public int lYear;
            
            public FrmSastav(Connection srcCN, JFrame getParentFrame,int pMonth, int pYear)
            throws SQLException {
                super("Списък служители", false, true, false, true);
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
                panel.setLayout(null);
                panel.setBounds(new Rectangle(5, 5, 880, 480));
                panel.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
                jPanelTable.setLayout(null);
                jPanelTable.setBounds(new Rectangle(5, 5, 880, 480));
                jPanelTable.setBorder(BorderFactory.createBevelBorder(BevelBorder.RAISED));
                jPanelButtons.setLayout(null);
                jPanelButtons.setBounds(new Rectangle(5, 490, 880, 75));
                jPanelButtons.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
                
                jScrollPane1.setBounds(new Rectangle(5, 5, 870, 470));
                jScrollPane1.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
                jScrollPane1.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
                jPanelTable.add(jScrollPane1, null);
                //this.getContentPane().add(jPanelTable, BorderLayout.CENTER);
                jButton1.setText("Нов служител");
                jButton1.setBounds(new Rectangle(15, 25, 120, 23));
                jButton2.setText("Редакция");
                jButton2.setBounds(new Rectangle(145, 25, 120, 23));
                jButton3.setText("Изтриване");
                jButton3.setBounds(new Rectangle(275, 25, 120, 23));
                jButton4.setText("Печат");
                jButton4.setBounds(new Rectangle(405, 25, 120, 23));
                jButton5.setText("Търсене");
                jButton5.setBounds(new Rectangle(535, 25, 120, 23));
                jButton6.setText("Опресни");
                jButton6.setBounds(new Rectangle(750, 25, 120, 23));
                jPanelButtons.add(jButton1, null);
                jPanelButtons.add(jButton2, null);
                jPanelButtons.add(jButton3, null);
                jPanelButtons.add(jButton4, null);
                jPanelButtons.add(jButton5, null);
                jPanelButtons.add(jButton6, null);
                panel.add(jPanelTable, null);
                panel.add(jPanelButtons, null);
                this.getContentPane().add(panel, BorderLayout.CENTER);
                //this.getContentPane().add(jPanelButtons, BorderLayout.CENTER);
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
                JDAdd.show();
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
                                .executeQuery("SELECT Id, nomer, first, second, family, egn, b_date, gender, "+
                                "nomer_LK, data_izd_LK, oblast, postcode, grad, address, telefon, "+
                                "mobilen, email, nomer_dogowor, data_naznach, data_postypwane, "+
                                "data_napuskane, posl_den_w_osig, osnowanie_dog, srok_dog, d_st, "+
                                "m_st, g_st, kateg_rabotnik, belejki FROM main_ls WHERE id = "
                                + jTable.getValueAt(jTable.getSelectedRow(), 0));
                        if (rsPrint.next() == true) {
                            String RecordToPrint = "";
                            java.util.Date CurrentDate = new java.util.Date();
                            SimpleDateFormat SDFDateFormatter = new SimpleDateFormat(
                                    "MMM. dd, yyyy", Locale.getDefault());
                            
                            RecordToPrint += "                            ПЕЧАТ ЛИЧЕН КАРТОН\n";
                            RecordToPrint += "                   Дата на печат          "
                                    + SDFDateFormatter.format(CurrentDate)
                                    .toString() + "\n\n\n";
                            
                            RecordToPrint += "___________________________________________________________________________________\n\n\n";
                            
                            RecordToPrint += " Номер: "
                                    + rsPrint.getString("nomer")
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
                            JOptionPane.showMessageDialog(null,
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