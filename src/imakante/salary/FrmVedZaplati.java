
package imakante.salary;


import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JDialog;
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
import java.sql.Connection;
import java.sql.Statement;
import java.util.HashMap;
import javax.swing.JScrollPane;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JRViewer;


public class FrmVedZaplati extends JDialog //implements ActionListener
{
    private salary_main main = null;
    private JPanel panel = new JPanel();
    private JButton B1 = new JButton();
    private JButton B2 = new JButton();
    private JButton B3 = new JButton();
    public int pYear, pMonth;
    private int selected;
    private JPanel jPanel1 = new JPanel();
    private static String strYearsSQL;
    InputStream fs = null;
    JasperReport template = null;
    HashMap reportParam;
    String fName;
    Connection dbInternal;
    Statement stm;
    ResultSet rsCus;
    String[] s;
    private JPanel jPanel2 = new JPanel();
    public JScrollPane jScrollPane1 = new JScrollPane();
    public int lYear;
    public int lMonth;
    public CustomTable jTable;
    public CustomTableModel jmodel;
    
    public FrmVedZaplati(salary_main m, Connection dbCon, int tYear, int tMonth, String FName) {
        super();
        
        dbInternal = dbCon;
        lYear = tYear;
        lMonth = tMonth;
        fName = FName;
        try{
            stm = dbInternal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
        } catch (SQLException sqle){
            System.out.println("Problem v statement - date");
        }
        
        strYearsSQL = "SELECT main_ls.id, main_ls.first, main_ls.second,  main_ls.family," +
                " lsresult.zaplata, lsresult.psuma, lsresult.nsuma FROM main_ls" +
                " INNER JOIN lsresult ON (main_ls.Id = lsresult.idrab)  WHERE lsresult.year = " + lYear + " AND " + "lsresult.month = " + lMonth+";";
        try{
            rsCus = stm.executeQuery(strYearsSQL);} catch (SQLException sd){}
        
        jmodel = new CustomTableModel(dbInternal, rsCus, null);
        jTable = new CustomTable(jmodel);
        
        try {
            
            main = m;
            this.setModal(true);
            
            jbInit();
        } catch(Exception e) {
            e.printStackTrace();
        }
        jScrollPane1.getViewport().add(jTable, null);
    }
    
    private void jbInit() throws Exception {
        this.setTitle("ÂÅÄÎÌÎÑÒ ÇÀÏËÀÒÈ");
        this.setLocation(200,200);
        this.setSize(new Dimension(508, 514));
        panel.setLayout(null);
        
        panel.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        B1.setText("Ïå÷àò");
        B1.setBounds(new Rectangle(120, 10, 95, 25));
        B1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton1_actionPerformed(e);
            }
        });
        
        
        jPanel1.setBounds(new Rectangle(5, 5, 490, 415));
        jPanel1.setLayout(null);
        jPanel1.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel2.setBounds(new Rectangle(5, 425, 490, 50));
        jPanel2.setLayout(null);
        jPanel2.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jScrollPane1.setBounds(new Rectangle(5, 5, 480, 405));
        B2.setText("Ïðåãëåä ïðåç JASPER");
        B2.setBounds(new Rectangle(265, 10, 165, 25));
        B2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton2_actionPerformed(e);
            }
        });
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
        String freport = "c:/ved1.jasper";
        //String namefirm = "ÈÍÑÀÉÄ 3 - ÎÎÄ";
        
        reportParam = new HashMap();
        // reportParam = null;
        // reportParam.put("name", "ÈÍÑÀÉÄ 3 - ÎÎÄ");
        
        // reportParam.put("month", lMonth);
        // reportParam.put("year", lYear);
        try{
            fs = new FileInputStream(freport);
        } catch (java.io.FileNotFoundException  ioex){
            System.out.println("Ne moga da nameria faila  ");
        }
        
        
        try {
            reportParam.put("name", fName);
            reportParam.put("lmonth", lMonth);
            reportParam.put("lyear", lYear);
            if (reportParam  != null){
                
            }
            //JasperDesign jasperDesign = JRXmlLoader.load("c:/ved3.xml");
            //  JasperReport template= JasperCompileManager.compileReport(jasperDesign);
            template = JasperManager.loadReport(fs);
            JasperPrint print1 = JasperFillManager.fillReport(template,reportParam, dbInternal);
            // report1 = JasperManager.fillReport(report, reportParam, dbInternal);
            
            JRViewer jrv = new JRViewer(print1);
            jrv.setSize(490, 490);
            jrv.setVisible(true);
            jPanel1.remove(jScrollPane1);
            jPanel1.setSize(500, 500);
            jPanel1.add(jrv, -1);
            jPanel1.revalidate();
            jPanel1.repaint();
            jPanel2.remove(B1);
            jPanel2.remove(B2);
            panel.remove(jPanel2);
            panel.repaint();
            
        } catch (JRException jrev){
            
            
            jrev.printStackTrace();
        }
        
    }
    
}