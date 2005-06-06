package imakante.salary;


import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.JLabel;
import java.awt.Rectangle;
import java.awt.Dimension;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import javax.swing.BorderFactory;
import javax.swing.JOptionPane;
import javax.swing.border.EtchedBorder;

public class frmConnSalary extends JDialog implements ActionListener {
    private salary_main main = null;
    private JPanel jPanel1 = new JPanel();
    private JPanel jPanel2 = new JPanel();
    private JPanel jPanel3 = new JPanel();
    private JPanel jPanel4 = new JPanel();
    private JLabel jLabel1 = new JLabel();
    private JLabel jLabel2 = new JLabel();
    private JLabel jLabel3 = new JLabel();
    private JLabel jLabel4 = new JLabel();
    private JTextField jTextField1 = new JTextField();
    private JTextField jTextField2 = new JTextField();
    private JPasswordField jPasswordField1 = new JPasswordField();
    private JButton jButton1 = new JButton();
    private JButton jButton2 = new JButton();
    public String lDBDriver = null;
    public String lDBSource = null;
    public String lDBUser = null;
    public String lDBPass =null;
    private JComboBox comboDriver;
    String[] drivers;
    String[] names, urls;
    public String fint,lineStr;
    
    int i;
    
    
    private JPanel jPanel5 = new JPanel();
    StringBuffer desc,contr;
    public frmConnSalary(salary_main m) {
        super();
        try {
            main = m;
            i = 0;
            fint = "";
            this.setModal(true);
            comboDriver = new JComboBox();
            BufferedReader in = new BufferedReader(new InputStreamReader(new
                    FileInputStream("c:/salary.ini"), "cp1251"));
            if (in == null){
                JOptionPane.showMessageDialog(null,"Възникнал проблем при четене на файл salary.ini .\n Моля копирайте стандартен файл.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
                
            } else {
                while ((lineStr = in.readLine()) != null) {
                    
                    i++;
                    fint = fint + lineStr;
                }
                names =fint.split("!");
                int sd = names.length;
                
                for (int j=0; j<names.length; j=j+3)  {
                    comboDriver.addItem(names[j]);
                }
            }
                                    
            jbInit();
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        jTextField2.requestFocus();
    }
    
    private void jbInit() throws Exception {
        this.setTitle("Връзка с База Данни");
        this.setSize(new Dimension(463, 260));
        this.setLocation(200,200);
        jPanel1.setLayout(null);
        jLabel1.setText("База на фирма ");
        jLabel1.setBounds(new Rectangle(10, 30, 185, 20));
        
        jLabel3.setText("Потребител:");
        jLabel3.setBounds(new Rectangle(10, 10, 175, 20));
        jLabel4.setText("Парола:");
        jLabel4.setBounds(new Rectangle(10, 35, 180, 20));
        // comboDriver = new JComboBox(drivers);
        comboDriver.addActionListener(this);
        comboDriver.setBounds(new Rectangle(215, 30, 205, 20));
        jPanel5.setBounds(new Rectangle(10, 160, 430, 55));
        jPanel5.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel5.setLayout(null);
        
        
        jTextField2.setText("root");
        jTextField2.setBounds(new Rectangle(215, 10, 205, 20));
        jPasswordField1.setText("");
        jPasswordField1.setBounds(new Rectangle(215, 40, 205, 20));
        jButton1.setText("ВХОД");
        jButton1.setBounds(new Rectangle(75, 15, 100, 25));
        jButton1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton1_actionPerformed(e);
            }
        });
        jButton2.setText("ИЗХОД");
        jButton2.setBounds(new Rectangle(270, 15, 100, 25));
        jButton2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton2_actionPerformed(e);
            }
        });
        jPanel3.setBounds(new Rectangle(10, 5, 430, 70));
        jPanel3.setLayout(null);
        jPanel3.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel4.setBounds(new Rectangle(10, 80, 430, 70));
        jPanel4.setLayout(null);
        jPanel4.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel3.add(jLabel1, null);
        jPanel3.add(comboDriver, null);
        jPanel3.add(jLabel2, null);
        jPanel3.add(jTextField1, null);
        jPanel5.add(jButton1, null);
        jPanel5.add(jButton2, null);
        jPanel1.add(jPanel5, null);
        jPanel1.add(jPanel3, null);
        jPanel4.add(jLabel3, null);
        jPanel4.add(jLabel4, null);
        jPanel4.add(jTextField2, null);
        jPanel4.add(jPasswordField1, null);
        jPanel1.add(jPanel4, null);
        this.getContentPane().add(jPanel1, BorderLayout.CENTER);
        this.getContentPane().add(jPanel2, BorderLayout.SOUTH);
        
    }
    
    private void jButton2_actionPerformed(ActionEvent e) {
        System.exit(0);
    }
    
    private void jButton1_actionPerformed(ActionEvent e) {
        int selectedIntCombo = comboDriver.getSelectedIndex();
        lDBDriver = names[selectedIntCombo+1];
        lDBSource =  names[selectedIntCombo+2];
        lDBUser = jTextField2.getText();
        lDBPass = new String(jPasswordField1.getPassword());
        main.setDBDriver(lDBDriver);
        main.setDBSource(lDBSource);
        main.setUser(lDBUser);
        main.setPass(lDBPass);
        String firmName = (String)comboDriver.getSelectedItem();
        main.setFirm(firmName);
        main.setNFirm(firmName);
        dispose();
    }
    
    public void actionPerformed(ActionEvent e) {
        JComboBox comboDriver = (JComboBox)e.getSource();
        String drivers = (String)comboDriver.getSelectedItem();
    }
}