
package imakante.salary;

import java.awt.Dimension;
import java.awt.Font;
import java.awt.Rectangle;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JFormattedTextField;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.Border;
import javax.swing.border.EtchedBorder;
import javax.swing.border.TitledBorder;




public class frmAddLitse extends JDialog{
    
    public String itNum, itBDate, itIDCardDate, itAssignDate, itSignonDate, itQuitDate, itLastInsDate;
    public String  itEGN, itPcode, itLOSDays, itLOSMonths, itLOSYears, itSalary;
    
 
    SimpleDateFormat frm = new SimpleDateFormat("yyyy/MM/dd");
    JButton JBUpdate = new JButton(new ImageIcon("images/save.png"));
    JButton JBReset = new JButton("Промяна",new ImageIcon("images/reset.png"));
    JButton JBCancel = new JButton("Отмяна",new ImageIcon("images/cancel.png"));
    JLabel JLPic1 = new JLabel("Снимка на работника", JLabel.CENTER);
    
    JPanel panelPerson = new JPanel();
    JPanel panelEmployee = new JPanel();
    JPanel panelPassData = new JPanel();
    JPanel panelPic = new JPanel();
    JPanel panelPlace = new JPanel();
    JPanel panelComm = new JPanel();
    JPanel panelLOS = new JPanel();
    
    
    JLabel lNum = new JLabel("№");  //1
    JLabel lName = new JLabel("Име");   //2
    JLabel lMname = new JLabel("Презиме");  //3
    JLabel lFamily = new JLabel("Фамилия"); //4
    JLabel lEGN = new JLabel("ЕГН/ЛНЧ");  //5
    JLabel lBdate = new JLabel("Дата на раждане");  //6
    JLabel lGender = new JLabel("Пол"); //7
    JLabel lIDCardNum = new JLabel("№ на ЛК");  //8
    JLabel lIDCardDate = new JLabel("Издадена на"); //9
    JLabel lPcode = new JLabel("Пощенски код");   //10
    JLabel lArea = new JLabel("Област");  //11
    JLabel lCity = new JLabel("Населено място");  //12
    JLabel lAddress = new JLabel("Адрес");  //13
    JLabel lTel = new JLabel("Домашен телефон");  //14
    JLabel lMobile = new JLabel("Мобилен телефон"); //15
    JLabel lEmail = new JLabel("Електронна поща");  //16
    JLabel lContractNum = new JLabel("Номер договор");  //17
    JLabel lAssignDate = new JLabel("Сключен на"); //18
    JLabel lSignonDate = new JLabel("Дата на постъпване");  //19
    JLabel lQuitDate = new JLabel("Дата на напускане"); //20
    JLabel lLastInsDate = new JLabel("Последен ден в осигуряване"); //21
    JLabel lGrounds = new JLabel("Основание");  //22
    JLabel lTerm = new JLabel("Срок");  //23
    JLabel lLOSDays = new JLabel("Дни"); //24
    JLabel lLOSMonths = new JLabel("Месеци");  //25
    JLabel lLOSYears = new JLabel("Години"); //26
    JLabel lTypeEmp = new JLabel("Категория работник");  //27
    JLabel lNotes = new JLabel("Забележки");  //28
    JLabel lPosition = new JLabel("Длъжност");  //29
    JLabel lSalary = new JLabel("Заплата"); //30
    JLabel lPicture = new JLabel("Снимка"); //31
    
    JTextField tNum = new JTextField(); //1
    
    JTextField tName = new JTextField();  //2
    JTextField tMname = new JTextField(); //3
    JTextField tFamily = new JTextField();  //4
    JTextField tEGN = new JTextField(); //5
    JFormattedTextField tBdate =  new JFormattedTextField(new SimpleDateFormat("yyyy-MM-dd"));//6
    JComboBox  comboGender; //7
    JTextField tIDCardNum = new JTextField(); //8
    JFormattedTextField tIDCardDate = new JFormattedTextField(new SimpleDateFormat("yyyy-MM-dd")); //9
    JTextField tPcode = new JTextField(); //10
    JTextField tArea = new JTextField();  //11
    JTextField tCity = new JTextField();  //12
    JTextField tAddress = new JTextField(); //13
    JTextField tTel = new JTextField(); //14
    JTextField tMobile = new JTextField();  //15
    JTextField tEmail = new JTextField(); //16
    JTextField tContractNum = new JTextField(); //17
    
