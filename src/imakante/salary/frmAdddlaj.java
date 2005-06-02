package imakante.salary;

import javax.swing.*;
import java.sql.*;
import java.awt.*;
import java.awt.event.*;

public class frmAdddlaj extends JDialog{
    JButton JBUpdate = new JButton(new ImageIcon("images/save.png"));
    JButton JBReset = new JButton("Промяна",new ImageIcon("images/reset.png"));
    JButton JBCancel = new JButton("Отмяна",new ImageIcon("images/cancel.png"));
    
    JLabel JLPic1 = new JLabel();
    JLabel JLBanner = new JLabel("Моля попълнете необходимата информация.");
    
    JLabel JL1 = new JLabel("Номер:");
    JLabel JL2 = new JLabel("Наименование:");
    JLabel JL3 = new JLabel("Код по номенклатура");
    
    JTextField JTF1 = new JTextField();
    JTextField JTF2 = new JTextField();
    JTextField JTF3 = new JTextField();
    
    Connection cnAEC;
    Statement stAEC;
    ResultSet rsAEC;
    
    Dimension screen = 	Toolkit.getDefaultToolkit().getScreenSize();
    
    boolean ADDING_STATE;
    
    public frmAdddlaj(boolean ADD_STATE,JFrame OwnerForm,Connection srcCN,String srcSQL){
        super(OwnerForm,true);
        cnAEC = srcCN;
        ADDING_STATE = ADD_STATE;
        try{
            stAEC = cnAEC.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
        }catch( SQLException sqlEx){
            System.out.println("\nERROR IN (frmAdddlaj):" + sqlEx + "\n");
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
                JTF1.setText("" + rsAEC.getString("nomer"));
                JTF2.setText("" + rsAEC.getString("namedlaj"));
                JTF3.setText("" + rsAEC.getString("nomkod"));
                
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
        
        JTF1.setBounds(140,50,200,20);
        JTF1.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL1);
        JPContainer.add(JTF1);
        
        //-- Add Name Input Field
        JL2.setBounds(5,72,105,20);
        JL2.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF2.setBounds(140,72,200,20);
        JTF2.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL2);
        JPContainer.add(JTF2);
        
        //-- Add Kod Input Field
        JL3.setBounds(5,94,125,20);
        JL3.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JTF3.setBounds(140,94,200,20);
        JTF3.setFont(new Font("Dialog",Font.PLAIN,12));
        
        JPContainer.add(JL3);
        JPContainer.add(JTF3);
        
        //******************** End adding of input field
        
        //-- Add the JBUpdate
        JBUpdate.setBounds(15,142,105,25);
        JBUpdate.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBUpdate.setMnemonic(KeyEvent.VK_A);
        JBUpdate.addActionListener(JBActionListener);
        JBUpdate.setActionCommand("update");
        JPContainer.add(JBUpdate);
        
        //-- Add the JBReset
        JBReset.setBounds(122,142,99,25);
        JBReset.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBReset.setMnemonic(KeyEvent.VK_R);
        JBReset.addActionListener(JBActionListener);
        JBReset.setActionCommand("reset");
        JPContainer.add(JBReset);
        
        //-- Add the JBCancel
        JBCancel.setBounds(222,142,99,25);
        JBCancel.setFont(new Font("Dialog", Font.PLAIN, 12));
        JBCancel.setMnemonic(KeyEvent.VK_C);
        JBCancel.addActionListener(JBActionListener);
        JBCancel.setActionCommand("cancel");
        JPContainer.add(JBCancel);
        
        getContentPane().add(JPContainer);
        setSize(350,205);
        setResizable(false);
        setLocation((screen.width - 350)/2,((screen.height-205)/2));
    }
    private boolean RequiredFieldEmpty(){
        if(JTF1.getText().equals("") || JTF1.getText().equals("")){
            JOptionPane.showMessageDialog(null,"Има празни полета.\n Моля попълнете ги.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
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
        
    }
    
    ActionListener JBActionListener = new ActionListener(){
        public void actionPerformed(ActionEvent e){
            String srcObj = e.getActionCommand();
            if(srcObj=="update"){
                if(RequiredFieldEmpty()==false){
                    if(ADDING_STATE == true){
                        try{
                            
                            stAEC.executeUpdate("INSERT INTO dlaj(nomer, namedlaj, nomkod) " +
                                    
                                    "VALUES ('" +
                                    JTF1.getText() + "', '" +
                                    JTF2.getText() + "', '" +
                                    JTF3.getText() +
                                    "')");
                            
                            int total =0;
                            total = imakante.com.pubMethods.getMaxNum("SELECT * FROM dlaj ORDER BY id",cnAEC,"id");
                            System.out.print(total);
                            if(total != 0){
                                FrmDlajnost.reloadRecord();
                            }else{
                                FrmDlajnost.reloadRecord();
                            }
                            total =0;
                            // End Display the new record
                            JOptionPane.showMessageDialog(null,"Записът е успешен .","ИМАКАНТЕ",JOptionPane.INFORMATION_MESSAGE);
                            String ObjButtons[] = {"ДА","НЕ"};
                            int PromptResult = JOptionPane.showOptionDialog(null,"Ще добавяте ли нови записи?","ПРОЕКТ КОЛОБЪР",JOptionPane.DEFAULT_OPTION,JOptionPane.QUESTION_MESSAGE,null,ObjButtons,ObjButtons[0]);
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
                            RowIndex = rsAEC.getString("id");
                            
                            stAEC.executeUpdate("UPDATE dlaj SET nomer = '" +
                                    JTF1.getText() + "', namedlaj = '" +
                                    JTF2.getText() + "', nomkod = '"   +
                                    JTF3.getText() +
                                    "' WHERE id = " + RowIndex);
                            FrmDlajnost.reloadRecord();
                            JOptionPane.showMessageDialog(null,"Записът е променен.","ИМАКАНТЕ",JOptionPane.INFORMATION_MESSAGE);
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