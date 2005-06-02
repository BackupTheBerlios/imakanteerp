package imakante.salary;


import java.awt.*;
import java.awt.event.*;

import java.sql.*;

import java.text.*;

import java.util.*;

import javax.swing.*;
import javax.swing.JScrollPane;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.*;
import javax.swing.table.DefaultTableModel;

public class FrmDOO extends JInternalFrame //implements ActionListener,
        // TableModelListener,
        // KeyListener
{
    
    /** ********************** Variable declaration start ********************* */
    
    //Start form variables
    public static JScrollPane CusTableJSP = new JScrollPane();
    
    public static JPanel JPContainer = new JPanel();
    
    public static JTable JTCusTable;
    
    
    
    JLabel JLPicture1 = new JLabel(new ImageIcon("images/helper.png"));
    
    JLabel JLHelpText = new JLabel(
            "За да намерите запис \n натиснет бутон 'Тъсене'.");
    
    JFrame JFParentFrame;
    
    JButton JBAddNew = new JButton("Нов запис",
            new ImageIcon("images/new.png"));
    
    JButton JBModify = new JButton("Промяна",
            new ImageIcon("images/modify.png"));
    
    JButton JBSearch = new JButton("Търсене",
            new ImageIcon("images/search.png"));
    
    JButton JBPrint = new JButton("Печат", new ImageIcon("images/print.png"));
    
    JButton JBDelete = new JButton("Изтриване", new ImageIcon(
            "images/delete.png"));
    
    JButton JBReload = new JButton("Опресняване", new ImageIcon(
            "images/reload.png"));
    
    Connection cnCus;
    public static String ppDate;
    public static Statement stCus;
    
    public static ResultSet rsCus;
    
    public static String strSQL;
    
    public static Object Content[][];
    
    public static int rowNum = 0;
    
    public static int total = 0;
    
    boolean goEOF;
    private DefaultTableModel MyModel;
    
    Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
    
    //End form variables
    
    /** ******************** End variable declaration start ******************* */
    
    /** ******************* Start FrmDOO constructor ********************* */
    public FrmDOO(Connection srcCN, JFrame getParentFrame, int pMonth, int pYear)
    throws SQLException {
        //Set the form caption and some properties start
        super("ДОО начисления", false, true, false, true);
        //End set the form caption and some properties
        
        //Start initialize variables
        JPContainer.setLayout(null);
        
        JFParentFrame = getParentFrame;
        
        this.setResizable(true);
        CusTableJSP
                .setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
        CusTableJSP
                .setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        CusTableJSP.setAutoscrolls(false);
        
        cnCus = srcCN;
        stCus = cnCus.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_UPDATABLE);
        strSQL = "SELECT * FROM dobavki ORDER BY id ASC";
        
        //-- Add the JLPicture1
        JLPicture1.setBounds(5, 5, 48, 48);
        JPContainer.add(JLPicture1);
        
        //-- Add the JLHelpText
        JLHelpText.setBounds(55, 5, 570, 48);
        JLHelpText.setFont(new Font("Dialog", Font.PLAIN, 12));
        JPContainer.add(JLHelpText);
        
        //-- Add the CusTable
        //	JTCusTable.addKeyListener(theKeyListener);
        JTCusTable = CreateTable();
        
        CusTableJSP.getViewport().add(JTCusTable);
        CusTableJSP.setBounds(5, 55, 727, 320);
        CusTableJSP.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(KeyEvent e) {
                doKeyPressed(e);
            }
        });
        JPContainer.add(CusTableJSP);
        
        //-- Add the JBAddNew
        JBAddNew.setBounds(5, 382, 105, 25);
        JBAddNew.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBAddNew.setMnemonic(KeyEvent.VK_A);
        JBAddNew.addActionListener(JBActionListener);
        JBAddNew.setActionCommand("add");
        JPContainer.add(JBAddNew);
        
        //-- Add the JBModify
        JBModify.setBounds(112, 382, 99, 25);
        JBModify.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBModify.setMnemonic(KeyEvent.VK_M);
        JBModify.addActionListener(JBActionListener);
        JBModify.setActionCommand("modify");
        JPContainer.add(JBModify);
        
        //-- Add the JBSearch
        JBSearch.setBounds(212, 382, 99, 25);
        JBSearch.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBSearch.setMnemonic(KeyEvent.VK_S);
        JBSearch.addActionListener(JBActionListener);
        JBSearch.setActionCommand("search");
        JPContainer.add(JBSearch);
        
        //-- Add the JBPrint
        JBPrint.setBounds(312, 382, 99, 25);
        JBPrint.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBPrint.setMnemonic(KeyEvent.VK_P);
        JBPrint.addActionListener(JBActionListener);
        JBPrint.setActionCommand("print");
        JPContainer.add(JBPrint);
        
        //-- Add the JBDelete
        JBDelete.setBounds(413, 382, 105, 25);
        JBDelete.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBDelete.setMnemonic(KeyEvent.VK_D);
        JBDelete.addActionListener(JBActionListener);
        JBDelete.setActionCommand("delete");
        JPContainer.add(JBDelete);
        
        //-- Add the JBReload
        JBReload.setBounds(627, 382, 105, 25);
        JBReload.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBReload.setMnemonic(KeyEvent.VK_R);
        JBReload.addActionListener(JBActionListener);
        JBReload.setActionCommand("reload");
        JPContainer.add(JBReload);
        
        //End initialize variables
        
        //Start set the form properties
        getContentPane().add(JPContainer);
        setSize(847, 450);
        setLocation((screen.width - 847) / 2, ((screen.height - 450) / 2) - 45);
        setFrameIcon(new ImageIcon("images/customer.png"));
        //End set the form properties
        
    }
    
    /** ******************** FrmDOO constructor end ********************** */
    
    /** ************************ Start event handling ************************* */
    
    ActionListener JBActionListener = new ActionListener() {
        public void actionPerformed(ActionEvent e) {
            String srcObj = e.getActionCommand();
            //Add Record
            if (srcObj == "add") {
                JDialog JDAdd = new frmAddDOO(true, JFParentFrame,
                        cnCus, "");
                JDAdd.show();
                //Modify Record
            } else if (srcObj == "modify") {
                if (total != 0) {
                    try {
                        System.out.println(total);
                        if (JTCusTable.getValueAt(JTCusTable.getSelectedRow(),
                                JTCusTable.getSelectedColumn()) != null) {
                            JDialog JDEdit = new frmAddDOO(false,
                                    JFParentFrame, cnCus,
                                    "SELECT * FROM dobavki WHERE id = "
                                    + JTCusTable.getValueAt(JTCusTable
                                    .getSelectedRow(), 0));
                            
                            JDEdit.show();
                            
                        }
                    } catch (Exception sqlE) {
                        if (sqlE.getMessage() != null) {
                            System.out.println(sqlE.getMessage());
                        } else {
                            JOptionPane.showMessageDialog(null,
                                    "Моля изберете запис.",
                                    "Не е избран запис",
                                    JOptionPane.INFORMATION_MESSAGE);
                        }
                        
                    }
                }
                //Search Record
            } else if (srcObj == "search") {
                
            } else if (srcObj == "print") {
                if (total != 0) {
                    try {
                        if (JTCusTable.getValueAt(JTCusTable.getSelectedRow(),
                                JTCusTable.getSelectedColumn()) != null) {
                            imakante.com.pubMethods PrintingClass = new imakante.com.pubMethods();
                            ResultSet rsPrint = stCus
                                    .executeQuery("SELECT * FROM dobavki WHERE id = "
                                    + JTCusTable.getValueAt(JTCusTable
                                    .getSelectedRow(), 0));
                            if (rsPrint.next() == true) {
                                String RecordToPrint = "";
                                java.util.Date CurrentDate = new java.util.Date();
                                SimpleDateFormat SDFDateFormatter = new SimpleDateFormat(
                                        "MMM. dd, yyyy", Locale.getDefault());
                                
                                RecordToPrint += "                            ПЕЧАТ КЛИЕНТИ							 \n";
                                RecordToPrint += "                              "
                                        + SDFDateFormatter.format(CurrentDate)
                                        .toString() + "\n\n\n";
                                
                                RecordToPrint += "___________________________________________________________________________________\n\n\n";
                                
                                RecordToPrint += " Customer ID: "
                                        + rsPrint.getString("CustomerID")
                                        + "                 Company Name: "
                                        + rsPrint.getString("CompanyName")
                                        + "\n";
                                RecordToPrint += "___________________________________________________________________________________\n";
                                RecordToPrint += "___________________________________________________________________________________\n\n";
                                
                                RecordToPrint += " Contact Person: "
                                        + rsPrint.getString("ContactName")
                                        + "\n";
                                RecordToPrint += " Contact Title: "
                                        + rsPrint.getString("ContactTitle")
                                        + "\n";
                                RecordToPrint += " Address: "
                                        + rsPrint.getString("Address") + "\n";
                                RecordToPrint += " City: "
                                        + rsPrint.getString("CityTown") + "\n";
                                RecordToPrint += " State/Province: "
                                        + rsPrint.getString("StateProvince")
                                        + "\n";
                                RecordToPrint += " Zip Code: "
                                        + rsPrint.getString("ZipCode") + "\n";
                                RecordToPrint += " Country: "
                                        + rsPrint.getString("Country") + "\n";
                                RecordToPrint += " Phone: "
                                        + rsPrint.getString("Phone") + "\n";
                                RecordToPrint += " Fax: "
                                        + rsPrint.getString("Fax") + "\n\n";
                                
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
                //Delete Record
            } else if (srcObj == "delete") {
                if (total != 0) {
                    try {
                        if (JTCusTable.getValueAt(JTCusTable.getSelectedRow(),
                                JTCusTable.getSelectedColumn()) != null) {
                            String ObjButtons[] = { "Да", "Не" };
                            int PromptResult = JOptionPane.showOptionDialog(
                                    null, "Изтриване на запис?",
                                    "Запис изтриване",
                                    JOptionPane.DEFAULT_OPTION,
                                    JOptionPane.ERROR_MESSAGE, null,
                                    ObjButtons, ObjButtons[1]);
                            if (PromptResult == 0) {
                                stCus
                                        .execute("DELETE * FROM dobavki WHERE id = "
                                        + JTCusTable
                                        .getValueAt(
                                        JTCusTable
                                        .getSelectedRow(),
                                        0));
                                reloadRecord();
                                JOptionPane.showMessageDialog(null,
                                        "Записът е успешно изтрит.",
                                        "Потвърдете изтриван",
                                        JOptionPane.INFORMATION_MESSAGE);
                            }
                        }
                    } catch (Exception sqlE) {
                        if (sqlE.getMessage() != null) {
                            JOptionPane
                                    .showMessageDialog(
                                    null,
                                    "Не може да бъде изтрит има свързани документи.\n",
                                    "Потвърдете изтриване",
                                    JOptionPane.WARNING_MESSAGE);
                        } else {
                            JOptionPane.showMessageDialog(null,
                                    "Изберете запис за изтриване.",
                                    "Не е избран запис",
                                    JOptionPane.INFORMATION_MESSAGE);
                        }
                    }
                }
                //Reload Record
            } else if (srcObj == "reload") {
                reloadRecord();
                //Close the Form
            }
        }
    };
    
    /** ************************* End event handling ************************** */
    
    /** ************************ Start custom class ************************** */
    
    public static JTable CreateTable() {
        String ColumnHeaderName[] = { "", "Име", "Брой дни", "НСИ",
                "НДО", "ПКБ", "СО","Шифър", "ДОД",
                "ВДМ", "ЗР"
        };
        try {
            
            rsCus = stCus.executeQuery(strSQL);
            total = 0;
            //Move to the last record
            //rsCus.absolute(-1);
            rsCus.afterLast();
            //Get the current record position
            if (rsCus.previous())
                total = rsCus.getRow();
            //Move back to the first record;
            //total = rsCus.getRow();
            //rsCus.absolute(1);
            rsCus.beforeFirst();
            
            if (total > 0) {
                Content = new Object[total][11];
                
                while (rsCus.next()) {
                    Content[rowNum][0] = "" + rsCus.getString("id");
                    Content[rowNum][1] = "" + rsCus.getString("name");
                    Content[rowNum][2] = "" + rsCus.getString("dd");
                    Content[rowNum][3] = "" + rsCus.getString("nsi");
                    Content[rowNum][4] = "" + rsCus.getString("ndo");
                    Content[rowNum][5] = ""
                            + rsCus.getString("pkb");
                    Content[rowNum][6] = ""
                            + rsCus.getString("co");
                    Content[rowNum][7] = ""
                            + rsCus.getString("shifar");
                    Content[rowNum][8] = ""
                            + rsCus.getString("dod");
                    Content[rowNum][9] = ""
                            + rsCus.getString("vdm");
                    Content[rowNum][10] = ""
                            + rsCus.getString("zr");
                    
                    
                    rowNum++;
                }
            }
            
            else {
                Content = new String[0][11];
                Content[0][0] = " ";
                Content[0][1] = " ";
                Content[0][2] = " ";
                Content[0][3] = " ";
                Content[0][4] = " ";
                Content[0][5] = " ";
                Content[0][6] = " ";
                Content[0][7] = " ";
                Content[0][8] = " ";
                Content[0][9] = " ";
                Content[0][10] = " ";
                
                
            }
        } catch (Exception eE) {
        }
        
        DefaultTableModel ntm = new DefaultTableModel(Content, ColumnHeaderName) {
            
            public void setValueAt(Object value, int iRows, int iCols) {
                
                
                try {
                    
                    rsCus.absolute(iRows + 1);
                    rsCus.updateString(iCols + 1, value.toString());
                    rsCus.updateRow();
                    
                    super.setValueAt(value, iRows, iCols);
                } catch (SQLException e) {
                }
                
                
            }
            
            public boolean isCellEditable(int iRows, int iCols) {
                
                if (iCols == 0)
                    return false;
                
                
                return true;
            }
        };
        
        ntm.addTableModelListener(new TableModelListener() {
            public final void tableChanged(TableModelEvent e) {
                TableModel source = (TableModel) e.getSource();
                
            }
        });
        
        
        JTable NewTable = new JTable(ntm);
        //   NewTable.setModel(new TableModel(MyModel));
        
        
        NewTable.putClientProperty("terminateEditOnFocusLost", Boolean.TRUE);
        NewTable.setPreferredScrollableViewportSize(new Dimension(800, 320));
        NewTable.setBackground(Color.white);
        NewTable.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        
        //Start resize the table column
        NewTable.getColumnModel().getColumn(0).setMaxWidth(0);
        NewTable.getColumnModel().getColumn(0).setMinWidth(0);
        NewTable.getColumnModel().getColumn(0).setWidth(0);
        NewTable.getColumnModel().getColumn(0).setPreferredWidth(0);
        NewTable.getColumnModel().getColumn(1).setPreferredWidth(250);
        NewTable.getColumnModel().getColumn(2).setPreferredWidth(50);
        NewTable.getColumnModel().getColumn(3).setPreferredWidth(50);
        NewTable.getColumnModel().getColumn(4).setPreferredWidth(50);
        NewTable.getColumnModel().getColumn(5).setPreferredWidth(50);
        NewTable.getColumnModel().getColumn(6).setPreferredWidth(50);
        NewTable.getColumnModel().getColumn(7).setPreferredWidth(50);
        NewTable.getColumnModel().getColumn(8).setPreferredWidth(50);
        NewTable.getColumnModel().getColumn(9).setPreferredWidth(50);
        NewTable.getColumnModel().getColumn(10).setPreferredWidth(50);
        
        //End resize the table column
        
        //Disposed variables
        ColumnHeaderName = null;
        Content = null;
        
        rowNum = 0;
        
        return NewTable;
        
    }
    
    /** ************************** End custom class *************************** */
    
    /** ************************ Start Custom method ************************** */
    
    public static void reloadRecord(String srcSQL) {
        strSQL = srcSQL;
        CusTableJSP.getViewport().remove(JTCusTable);
        JTCusTable = CreateTable();
        CusTableJSP.getViewport().add(JTCusTable);
        JPContainer.repaint();
    }
    
    public static void reloadRecord() {
        CusTableJSP.getViewport().remove(JTCusTable);
        JTCusTable = CreateTable();
        CusTableJSP.getViewport().add(JTCusTable);
        JPContainer.repaint();
    }
    
    private void doKeyPressed(KeyEvent e) {
        int i, j;
        switch(e.getKeyCode()){
            case KeyEvent.VK_DOWN:
                if(JTCusTable.getSelectedRow() != JTCusTable.getRowCount() -1){
                    break;
                }
            case KeyEvent.VK_F1:
            {
                JDialog JDAdd = new frmAddDOO(true, JFParentFrame,
                        cnCus, "");
                JDAdd.show();
                
            }
            case KeyEvent.VK_F4:
                if (JTCusTable.getValueAt(JTCusTable.getSelectedRow(),
                        JTCusTable.getSelectedColumn()) != null) {
                    JDialog JDAdd = new frmAddDOO(false,
                            JFParentFrame, cnCus,
                            "SELECT * FROM ls_main WHERE nomer= "
                            + JTCusTable.getValueAt(JTCusTable
                            .getSelectedRow(), 0));
                    JDAdd.show();}
                
                
            default:
                break;
        }
    }
    
    
    /** ************************* End Custom method *************************** */
    
}