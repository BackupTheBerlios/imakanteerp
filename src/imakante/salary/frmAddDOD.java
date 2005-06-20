package imakante.salary;

import java.awt.Dimension;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;


public class frmAddDOD extends JDialog{
    JButton JBUpdate = new JButton(new ImageIcon("images/save.png"));
    JButton JBReset = new JButton("Промяна",new ImageIcon("images/reset.png"));
    JButton JBCancel = new JButton("Отмяна",new ImageIcon("images/cancel.png"));
    
    JLabel JLPic1 = new JLabel();
    JLabel JLBanner = new JLabel("Моля попълнете необходимата информация.");
    
    JLabel JL1 = new JLabel("Дата:");
    JLabel JL2 = new JLabel("Доход:");
    JLabel JL3 = new JLabel("Сума:");
    JLabel JL4 = new JLabel("Процент:");
    
    
    
    
    
    JTextField JTF1 = new JTextField();
    JTextField JTF2 = new JTextField();
    JTextField JTF3 = new JTextField();
    JTextField JTF4 = new JTextField();
    
    
    Connection cnAEC;
    Statement stAEC;
    ResultSet rsAEC;
    
    Dimension screen = 	Toolkit.getDefaultToolkit().getScreenSize();
    
    boolean ADDING_STATE;
    
    public frmAddDOD(boolean ADD_STATE,JFrame OwnerForm,Connection srcCN,String srcSQL){
        super(OwnerForm,true);
        cnAEC = srcCN;
        ADDING_STATE = ADD_STATE;
        try{
            stAEC = cnAEC.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
        }catch( SQLException sqlEx){
            System.out.println("\nERROR IN (frmAddDOD):" + sqlEx + "\n");
        }
        
        
        if(ADD_STATE==true){
            JLPic1.setIcon(new ImageIcon("images/bNew.png"));
            setTitle("Добавяне на нова ставка");
            JBUpdate.setText("Прибави");
            
        } else{
            JLPic1.setIcon(new ImageIcon("images/bModify.png"));
            setTitle("Промяна ставка");
            JBUpdate.setText("Запази");
            try{
                rsAEC = stAEC.executeQuery(srcSQL);
                rsAEC.next();
                JTF1.setText("" + rsAEC.getString("datep"));
                JTF2.setText("" + rsAEC.getString("doh"));
                JTF3.setText("" + rsAEC.getString("sum"));
                JTF4.setText("" + rsAEC.getString("prct"));
                
                
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
        
    }
    
    ActionListener JBActionListener = new ActionListener(){
        public void actionPerformed(ActionEvent e){
            String srcObj = e.getActionCommand();
            if(srcObj=="update"){
                if(RequiredFieldEmpty()==false){
                    if(ADDING_STATE == true){
                        try{
                            
                            stAEC.executeUpdate("INSERT INTO dod(datep, doh, sum, prct)"  +
                                    
                                    "VALUES ('" +
                                    JTF1.getText() + "', '" +
                                    JTF2.getText() + "', '" +
                                    JTF3.getText() + "', '" +
                                    JTF4.getText() +
                                    "')");
                            // Start Display the new record
                            int total =0;
                            total = imakante.com.pubMethods.getMaxNum("SELECT * FROM dod ORDER BY datep",cnAEC,"nomer");
                            if(total != 0){
                                FrmSastav.reloadRecord();
                                FrmSastav.reloadRecord();
                            }else{
                                FrmSastav.reloadRecord();
                            }
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
                            RowIndex = rsAEC.getString("id");
                            //
                            //
                            //   Tuk triabva da se prezaredi zapis ot teku] red
                            //
                            //    JCBCountry.getSelectedItem().toString() + "', tel1_customer = '" +
                            stAEC.executeUpdate("UPDATE dod SET datep = '" +
                                    JTF1.getText() + "', doh = '" +
                                    JTF2.getText() + "', sum = '" +
                                    JTF3.getText() + "', prct = '" +
                                    JTF4.getText() +
                                    "' WHERE id = " + RowIndex);
                            FrmSastav.reloadRecord();
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