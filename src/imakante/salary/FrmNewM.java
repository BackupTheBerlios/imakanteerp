package imakante.salary;


import java.awt.BorderLayout;
import java.awt.Dimension;


import java.sql.SQLException;
import javax.swing.JFrame;
import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import java.awt.Rectangle;
import java.awt.Toolkit;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class FrmNewM extends JInternalFrame {
    private JPanel jPanel1 = new JPanel();
    private JLabel jLabel1 = new JLabel();
    private JTextField jTextField1 = new JTextField();
    private JLabel jLabel2 = new JLabel();
    private JTextField jTextField2 = new JTextField();
    private JLabel jLabel3 = new JLabel();
    private JTextField jTextField3 = new JTextField();
    private JLabel jLabel4 = new JLabel();
    private JTextField jTextField4 = new JTextField();
    private JLabel jLabel5 = new JLabel();
    private JTextField jTextField5 = new JTextField();
    private JLabel jLabel6 = new JLabel();
    private JTextField jTextField6 = new JTextField();
    private JLabel jLabel7 = new JLabel();
    private JTextField jTextField7 = new JTextField();
    private JLabel jLabel8 = new JLabel();
    private JTextField jTextField8 = new JTextField();
    private JLabel jLabel9 = new JLabel();
    private JLabel jLabel10 = new JLabel();
    private JLabel jLabel11 = new JLabel();
    private JLabel jLabel12 = new JLabel();
    private JLabel jLabel13 = new JLabel();
    private JLabel jLabel14 = new JLabel();
    private JTextField jTextField9 = new JTextField();
    private JTextField jTextField10 = new JTextField();
    private JTextField jTextField11 = new JTextField();
    private JTextField jTextField12 = new JTextField();
    private JTextField jTextField13 = new JTextField();
    private JTextField jTextField14 = new JTextField();
    private int lD1;
    private int lD2;
    Connection cnCus;
    JFrame JFParentFrame;
    public static Statement stCus;
    
    public static ResultSet rsCus;
    
    public static String strSQL;
    public int pMonthl;
    public int pYearl;
    Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
    private JLabel jLabel15 = new JLabel();
    private JTextField jTextField15 = new JTextField();
    private JButton jButton1 = new JButton();
    private JButton jButton2 = new JButton();
    public FrmNewM(Connection srcCN, JFrame getParentFrame) throws SQLException {
        super("Месечни данни", false, true, false, true);
        try {
            //   pMonthl = pMonth;
            // pYearl  = pYear;
            cnCus = srcCN;
            stCus = cnCus.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            strSQL = "SELECT dni5, dni6, minrzd, minod," +
                    " maxod, maxbdf, avdod, dodbln, dodso, pzdo, psozo, ppdo, ptzpb, pgzrs, mrz FROM monthpar WHERE pmonth = " + pMonthl +" AND pyear = " + pYearl + " ORDER BY id ASC";
            rsCus = stCus.executeQuery(strSQL);
            jbInit();
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        
    }
    
    private void jbInit() throws Exception {
        // this.setTitle("Месечни данни");
        this.setClosable(true);
        
        this.setSize(375, 500);
        this.setLocation((screen.width - 847) / 2, ((screen.height - 450) / 2) - 45);
        jPanel1.setLayout(null);
        jLabel1.setText("Работни дни при 5 дневна работна седмица");
        jLabel1.setBounds(new Rectangle(25, 10, 225, 10));
        
        jTextField1.setBounds(new Rectangle(255, 5, 60, 20));
        jLabel2.setText("Работни дни при 6 дневна работна седмица");
        jLabel2.setBounds(new Rectangle(25, 38, 225, 10));
        
        jTextField2.setBounds(new Rectangle(255, 33, 60, 20));
        jLabel3.setText("Минимална работна заплата");
        jLabel3.setBounds(new Rectangle(25, 66, 225, 10));
        
        jTextField3.setBounds(new Rectangle(255, 61, 60, 20));
        jLabel4.setText("Минимален осигурителен доход");
        jLabel4.setBounds(new Rectangle(25, 94, 225, 10));
        
        jTextField4.setBounds(new Rectangle(255, 89, 60, 20));
        jLabel5.setText("Максимален осигурителен доход");
        jLabel5.setBounds(new Rectangle(25, 122, 225, 10));
        
        jTextField5.setBounds(new Rectangle(255, 117, 60, 20));
        jLabel6.setText("Максимален брой болнични  от фирмата");
        jLabel6.setToolTipText("null");
        jLabel6.setBounds(new Rectangle(25, 150, 225, 10));
        
        jTextField6.setBounds(new Rectangle(255, 145, 60, 20));
        jLabel7.setText("Авансова вноска ДОД");
        jLabel7.setBounds(new Rectangle(25, 178, 225, 10));
        
        jTextField7.setBounds(new Rectangle(255, 173, 60, 20));
        jLabel8.setText("Процент ДОО върху болнични");
        jLabel8.setBounds(new Rectangle(25, 207, 225, 10));
        
        jTextField8.setBounds(new Rectangle(255, 202, 60, 20));
        jLabel9.setText("Процент ДОО върху социални разходи");
        jLabel9.setBounds(new Rectangle(25, 235, 225, 10));
        jLabel10.setText("Процент здравна осигуровка");
        jLabel10.setBounds(new Rectangle(25, 263, 225, 10));
        jLabel11.setText("Процент СО и ЗО от работника");
        jLabel11.setBounds(new Rectangle(25, 291, 225, 10));
        jLabel12.setText("Процент признати доброволни осигуровки");
        jLabel12.setBounds(new Rectangle(25, 319, 225, 10));
        jLabel13.setText("Трудова злополука и проф. болест");
        jLabel13.setBounds(new Rectangle(25, 347, 225, 10));
        jLabel14.setText("Гарантирани вземания от раб. и служ.");
        jLabel14.setBounds(new Rectangle(25, 375, 225, 10));
        
        jTextField9.setBounds(new Rectangle(255, 230, 60, 20));
        
        jTextField10.setBounds(new Rectangle(255, 258, 60, 20));
        
        jTextField11.setBounds(new Rectangle(255, 286, 60, 20));
        
        jTextField12.setBounds(new Rectangle(255, 314, 60, 20));
        
        jTextField13.setBounds(new Rectangle(255, 342, 60, 20));
        
        jTextField14.setBounds(new Rectangle(255, 370, 60, 20));
        jLabel15.setText("Максимален брой МРЗ за ДОО");
        jLabel15.setBounds(new Rectangle(25, 400, 225, 10));
        jTextField15.setBounds(new Rectangle(255, 395, 60, 20));
        jButton1.setText("Запази");
        jButton1.setBounds(new Rectangle(65, 435, 75, 23));
        jButton1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton1_actionPerformed(e);
            }
        });
        jButton2.setText("Отмени");
        jButton2.setBounds(new Rectangle(210, 435, 75, 23));
        jButton2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton2_actionPerformed(e);
            }
        });
        jPanel1.add(jButton2, null);
        jPanel1.add(jButton1, null);
        jPanel1.add(jTextField15, null);
        jPanel1.add(jLabel15, null);
        jPanel1.add(jTextField14, null);
        jPanel1.add(jTextField13, null);
        jPanel1.add(jTextField12, null);
        jPanel1.add(jTextField11, null);
        jPanel1.add(jTextField10, null);
        jPanel1.add(jTextField9, null);
        jPanel1.add(jLabel14, null);
        jPanel1.add(jLabel13, null);
        jPanel1.add(jLabel12, null);
        jPanel1.add(jLabel11, null);
        jPanel1.add(jLabel10, null);
        jPanel1.add(jLabel9, null);
        jPanel1.add(jTextField8, null);
        jPanel1.add(jLabel1, null);
        jPanel1.add(jTextField1, null);
        jPanel1.add(jLabel2, null);
        jPanel1.add(jTextField2, null);
        jPanel1.add(jLabel3, null);
        jPanel1.add(jTextField3, null);
        jPanel1.add(jLabel4, null);
        jPanel1.add(jTextField4, null);
        jPanel1.add(jLabel5, null);
        jPanel1.add(jTextField5, null);
        jPanel1.add(jLabel6, null);
        jPanel1.add(jTextField6, null);
        jPanel1.add(jLabel7, null);
        jPanel1.add(jTextField7, null);
        jPanel1.add(jLabel8, null);
        
        try{
            
            rsCus = stCus.executeQuery(strSQL);
            rsCus.next();
            jTextField1.setText("" + rsCus.getString("dni5"));
            jTextField2.setText("" + rsCus.getString("dni6"));
            jTextField3.setText("" + rsCus.getString("minrzd"));
            
            jTextField4.setText("" + rsCus.getString("minod"));
            jTextField5.setText("" + rsCus.getString("maxod"));
            jTextField6.setText("" + rsCus.getString("maxbdf"));
            jTextField7.setText("" + rsCus.getString("avdod"));
            jTextField8.setText("" + rsCus.getString("dodbln"));
            jTextField9.setText("" + rsCus.getString("dodso"));
            jTextField10.setText("" + rsCus.getString("pzdo"));
            jTextField11.setText("" + rsCus.getString("psozo"));
            jTextField12.setText("" + rsCus.getString("ppdo"));
            jTextField13.setText("" + rsCus.getString("ptzpb"));
            jTextField14.setText("" + rsCus.getString("pgzrs"));
            jTextField15.setText("" + rsCus.getString("mrz"));
        }
        
        catch(SQLException sqlEx){
            System.out.println(sqlEx.getMessage());
        }
        this.getContentPane().add(jPanel1, BorderLayout.CENTER);
    }
    
    private void jButton1_actionPerformed(ActionEvent e) {
        try{
            lD1 = Integer.parseInt(jTextField1.getText());
            lD2 = Integer.parseInt(jTextField1.getText());
            if (lD1>=1 && lD1<=31){
                if (lD2>=1 && lD2<=31){
                    try{
                        
                        stCus.executeUpdate("INSERT INTO monthpar(dni5, dni6, minrzd, minod," +
                                " maxod, maxbdf, avdod, dodbln, dodso, pzdo, psozo, ppdo, ptzpb, pgzrs, mrz) " +
                                
                                "VALUES ('" +
                                jTextField1.getText() + "', '" +
                                jTextField2.getText() + "', '" +
                                jTextField3.getText() + "', '" +
                                jTextField4.getText() + "', '" +
                                jTextField5.getText() + "', '" +
                                jTextField6.getText() + "', '" +
                                jTextField7.getText() + "', '" +
                                jTextField8.getText() + "', '" +
                                jTextField9.getText() + "', '" +
                                jTextField10.getText() + "', '" +
                                jTextField11.getText() + "', '" +
                                jTextField12.getText() + "', '" +
                                jTextField13.getText() + "', '" +
                                jTextField14.getText() + "', '" +
                                jTextField15.getText() +
                                "')");
                        dispose();
                    }
                    
                    catch(SQLException sqlEx){
                        System.out.println(sqlEx.getMessage());
                    }
                }
                
                else {
                    JOptionPane.showMessageDialog(null,"Некоректни стойности за дни 6 дневан работна седм.\n Моля въведете стойност в рамките 1 - 31.","РЕА - ПРОЕКТ КОЛОБЕР",JOptionPane.WARNING_MESSAGE);
                    jTextField1.requestFocus();
                }
            } else {
                JOptionPane.showMessageDialog(null,"Некоректни стойности за дни 5 дневан работна седм.\n Моля въведете стойност в рамките 1 - 31.","РЕА - ПРОЕКТ КОЛОБЕР",JOptionPane.WARNING_MESSAGE);
                jTextField1.requestFocus();
            }
            
            
        } catch (Exception exp){
            JOptionPane.showMessageDialog(null,"Има празни полета или са въведени нечислови стойности.\n Моля попълнете ги.","РЕА - ПРОЕКТ КОЛОБЕР",JOptionPane.WARNING_MESSAGE);
            jTextField1.requestFocus();
        }
    }
    private void jButton2_actionPerformed(ActionEvent e) {
        dispose();
    }
}