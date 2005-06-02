package imakante.salary;



import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import java.awt.Dimension;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Rectangle;
import javax.swing.JLabel;
import javax.swing.BorderFactory;
import javax.swing.border.EtchedBorder;
import java.sql.Connection;
import java.sql.Statement;
public class FrmDate extends JDialog //implements ActionListener
{
    private salary_main main = null;
    private JPanel panel = new JPanel();
    private JButton B1 = new JButton();
    private JButton B2 = new JButton();
    private JLabel L1 = new JLabel();
    private JLabel L2 = new JLabel();
    private JComboBox comboMonth;
    public JComboBox comboYear;
    public int pYear, pMonth;
    private int selected;
    private JPanel jPanel1 = new JPanel();
    private static String strYearsSQL;
    String[] month = {"Януари","Февруари","Март","Април","Май","Юни","Юли","Август",
            "Септември","Октомври","Ноември","Декември"};
            
            Connection dbInternal;
            Statement stm;
            ResultSet rsGL;
            String[] s;
            private JPanel jPanel2 = new JPanel();
            
            public FrmDate(salary_main m, Connection dbCon) {
                super();
                comboYear = new JComboBox();
                dbInternal = dbCon;
                
                try{
                    stm = dbInternal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                } catch (SQLException sqle){
                    System.out.println("Problem v statement - date");
                }
                
                strYearsSQL = "SELECT DISTINCT pyear FROM monthpar WHERE pyear IS NOT NULL ORDER BY pyear";
                try{
                    rsGL = stm.executeQuery(strYearsSQL);} catch (SQLException sd){}
                if (rsGL == null) {System.out.println("Празен резулт сет");};
                try {
                    
                    ResultSetMetaData rsmd = rsGL.getMetaData();
                    while (rsGL.next()) {
                        for (int i=0; i<rsmd.getColumnCount(); i++) {
                            
                            comboYear.addItem(rsGL.getString("pyear"));
                        }
                    }
                    
                    System.out.println(s);
                }
                
                catch(SQLException sqle1){}
                
                
                try {
                    
                    main = m;
                    this.setModal(true);
                    
                    jbInit();
                } catch(Exception e) {
                    e.printStackTrace();
                }
                
            }
            
            private void jbInit() throws Exception {
                this.setTitle("Промяна на период");
                this.setLocation(200,200);
                this.setSize(new Dimension(339, 196));
                panel.setLayout(null);
                
                comboMonth = new JComboBox(month);
                comboMonth.setSelectedIndex(selected);
                comboMonth.addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent e) {
                        comboMactionPerformed(e);
                    }
                });
                comboMonth.setBounds(new Rectangle(160, 10, 100, 20));
                B1.setText("Промени");
                B1.setBounds(new Rectangle(35, 20, 95, 25));
                B1.addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent e) {
                        jButton1_actionPerformed(e);
                    }
                });
                L1.setText("Месец");
                L1.setBounds(new Rectangle(25, 10, 130, 20));
                L2.setText("Година");
                L2.setBounds(new Rectangle(25, 40, 90, 20));
                
                
                comboYear.setSelectedIndex(selected);
                comboYear.addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent e) {
                        comboYactionPerformed(e);
                    }
                });
                comboYear.setBounds(new Rectangle(160, 40, 100, 20));
                jPanel1.setBounds(new Rectangle(10, 5, 310, 70));
                jPanel1.setLayout(null);
                jPanel1.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
                jPanel2.setBounds(new Rectangle(10, 85, 310, 65));
                jPanel2.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
                jPanel2.setLayout(null);
                B2.setText("Отмени");
                B2.setBounds(new Rectangle(175, 20, 95, 25));
                B2.addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent e) {
                        jButton2_actionPerformed(e);
                    }
                });
                jPanel1.add(L1, null);
                jPanel1.add(comboMonth, null);
                jPanel1.add(L2, null);
                jPanel1.add(comboYear, null);
                jPanel2.add(B1, null);
                jPanel2.add(B2, null);
                panel.add(jPanel2, null);
                panel.add(jPanel1, null);
                this.getContentPane().add(panel, BorderLayout.CENTER);
            }
            
            private void jButton1_actionPerformed(ActionEvent e) {
                pMonth = (selected+1);
                pYear = Integer.parseInt((String)comboYear.getSelectedItem());
                {System.out.println("Месец:  " + pMonth);
                 System.out.println("Година: " + pYear);}
                main.setMonth(pMonth);
                main.setYear(pYear);
                dispose();
                
            }
            
            private void jButton2_actionPerformed(ActionEvent e) {
                System.exit(0);
            }
            
            private void comboMactionPerformed(ActionEvent e) {
                JComboBox comboMonth = (JComboBox)e.getSource();
                String month = (String)comboMonth.getSelectedItem();
                selected = (int)comboMonth.getSelectedIndex();
            }
            
            private void comboYactionPerformed(ActionEvent e) {
                JComboBox comboYear = (JComboBox)e.getSource();
                String year = (String)comboMonth.getSelectedItem();
            }
            
            
}