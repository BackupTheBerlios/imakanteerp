package imakante.salary;

import javax.swing.*;
import java.sql.*;
import java.awt.*;
import java.awt.event.*;

public class frmAddDOO extends JDialog{
    JButton JBUpdate = new JButton(new ImageIcon("images/save.png"));
    JButton JBReset = new JButton("Промяна",new ImageIcon("images/reset.png"));
    JButton JBCancel = new JButton("Отмяна",new ImageIcon("images/cancel.png"));
    
    JLabel JLPic1 = new JLabel();
    JLabel JLBanner = new JLabel("Моля попълнете необходимата информация.");
    
    JLabel JL1 = new JLabel("Име:");
    JLabel JL2 = new JLabel("Брой дни");
    JLabel JL3 = new JLabel("НСИ");
    JLabel JL4 = new JLabel("НДО:");
    JLabel JL5 = new JLabel("ПКБ:");
    JLabel JL6 = new JLabel("СО:");
    JLabel JL7 = new JLabel("Шифър:");
    JLabel JL8 = new JLabel("ДОД:");
    JLabel JL9 = new JLabel("ВДМ:");
    JLabel JL10 = new JLabel("ЗР:");
    
    JTextField JTF1 = new JTextField();
    JTextField JTF2 = new JTextField();
    JTextField JTF3 = new JTextField();
    JTextField JTF4 = new JTextField();
    JTextField JTF5 = new JTextField();
    JTextField JTF6 = new JTextField();
    JTextField JTF7 = new JTextField();
    JTextField JTF8 = new JTextField();
    JTextField JTF9 = new JTextField();
    JTextField JTF10 = new JTextField();
    
    
    Connection cnAEC;
    Statement stAEC;
    ResultSet rsAEC;
    
    Dimension screen = 	Toolkit.getDefaultToolkit().getScreenSize();
    
    boolean ADDING_STATE;
    
    public frmAddDOO(boolean ADD_STATE,JFrame OwnerForm,Connection srcCN,String srcSQL){
        super(OwnerForm,true);
        cnAEC = srcCN;
        ADDING_STATE = ADD_STATE;
        try{
            stAEC = cnAEC.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
        }catch( SQLException sqlEx){
            System.out.println("\nERROR IN (frmAddDOO):" + sqlEx + "\n");
        }
        
        
        if(ADD_STATE==true){
            JLPic1.setIcon(new ImageIcon("images/bNew.png"));
            setTitle("Добавяне");
            JBUpdate.setText("Прибави");
            
        } else{
            JLPic1.setIcon(new ImageIcon("images/bModify.png"));
            setTitle("Промяна");
            JBUpdate.setText("Запази");
            try{
                rsAEC = stAEC.executeQuery(srcSQL);
                rsAEC.next();
                JTF1.setText("" + rsAEC.getString("name"));
                JTF2.setText("" + rsAEC.getString("dd"));
                JTF3.setText("" + rsAEC.getString("nsi"));
                JTF4.setText("" + rsAEC.getString("ndo"));
                JTF5.setText("" + rsAEC.getString("pkb"));
                JTF6.setText("" + rsAEC.getString("co"));
                JTF7.setText("" + rsAEC.getString("shifar"));
                JTF8.setText("" + rsAEC.getString("dod"));
                JTF9.setText("" + rsAEC.getString("vdm"));
                JTF10.setText("" + rsAEC.getString("zr"));
                
                
            }catch(SQLException sqlEx){
                System.out.println(sqlEx.getMessage());
            }
        }
        JPanel JPContainer = new JPanel();
        JPContainer.setLayout(null);
        //-- Add the JLPic1
        JLPic1.setBounds(5,5,32,32);
        JPContainer.add(JLPic1);
        
        //-- Add the JLBanner
        JLBanner.setBounds(55,5,268,48);
        JLBanner.setFont(new Font("Dialog",Font.PLAIN,12));
        JPContainer.add(JLBanner);
        
        //******************** Start adding of input field
        //-- Add Id Input Field
        JL1.setBounds(5,50,105,20);
        JL1.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF1.setBounds(110,50,200,20);
        JTF1.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL1);
        JPContainer.add(JTF1);
        
