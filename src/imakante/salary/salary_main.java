package imakante.salary;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Insets;
import java.awt.Toolkit;
import java.beans.PropertyVetoException;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDesktopPane;
import javax.swing.JFrame;
import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JToolBar;
import javax.swing.KeyStroke;
import javax.swing.UIManager;


public class salary_main extends javax.swing.JFrame implements java.awt.event.WindowListener{
    
    javax.swing.JPanel Panel1;
    JDesktopPane Desk1 = new JDesktopPane();
    private JLabel StatusLabel = new JLabel("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415 - \u041b\u0421",JLabel.CENTER);
    JLabel BTlabel = new JLabel();
    Dimension screen = 	Toolkit.getDefaultToolkit().getScreenSize();
    public static String StrName;
    String StrBTitle;
    String DBDriver;
    public static String DBSource;
    public static String DBUserName;
    public static String DBPassword;
    java.sql.Connection dbCON;
    boolean suportStProc = false;
    public static int pMonth, pYear;
    public static java.util.HashMap rightsUser;
    //--Start variable the contains forms
    FrmSastav    FormSastav;
    FrmDOD       FormDOD;
    FrmDOO       FormDOO;
    FrmMonth     FormMonth;
    FrmDate      FormDate;
    FrmNewM      FormNewM;
    FrmOtdel     FormOtdel;
    FrmDlajnost  FormDlajnost;
    FrmVedZaplati FormVedZaplati;
    FrmVedAvans   FormVedAvans;
    frmSleujParam  FormSleujParam;
    private FrmAct        FormActStDlaj;
    FrmPic FormPic;
    imakante.salary.FrmNCP FormNCP;
    Font menuFont = new Font("Tahoma", Font.PLAIN, 14);
    imakante.salary.frmLogo splash = new imakante.salary.frmLogo();
    Thread FormSplash = new Thread(splash);
    
    public salary_main(){
        
        super("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415 \u041b\u0418\u0427\u0415\u041d \u0421\u042a\u0421\u0422\u0410\u0412 v 0.0.1a");
        
        loadSplashScreen();
        
        frmConnSalary fdia = new frmConnSalary(this,true);
        fdia.setVisible(true);
        
        FrmDate fdate = new FrmDate(this,dbCON);
        fdate.setVisible(true);
        
        getStatusLabel().setBorder(BorderFactory.createTitledBorder(""));
        getStatusLabel().setFont(menuFont);
        
        BTlabel.setText(StrBTitle);
        BTlabel.setHorizontalAlignment(JLabel.LEFT);
        BTlabel.setForeground(new Color(166,0,0));
        
        //Set the main form properties
        addWindowListener(this);
        
        Desk1.setBackground(Color.gray);
        Desk1.setBorder(BorderFactory.createEmptyBorder());
        //Most fastest drag mode
        Desk1.setDragMode(JDesktopPane.OUTLINE_DRAG_MODE);
        
        Panel1 = new JPanel(new BorderLayout());
        Panel1.setBackground(Color.gray);
        Panel1.setBorder(BorderFactory.createLoweredBevelBorder());
        Panel1.add(new JScrollPane(Desk1),BorderLayout.CENTER);
        
        getContentPane().add(CreateJToolBar(),BorderLayout.PAGE_START);
        getContentPane().add(Panel1,BorderLayout.CENTER);
        getContentPane().add(getStatusLabel(), BorderLayout.PAGE_END);
        
        setJMenuBar(CreateJMenuBar());
        setExtendedState(this.MAXIMIZED_BOTH);
        
        setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        setIconImage(new ImageIcon("/imakante/imakante_small.jpg").getImage());
        setLocation(0,0);
        setSize(screen);
        setResizable(true);
        
        setVisible(true);
        
        
        
        //End set the main form properties
    }
    
    /********************** End MainForm constructor start ********************/
    
    /*********************** Custom class creation start **********************/
    
    //Create menu bar
    protected JMenuBar CreateJMenuBar(){
        JMenuBar NewJMenuBar = new JMenuBar();
        
        //Setup file menu
        JMenu MnuFile = new JMenu("\u041f\u0420\u041e\u0413\u0420\u0410\u041c\u0410");
        MnuFile.setFont(menuFont);
        MnuFile.setMnemonic('F');
        MnuFile.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuFile);
        //End setup file menu
        
        //Set file sub menu
        JMenuItem ItmLockApp = new JMenuItem("\u0417\u0430\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430");
        ItmLockApp.setFont(menuFont);
        ItmLockApp.setMnemonic('L');
        ItmLockApp.setIcon(new ImageIcon("images/lockapplication.png"));
        ItmLockApp.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_L,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmLockApp.setActionCommand("lockapp");
        ItmLockApp.addActionListener(getJMenuActionListener());
        ItmLockApp.setBackground(new Color(255,255,255));
        
        JMenuItem ItmLogon = new JMenuItem("\u0412\u0445\u043e\u0434 \u0432 \u0431\u0430\u0437\u0430\u0442\u0430");
        ItmLogon.setFont(menuFont);
        ItmLogon.setMnemonic('I');
        ItmLogon.setIcon(new ImageIcon("images/lockapplication.png"));
        ItmLogon.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_I,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmLogon.setActionCommand("logon");
        ItmLogon.addActionListener(getJMenuActionListener());
        ItmLogon.setBackground(new Color(255,255,255));
        
        
        
        JMenuItem ItmLoggOff = new JMenuItem("\u0418\u0437\u0445\u043e\u0434 \u043e\u0442 \u0431\u0430\u0437\u0430\u0442\u0430...");
        ItmLoggOff.setFont(menuFont);
        ItmLoggOff.setMnemonic('O');
        ItmLoggOff.setIcon(new ImageIcon("images/loggoff.png"));
        ItmLoggOff.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_O,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmLoggOff.setActionCommand("loggoff");
        ItmLoggOff.addActionListener(getJMenuActionListener());
        ItmLoggOff.setBackground(new Color(255,255,255));
        
        JMenuItem ItmPeriod = new JMenuItem("\u0421\u043c\u044f\u043d\u0430 \u043d\u0430 \u043f\u0435\u0440\u0438\u043e\u0434");
        ItmPeriod.setFont(menuFont);
        ItmPeriod.setMnemonic('H');
        ItmPeriod.setIcon(new ImageIcon("images/lockapplication.png"));
        ItmPeriod.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_H,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmPeriod.setActionCommand("period");
        ItmPeriod.addActionListener(getJMenuActionListener());
        ItmPeriod.setBackground(new Color(255,255,255));
        
