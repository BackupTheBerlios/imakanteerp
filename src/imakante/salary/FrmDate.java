package imakante.salary;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.JButton;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JLabel;
import java.sql.Connection;

public class FrmDate extends JDialog //implements ActionListener
{
    boolean sdf;
    private salary_main main = null;
    private JPanel panel = new JPanel();
    private JButton B1 = new JButton();
    private JButton B2 = new JButton();
    private JLabel L1 = new JLabel();
    private JLabel L2 = new JLabel();
    private JComboBox comboMonth;
    public JComboBox comboYear;
    public int pYear, pMonth,x,y;
    private int selected;
    private JPanel jPanel1 = new JPanel();
    private static String strYearsCusSQL;
    String[] month = {"Януари","Февруари","Март","Април","Май","Юни","Юли","Август",
            "Септември","Октомври","Ноември","Декември"};
            boolean suportStProc = false;
            java.sql.Connection dbInternal;
            java.sql.Statement stm;
            java.sql.ResultSet rsCus;
            java.sql.PreparedStatement pstm;
            String[] s;
            private JPanel jPanel2 = new JPanel();
            public java.awt.Dimension dim;
            public FrmDate(salary_main m, Connection dbCon) {
                super();
                main = m;
                this.setModal(true);
                dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
                comboYear = new JComboBox();
                dbInternal = dbCon;
                try{
                    java.sql.DatabaseMetaData dmd = dbInternal.getMetaData();
                    if (dmd.supportsStoredProcedures()) {
                        main.setSupportStProc(true);
                        
                    }
                } catch(java.sql.SQLException sqle){}
                
                
                if(main.getSupportStProc()){
                    try {
                        System.out.println("vhoh");
                        try{
                            pstm = dbInternal.prepareStatement("SELECT * FROM sp_getyear");}catch(java.sql.SQLException se){System.out.println("problem v statement");
                            se.printStackTrace();}
                        
                        rsCus = pstm.executeQuery();
                        if (rsCus == null){System.out.println("Niama result");}
                        if (rsCus!=null){System.out.println("iama result");}
                        while(rsCus.next()){
                            comboYear.addItem(rsCus.getString("pyear"));
                        }
                    } catch(java.sql.SQLException sqle){}
                    
                } else {
                    try{
                        
                        stm = dbInternal.createStatement();
                        rsCus = stm.executeQuery("SELECT DISTINCT pyear FROM lsresult WHERE pyear IS NOT NULL ORDER BY pyear");
                        
                        while(rsCus.next()){
                            
                            comboYear.addItem(rsCus.getString("pyear"));
                            
                            System.out.println(rsCus.getString("pyear"));
                        }
                    } catch(java.sql.SQLException sqle){
                        sqle.printStackTrace();
                    }
                }
                try {
                    
                    jbInit();
                    x = (((dim.width)-(this.getSize().width))/2);
                    y = (((dim.height)-(this.getSize().height))/2);
                    
                    this.setLocation(x,y);
                } catch(Exception e) {
                    e.printStackTrace();
                }
                
            }
            
            private void jbInit() throws Exception {
                java.awt.GridBagConstraints gridBagConstraints;
                
                jPanel1 = new javax.swing.JPanel();
                L1 = new javax.swing.JLabel();
                L2 = new javax.swing.JLabel();
               comboMonth = new javax.swing.JComboBox(month);
                //comboYear = new javax.swing.JComboBox();
                jPanel2 = new javax.swing.JPanel();
                B1 = new javax.swing.JButton();
                B2= new javax.swing.JButton();
                
                setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
                jPanel1.setLayout(new java.awt.GridBagLayout());
                
                jPanel1.setBorder(new javax.swing.border.EtchedBorder());
                L1.setText("\u041c\u0435\u0441\u0435\u0446");
                gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
                gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
                jPanel1.add(L1, gridBagConstraints);
                
                L2.setText("\u0413\u043e\u0434\u0438\u043d\u0430");
                gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.gridx = 0;
                gridBagConstraints.gridy = 1;
                gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
                gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
                jPanel1.add(L2, gridBagConstraints);
                
                comboMonth.setBackground(new java.awt.Color(240, 240, 240));
                gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
                gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
                jPanel1.add(comboMonth, gridBagConstraints);
                comboMonth.addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent e) {
                        comboMactionPerformed(e);
                    }
                });
                
                comboYear.setBackground(new java.awt.Color(240, 240, 240));
                gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.gridx = 1;
                gridBagConstraints.gridy = 1;
                gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
                gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
                jPanel1.add(comboYear, gridBagConstraints);
                comboYear.addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent e) {
                        comboYactionPerformed(e);
                    }
                });
                getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);
                
                jPanel2.setLayout(new java.awt.GridBagLayout());
                
                jPanel2.setBorder(new javax.swing.border.EtchedBorder());
                B1.setText("\u041f\u041e\u0422\u0412\u042a\u0420\u0414\u0418");
                gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
                gridBagConstraints.ipadx = 3;
                gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
                jPanel2.add(B1, gridBagConstraints);
                B1.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton1_actionPerformed(evt);
                    }
                });
                
                B2.setText("\u041e\u0422\u041c\u0415\u041d\u0418");
                gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
                gridBagConstraints.ipadx = 3;
                gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
                jPanel2.add(B2, gridBagConstraints);
                B2.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton2_actionPerformed(evt);
                    }
                });
                getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);
                
                pack();
                
                
            /*    ---
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
                this.getContentPane().add(panel, BorderLayout.CENTER);*/
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