    JFormattedTextField tAssignDate = new JFormattedTextField(new  SimpleDateFormat("yyyy-MM-dd")); //18
    JFormattedTextField tSignonDate = new JFormattedTextField(new SimpleDateFormat("yyyy-MM-dd"));  //19
    JFormattedTextField tQuitDate = new JFormattedTextField(new SimpleDateFormat("yyyy-MM-dd"));  //20
    JFormattedTextField tLastInsDate = new JFormattedTextField(new SimpleDateFormat("yyyy-MM-dd")); //21
    JTextField tGrounds = new JTextField(); //22
    JTextField tTerm = new JTextField();  //23
    JTextField  tLOSDays = new JTextField(); //24
    JTextField tLOSMonths = new JTextField(); //25
    
    JTextField tLOSYears = new JTextField();  //26
    JTextField tTypeEmp = new JTextField(); //27
    JTextArea taNotes = new JTextArea(); //28
    JTextField tPosition = new JTextField();  //29
    JFormattedTextField tSalary = new JFormattedTextField(new DecimalFormat("#.00"));  //30
    
    Connection cnAEC;
    Statement stAEC;
    ResultSet rsAEC;
    
    Font font = new Font("Dialog",Font.PLAIN, 12);
    Font fontPanel = new Font("Dialog",Font.BOLD, 12);
    
    Border etchr, etchl;
    TitledBorder titPerson, titPass, titPlace, titComm, titEmp, titLOS;
    
    Dimension screen = 	Toolkit.getDefaultToolkit().getScreenSize();
    
    boolean ADDING_STATE;
    public int lMonth, lYear;
    