        JMenuItem ItmExit = new JMenuItem("\u0418\u0417\u0425\u041e\u0414");
        ItmExit.setFont(menuFont);
        ItmExit.setMnemonic('E');
        ItmExit.setIcon(new ImageIcon("images/exit.png"));
        ItmExit.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_E,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmExit.setActionCommand("exit");
        ItmExit.addActionListener(getJMenuActionListener());
        ItmExit.setBackground(new Color(255,255,255));
        
        MnuFile.add(ItmLockApp);
        MnuFile.add(ItmPeriod);
        MnuFile.add(ItmLogon);
        MnuFile.addSeparator();
        MnuFile.add(ItmLoggOff);
        MnuFile.add(ItmExit);
        //End set file sub menu
        
        //Setup records menu
        
        JMenu MnuDoc = new JMenu("\u0420\u0415\u0414\u0410\u041a\u0422\u0418\u0420\u0410\u041d\u0415");
        MnuDoc.setFont(menuFont);
        MnuDoc.setMnemonic('D');
        MnuDoc.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuDoc);
        //
        
        JMenuItem ItmProd = new JMenuItem("\u0421\u043f\u0438\u0441\u044a\u043a \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b\u0438");
        ItmProd.setFont(menuFont);
        ItmProd.setMnemonic('P');
        ItmProd.setIcon(new ImageIcon("images/prod.png"));
        ItmProd.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_P,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmProd.setActionCommand("sluj");
        ItmProd.addActionListener(getJMenuActionListener());
        ItmProd.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmProd);
        
        JMenuItem ItmFakturi = new JMenuItem("\u0414\u041e\u041e \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        ItmFakturi.setFont(menuFont);
        ItmFakturi.setMnemonic('F');
        ItmFakturi.setIcon(new ImageIcon("images/fak.png"));
        ItmFakturi.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_F,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmFakturi.setActionCommand("doo");
        ItmFakturi.addActionListener(getJMenuActionListener());
        ItmFakturi.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmFakturi);
        //
        //
        JMenuItem ItmProhods = new JMenuItem("\u041d\u0430\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f \u0438 \u0443\u0434\u0440\u044a\u0436\u043a\u0438");
        ItmProhods.setFont(menuFont);
        ItmProhods.setMnemonic('f');
        ItmProhods.setIcon(new ImageIcon("images/fak.png"));
        
        ItmProhods.setActionCommand("doo1");
        ItmProhods.addActionListener(getJMenuActionListener());
        ItmProhods.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmProhods);
        
        
        JMenuItem ItmPorach = new JMenuItem("\u0421\u043f\u0438\u0441\u044a\u043a \u043e\u0442\u0434\u0435\u043b\u0438");
        ItmPorach.setFont(menuFont);
        ItmPorach.setMnemonic('f');
        ItmPorach.setActionCommand("otd");
        ItmPorach.addActionListener(getJMenuActionListener());
        ItmPorach.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmPorach);
        //
        
        JMenuItem ItmDlaj = new JMenuItem("\u0421\u043f\u0438\u0441\u044a\u043a \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0438");
        ItmDlaj.setFont(menuFont);
        ItmDlaj.setMnemonic('f');
        ItmDlaj.setActionCommand("dlaj");
        ItmDlaj.addActionListener(getJMenuActionListener());
        ItmDlaj.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmDlaj);
        //
        
        
        JMenuItem ItmMDanni = new JMenuItem("\u041c\u0435\u0441\u0435\u0447\u043d\u0438 \u0434\u0430\u043d\u043d\u0438");
        ItmMDanni.setFont(menuFont);
        ItmMDanni.setMnemonic('f');
        ItmMDanni.setIcon(new ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmMDanni.setActionCommand("mes");
        ItmMDanni.addActionListener(getJMenuActionListener());
        ItmMDanni.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmMDanni);
        //
        
        
        JMenuItem ItmOtpis = new JMenuItem("\u0423\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0437\u0430 \u0442\u0440\u0443\u0434\u043e\u0432\u0438 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0438");
        ItmOtpis.setFont(menuFont);
        ItmOtpis.setMnemonic('f');
        ItmOtpis.setIcon(new ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmOtpis.setActionCommand("Prehv");
        ItmOtpis.addActionListener(getJMenuActionListener());
        ItmOtpis.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmOtpis);
        //
        //
        
        
        JMenuItem ItmOffer = new JMenuItem("\u0421\u043e\u0446\u0438\u0430\u043b\u043d\u0438 \u043e\u0441\u0438\u0433\u0443\u0440\u043e\u0432\u043a\u0438");
        ItmOffer.setFont(menuFont);
        ItmOffer.setMnemonic('f');
        ItmOffer.setActionCommand("sotialo");
        ItmOffer.addActionListener(getJMenuActionListener());
        ItmOffer.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmOffer);
        
        //
        //
        JMenu MnuKasa = new JMenu("\u0412\u0415\u0414\u041e\u041c\u041e\u0421\u0422\u0418");
        MnuKasa.setFont(menuFont);
        MnuKasa.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuKasa);
        //End records menu
        //
        JMenuItem ItmPrihoo = new JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0437\u0430\u043f\u043b\u0430\u0442\u0438");
        ItmPrihoo.setFont(menuFont);
        ItmPrihoo.setActionCommand("zved");
        ItmPrihoo.addActionListener(getJMenuActionListener());
        ItmPrihoo.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmPrihoo);
        //
        //
        JMenuItem ItmRazhoo = new JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0430\u0432\u0430\u043d\u0441\u0438");
        ItmRazhoo.setFont(menuFont);
        ItmRazhoo.setActionCommand("vedoma");
        ItmRazhoo.addActionListener(getJMenuActionListener());
        ItmRazhoo.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmRazhoo);
        //
        JMenuItem ItmNalicni = new JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0414\u041e\u041e");
        ItmNalicni.setFont(menuFont);
        ItmNalicni.setActionCommand("dooved");
        ItmNalicni.addActionListener(getJMenuActionListener());
        ItmNalicni.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmNalicni);
        
        JMenuItem ItmVedCO = new JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0421\u041e");
        ItmVedCO.setFont(menuFont);
        ItmVedCO.setActionCommand("soved");
        ItmVedCO.addActionListener(getJMenuActionListener());
        ItmVedCO.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmVedCO);
        
        //
        
        JMenuItem ItmOpis = new JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0414\u041e\u041e \u043e\u0442 \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u0446\u0438");
        ItmOpis.setFont(menuFont);
        ItmOpis.setActionCommand("Prihoo");
        ItmOpis.addActionListener(getJMenuActionListener());
        ItmOpis.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmOpis);
        
        //
        
        JMenuItem ItmZDR = new JMenuItem("\u0417\u0434\u0440\u0430\u0432\u043d\u0438 \u043e\u0441\u0438\u0433\u0443\u0440\u043e\u0432\u043a\u0438");
        ItmZDR.setFont(menuFont);
        ItmZDR.setActionCommand("Prihoo");
        ItmZDR.addActionListener(getJMenuActionListener());
        ItmZDR.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmZDR);
        //
        
        JMenuItem ItmBank = new JMenuItem("\u0411\u0430\u043d\u043a\u043e\u0432\u0438 \u043f\u043b\u0430\u0449\u0430\u043d\u0438\u044f");
        ItmBank.setFont(menuFont);
        ItmBank.setActionCommand("Prihoo");
        ItmBank.addActionListener(getJMenuActionListener());
        ItmBank.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmBank);
        
        
        //
        JMenu MnuRec = new JMenu("\u0418\u0417\u041f\u042a\u041b\u041d\u0415\u041d\u0418\u0415");
        MnuRec.setFont(menuFont);
        MnuRec.setMnemonic('R');
        MnuRec.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuRec);
        //End records menu
        
        //Set records sub menu
        
        //-- For Customer
        JMenuItem ItmAvansi = new JMenuItem("\u0410\u0432\u0430\u043d\u0441\u0438");
        ItmAvansi.setFont(menuFont);
        ItmAvansi.setMnemonic('C');
        ItmAvansi.setIcon(new ImageIcon("images/customer.png"));
        ItmAvansi.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_C,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmAvansi.setActionCommand("avansi");
        ItmAvansi.addActionListener(getJMenuActionListener());
        ItmAvansi.setBackground(new Color(255,255,255));
        
        MnuRec.add(ItmAvansi);
        
        
        //-- For FISHOVE
        
        JMenuItem ItmFishove = new JMenuItem("\u0424\u0438\u0448\u043e\u0432\u0435");
        ItmFishove.setFont(menuFont);
        ItmFishove.setMnemonic('S');
        ItmFishove.setIcon(new ImageIcon("images/supplier.png"));
        ItmFishove.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_S,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmFishove.setActionCommand("fish");
        ItmFishove.addActionListener(getJMenuActionListener());
        ItmFishove.setBackground(new Color(255,255,255));
        
        MnuRec.add(ItmFishove);
        
        //-- For SalesRep
        JMenuItem ItmZarab = new JMenuItem("\u0417\u0430\u0440\u0430\u0431\u043e\u0442\u043a\u0430");
        ItmZarab.setFont(menuFont);
        ItmZarab.setMnemonic('B');
        ItmZarab.setActionCommand("zarab");
        ItmZarab.addActionListener(getJMenuActionListener());
        ItmZarab.setBackground(new Color(255,255,255));
        
        MnuRec.add(ItmZarab);
        
        //
        JMenuItem ItmPremii = new JMenuItem("\u041f\u0440\u0435\u043c\u0438\u0438");
        ItmPremii.setFont(menuFont);
        ItmPremii.setMnemonic('V');
        ItmPremii.setActionCommand("premii");
        ItmPremii.addActionListener(getJMenuActionListener());
        ItmPremii.setBackground(new Color(255,255,255));
        
        MnuRec.add(ItmPremii);
        
        //End records sub menu
        
        //Setup proccess menu
        JMenu MnuProccess = new JMenu("\u0421\u041f\u0420\u0410\u0412\u041a\u0418");
        MnuProccess.setFont(menuFont);
        MnuProccess.setMnemonic('P');
        MnuProccess.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuProccess);
        //End records menu
        
        //Set proccess sub menu
        
        //-- For New Invoice
        JMenuItem ItmSPFish = new JMenuItem("\u0424\u0438\u0448\u043e\u0432\u0435");
        ItmSPFish.setFont(menuFont);
        ItmSPFish.setMnemonic('I');
        ItmSPFish.setIcon(new ImageIcon("images/newinvoice.png"));
        ItmSPFish.setAccelerator(
                KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_F1,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmSPFish.setActionCommand("SPInv");
        ItmSPFish.addActionListener(getJMenuActionListener());
        ItmSPFish.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPFish);
        
        //-- For New PO
        JMenuItem ItmSPNU = new JMenuItem("\u041d\u0430\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f \u0438 \u0443\u0434\u0440\u044a\u0436\u043a\u0438");
        ItmSPNU.setFont(menuFont);
        ItmSPNU.setMnemonic('P');
        ItmSPNU.setIcon(new ImageIcon("images/newpurchaseorder.png"));
        ItmSPNU.setActionCommand("Oborot");
        ItmSPNU.addActionListener(getJMenuActionListener());
        ItmSPNU.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPNU);
        
        //-- For New Purchase Receipt
        JMenuItem ItmSBalance = new JMenuItem("\u0421\u0443\u043c\u0438 \u0437\u0430 \u0441\u0447\u0435\u0442\u043e\u0432\u043e\u0434\u043d\u0430 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f");
        ItmSBalance.setFont(menuFont);
        ItmSBalance.setMnemonic('E');
        ItmSBalance.setIcon(new ImageIcon("images/newrecieve.png"));
        ItmSBalance.setActionCommand("SBalance");
        ItmSBalance.addActionListener(getJMenuActionListener());
        ItmSBalance.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSBalance);
        
        //-- For New Expenses
        JMenuItem ItmSProhod = new JMenuItem("\u0421\u043f\u0438\u0441\u044a\u0446\u0438");
        ItmSProhod.setFont(menuFont);
        ItmSProhod.setActionCommand("SProhod");
        ItmSProhod.addActionListener(getJMenuActionListener());
        ItmSProhod.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSProhod);
        
        //-- For New Expenses
        JMenuItem ItmSPSalaryP = new JMenuItem("\u0417\u0430\u043f\u043b\u0430\u0442\u0438 \u0437\u0430 \u043f\u0435\u0440\u0438\u043e\u0434 \u043e\u0442 \u0432\u0440\u0435\u043c\u0435");
        ItmSPSalaryP.setFont(menuFont);
        ItmSPSalaryP.setActionCommand("SExpense");
        ItmSPSalaryP.addActionListener(getJMenuActionListener());
        ItmSPSalaryP.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPSalaryP);
        
        //-- For New ДДС
        JMenuItem ItmStaj = new JMenuItem("\u041d\u0430\u0442\u0440\u0443\u043f\u0430\u043d \u0441\u0442\u0430\u0436");
        ItmStaj.setFont(menuFont);
        ItmStaj.setActionCommand("spstaj");
        ItmStaj.addActionListener(getJMenuActionListener());
        ItmStaj.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmStaj);
        
        //End proccess sub menu
        
        
        JMenuItem ItmSPZarab = new JMenuItem("\u0417\u0430\u0440\u0430\u0431\u043e\u0442\u043a\u0438");
        ItmSPZarab.setFont(menuFont);
        ItmSPZarab.setActionCommand("spzarab");
        ItmSPZarab.addActionListener(getJMenuActionListener());
        ItmSPZarab.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPZarab);
        
