
package imakante.salary;


import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.sql.ResultSet;
import java.awt.Dimension;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Rectangle;
import java.io.FileInputStream;
import java.io.InputStream;
import javax.swing.BorderFactory;
import javax.swing.border.EtchedBorder;
import java.util.HashMap;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import net.sf.jasperreports.engine.JasperReport;



public class FrmVedAvans extends javax.swing.JInternalFrame implements java.awt.event.WindowListener {
    javax.swing.JFrame JFParentFrame;
    private javax.swing.JPanel panel = new JPanel();
    private javax.swing.JPanel jPanel1 = new JPanel();
    private javax.swing.JPanel jPanel2 = new JPanel();
    public javax.swing.JScrollPane jScrollPane1 = new JScrollPane();
    private JButton B1 = new JButton();
    private JButton B2 = new JButton();
    private JButton B3 = new JButton();
    public int pYear, pMonth;
    private int selected;
    
    private static String strYearsSQL;
    InputStream fs = null;
    JasperReport template = null;
    HashMap reportParam;
    String fName;
    java.sql.Connection dbInternal;
    java.sql.Statement stm;
    java.sql.ResultSet rsCus;
    String[] s;
    
    
    public int lYear;
    public int lMonth;
    public CustomTable jTable;
    public CustomTableModel jmodel;
    public java.awt.Dimension dim;
    public FrmVedAvans(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame,
            int pMonth, int pYear) throws java.sql.SQLException {
        
        super("Ведомости Аванси", false, true,true, true);
        
        dbInternal = srcCN;
        lYear = pYear;
        lMonth = pMonth;
        //fName = FName;
        try{
            stm = dbInternal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
        } catch (java.sql.SQLException sqle){
            System.out.println("Problem v statement - date");
        }
      
        strYearsSQL = "SELECT ls_main.id, ls_main.first, ls_main.second,  ls_main.family," +
                "  lsresult.avans FROM ls_main" +
                " INNER JOIN lsresult ON (ls_main.Id = lsresult.idrab)  WHERE lsresult.avans IS NOT NULL AND lsresult.avans > 0 AND lsresult.pyear = " + lYear + " AND " + "lsresult.pmonth = " + lMonth;
        try{
            rsCus = stm.executeQuery(strYearsSQL);} catch (java.sql.SQLException sd){}
        
        jmodel = new CustomTableModel(dbInternal, rsCus, null);
        jTable = new CustomTable(jmodel);
        
        try {
            
            
            
            jbInit();
        } catch(Exception e) {
            e.printStackTrace();
        }
        jScrollPane1.getViewport().add(jTable, null);
        dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        
        this.setLocation(x,y);
    }
    
    private void jbInit() throws Exception {
        
        this.setSize(new Dimension(508, 514));
        panel.setLayout(null);
        
        panel.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        B1.setText("Печат");
        B1.setBounds(new Rectangle(120, 10, 95, 25));
        B1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton1_actionPerformed(e);
            }
        });
         B1.addKeyListener(keyCl);
        
        jPanel1.setBounds(new Rectangle(5, 5, 490, 415));
        jPanel1.setLayout(null);
        jPanel1.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel2.setBounds(new Rectangle(5, 425, 490, 50));
        jPanel2.setLayout(null);
        jPanel2.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jScrollPane1.setBounds(new Rectangle(5, 5, 480, 405));
        B2.setText("Преглед през JASPER");
        B2.setBounds(new Rectangle(265, 10, 165, 25));
        B2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton2_actionPerformed(e);
            }
        });
        B2.addKeyListener(keyCl);
        jPanel1.add(jScrollPane1, null);
        panel.add(jPanel1, null);
        jPanel2.add(B1, null);
        jPanel2.add(B2, null);
        panel.add(jPanel2, null);
        this.getContentPane().add(panel, BorderLayout.CENTER);
    }
    
    private void jButton1_actionPerformed(ActionEvent e) {
        
    }
    
    
    
    
    
    private void jButton2_actionPerformed(ActionEvent e) {
        String freport = "c:/ved_avansi.jasper";
        
        reportParam = new HashMap();
        
        try{
            fs = new FileInputStream(freport);
        } catch (java.io.FileNotFoundException  ioex){
            System.out.println("Ne moga da nameria faila  ");
        }
        fName =  salary_main.getNFirm();
        reportParam.put("name", fName);
        reportParam.put("lmonth", lMonth);
        reportParam.put("lyear", lYear);
        javax.swing.JDialog formPrint = new imakante.salary.frmPrint(JFParentFrame,true,dbInternal,freport,reportParam);
        formPrint.setVisible(true);
        
    }
    protected void UnloadWindow(){
        try {
            rsCus.close();
            stm.close();
        } catch(java.sql.SQLException e) {
            JOptionPane.showMessageDialog(null,"Грешка ИЛС-С03Р  Възникнал проблем при затваряне на ресурси.\n","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
        this.dispose();
        
    }
     java.awt.event.KeyAdapter keyCl = new java.awt.event.KeyAdapter() {
                    public void keyPressed(java.awt.event.KeyEvent evt) {
                        ButtonEnterPressed(evt);
                    }
                };
             private void ButtonEnterPressed(java.awt.event.KeyEvent evt) {
                if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ 
                    ((JButton) evt.getComponent()).doClick();
                }
            }
    
    public void windowOpened(java.awt.event.WindowEvent e){
    }
    public void windowClosing(java.awt.event.WindowEvent e){
        UnloadWindow();
    }
    public void windowClosed(java.awt.event.WindowEvent e){
    }
    public void windowIconified(java.awt.event.WindowEvent e){
    }
    public void windowDeiconified(java.awt.event.WindowEvent e){
    }
    public void windowActivated(java.awt.event.WindowEvent e){
    }
    public void windowDeactivated(java.awt.event.WindowEvent e){
    }
}