    public frmAddLitse(boolean ADD_STATE,JFrame OwnerForm,Connection srcCN,String srcSQL, int pMonth, int pYear){
        super(OwnerForm,true);
        cnAEC = srcCN;
        ADDING_STATE = ADD_STATE;
        lMonth = pMonth;
        lYear = pYear;
        try{
            stAEC = cnAEC.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
        }catch( SQLException sqlEx){
            System.out.println("\nERROR IN (frmAddLitse):" + sqlEx + "\n");
        }
        
        comboGender = imakante.com.pubMethods.fillCombo("SELECT * FROM dop",cnAEC,"gender");
        
        if(ADD_STATE==true){
            JLPic1.setIcon(new ImageIcon("images/bNew.png"));
            setTitle("Добавяне на нов служител");
            JBUpdate.setText("Прибави");
            
        } else{
            JLPic1.setIcon(new ImageIcon("images/bModify.png"));
            setTitle("Промяна клиент");
            JBUpdate.setText("Запази");
            try{
                rsAEC = stAEC.executeQuery(srcSQL);
                rsAEC.next();
                tNum.setText("" + rsAEC.getString("nomer"));
                tName.setText("" + rsAEC.getString("first"));
                tMname.setText("" + rsAEC.getString("second"));
                tFamily.setText("" + rsAEC.getString("family"));
                tEGN.setText("" + rsAEC.getString("egn"));
                tBdate.setText("" + rsAEC.getString("b_date"));
                comboGender.setSelectedItem("" + rsAEC.getString("gender"));
                tIDCardNum.setText("" + rsAEC.getString("nomer_LK"));
                tIDCardDate.setText("" + rsAEC.getString("data_izd_LK"));
                tPcode.setText("" + rsAEC.getString("postcode"));
                tArea.setText("" + rsAEC.getString("oblast"));
                tCity.setText("" + rsAEC.getString("grad"));
                tAddress.setText("" + rsAEC.getString("address"));
                tTel.setText("" + rsAEC.getString("telefon"));
                tMobile.setText("" + rsAEC.getString("mobilen"));
                tEmail.setText("" + rsAEC.getString("email"));
                tContractNum.setText("" + rsAEC.getString("nomer_dogowor"));
                tAssignDate.setText("" + rsAEC.getString("data_naznach"));
                tSignonDate.setText("" + rsAEC.getString("data_postypwane"));
                tQuitDate.setText("" + rsAEC.getString("data_napuskane"));
                tLastInsDate.setText("" + rsAEC.getString("posl_den_w_osig"));
                tGrounds.setText("" + rsAEC.getString("osnowanie_dog"));
                tTerm.setText("" + rsAEC.getString("srok_dog"));
                tLOSDays.setText("" + rsAEC.getString("d_st"));
                tLOSMonths.setText("" + rsAEC.getString("m_st"));
                tLOSYears.setText("" + rsAEC.getString("g_st"));
                tTypeEmp.setText("" + rsAEC.getString("kateg_rabotnik"));
                taNotes.setText("" + rsAEC.getString("belejki"));
                
                tPosition.setText("" + rsAEC.getString("ID_dlaj"));
                tSalary.setText("" + rsAEC.getString("zaplata"));
                
                // setting the picture!!!
                
            }catch(SQLException sqlEx){
                System.out.println(sqlEx.getMessage());
            }
        }
        JPanel panel = new JPanel();
        panel.setLayout(null);
        
        etchr = BorderFactory.createEtchedBorder(EtchedBorder.RAISED);
        etchl = BorderFactory.createEtchedBorder(EtchedBorder.LOWERED);
        titPerson = BorderFactory.createTitledBorder(etchr,"Лични данни");
        titPerson.setTitleJustification(TitledBorder.CENTER);
        titPerson.setTitleFont(fontPanel);
        titPass = BorderFactory.createTitledBorder(etchl,"Паспортни данни");
        titPass.setTitleFont(fontPanel);
        titPlace = BorderFactory.createTitledBorder(etchl,"Местоживеене");
        titPlace.setTitleFont(fontPanel);
        titComm = BorderFactory.createTitledBorder(etchl,"Комуникация");
        titComm.setTitleFont(fontPanel);
        titEmp = BorderFactory.createTitledBorder(etchr,"Данни на работника");
        titEmp.setTitleJustification(TitledBorder.CENTER);
        titEmp.setTitleFont(fontPanel);
        titLOS = BorderFactory.createTitledBorder(etchl,"Стаж извън фирмата");
        titLOS.setTitleJustification(TitledBorder.CENTER);
        titLOS.setTitleFont(fontPanel);
        
        panelPerson.setLayout(null);
        panelPerson.setBounds(new Rectangle(2, 4, 595, 355));
        panelPerson.setBorder(titPerson);
        panelEmployee.setLayout(null);
        panelEmployee.setBounds(new Rectangle(2, 360, 595, 210));
        panelEmployee.setBorder(titEmp);
        panelPassData.setLayout(null);
        panelPassData.setBounds(new Rectangle(4, 10, 590, 169));
        panelPassData.setBorder(titPass);
        panelPic.setLayout(null);
        panelPic.setBounds(new Rectangle(463, 12, 120, 150));
        panelPic.setBorder(BorderFactory.createRaisedBevelBorder());
        panelPlace.setLayout(null);
        panelPlace.setBounds(new Rectangle(4, 180, 590, 110));
        panelPlace.setBorder(titPlace);
        panelComm.setLayout(null);
        panelComm.setBounds(new Rectangle(4, 290, 590, 60));
        panelComm.setBorder(titComm);
        panelLOS.setLayout(null);
        panelLOS.setBounds(new Rectangle(70, 140, 210, 60));
        panelLOS.setBorder(titLOS);
        
        //******************** Start adding of input field
        lNum.setBounds(75,18,50,15);
        lNum.setFont(font);
        tNum.setBounds(70,35,50,20);
        tNum.setFont(font);
        panelPassData.add(lNum);
        panelPassData.add(tNum);
        
        lIDCardNum.setBounds(160,18,70,15);
        lIDCardNum.setFont(font);
        tIDCardNum.setBounds(155,35,100,20);
        tIDCardNum.setFont(font);
        panelPassData.add(lIDCardNum);
        panelPassData.add(tIDCardNum);
        
        lIDCardDate.setBounds(270,18,100,15);
        lIDCardDate.setFont(font);
        tIDCardDate.setBounds(265,35,120,20);
        tIDCardDate.setFont(font);
        panelPassData.add(lIDCardDate);
        panelPassData.add(tIDCardDate);
        
        lName.setBounds(15,65,80,15);
        lName.setFont(font);
        tName.setBounds(10,82,80,20);
        tName.setFont(font);
        panelPassData.add(lName);
        panelPassData.add(tName);
        
        lMname.setBounds(100,65,100,15);
        lMname.setFont(font);
        tMname.setBounds(95,82,150,20);
        tMname.setFont(font);
        panelPassData.add(lMname);
        panelPassData.add(tMname);
        
        lFamily.setBounds(282,65,100,15);
        lFamily.setFont(font);
        tFamily.setBounds(250,82,205,20);
        tFamily.setFont(font);
        panelPassData.add(lFamily);
        panelPassData.add(tFamily);
        
        lEGN.setBounds(35,112,105,15);
        lEGN.setFont(font);
        tEGN.setBounds(30,129,120,20);
        tEGN.setFont(font);
        panelPassData.add(lEGN);
        panelPassData.add(tEGN);
        
        lBdate.setBounds(175,112,105,15);
        lBdate.setFont(font);
        tBdate.setBounds(170,129,120,20);
        tBdate.setFont(font);
        panelPassData.add(lBdate);
        panelPassData.add(tBdate);
        
        lGender.setBounds(315,112,50,15);
        lGender.setFont(font);
        comboGender.setBounds(310,129,100,20);
        comboGender.setFont(font);
        panelPassData.add(lGender);
        panelPassData.add(comboGender);
        
        lPcode.setBounds(250,20,110,15);
        lPcode.setFont(font);
        tPcode.setBounds(245,37,100,20);
        tPcode.setFont(font);
        panelPlace.add(lPcode);
        panelPlace.add(tPcode);
        
        lArea.setBounds(35,20,100,15);
        lArea.setFont(font);
        tArea.setBounds(30,37,200,20);
        tArea.setFont(font);
        panelPlace.add(lArea);
        panelPlace.add(tArea);
        
        lCity.setBounds(365,20,120,15);
        lCity.setFont(font);
        tCity.setBounds(360,37,200,20);
        tCity.setFont(font);
        panelPlace.add(lCity);
        panelPlace.add(tCity);
        
        lAddress.setBounds(20,63,105,15);
        lAddress.setFont(font);
        tAddress.setBounds(15,80,560,20);
        tAddress.setFont(font);
        panelPlace.add(lAddress);
        panelPlace.add(tAddress);
        
        lTel.setBounds(20,15,120,15);
        lTel.setFont(font);
        tTel.setBounds(15,32,120,20);
        tTel.setFont(font);
        panelComm.add(lTel);
        panelComm.add(tTel);
        
        lMobile.setBounds(145,15,120,15);
        lMobile.setFont(font);
        tMobile.setBounds(140,32,120,20);
        tMobile.setFont(font);
        panelComm.add(lMobile);
        panelComm.add(tMobile);
        
        lEmail.setBounds(270,15,105,15);
        lEmail.setFont(font);
        tEmail.setBounds(265,32,308,20);
        tEmail.setFont(font);
        panelComm.add(lEmail);
        panelComm.add(tEmail);
        
        lContractNum.setBounds(85,18,100,15);
        lContractNum.setFont(font);
        tContractNum.setBounds(80,35,130,20);
        tContractNum.setFont(font);
        panelEmployee.add(lContractNum);
        panelEmployee.add(tContractNum);
        
        lAssignDate.setBounds(235,18,100,15);
        lAssignDate.setFont(font);
        tAssignDate.setBounds(230,35,130,20);
        tAssignDate.setFont(font);
        panelEmployee.add(lAssignDate);
        panelEmployee.add(tAssignDate);
        
        lSignonDate.setBounds(385,18,150,15);
        lSignonDate.setFont(font);
        tSignonDate.setBounds(380,35,130,20);
        tSignonDate.setFont(font);
        panelEmployee.add(lSignonDate);
        panelEmployee.add(tSignonDate);
        
        lQuitDate.setBounds(235,58,150,15);
        lQuitDate.setFont(font);
        tQuitDate.setBounds(230,75,160,20);
        tQuitDate.setFont(font);
        panelEmployee.add(lQuitDate);
        panelEmployee.add(tQuitDate);
        
        lLastInsDate.setBounds(405,58,180,15);
        lLastInsDate.setFont(font);
        tLastInsDate.setBounds(400,75,170,20);
        tLastInsDate.setFont(font);
        panelEmployee.add(lLastInsDate);
        panelEmployee.add(tLastInsDate);
        
        lGrounds.setBounds(30,58,100,15);
        lGrounds.setFont(font);
        tGrounds.setBounds(25,75,100,20);
        tGrounds.setFont(font);
        panelEmployee.add(lGrounds);
        panelEmployee.add(tGrounds);
        
        lTerm.setBounds(140,58,80,15);
        lTerm.setFont(font);
        tTerm.setBounds(135,75,85,20);
        tTerm.setFont(font);
        panelEmployee.add(lTerm);
        panelEmployee.add(tTerm);
        
        lLOSDays.setBounds(15,15,60,15);
        lLOSDays.setFont(font);
        tLOSDays.setBounds(10,32,60,20);
        tLOSDays.setFont(font);
        panelLOS.add(lLOSDays);
        panelLOS.add(tLOSDays);
        
        lLOSMonths.setBounds(80,15,60,15);
        lLOSMonths.setFont(font);
        tLOSMonths.setBounds(75,32,60,20);
        tLOSMonths.setFont(font);
        panelLOS.add(lLOSMonths);
        panelLOS.add(tLOSMonths);
        
        lLOSYears.setBounds(145,15,60,15);
        lLOSYears.setFont(font);
        tLOSYears.setBounds(140,32,60,20);
        tLOSYears.setFont(font);
        panelLOS.add(lLOSYears);
        panelLOS.add(tLOSYears);
        
        lTypeEmp.setBounds(210,98,130,15);
        lTypeEmp.setFont(font);
        tTypeEmp.setBounds(205,115,125,20);
        tTypeEmp.setFont(font);
        panelEmployee.add(lTypeEmp);
        panelEmployee.add(tTypeEmp);
        
        lNotes.setBounds(360,98,100,15);
        lNotes.setFont(font);
        taNotes.setBounds(350,115,220,80);
        JScrollPane scrollNotes = new JScrollPane(taNotes);
        scrollNotes.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
        taNotes.setCaretPosition(taNotes.getDocument().getLength());
        taNotes.setLineWrap(true);
        taNotes.setWrapStyleWord(true);
        taNotes.setFont(font);
        panelEmployee.add(lNotes);
        panelEmployee.add(scrollNotes);
        panelEmployee.add(taNotes);
        
        lPosition.setBounds(30,98,100,15);
        lPosition.setFont(font);
        tPosition.setBounds(25,115,80,20);
        tPosition.setFont(font);
        panelEmployee.add(lPosition);
        panelEmployee.add(tPosition);
        
        lSalary.setBounds(120,98,60,15);
        lSalary.setFont(font);
        tSalary.setBounds(115,115,80,20);
        tSalary.setFont(font);
        panelEmployee.add(lSalary);
        panelEmployee.add(tSalary);
        
                /* //-- Add the JLPic1
                JLPic1.setBounds(15,15,32,32);
                panelPic.add(JLPic1); */
        
        panelPassData.add(panelPic);
        panelPerson.add(panelPassData);
        panelPerson.add(panelPlace);
        panelPerson.add(panelComm);
        panel.add(panelPerson);
        panelEmployee.add(panelLOS);
        panel.add(panelEmployee);
        
        //-- Add the JBUpdate
        JBUpdate.setBounds(130,582,100,25);
        JBUpdate.setFont(font);
        JBUpdate.setMnemonic(KeyEvent.VK_A);
        JBUpdate.addActionListener(JBActionListener);
        JBUpdate.setActionCommand("update");
        panel.add(JBUpdate);
        
        //-- Add the JBReset
        JBReset.setBounds(250,582,100,25);
        JBReset.setFont(font);
        JBReset.setMnemonic(KeyEvent.VK_R);
        JBReset.addActionListener(JBActionListener);
        JBReset.setActionCommand("reset");
        panel.add(JBReset);
        
        //-- Add the JBCancel
        JBCancel.setBounds(370,582,100,25);
        JBCancel.setFont(font);
        JBCancel.setMnemonic(KeyEvent.VK_C);
        JBCancel.addActionListener(JBActionListener);
        JBCancel.setActionCommand("cancel");
        panel.add(JBCancel);
        
        getContentPane().add(panel);
        setSize(605,640);
        setResizable(false);
        setLocation(130,40);
        
    }
    private boolean RequiredFieldEmpty(){
        if(tNum.getText().equals("") || tNum.getText().equals("")){
            JOptionPane.showMessageDialog(null,"Има празни полета.\n Моля попълнете ги.","РЕА - Проект Мидас",JOptionPane.WARNING_MESSAGE);
            tNum.requestFocus();
            return true;
        }else{
            return false;
        }
    }
    private void clearFields(){
        tNum.setText("");
        tName.setText("");
        tMname.setText("");
        tFamily.setText("");
        tEGN.setText("0000000000");
        tBdate.setText("0000-00-00");
        comboGender.setSelectedIndex(0);
        tIDCardNum.setText("");
        tIDCardDate.setText("0000-00-00");
        tPcode.setText("0000");
        tArea.setText("");
        tCity.setText("");
        tAddress.setText("");
        tTel.setText("");
        tMobile.setText("");
        tEmail.setText("");
        tContractNum.setText("");
        tAssignDate.setText("0000-00-00");
        tSignonDate.setText("0000-00-00");
        tQuitDate.setText("0000-00-00");
        tLastInsDate.setText("0000-00-00");
        tGrounds.setText("");
        tTerm.setText("");
        tLOSDays.setText("0");
        tLOSMonths.setText("0");
        tLOSYears.setText("0");
        tTypeEmp.setText("");
        taNotes.setText("");
        tPosition.setText("");
        tSalary.setText("000,00");
    }
    