        //-- Add Name Input Field
        JL2.setBounds(5,72,105,20);
        JL2.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF2.setBounds(110,72,200,20);
        JTF2.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL2);
        JPContainer.add(JTF2);
        //-- Add Contact Name Input Field
        JL3.setBounds(5,94,105,20);
        JL3.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF3.setBounds(110,94,200,20);
        JTF3.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL3);
        JPContainer.add(JTF3);
        
        //-- Add Contact Title Input Field
        JL4.setBounds(5,116,105,20);
        JL4.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF4.setBounds(110,116,200,20);
        JTF4.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL4);
        JPContainer.add(JTF4);
        
        //-- Add Address Input Field
        JL5.setBounds(5,138,105,20);
        JL5.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF5.setBounds(110,138,200,20);
        JTF5.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL5);
        JPContainer.add(JTF5);
        
        //-- Add City Input Field
        JL6.setBounds(5,160,105,20);
        JL6.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF6.setBounds(110,160,200,20);
        JTF6.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL6);
        JPContainer.add(JTF6);
        
        //-- Add State/Province Input Field
        JL7.setBounds(5,182,105,20);
        JL7.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF7.setBounds(110,182,200,20);
        JTF7.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL7);
        JPContainer.add(JTF7);
        
        //-- Add Zip Code Input Field
        JL8.setBounds(5,204,105,20);
        JL8.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF8.setBounds(110,204,200,20);
        JTF8.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL8);
        JPContainer.add(JTF8);
        
        //-- Add Country Input Field
        JL9.setBounds(5,226,105,20);
        JL9.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF9.setBounds(110,226,200,20);
        JTF9.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL9);
        JPContainer.add(JTF9);
        
        //-- Add Phone Input Field
        JL10.setBounds(5,248,105,20);
        JL10.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF10.setBounds(110,248,200,20);
        JTF10.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL10);
        JPContainer.add(JTF10);
        
        
        
        
        //******************** End adding of input field
        
        //-- Add the JBUpdate
        JBUpdate.setBounds(5,518,105,25);
        JBUpdate.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBUpdate.setMnemonic(KeyEvent.VK_A);
        JBUpdate.addActionListener(JBActionListener);
        JBUpdate.setActionCommand("update");
        JPContainer.add(JBUpdate);
        
        //-- Add the JBReset
        JBReset.setBounds(112,518,99,25);
        JBReset.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBReset.setMnemonic(KeyEvent.VK_R);
        JBReset.addActionListener(JBActionListener);
        JBReset.setActionCommand("reset");
        JPContainer.add(JBReset);
        
        //-- Add the JBCancel
        JBCancel.setBounds(212,518,99,25);
        JBCancel.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBCancel.setMnemonic(KeyEvent.VK_C);
        JBCancel.addActionListener(JBActionListener);
        JBCancel.setActionCommand("cancel");
        JPContainer.add(JBCancel);
        
        getContentPane().add(JPContainer);
        setSize(750,600);
        setResizable(false);
        setLocation((screen.width - 750)/2,((screen.height-600)/2));
    }
    private boolean RequiredFieldEmpty(){
        if(JTF1.getText().equals("") || JTF1.getText().equals("")){
            JOptionPane.showMessageDialog(null,"Има празни полета.\n Моля попълнете ги.","РЕА - Проект Мидас",JOptionPane.WARNING_MESSAGE);
            JTF1.requestFocus();
            return true;
        }else{
            return false;
        }
    }
    private void clearFields(){
        JTF1.setText("");
        JTF2.setText("");
        JTF3.setText("");
        JTF4.setText("");
        JTF5.setText("");
        JTF6.setText("");
        JTF7.setText("");
        JTF8.setText("");
        JTF9.setText("");
        JTF10.setText("");
        
    }
    
    ActionListener JBActionListener = new ActionListener(){
        public void actionPerformed(ActionEvent e){
            String srcObj = e.getActionCommand();
            if(srcObj=="update"){
                if(RequiredFieldEmpty()==false){
                    if(ADDING_STATE == true){
                        try{
                            
                            stAEC.executeUpdate("INSERT INTO dobavki(name, dd, nsi, ndo," +
                                    " pkb, co, shifar, dod, vdm, zr) " +
                                    
                                    "VALUES ('" +
                                    JTF1.getText() + "', '" +
                                    JTF2.getText() + "', '" +
                                    JTF3.getText() + "', '" +
                                    JTF4.getText() + "', '" +
                                    JTF5.getText() + "', '" +
                                    JTF6.getText() + "', '" +
                                    JTF7.getText() + "', '" +
                                    JTF8.getText() + "', '" +
                                    JTF9.getText() + "', '" +
                                    JTF10.getText() +
                                    "')");
                            // Start Display the new record
                            int total =0;
                            total = imakante.com.pubMethods.getMaxNum("SELECT * FROM dobavki ORDER BY id",cnAEC,"id");
                           
                                FrmDOO.reloadRecord();
                           
                                
                            
                            total =0;
                            // End Display the new record
                            JOptionPane.showMessageDialog(null,"Записът е успешен .","РЕА - ПРОЕКТ МИДАСС",JOptionPane.INFORMATION_MESSAGE);
                            String ObjButtons[] = {"ДА","НЕ"};
                            int PromptResult = JOptionPane.showOptionDialog(null,"Ще добавяте ли нови записи?","ПРОЕКТ МИДАСС",JOptionPane.DEFAULT_OPTION,JOptionPane.QUESTION_MESSAGE,null,ObjButtons,ObjButtons[0]);
                            if(PromptResult==0){
                                clearFields();
                                JTF1.requestFocus(true);
                            }else{
                                dispose();
                            }
                        }catch(SQLException sqlEx){
                            System.out.println(sqlEx.getMessage());
                        }
                    }else{
                        try{
                            String RowIndex;
                            RowIndex = rsAEC.getString("nomer");
                            //
                            //
                            //   Tuk triabva da se prezaredi zapis ot teku] red
                            //
                            //    JCBCountry.getSelectedItem().toString() + "', tel1_customer = '" +
                            stAEC.executeUpdate("UPDATE dobavki SET name = '" +
                                    JTF1.getText() + "', dd = '" +
                                    JTF2.getText() + "', nsi = '" +
                                    JTF3.getText() + "', ndo = '" +
                                    JTF4.getText() + "', pkb = '" +
                                    JTF5.getText() + "', co = '" +
                                    JTF6.getText() + "', shifar = '" +
                                    JTF7.getText() + "', dod = '" +
                                    JTF8.getText() + "', vdm = '" +
                                    JTF9.getText() + "', zr = '" +
                                    JTF10.getText() +
                                    "' WHERE id = " + RowIndex);
                            FrmDOO.reloadRecord();
                            JOptionPane.showMessageDialog(null,"Записът е променен.","РЕА - ПРОЕКТ МИДАСС",JOptionPane.INFORMATION_MESSAGE);
                            RowIndex="";
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