//
        JMenuItem ItmSPSots = new JMenuItem("\u041e\u0442\u0447\u0435\u0442 \u0437\u0430 \u0441\u043e\u0446\u0438\u0430\u043b\u043d\u043e \u043e\u0441\u0438\u0433\u0443\u0440\u044f\u0432\u0430\u043d\u0435");
        ItmSPSots.setFont(menuFont);
        ItmSPSots.setActionCommand("spsots");
        ItmSPSots.addActionListener(getJMenuActionListener());
        ItmSPSots.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPSots);
        
        //End proccess sub menu
        JMenuItem ItmSpStistic = new JMenuItem("\u0421\u043f\u0440\u0430\u0432\u043a\u0438 \u0437\u0430 \u0441\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430\u0442\u0430");
        ItmSpStistic.setFont(menuFont);
        ItmSpStistic.setActionCommand("spstatist");
        ItmSpStistic.addActionListener(getJMenuActionListener());
        ItmSpStistic.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSpStistic);
        //
        JMenuItem ItmPDOD = new JMenuItem("\u041f\u0440\u0435\u0438\u0437\u0447\u0438\u0441\u043b\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0414\u041e\u0414");
        ItmPDOD.setFont(menuFont);
        ItmPDOD.setActionCommand("pdod");
        ItmPDOD.addActionListener(getJMenuActionListener());
        ItmPDOD.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmPDOD);
        //
        JMenuItem ItmBPL = new JMenuItem("\u0411\u0430\u043d\u043a\u043e\u0432\u0438 \u043f\u043b\u0430\u0449\u0430\u043d\u0438\u044f");
        ItmBPL.setFont(menuFont);
        ItmBPL.setActionCommand("bpl");
        ItmBPL.addActionListener(getJMenuActionListener());
        ItmBPL.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmBPL);
        //
        JMenuItem ItmUTD = new JMenuItem("\u0423\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0437\u0430 \u0442\u0440\u0443\u0434\u043e\u0432\u0438 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0438");
        ItmUTD.setFont(menuFont);
        ItmUTD.setActionCommand("Zadalk");
        ItmUTD.addActionListener(getJMenuActionListener());
        ItmUTD.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmUTD);
        
        
        
        ////
        //Setup system menu
        JMenu MnuDocum = new JMenu("\u0414\u041e\u041a\u0423\u041c\u0415\u041d\u0422\u0418");
        MnuDocum.setFont(menuFont);
        MnuDocum.setMnemonic('S');
        MnuDocum.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuDocum);
        //
        
        JMenuItem ItmActStDlaj = new JMenuItem("\u0410\u043a\u0442 \u0437\u0430 \u0432\u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435 \u0432 \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442");
        ItmActStDlaj.setFont(menuFont);
        ItmActStDlaj.setActionCommand("actsdl");
        ItmActStDlaj.addActionListener(getJMenuActionListener());
        ItmActStDlaj.setBackground(new Color(255,255,255));
        
        MnuDocum.add(ItmActStDlaj);
        
        
        
        //Setup system menu
        JMenu MnuSys = new JMenu("\u0421\u0418\u0421\u0422\u0415\u041c\u041d\u0418");
        MnuSys.setFont(menuFont);
        MnuSys.setMnemonic('S');
        MnuSys.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuSys);
        ////
        
        JMenuItem ItmFirma = new JMenuItem("\u0414\u0430\u043d\u043d\u0438 \u043d\u0430 \u0444\u0438\u0440\u043c\u0430\u0442\u0430");
        ItmFirma.setFont(menuFont);
        ItmFirma.setActionCommand("danfirm");
        ItmFirma.addActionListener(getJMenuActionListener());
        ItmFirma.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmFirma);
        
        ///////
        
        JMenuItem ItmNewM = new JMenuItem("\u0421\u044a\u0437\u0434\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u043c\u0435\u0441\u0435\u0446");
        ItmNewM.setFont(menuFont);
        ItmNewM.setActionCommand("newm");
        ItmNewM.addActionListener(getJMenuActionListener());
        ItmNewM.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmNewM);
        ////
        
        JMenuItem ItmDelM = new JMenuItem("\u041f\u0440\u0435\u043c\u0430\u0445\u0432\u0430\u043d\u0435 \u043d\u0430 \u043c\u0435\u0441\u0435\u0446");
        ItmDelM.setFont(menuFont);
        ItmDelM.setActionCommand("ereasem");
        ItmDelM.addActionListener(getJMenuActionListener());
        ItmDelM.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmDelM);
        ///
        JMenuItem ItmExport = new JMenuItem("\u0415\u043a\u0441\u043f\u043e\u0440\u0442 \u043d\u0430 \u0434\u0430\u043d\u043d\u0438");
        ItmExport.setFont(menuFont);
        ItmExport.setActionCommand("expflat");
        ItmExport.addActionListener(getJMenuActionListener());
        ItmExport.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmExport);
        ////
        JMenuItem ItmImport = new JMenuItem("\u0418\u043c\u043f\u043e\u0440\u0442 \u043d\u0430 \u0434\u0430\u043d\u043d\u0438");
        ItmImport.setFont(menuFont);
        ItmImport.setActionCommand("import");
        ItmImport.addActionListener(getJMenuActionListener());
        ItmImport.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmImport);
        
        
        
        
        ///
        JMenuItem ItmImportPic = new JMenuItem("\u0421\u043d\u0438\u043c\u043a\u0438");
        ItmImportPic.setFont(menuFont);
        ItmImportPic.setActionCommand("pic");
        ItmImportPic.addActionListener(getJMenuActionListener());
        ItmImportPic.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmImportPic);
        MnuFile.addSeparator();
        ///
        JMenuItem ItmNKLPROF = new JMenuItem("\u041d\u0430\u0446\u0438\u043e\u043d\u0430\u043b\u0435\u043d \u043a\u043b\u0430\u0441\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 \u043d\u0430 \u043f\u0440\u043e\u0444\u0435\u0441\u0438\u0438\u0442\u0435");
        ItmNKLPROF.setFont(menuFont);
        ItmNKLPROF.setActionCommand("nprof");
        ItmNKLPROF.addActionListener(getJMenuActionListener());
        ItmNKLPROF.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmNKLPROF);
        ///
        JMenuItem ItmNKLID= new JMenuItem("\u041d\u0430\u0446\u0438\u043e\u043d\u0430\u043b\u0435\u043d \u043a\u043b\u0430\u0441\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 \u043d\u0430 \u0438\u043a\u043e\u043d\u043e\u043c\u0438\u0447\u0435\u0441\u043a\u0438\u0442\u0435 \u0434\u0435\u0439\u043d\u043e\u0441\u0442\u0438");
        ItmNKLID.setFont(menuFont);
        ItmNKLID.setActionCommand("nkid");
        ItmNKLID.addActionListener(getJMenuActionListener());
        ItmNKLID.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmNKLID);
        
        
        //End  menu
        
        
        
        //Setup help menu
        JMenu MnuHelp = new JMenu("\u041f\u041e\u041c\u041e\u0429");
        MnuHelp.setFont(menuFont);
        MnuHelp.setMnemonic('H');
        MnuHelp.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuHelp);
        //End records menu
        
        NewJMenuBar.setBackground(new Color(255,255,255));
        return NewJMenuBar;
    }
    //End create menu bar
    
    //Create a tool bar
    protected JToolBar CreateJToolBar(){
        JToolBar NewJToolBar = new JToolBar("Toolbar");
        
        NewJToolBar.setMargin(new Insets(0,0,0,0));
        
        //Create a toolbar button
        NewJToolBar.add(CreateJToolbarButton("Редакция служители","c:/imakante/ico_sluj.png","sluj"));
        NewJToolBar.add(CreateJToolbarButton("Suppliers Record","images/supplier.png","toolSup"));
        NewJToolBar.add(CreateJToolbarButton("SalesRep Record","images/SalesRep.png","toolSalesrep"));
        NewJToolBar.add(CreateJToolbarButton("Warehouse Record","images/Warehouse.png","toolWareh"));
        NewJToolBar.addSeparator();
        NewJToolBar.add(CreateJToolbarButton("Products Record","images/product.png","toolProd"));
        NewJToolBar.add(CreateJToolbarButton("Categories Record","images/categories.png","toolCat"));
        NewJToolBar.add(CreateJToolbarButton("Stock Adjustment Record","images/adjustment.png","toolStockAdj"));
        NewJToolBar.addSeparator();
        NewJToolBar.add(CreateJToolbarButton("Invoices Record","images/invoice.png","toolInv"));
        NewJToolBar.add(CreateJToolbarButton("Purchase Orders Record","images/purchaseorder.png","toolPur"));
        NewJToolBar.add(CreateJToolbarButton("Purchase Receipt Record","images/recieve.png","toolRecieve"));
        NewJToolBar.add(CreateJToolbarButton("Expenses Record","images/expense.png","toolExpense"));
        NewJToolBar.addSeparator();
        NewJToolBar.add(CreateJToolbarButton("New Invoice","images/newinvoice.png","toolNewInv"));
        NewJToolBar.add(CreateJToolbarButton("New Purchase Order","images/newpurchaseorder.png","toolNewPur"));
        NewJToolBar.add(CreateJToolbarButton("New Purchase Receipt","images/newrecieve.png","toolNewRecieveStock"));
        NewJToolBar.add(CreateJToolbarButton("New Expense","images/newexpense.png","toolNewExpense"));
        NewJToolBar.addSeparator();
        NewJToolBar.add(CreateJToolbarButton("Business Setup","images/businesssetup.png","toolBussSet"));
        NewJToolBar.add(CreateJToolbarButton("Security Option","images/security.png","toolSecOpt"));
        NewJToolBar.add(CreateJToolbarButton("Lock Application","images/lockapplication.png","toolLockApp"));
        NewJToolBar.addSeparator();
        NewJToolBar.add(BTlabel);
        NewJToolBar.addSeparator();
        //End create a toolbar button
        
        
        return NewJToolBar;
    }
    //End create a tool bar
    
    protected JButton CreateJToolbarButton(String srcToolTipText,String srcImageLocation,String srcActionCommand){
        JButton NewJButton = new JButton(new ImageIcon(srcImageLocation));
        
        NewJButton.setActionCommand(srcActionCommand);
        NewJButton.setToolTipText(srcToolTipText);
        NewJButton.addActionListener(JToolBarActionListener);
        
        return NewJButton;
    }
    
    /********************* End custom class creation start ********************/
    
    /********************** Method for loading form start *********************/
    
    protected void loadSastavForm() throws java.sql.SQLException{
        //Verify if the form is already loaded
        boolean AlreadyLoaded = isLoaded("\u0421\u043f\u0438\u0441\u044a\u043a \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b\u0438");
        
        if (pMonth != 0 && (rightsUser.get("sastav").toString()) != "0"){
            if(AlreadyLoaded==false){
                
                FormSastav = new FrmSastav(dbCON,this,pMonth,pYear);
                Desk1.add(FormSastav);
                
                
                //Load the FormCustomer
                FormSastav.setVisible(true);
                
                try{
                    FormSastav.setIcon(false);
                    FormSastav.setSelected(true);
                }catch(PropertyVetoException e){
                }
                //End load the FormCustomer
            }else{
                try{
                    FormSastav.setIcon(false);
                    FormSastav.setSelected(true);
                }catch(PropertyVetoException e){
                }
            }} else {
            JOptionPane.showMessageDialog(null,"\u041d\u044f\u043c\u0430 \u0440\u0430\u0431\u043e\u0442\u043d\u0430 \u0434\u0430\u0442\u0430.\n ","",JOptionPane.WARNING_MESSAGE);
            }
        //End verify if the form is already loaded
        
    }
    //End create customer from
    
    //Create dod form
    protected void loadDODForm() throws java.sql.SQLException{
        
        boolean AlreadyLoaded = isLoaded("\u0414\u041e\u041e \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        if(AlreadyLoaded==false){
            FormDOD = new FrmDOD(dbCON,this);
            Desk1.add(FormDOD);
            
            
            //Load the FormSupplier
            FormDOD.setVisible(true);
            
            try{
                FormDOD.setIcon(false);
                FormDOD.setSelected(true);
            }catch(PropertyVetoException e){
            }
            //End load the FormDOD
        }else{
            try{
                FormDOD.setIcon(false);
                FormDOD.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        //End verify if the form is already loaded
        
    }
    //End create supplier form
    
    //Create SalesRep form
    
    
    
    protected void loadDOOForm() throws java.sql.SQLException{
        //Verify if the form is already loaded
        boolean AlreadyLoaded = isLoaded("\u0414\u041e\u041e \u043d\u0430\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f");
        if(AlreadyLoaded==false){
            FormDOO = new FrmDOO(dbCON,this);
            Desk1.add(FormDOO);
            
            //Load the FormSupplier
            FormDOO.setVisible(true);
            
            try{
                FormDOO.setIcon(false);
                FormDOO.setSelected(true);
            }catch(PropertyVetoException e){
            }
            //End load the FormDOD
        }else{
            try{
                FormDOO.setIcon(false);
                FormDOO.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        //End verify if the form is already loaded
        
    }
    //End create supplier form
    protected void loadMonthForm() throws java.sql.SQLException{
        //Verify if the form is already loaded
        boolean AlreadyLoaded = isLoaded("\u041c\u0435\u0441\u0435\u0447\u043d\u0438 \u0434\u0430\u043d\u043d\u0438");
        if(AlreadyLoaded==false){
            
            FormMonth = new FrmMonth(dbCON,this,pMonth,pYear);
            Desk1.add(FormMonth);
            
            //Load the FormSupplier
            FormMonth.setVisible(true);
            
            try{
                FormMonth.setIcon(false);
                FormMonth.setSelected(true);
            }catch(PropertyVetoException e){
            }
            //End load the FormDOD
        }else{
            try{
                FormMonth.setIcon(false);
                FormMonth.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        //End verify if the form is already loaded
        
    }
    
    
    
    protected void loadDateForm() {
        
        FrmDate frm = new FrmDate(this,dbCON);
        frm.setVisible(true);
        
    }
    
    //End create Date
    protected void loadVedomostZForm() {
        boolean AlreadyLoaded = isLoaded("Ведомости");
        if (pMonth != 0 && (rightsUser.get("vedom").toString()) != "0"){
            if(AlreadyLoaded==false){
                try{
                    FormVedZaplati = new imakante.salary.FrmVedZaplati(dbCON,this,pMonth,pYear);
                    Desk1.add(FormVedZaplati);
                    FormVedZaplati.setVisible(true);
                }catch(java.sql.SQLException sqle){}
                
                try{
                    FormVedZaplati.setIcon(false);
                    FormVedZaplati.setSelected(true);
                }catch(PropertyVetoException e){
                }
                
            }else{
                try{
                    FormSastav.setIcon(false);
                    FormSastav.setSelected(true);
                }catch(PropertyVetoException e){
                }
            }} else {
            JOptionPane.showMessageDialog(null,"Няма работна дата.\n Въведете: Програма -> Смяна на период.","РЕА - Проект Мидас",JOptionPane.WARNING_MESSAGE);
            }
        
        
    }
    protected void loadVedomostАForm() {
        boolean AlreadyLoaded = isLoaded("Ведомости Аванси");
        
        if (pMonth != 0 && (rightsUser.get("vedom").toString()) != "0"){
            if(AlreadyLoaded==false){
                
                try{
                    FormVedAvans = new FrmVedAvans(dbCON,this,pMonth,pYear);
                    Desk1.add(FormVedAvans);
                    FormVedAvans.setVisible(true);
                }catch(java.sql.SQLException sqle){}
                
                try{
                    FormVedAvans.setIcon(false);
                    FormVedAvans.setSelected(true);
                }catch(PropertyVetoException e){
                }
                
            }else{
                try{
                    FormVedAvans.setIcon(false);
                    FormVedAvans.setSelected(true);
                }catch(PropertyVetoException e){
                }
            }} else {
            JOptionPane.showMessageDialog(null,"Няма работна дата.\n Въведете: Програма -> Смяна на период.",
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",JOptionPane.WARNING_MESSAGE);
            }
        
        
    }
    protected void loadLogonForm() throws java.sql.SQLException{
        try {
            dbCON.close();
        } catch(java.sql.SQLException sqle){
        }
        frmConnSalary frm = new frmConnSalary(this, true);
        frm.setVisible(true);
        
        try{
            Class.forName(DBDriver);
            dbCON = java.sql.DriverManager.getConnection(DBSource,DBUserName ,DBPassword.toString());
        } catch(ClassNotFoundException e)  {
            System.err.println("Failed to load driver");
            e.printStackTrace();
            System.exit(1);
        } catch(java.sql.SQLException e){
            System.err.println("Unable to connect");
            e.printStackTrace();
            System.exit(1);
        }
        
        
        System.out.println(pYear);
        
    }
    
    
    protected void loadNewMForm() throws java.sql.SQLException {
        
        boolean AlreadyLoaded = isLoaded("Създаване на нов месец");
        if(AlreadyLoaded==false && (rightsUser.get("newmonth").toString()) != "0"){
            FormNewM = new FrmNewM(dbCON,this);
            Desk1.add(FormNewM);
            FormNewM.setVisible(true);
            
            try{
                FormNewM.setIcon(false);
                FormNewM.setSelected(true);
            }catch(PropertyVetoException e){
            }
            
        }else{
            try{
                FormNewM.setIcon(false);
                FormNewM.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
    }
    
    protected void loadOtdelForm() throws java.sql.SQLException{
        
        boolean AlreadyLoaded = isLoaded("Списък отдели");
        if(AlreadyLoaded==false){
            FormOtdel = new FrmOtdel(dbCON,this);
            Desk1.add(FormOtdel);
            FormOtdel.setVisible(true);
            
            try{
                FormOtdel.setIcon(false);
                FormOtdel.setSelected(true);
            }catch(PropertyVetoException e){
            }
            
        }else{
            try{
                FormOtdel.setIcon(false);
                FormOtdel.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        
        
    }
    protected void loadDlajForm() throws java.sql.SQLException{
        
        boolean AlreadyLoaded = isLoaded("Списък отдели");
        if(AlreadyLoaded==false){
            FormDlajnost = new FrmDlajnost(dbCON,this);
            Desk1.add(FormDlajnost);
            FormDlajnost.setVisible(true);
            
            try{
                FormDlajnost.setIcon(false);
                FormDlajnost.setSelected(true);
            }catch(PropertyVetoException e){
            }
            
        }else{
            try{
                FormDlajnost.setIcon(false);
                FormDlajnost.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        
    }
    protected void loadPic() {
        
        boolean AlreadyLoaded = isLoaded("Снимки");
        if(AlreadyLoaded==false){
            FormPic = new FrmPic(dbCON);
            Desk1.add(FormPic);
            FormPic.setVisible(true);
            
            try{
                FormPic.setIcon(false);
                FormPic.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }else{
            try{
                FormPic.setIcon(false);
                FormPic.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        
    }
    protected void loadSlujParam(){
        try{
            FormSleujParam = new frmSleujParam(this, dbCON, true);
            FormSleujParam.setVisible(true);
        } catch(java.sql.SQLException sqle){}
    }
    
    
    
    protected void loadActStDlaj(){
        try{
            setFormActStDlaj(new FrmAct(this, dbCON, "c:/imakante/salary/jasper/","","Акт за встъпване в длъжност"));
            Desk1.add(getFormActStDlaj());
            getFormActStDlaj().setVisible(true);
            
        }catch(java.sql.SQLException sqle){}
        
        
    }
    protected void loadEreaseM(){
        
        frmEreseMonth  FormEreseM = new frmEreseMonth(this, true, dbCON);
        FormEreseM.setVisible(true);
    }
    
    
    protected void loadSplashScreen(){
        
        FormSplash.start();
        
        
        try{
            Thread.sleep(2000);
        }catch(InterruptedException e){
        }
        
    }
    protected void loadCalendar(){
        javax.swing.JDialog calendar = new calendarClass(this, true, dbCON, pMonth, pYear);
        calendar.setVisible(true);
        
    }
    protected void loadImport(){
       javax.swing.JDialog FrmImport = new frmImport(this, true, dbCON);
        FrmImport.setVisible(true);
    
    }
    
    protected void loadLockApp(){
        javax.swing.JDialog lockFrm = new frmLock_app_salary(this, true);
        lockFrm.setVisible(true);
    }
    protected void loadNCP() {
        
        boolean AlreadyLoaded = isLoaded("\u041d\u0430\u0446\u0438\u043e\u043d\u0430\u043b\u0435\u043d \u043a\u043b\u0430\u0441\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 \u043d\u0430 \u043f\u0440\u043e\u0444\u0435\u0441\u0438\u0438\u0442\u0435");
        if(AlreadyLoaded==false){
            try{
            FormNCP = new FrmNCP(dbCON, this);}catch(java.sql.SQLException sqle){}
          
            Desk1.add(FormNCP);
             try{FormNCP.setMaximum(true);}catch(java.beans.PropertyVetoException bpve){}
            FormNCP.setVisible(true);
            
            try{
                FormNCP.setIcon(false);
                FormNCP.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }else{
            try{
                FormNCP.setIcon(false);
                FormNCP.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        
    }
    /******************** End method for loading form start *******************/
    public boolean setSupportStProc(boolean sp){
        suportStProc = sp;
        return suportStProc;
    }
    
    public boolean getSupportStProc(){
        if (suportStProc){
            return true;
        } else{
            return false;
        }
    }
    
    public int setMonth(int xMonth) {
        pMonth = xMonth;
        return pMonth;
    }
    public static int getMonth(int xMonth) {
        return pMonth;
    }
    public int setYear(int xYear){
        pYear = xYear;
        return pYear;
    }
    public static int getYear(int xYear){
        return pYear;
    }
    // za nastroika na bazata
    public java.sql.Connection setConnection(java.sql.Connection extCon){
        dbCON = extCon;
        return dbCON;
    }
    public java.util.HashMap setRights(java.util.HashMap extHash){
        rightsUser = extHash;
        return rightsUser;
    }
    
    public String setDBDriver(String strDriver){
        DBDriver = strDriver;
        return DBDriver;
    }
    public String getDBDriver(String strDriver){
        return DBDriver;
    }
    
    public String setDBSource(String strSource){
        DBSource = strSource;
        return DBSource;
    }
    public static String getDBSource(String strSource){
        return DBSource;
    }
    
    public String setUser(String strUser){
        DBUserName = strUser;
        return DBUserName;
    }
    public static String getUser(){
        return DBUserName;
    }
    public String setFirm(String strFirm){
        StrBTitle = "\u041b\u0438\u0447\u0435\u043d \u0441\u044a\u0441\u0442\u0430\u0432 \u043d\u0430 \u0444\u0438\u0440\u043c\u0430 " + strFirm;
        return StrBTitle;
        
    }
    public static String setNFirm(String strFirm){
        StrName  =  strFirm;
        return StrName;
        
    }
    
    public static String getNFirm(){
        return StrName;
    }
    
    public String setPass(String strPass){
        DBPassword = strPass;
        return DBPassword;
    }
    public static String getPass(){
        return DBPassword;
    }
    
    /************************** Event handling start **************************/
    
    //Create action listener for JMenu
    private java.awt.event.ActionListener JMenuActionListener = new java.awt.event.ActionListener(){
        public void actionPerformed(java.awt.event.ActionEvent e) {
            String srcObject = e.getActionCommand();
            if(srcObject=="newm"){
                try{
                    loadNewMForm();
                }catch(java.sql.SQLException sqle){
                    
                }
            } else if(srcObject=="lockapp"){
                loadLockApp();
            } else if(srcObject=="doo"){
                try{
                    loadDODForm();
                }catch(java.sql.SQLException sqle){
                }
            }
            
            else if(srcObject=="loggoff"){
                try{
                    UnloadConnection();
                }catch(java.sql.SQLException sqle){
                }
            }
            
            else if(srcObject=="logon"){
                try{
                    loadLogonForm();
                }catch(java.sql.SQLException sqle){
                }
            }
            
            else if(srcObject=="sluj"){
                try{
                    loadSastavForm();
                }catch(java.sql.SQLException sqle){
                }
            }
            
            else if(srcObject=="doo1"){
                try{
                    loadDOOForm();
                }catch(java.sql.SQLException sqle){
                }
            } else if(srcObject=="mes"){
                try{
                    loadMonthForm();
                }catch(java.sql.SQLException sqle){
                }
            } else if(srcObject=="period"){
                
                loadDateForm();
                
            } else if(srcObject=="otd"){
                
                try{
                    loadOtdelForm();
                }catch(java.sql.SQLException sqle){
                };
                
            } else if(srcObject=="actsdl"){
                
                loadActStDlaj();
                
            }else if(srcObject=="dlaj"){
                
                try{
                    loadDlajForm();
                }catch(java.sql.SQLException sqle){
                };
            } else if(srcObject=="expflat"){
                
                try{
                    FrmExport fExport = new FrmExport(dbCON);
                    fExport.setVisible(true);
                }catch(java.sql.SQLException sqle){
                };
            } else if(srcObject=="danfirm"){
                
                loadSlujParam();
            } else if(srcObject=="ereasem"){
                
                loadEreaseM();
            } else if(srcObject=="import"){
                
                loadImport();
            }else if(srcObject=="pic"){
                
                loadPic();
            } else if(srcObject=="calendar"){
                
                loadCalendar();
            } else if(srcObject=="zved"){
                
                try{
                    loadVedomostZForm();
                } catch(Exception qle){
                };
            }else if(srcObject=="vedoma"){
                
                try{
                    loadVedomostАForm();
                } catch(Exception qle){
                };
            }
            else if(srcObject=="nprof"){
                
                try{
                    loadNCP();
                } catch(Exception qle){
                };
            }
            
            else if(srcObject=="exit"){
                UnloadWindow();
            }
        }
    };
    //End create action listener for JMenu
    
    //Create action Listerner for JToolBar Button
    java.awt.event.ActionListener JToolBarActionListener = new java.awt.event.ActionListener(){
        public void actionPerformed(java.awt.event.ActionEvent e)	{
            String srcObject = e.getActionCommand();
            if(srcObject=="doo"){
                try{
                    loadDODForm();
                }catch(java.sql.SQLException sqle){
                }
            }
            
            else if(srcObject=="toolInv"){
                try{
                    loadNewMForm();
                }catch(java.sql.SQLException sqle){
                }
            }
        }
    };
    //End create action Listerner for JToolBar Button
    
    //Interface event from WindowListener start
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
    //End interface event from WindowListener start
    
    /************************ End event handling start ************************/
    
    /************************** Custom method start ***************************/
    
    protected void UnloadConnection() throws java.sql.SQLException {
        String ObjButtons[] = {"\u0414\u0410","\u041d\u0415"};
        int PromptResult = JOptionPane.showOptionDialog(null,"\u041f\u0440\u0435\u043a\u0430\u0441\u0432\u0430\u043d\u0435 \u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430?"
                ,"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",JOptionPane.DEFAULT_OPTION,JOptionPane.WARNING_MESSAGE,null,ObjButtons,ObjButtons[1]);
        if(PromptResult==0){
            System.out.println(
                    "\n\n" +
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415" +
                    "\n\n"
                    );
            try {
                dbCON.close();
                JOptionPane.showMessageDialog(null,"\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043a\u044a\u043c \u0431\u0430\u0437\u0430\u0442\u0430 \u0435 \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u0430.\n \u0417\u0430 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u0430 - \u041f\u0420\u041e\u0413\u0420\u0410\u041c\u0410 -> \u0412\u0445\u043e\u0434 \u0432 \u0411\u0430\u0437\u0430\u0442\u0430."
                        ,"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",JOptionPane.WARNING_MESSAGE);
            } catch(java.sql.SQLException sqle){
            }
        }
    }
    
    protected void UnloadWindow(){
        String ObjButtons[] = {"\u0414\u0410","\u041d\u0415"};
        int PromptResult = JOptionPane.showOptionDialog(null,"\u0418\u0437\u0445\u043e\u0434 \u043e\u0442 \u043f\u0440\u043e\u0440\u0430\u043c\u0430\u0442\u0430?"
                ,"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",JOptionPane.DEFAULT_OPTION,JOptionPane.WARNING_MESSAGE,null,ObjButtons,ObjButtons[1]);
        if(PromptResult==0){
            System.out.println(
                    "\n\n" +
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415" +
                    "\n\n"
                    );
            System.exit(0);
        }
    }
    
    
    protected boolean isLoaded(String FormTitle) {
        
        JInternalFrame Form[] = Desk1.getAllFrames();
        for (int i = 0; i < Form.length; i++) {
            if (Form[i].getTitle().equalsIgnoreCase(FormTitle)) {
                Form[i].setVisible(true);
                try{
                    Form[i].setIcon(false);
                    Form[i].setSelected(true);
                }catch(PropertyVetoException e){
                }
                return true;
            }
        }
        return false;
        
    }
    
    
    
    protected void changeTheme(int sSelectedTheme){
        if(sSelectedTheme == 1){
            try {
                javax.swing.UIManager.setLookAndFeel("com.birosoft.liquid.LiquidLookAndFeel");
                JFrame.setDefaultLookAndFeelDecorated(true);
            } catch (Exception e) {}
        }else if(sSelectedTheme == 2){
            //If Failed to load the liquid them then load my own XPStyleTheme
            // MetalTheme myXPStyleTheme = new XPStyleTheme();
            //MetalLookAndFeel.setCurrentTheme(myXPStyleTheme);
            try {
                UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");
            } catch (Exception err) {
                System.out.println("Error loading myXPStyleTheme");
                System.out.println(err);
            }
        }
    }
    /************************* End custom method end **************************/
    
    /**************************** Main method start ***************************/
    
    public static void main(String[] args){
        
        
        try {
            // MetalTheme myXPStyleTheme = new XPStyleTheme();
            //   MetalLookAndFeel.setCurrentTheme(myXPStyleTheme);
            //     javax.swing.UIManager.setLookAndFeel("com.birosoft.liquid.LiquidLookAndFeel");
        } catch (Exception e) {
            System.out.println("Error Loading Theme:" + e.toString());
            //If Failed to load the liquid them then load my own XPStyleTheme
            //	MetalTheme myXPStyleTheme = new XPStyleTheme();
            //	MetalLookAndFeel.setCurrentTheme(myXPStyleTheme);
            try {
                String sysLook = UIManager.getSystemLookAndFeelClassName();
                UIManager.setLookAndFeel(sysLook);
                
            } catch (Exception err) {
                System.out.println("Error loading Theme:" + err.toString());
            }
        }
        
        new salary_main();
    }
    
    /************************** End main method start *************************/
//encaps//
    
    public java.awt.event.ActionListener getJMenuActionListener() {
        return JMenuActionListener;
    }
    
    public void setJMenuActionListener(java.awt.event.ActionListener JMenuActionListener) {
        this.JMenuActionListener = JMenuActionListener;
    }
    
    public JLabel getStatusLabel() {
        return StatusLabel;
    }
    
    public void setStatusLabel(JLabel StatusLabel) {
        this.StatusLabel = StatusLabel;
    }
    
    public FrmAct getFormActStDlaj() {
        return FormActStDlaj;
    }
    
    public void setFormActStDlaj(FrmAct FormActStDlaj) {
        this.FormActStDlaj = FormActStDlaj;
    }
}