    ActionListener JBActionListener = new ActionListener(){
        public void actionPerformed(ActionEvent e){
            String srcObj = e.getActionCommand();
            if(srcObj=="update"){
                if(RequiredFieldEmpty()==false){
                    if(ADDING_STATE == true){
                        
                        try{
                            
                            itNum = tNum.getText();
                            System.out.println("Ot idto" + itNum);
                            itEGN = tEGN.getText();
                            System.out.println("Ot EGN" + itEGN);
                            itPcode = tPcode.getText();
                            System.out.println("Ot PCODE" + itPcode);
                            
                            itBDate =  tBdate.getText();
                            
                            System.out.println(" Ot BDATE"+itBDate);
                            itIDCardDate  = tIDCardDate.getText();
                            System.out.println("Ot ID Card Date "+itIDCardDate);
                            
                            itAssignDate = tAssignDate.getText();
                            if (itAssignDate == null){JOptionPane.showMessageDialog(null,"Грешка при задаване на стойностите на дата назначаване .","ИМАКАНТЕ",JOptionPane.ERROR_MESSAGE);
                            tNum.requestFocus(true);
                            }
                            System.out.println(itAssignDate);
                            itSignonDate = tSignonDate.getText();
                            if (itSignonDate == null){JOptionPane.showMessageDialog(null,"Грешка при задаване на стойностите на дата назначаване .","ИМАКАНТЕ",JOptionPane.ERROR_MESSAGE);
                            tNum.requestFocus(true);
                            }
                            
                            System.out.println(" Signon " +itSignonDate);
                            itQuitDate = tQuitDate.getText();
                            System.out.println("Quit Date "+ itQuitDate);
                            itLastInsDate = tLastInsDate.getText();
                            System.out.println("lAST INS " + itLastInsDate);
                            
                            itLOSDays = tLOSDays.getText();
                            System.out.println("dAYS " + itLOSDays);
                            itLOSMonths = tLOSMonths.getText();
                            System.out.println("MONTH  " + itLOSMonths);
                            itLOSYears = tLOSYears.getText();
                            System.out.println("yEAR  " + itLOSYears);
                            itSalary =  tSalary.getText();
                            System.out.println("SALARY " + itSalary);
                            
                        } catch (Exception et){
                            JOptionPane.showMessageDialog(null,"Грешка при задаване на стойностите .","ИМАКАНТЕ",JOptionPane.ERROR_MESSAGE);
                            tNum.requestFocus(true);
                        }
                        try {
                            stAEC.executeUpdate("INSERT INTO main_ls(nomer, first, second, family, " +
                                    "egn, b_date, gender, nomer_LK, data_izd_LK, oblast, postcode, grad, address, " +
                                    "telefon, mobilen, email, nomer_dogowor, data_naznach, data_postypwane, "+
                                    "data_napuskane, posl_den_w_osig, osnowanie_dog, srok_dog, d_st, "+
                                    "m_st, g_st, kateg_rabotnik, belejki) " +
                                    
                                    "VALUES ('" +
                                    itNum + "', '" +
                                    tName.getText() + "', '" +
                                    tMname.getText() + "', '" +
                                    tFamily.getText() + "', '" +
                                    itEGN + "', '" +
                                    
                                    itBDate + "', '" +
                                    comboGender.getSelectedItem().toString() + "', '" +
                                    tIDCardNum.getText() + "', '" +
                                    itIDCardDate + "', '" +
                                    tArea.getText() + "', '" +
                                    itPcode + "', '" +
                                    tCity.getText() + "', '" +
                                    tAddress.getText() + "', '" +
                                    tTel.getText() + "', '" +
                                    tMobile.getText() + "', '" +
                                    tEmail.getText() + "', '" +
                                    tContractNum.getText() + "', '" +
                                    itAssignDate + "', '" +
                                    itSignonDate + "', '" +
                                    itQuitDate + "', '" +
                                    itLastInsDate + "', '" +
                                    tGrounds.getText() + "', '" +
                                    tTerm.getText() + "', '" +
                                    itLOSDays + "', '" +
                                    itLOSMonths + "', '" +
                                    itLOSYears + "', '" +
                                    tTypeEmp.getText() + "', '" +
                                    taNotes.getText() + "')");
                        } catch (SQLException sqle){
                            JOptionPane.showMessageDialog(null,"Грешка при добавяне в списъка.","ИМАКАНТЕ",JOptionPane.ERROR_MESSAGE);
                        }
                        try{
                            int id = 0;
                            id = imakante.com.pubMethods.getMaxNum("SELECT id FROM main_ls",cnAEC,"id");
                            System.out.println(lMonth);
                            System.out.println(lYear);
                            System.out.println(id);
                            
                            stAEC.executeUpdate("INSERT INTO lsresult(month, year, idrab, Id_dlaj, zaplata) VALUES ('"+ lMonth+ "', '" + lYear+ "', '" + id +
                                    "', '" + tPosition.getText() + "', '" + itSalary + "')");
                            // Start Display the new record
                            int total =0;
                            total = imakante.com.pubMethods.getMaxNum("SELECT * FROM main_ls ORDER BY nomer",cnAEC,"nomer");
                            if(total != 0){
                                FrmSastav.reloadRecord();
                            }else{
                                FrmSastav.reloadRecord();
                            }
                            total =0;
                            // End Display the new record
                            JOptionPane.showMessageDialog(null,"Записът е успешен .","ИМАКАНТЕ",JOptionPane.INFORMATION_MESSAGE);
                            String ObjButtons[] = {"ДА","НЕ"};
                            int PromptResult = JOptionPane.showOptionDialog(null,"Ще добавяте ли нови служители?","ИМАКАНТЕ",JOptionPane.DEFAULT_OPTION,JOptionPane.QUESTION_MESSAGE,null,ObjButtons,ObjButtons[0]);
                            if(PromptResult==0){
                                clearFields();
                                tNum.requestFocus(true);
                            }else{
                                dispose();
                            }
                        }catch(SQLException sqlEx){
                            System.out.println(sqlEx.getMessage());
                        }
                    }else{
                        try{
                            String RowIndex1, RowIndex2;
                            RowIndex1 = rsAEC.getString("nomer");
                            stAEC.executeUpdate("UPDATE main_ls SET nomer = '" + tNum.getText() +
                                    "', first = '" + tName.getText() +
                                    "', second = '" + tMname.getText() +
                                    "', family = '" + tFamily.getText() +
                                    "', egn = '" + tEGN.getText() +
                                    "', b_date = '" + tBdate.getText() +
                                    "', gender = '" + comboGender.getSelectedItem().toString() +
                                    "', nomer_LK = '" + tIDCardNum.getText() +
                                    "', data_izd_LK = '" + tIDCardDate.getText() +
                                    "', oblast = '" + tArea.getText() +
                                    "', postcode = '" + tPcode.getText() +
                                    "', grad = '" + tCity.getText() +
                                    "', address = '" + tAddress.getText() +
                                    "', telefon = '" + tTel.getText() +
                                    "', mobilen = '" + tMobile.getText() +
                                    "', email = '" + tEmail.getText() +
                                    "', nomer_dogowor = '" + tContractNum.getText() +
                                    "', data_naznach = '" + tAssignDate.getText() +
                                    "', data_postypwane = '" + tSignonDate.getText() +
                                    "', data_napuskane = '" + tQuitDate.getText() +
                                    "', posl_den_w_osig = '" + tLastInsDate.getText() +
                                    "', osnowanie_dog = '" + tGrounds.getText() +
                                    "', srok_dog = '" + tTerm.getText() +
                                    "', d_st = '" + tLOSDays.getText() +
                                    "', m_st = '" + tLOSMonths.getText() +
                                    "', g_st = '" + tLOSYears.getText() +
                                    "', kateg_rabotnik = '" + tTypeEmp.getText() +
                                    "', belejki = '" + taNotes.getText() +
                                    "' WHERE nomer = " + RowIndex1);
                            RowIndex2 = rsAEC.getString("Id");
                            stAEC.executeUpdate("UPDATE lsresult SET ID_dlaj = '" + tPosition.getText() +
                                    "', zaplata = '" + tSalary.getText() + "' WHERE idrab = " + RowIndex2);
                            FrmSastav.reloadRecord();
                            JOptionPane.showMessageDialog(null,"Записът е променен.","ИМАКАНТЕ",JOptionPane.INFORMATION_MESSAGE);
                            RowIndex1="";
                            dispose();
                        }catch(SQLException sqlEx){
                            System.out.println(sqlEx.getMessage());
                        }
                    }
                }
            }else if(srcObj=="reset"){
                clearFields();
            }else if(srcObj=="cancel"){
                dispose();
            }
        }
    };
    
}