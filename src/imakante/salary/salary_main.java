package imakante.salary;

import org.jvnet.substance.SubstanceLookAndFeel;


public class salary_main extends imakante.com.vcomponents.iFrame implements java.awt.event.WindowListener{
    
    javax.swing.JPanel Panel1;
    javax.swing.JDesktopPane Desk1 = new javax.swing.JDesktopPane();
    
    private static int id_period = 1;
    
    private javax.swing.JLabel StatusLabel = new javax.swing.JLabel("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415 - \u041b\u0421",javax.swing.JLabel.CENTER);
    javax.swing.JLabel BTlabel = new javax.swing.JLabel();
    public static javax.swing.JLabel PeriodLabel = new javax.swing.JLabel();
    java.awt.Dimension screen = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
    public static String StrName, StrPeriod;
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
    FrmNSastav    FormSastav;
    FrmDOD       FormDOD;
    FrmModifikatori    FormDOO;
    FrmMonth     FormMonth;
    FrmDate      FormDate;
    FrmNewM      FormNewM;
    FrmOtdel     FormOtdel;
    FrmDlajnost  FormDlajnost;
    FrmVedZaplati FormVedZaplati;
    FrmVedAvans   FormVedAvans;
    frmSleujParam  FormSleujParam;
    FrmAct        FormActStDlaj;
//    FrmExternalRes FormExtRes;
    FrmPic FormPic;
    FrmNasM    FormNasM;
    FrmNKID     FormNKID;
    imakante.salary.FrmNCP FormNCP;
    nom.FrmCountry Formc;
    java.awt.Font menuFont = new java.awt.Font("Tahoma", java.awt.Font.PLAIN, 14);
    imakante.salary.frmLogo splash = new imakante.salary.frmLogo();
    Thread FormSplash = new Thread(splash);
    
    public salary_main(){
        
        super("Imakante Lite - HR  ARES");
        
        loadSplashScreen();
        
        frmConnSalary fdia = new frmConnSalary(this,true);
        fdia.setVisible(true);
        setCurrDate(dbCON);
        
        // FrmDate fdate = new FrmDate(this,dbCON);
        //fdate.setVisible(true);
        
        getStatusLabel().setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        getStatusLabel().setFont(menuFont);
        
        //etiket za imeto na firmata i bazata
        BTlabel.setText(StrBTitle);
        BTlabel.setHorizontalAlignment(javax.swing.JLabel.LEFT);
        BTlabel.setForeground(new java.awt.Color(166,0,0));
        
        //etiket za tekushia period
        PeriodLabel.setText(StrPeriod);
        PeriodLabel.setHorizontalAlignment(javax.swing.JLabel.RIGHT);
        BTlabel.setForeground(new java.awt.Color(0,0,155));
        //Set the main form properties
        addWindowListener(this);
        
        Desk1.setBackground(java.awt.Color.DARK_GRAY);
        Desk1.setBorder(javax.swing.BorderFactory.createEmptyBorder());
        //Most fastest drag mode
        Desk1.setDragMode(javax.swing.JDesktopPane.OUTLINE_DRAG_MODE);
        
        Panel1 = new javax.swing.JPanel(new java.awt.BorderLayout());
        Panel1.setBackground(java.awt.Color.gray);
        Panel1.setBorder(javax.swing.BorderFactory.createLoweredBevelBorder());
        Panel1.add(new javax.swing.JScrollPane(Desk1),java.awt.BorderLayout.CENTER);
        
        getContentPane().add(CreateJToolBar(), java.awt.BorderLayout.PAGE_START);
        getContentPane().add(Panel1, java.awt.BorderLayout.CENTER);
        getContentPane().add(getStatusLabel(), java.awt.BorderLayout.PAGE_END);
        
        setJMenuBar(CreateJMenuBar());
        setExtendedState(this.MAXIMIZED_BOTH);
        
        setDefaultCloseOperation(javax.swing.JFrame.DO_NOTHING_ON_CLOSE);
        setIconImage(new javax.swing.ImageIcon("/imakante/imakante_small.jpg").getImage());
        setLocation(0,0);
        setSize(screen);
        setResizable(true);
        
        setVisible(true);
        
        
        
        //End set the main form properties
    }
    
    /********************** End MainForm constructor start ********************/
    
    /*********************** Custom class creation start **********************/
    
    //Create menu bar
    protected javax.swing.JMenuBar CreateJMenuBar(){
        javax.swing.JMenuBar NewJMenuBar = new javax.swing.JMenuBar();
        
        //Setup file menu
        javax.swing.JMenu MnuFile = new javax.swing.JMenu("\u041f\u0420\u041e\u0413\u0420\u0410\u041c\u0410");
        MnuFile.setFont(menuFont);
        MnuFile.setMnemonic('F');
        MnuFile.setBackground(new java.awt.Color(224,223,227));
        NewJMenuBar.add(MnuFile);
        //End setup file menu
        
        //Set file sub menu
        javax.swing.JMenuItem ItmLockApp = new javax.swing.JMenuItem("\u0417\u0430\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430");
        ItmLockApp.setFont(menuFont);
        ItmLockApp.setMnemonic('L');
        ItmLockApp.setIcon(new javax.swing.ImageIcon("images/lockapplication.png"));
        ItmLockApp.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_L,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmLockApp.setActionCommand("lockapp");
        ItmLockApp.addActionListener(getJMenuActionListener());
        ItmLockApp.setBackground(new java.awt.Color(224,223,227));
        
        javax.swing.JMenuItem ItmLogon = new javax.swing.JMenuItem("\u0412\u0445\u043e\u0434 \u0432 \u0431\u0430\u0437\u0430\u0442\u0430");
        ItmLogon.setFont(menuFont);
        ItmLogon.setMnemonic('I');
        ItmLogon.setIcon(new javax.swing.ImageIcon("images/lockapplication.png"));
        ItmLogon.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_I,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmLogon.setActionCommand("logon");
        ItmLogon.addActionListener(getJMenuActionListener());
        ItmLogon.setBackground(new java.awt.Color(224,223,227));
        
        
        
        javax.swing.JMenuItem ItmLoggOff = new javax.swing.JMenuItem("\u0418\u0437\u0445\u043e\u0434 \u043e\u0442 \u0431\u0430\u0437\u0430\u0442\u0430...");
        ItmLoggOff.setFont(menuFont);
        ItmLoggOff.setMnemonic('O');
        ItmLoggOff.setIcon(new javax.swing.ImageIcon("images/loggoff.png"));
        ItmLoggOff.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_O,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmLoggOff.setActionCommand("loggoff");
        ItmLoggOff.addActionListener(getJMenuActionListener());
        ItmLoggOff.setBackground(new java.awt.Color(224,223,227));
        
        javax.swing.JMenuItem ItmPeriod = new javax.swing.JMenuItem("\u0421\u043c\u044f\u043d\u0430 \u043d\u0430 \u043f\u0435\u0440\u0438\u043e\u0434");
        ItmPeriod.setFont(menuFont);
        ItmPeriod.setMnemonic('H');
        ItmPeriod.setIcon(new javax.swing.ImageIcon("images/lockapplication.png"));
        ItmPeriod.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_H,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmPeriod.setActionCommand("period");
        ItmPeriod.addActionListener(getJMenuActionListener());
        ItmPeriod.setBackground(new java.awt.Color(224,223,227));
        
        javax.swing.JMenuItem ItmExit = new javax.swing.JMenuItem("\u0418\u0417\u0425\u041e\u0414");
        ItmExit.setFont(menuFont);
        ItmExit.setMnemonic('E');
        ItmExit.setIcon(new javax.swing.ImageIcon("images/exit.png"));
        ItmExit.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_E,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmExit.setActionCommand("exit");
        ItmExit.addActionListener(getJMenuActionListener());
        ItmExit.setBackground(new java.awt.Color(224,223,227));
        
        MnuFile.add(ItmLockApp);
        MnuFile.add(ItmPeriod);
        MnuFile.add(ItmLogon);
        MnuFile.addSeparator();
        MnuFile.add(ItmLoggOff);
        MnuFile.add(ItmExit);
        //End set file sub menu
        
        //Setup records menu
        
        javax.swing.JMenu MnuDoc = new javax.swing.JMenu("\u0420\u0415\u0414\u0410\u041a\u0422\u0418\u0420\u0410\u041d\u0415");
        MnuDoc.setFont(menuFont);
        MnuDoc.setMnemonic('D');
        MnuDoc.setBackground(new java.awt.Color(224,223,227));
        NewJMenuBar.add(MnuDoc);
        //
        
        javax.swing.JMenuItem ItmProd = new javax.swing.JMenuItem("\u0421\u043f\u0438\u0441\u044a\u043a \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b\u0438");
        ItmProd.setFont(menuFont);
        ItmProd.setMnemonic('P');
        ItmProd.setIcon(new javax.swing.ImageIcon("images/prod.png"));
        ItmProd.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_P,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmProd.setActionCommand("sluj");
        ItmProd.addActionListener(getJMenuActionListener());
        ItmProd.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmProd);
        
        javax.swing.JMenuItem ItmFakturi = new javax.swing.JMenuItem("\u0414\u041e\u041e \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        ItmFakturi.setFont(menuFont);
        ItmFakturi.setMnemonic('F');
        ItmFakturi.setIcon(new javax.swing.ImageIcon("images/fak.png"));
        ItmFakturi.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_F,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmFakturi.setActionCommand("doo");
        ItmFakturi.addActionListener(getJMenuActionListener());
        ItmFakturi.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmFakturi);
        //
        //
        javax.swing.JMenuItem ItmProhods = new javax.swing.JMenuItem("\u041d\u0430\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f \u0438 \u0443\u0434\u0440\u044a\u0436\u043a\u0438");
        ItmProhods.setFont(menuFont);
        ItmProhods.setMnemonic('f');
        ItmProhods.setIcon(new javax.swing.ImageIcon("images/fak.png"));
        
        ItmProhods.setActionCommand("doo1");
        ItmProhods.addActionListener(getJMenuActionListener());
        ItmProhods.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmProhods);
        
        
        javax.swing.JMenuItem ItmPorach = new javax.swing.JMenuItem("\u0421\u043f\u0438\u0441\u044a\u043a \u043e\u0442\u0434\u0435\u043b\u0438");
        ItmPorach.setFont(menuFont);
        ItmPorach.setMnemonic('f');
        ItmPorach.setActionCommand("otd");
        ItmPorach.addActionListener(getJMenuActionListener());
        ItmPorach.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmPorach);
        //
        
        javax.swing.JMenuItem ItmDlaj = new javax.swing.JMenuItem("\u0421\u043f\u0438\u0441\u044a\u043a \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0438");
        ItmDlaj.setFont(menuFont);
        ItmDlaj.setMnemonic('f');
        ItmDlaj.setActionCommand("dlaj");
        ItmDlaj.addActionListener(getJMenuActionListener());
        ItmDlaj.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmDlaj);
        //
        
        
        javax.swing.JMenuItem ItmMDanni = new javax.swing.JMenuItem("\u041c\u0435\u0441\u0435\u0447\u043d\u0438 \u0434\u0430\u043d\u043d\u0438");
        ItmMDanni.setFont(menuFont);
        ItmMDanni.setMnemonic('f');
        ItmMDanni.setIcon(new javax.swing.ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmMDanni.setActionCommand("mes");
        ItmMDanni.addActionListener(getJMenuActionListener());
        ItmMDanni.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmMDanni);
        //
        
        
        javax.swing.JMenuItem ItmOtpis = new javax.swing.JMenuItem("\u0423\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0437\u0430 \u0442\u0440\u0443\u0434\u043e\u0432\u0438 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0438");
        ItmOtpis.setFont(menuFont);
        ItmOtpis.setMnemonic('f');
        ItmOtpis.setIcon(new javax.swing.ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmOtpis.setActionCommand("Prehv");
        ItmOtpis.addActionListener(getJMenuActionListener());
        ItmOtpis.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmOtpis);
        //
        //
        
        
        javax.swing.JMenuItem ItmOffer = new javax.swing.JMenuItem("\u0421\u043e\u0446\u0438\u0430\u043b\u043d\u0438 \u043e\u0441\u0438\u0433\u0443\u0440\u043e\u0432\u043a\u0438");
        ItmOffer.setFont(menuFont);
        ItmOffer.setMnemonic('f');
        ItmOffer.setActionCommand("sotialo");
        ItmOffer.addActionListener(getJMenuActionListener());
        ItmOffer.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmOffer);
        
        //
        
        
        //
        javax.swing.JMenuItem ItmPr = new javax.swing.JMenuItem("\u0414\u0430\u043d\u043d\u0438 \u043e\u0442 \u043f\u0440\u0435\u0434\u0438\u0448\u043d\u0438 \u041e\u0441\u0438\u0433\u0443\u0440\u0438\u0442\u0435\u043b\u0438");
        ItmPr.setFont(menuFont);
        ItmPr.setMnemonic('f');
        ItmPr.setActionCommand("pred");
        ItmPr.addActionListener(getJMenuActionListener());
        ItmPr.setBackground(new java.awt.Color(224,223,227));
        
        MnuDoc.add(ItmPr);
        //
        javax.swing.JMenu MnuKasa = new javax.swing.JMenu("\u0412\u0415\u0414\u041e\u041c\u041e\u0421\u0422\u0418");
        MnuKasa.setFont(menuFont);
        MnuKasa.setBackground(new java.awt.Color(224,223,227));
        NewJMenuBar.add(MnuKasa);
        //End records menu
        //
        javax.swing.JMenuItem ItmPrihoo = new javax.swing.JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0437\u0430\u043f\u043b\u0430\u0442\u0438");
        ItmPrihoo.setFont(menuFont);
        ItmPrihoo.setActionCommand("zved");
        ItmPrihoo.addActionListener(getJMenuActionListener());
        ItmPrihoo.setBackground(new java.awt.Color(224,223,227));
        
        MnuKasa.add(ItmPrihoo);
        //
        //
        javax.swing.JMenuItem ItmRazhoo = new javax.swing.JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0430\u0432\u0430\u043d\u0441\u0438");
        ItmRazhoo.setFont(menuFont);
        ItmRazhoo.setActionCommand("vedoma");
        ItmRazhoo.addActionListener(getJMenuActionListener());
        ItmRazhoo.setBackground(new java.awt.Color(224,223,227));
        
        MnuKasa.add(ItmRazhoo);
        //
        javax.swing.JMenuItem ItmNalicni = new javax.swing.JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0414\u041e\u041e");
        ItmNalicni.setFont(menuFont);
        ItmNalicni.setActionCommand("dooved");
        ItmNalicni.addActionListener(getJMenuActionListener());
        ItmNalicni.setBackground(new java.awt.Color(224,223,227));
        
        MnuKasa.add(ItmNalicni);
        
        javax.swing.JMenuItem ItmVedCO = new javax.swing.JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0421\u041e");
        ItmVedCO.setFont(menuFont);
        ItmVedCO.setActionCommand("soved");
        ItmVedCO.addActionListener(getJMenuActionListener());
        ItmVedCO.setBackground(new java.awt.Color(224,223,227));
        
        MnuKasa.add(ItmVedCO);
        
        //
        
        javax.swing.JMenuItem ItmOpis = new javax.swing.JMenuItem("\u0412\u0435\u0434\u043e\u043c\u043e\u0441\u0442\u0438 \u0414\u041e\u041e \u043e\u0442 \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u0446\u0438");
        ItmOpis.setFont(menuFont);
        ItmOpis.setActionCommand("Prihoo");
        ItmOpis.addActionListener(getJMenuActionListener());
        ItmOpis.setBackground(new java.awt.Color(224,223,227));
        
        MnuKasa.add(ItmOpis);
        
        //
        
        javax.swing.JMenuItem ItmZDR = new javax.swing.JMenuItem("\u0417\u0434\u0440\u0430\u0432\u043d\u0438 \u043e\u0441\u0438\u0433\u0443\u0440\u043e\u0432\u043a\u0438");
        ItmZDR.setFont(menuFont);
        ItmZDR.setActionCommand("Prihoo");
        ItmZDR.addActionListener(getJMenuActionListener());
        ItmZDR.setBackground(new java.awt.Color(224,223,227));
        
        MnuKasa.add(ItmZDR);
        //
        
        javax.swing.JMenuItem ItmBank = new javax.swing.JMenuItem("\u0411\u0430\u043d\u043a\u043e\u0432\u0438 \u043f\u043b\u0430\u0449\u0430\u043d\u0438\u044f");
        ItmBank.setFont(menuFont);
        ItmBank.setActionCommand("Prihoo");
        ItmBank.addActionListener(getJMenuActionListener());
        ItmBank.setBackground(new java.awt.Color(224,223,227));
        
        MnuKasa.add(ItmBank);
        
        
        //
        javax.swing.JMenu MnuRec = new javax.swing.JMenu("\u0418\u0417\u041f\u042a\u041b\u041d\u0415\u041d\u0418\u0415");
        MnuRec.setFont(menuFont);
        MnuRec.setMnemonic('R');
        MnuRec.setBackground(new java.awt.Color(224,223,227));
        NewJMenuBar.add(MnuRec);
        //End records menu
        
        //Set records sub menu
        
        //-- For Customer
        javax.swing.JMenuItem ItmAvansi = new javax.swing.JMenuItem("\u0410\u0432\u0430\u043d\u0441\u0438");
        ItmAvansi.setFont(menuFont);
        ItmAvansi.setMnemonic('C');
        ItmAvansi.setIcon(new javax.swing.ImageIcon("images/customer.png"));
        ItmAvansi.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_C,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmAvansi.setActionCommand("avansi");
        ItmAvansi.addActionListener(getJMenuActionListener());
        ItmAvansi.setBackground(new java.awt.Color(224,223,227));
        
        MnuRec.add(ItmAvansi);
        
        
        //-- For FISHOVE
        
        javax.swing.JMenuItem ItmFishove = new javax.swing.JMenuItem("\u0424\u0438\u0448\u043e\u0432\u0435");
        ItmFishove.setFont(menuFont);
        ItmFishove.setMnemonic('S');
        ItmFishove.setIcon(new javax.swing.ImageIcon("images/supplier.png"));
        ItmFishove.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_S,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmFishove.setActionCommand("fish");
        ItmFishove.addActionListener(getJMenuActionListener());
        ItmFishove.setBackground(new java.awt.Color(224,223,227));
        
        MnuRec.add(ItmFishove);
        
        //-- For SalesRep
        javax.swing.JMenuItem ItmZarab = new javax.swing.JMenuItem("\u0417\u0430\u0440\u0430\u0431\u043e\u0442\u043a\u0430");
        ItmZarab.setFont(menuFont);
        ItmZarab.setMnemonic('B');
        ItmZarab.setActionCommand("zarab");
        ItmZarab.addActionListener(getJMenuActionListener());
        ItmZarab.setBackground(new java.awt.Color(224,223,227));
        
        MnuRec.add(ItmZarab);
        
        //
        javax.swing.JMenuItem ItmPremii = new javax.swing.JMenuItem("\u041f\u0440\u0435\u043c\u0438\u0438");
        ItmPremii.setFont(menuFont);
        ItmPremii.setMnemonic('V');
        ItmPremii.setActionCommand("premii");
        ItmPremii.addActionListener(getJMenuActionListener());
        ItmPremii.setBackground(new java.awt.Color(224,223,227));
        
        MnuRec.add(ItmPremii);
        
        //End records sub menu
        
        //Setup proccess menu
        javax.swing.JMenu MnuProccess = new javax.swing.JMenu("\u0421\u041f\u0420\u0410\u0412\u041a\u0418");
        MnuProccess.setFont(menuFont);
        MnuProccess.setMnemonic('P');
        MnuProccess.setBackground(new java.awt.Color(224,223,227));
        NewJMenuBar.add(MnuProccess);
        //End records menu
        
        //Set proccess sub menu
        
        //-- For New Invoice
        javax.swing.JMenuItem ItmSPFish = new javax.swing.JMenuItem("\u0424\u0438\u0448\u043e\u0432\u0435");
        ItmSPFish.setFont(menuFont);
        ItmSPFish.setMnemonic('I');
        ItmSPFish.setIcon(new javax.swing.ImageIcon("images/newinvoice.png"));
        ItmSPFish.setAccelerator(
                javax.swing.KeyStroke.getKeyStroke(
                java.awt.event.KeyEvent.VK_F1,java.awt.event.ActionEvent.CTRL_MASK
                )
                );
        ItmSPFish.setActionCommand("SPInv");
        ItmSPFish.addActionListener(getJMenuActionListener());
        ItmSPFish.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmSPFish);
        
        //-- For New PO
        javax.swing.JMenuItem ItmSPNU = new javax.swing.JMenuItem("\u041d\u0430\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f \u0438 \u0443\u0434\u0440\u044a\u0436\u043a\u0438");
        ItmSPNU.setFont(menuFont);
        ItmSPNU.setMnemonic('P');
        ItmSPNU.setIcon(new javax.swing.ImageIcon("images/newpurchaseorder.png"));
        ItmSPNU.setActionCommand("Oborot");
        ItmSPNU.addActionListener(getJMenuActionListener());
        ItmSPNU.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmSPNU);
        
        //-- For New Purchase Receipt
        javax.swing.JMenuItem ItmSBalance = new javax.swing.JMenuItem("\u0421\u0443\u043c\u0438 \u0437\u0430 \u0441\u0447\u0435\u0442\u043e\u0432\u043e\u0434\u043d\u0430 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f");
        ItmSBalance.setFont(menuFont);
        ItmSBalance.setMnemonic('E');
        ItmSBalance.setIcon(new javax.swing.ImageIcon("images/newrecieve.png"));
        ItmSBalance.setActionCommand("SBalance");
        ItmSBalance.addActionListener(getJMenuActionListener());
        ItmSBalance.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmSBalance);
        
        //-- For New Expenses
        javax.swing.JMenuItem ItmSProhod = new javax.swing.JMenuItem("\u0421\u043f\u0438\u0441\u044a\u0446\u0438");
        ItmSProhod.setFont(menuFont);
        ItmSProhod.setActionCommand("SProhod");
        ItmSProhod.addActionListener(getJMenuActionListener());
        ItmSProhod.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmSProhod);
        
        //-- For New Expenses
        javax.swing.JMenuItem ItmSPSalaryP = new javax.swing.JMenuItem("\u0417\u0430\u043f\u043b\u0430\u0442\u0438 \u0437\u0430 \u043f\u0435\u0440\u0438\u043e\u0434 \u043e\u0442 \u0432\u0440\u0435\u043c\u0435");
        ItmSPSalaryP.setFont(menuFont);
        ItmSPSalaryP.setActionCommand("SExpense");
        ItmSPSalaryP.addActionListener(getJMenuActionListener());
        ItmSPSalaryP.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmSPSalaryP);
        
        //-- For New ДДС
        javax.swing.JMenuItem ItmStaj = new javax.swing.JMenuItem("\u041d\u0430\u0442\u0440\u0443\u043f\u0430\u043d \u0441\u0442\u0430\u0436");
        ItmStaj.setFont(menuFont);
        ItmStaj.setActionCommand("spstaj");
        ItmStaj.addActionListener(getJMenuActionListener());
        ItmStaj.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmStaj);
        
        //End proccess sub menu
        
        
        javax.swing.JMenuItem ItmSPZarab = new javax.swing.JMenuItem("\u0417\u0430\u0440\u0430\u0431\u043e\u0442\u043a\u0438");
        ItmSPZarab.setFont(menuFont);
        ItmSPZarab.setActionCommand("spzarab");
        ItmSPZarab.addActionListener(getJMenuActionListener());
        ItmSPZarab.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmSPZarab);
        
//
        javax.swing.JMenuItem ItmSPSots = new javax.swing.JMenuItem("\u041e\u0442\u0447\u0435\u0442 \u0437\u0430 \u0441\u043e\u0446\u0438\u0430\u043b\u043d\u043e \u043e\u0441\u0438\u0433\u0443\u0440\u044f\u0432\u0430\u043d\u0435");
        ItmSPSots.setFont(menuFont);
        ItmSPSots.setActionCommand("spsots");
        ItmSPSots.addActionListener(getJMenuActionListener());
        ItmSPSots.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmSPSots);
        
        //End proccess sub menu
        javax.swing.JMenuItem ItmSpStistic = new javax.swing.JMenuItem("\u0421\u043f\u0440\u0430\u0432\u043a\u0438 \u0437\u0430 \u0441\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430\u0442\u0430");
        ItmSpStistic.setFont(menuFont);
        ItmSpStistic.setActionCommand("spstatist");
        ItmSpStistic.addActionListener(getJMenuActionListener());
        ItmSpStistic.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmSpStistic);
        //
        javax.swing.JMenuItem ItmPDOD = new javax.swing.JMenuItem("\u041f\u0440\u0435\u0438\u0437\u0447\u0438\u0441\u043b\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0414\u041e\u0414");
        ItmPDOD.setFont(menuFont);
        ItmPDOD.setActionCommand("pdod");
        ItmPDOD.addActionListener(getJMenuActionListener());
        ItmPDOD.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmPDOD);
        //
        javax.swing.JMenuItem ItmBPL = new javax.swing.JMenuItem("\u0411\u0430\u043d\u043a\u043e\u0432\u0438 \u043f\u043b\u0430\u0449\u0430\u043d\u0438\u044f");
        ItmBPL.setFont(menuFont);
        ItmBPL.setActionCommand("bpl");
        ItmBPL.addActionListener(getJMenuActionListener());
        ItmBPL.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmBPL);
        //
        javax.swing.JMenuItem ItmUTD = new javax.swing.JMenuItem("\u0423\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0437\u0430 \u0442\u0440\u0443\u0434\u043e\u0432\u0438 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0438");
        ItmUTD.setFont(menuFont);
        ItmUTD.setActionCommand("Zadalk");
        ItmUTD.addActionListener(getJMenuActionListener());
        ItmUTD.setBackground(new java.awt.Color(224,223,227));
        
        MnuProccess.add(ItmUTD);
        
        
        
        ////
        //Setup system menu
        javax.swing.JMenu MnuDocum = new javax.swing.JMenu("\u0414\u041e\u041a\u0423\u041c\u0415\u041d\u0422\u0418");
        MnuDocum.setFont(menuFont);
        MnuDocum.setMnemonic('S');
        MnuDocum.setBackground(new java.awt.Color(224,223,227));
        NewJMenuBar.add(MnuDocum);
        //
        
        javax.swing.JMenuItem ItmActStDlaj = new javax.swing.JMenuItem("\u0410\u043a\u0442 \u0437\u0430 \u0432\u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435 \u0432 \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442");
        ItmActStDlaj.setFont(menuFont);
        ItmActStDlaj.setActionCommand("actsdl");
        ItmActStDlaj.addActionListener(getJMenuActionListener());
        ItmActStDlaj.setBackground(new java.awt.Color(224,223,227));
        
        MnuDocum.add(ItmActStDlaj);
        
        
        
        //Setup system menu
        javax.swing.JMenu MnuSys = new javax.swing.JMenu("\u0421\u0418\u0421\u0422\u0415\u041c\u041d\u0418");
        MnuSys.setFont(menuFont);
        MnuSys.setMnemonic('S');
        MnuSys.setBackground(new java.awt.Color(224,223,227));
        NewJMenuBar.add(MnuSys);
        ////
        
        javax.swing.JMenuItem ItmFirma = new javax.swing.JMenuItem("\u0414\u0430\u043d\u043d\u0438 \u043d\u0430 \u0444\u0438\u0440\u043c\u0430\u0442\u0430");
        ItmFirma.setFont(menuFont);
        ItmFirma.setActionCommand("danfirm");
        ItmFirma.addActionListener(getJMenuActionListener());
        ItmFirma.setBackground(new java.awt.Color(224,223,227));
        
        MnuSys.add(ItmFirma);
        
        ///////
        
        javax.swing.JMenuItem ItmNewM = new javax.swing.JMenuItem("\u0421\u044a\u0437\u0434\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u043c\u0435\u0441\u0435\u0446");
        ItmNewM.setFont(menuFont);
        ItmNewM.setActionCommand("newm");
        ItmNewM.addActionListener(getJMenuActionListener());
        ItmNewM.setBackground(new java.awt.Color(224,223,227));
        
        MnuSys.add(ItmNewM);
        ////
        
        javax.swing.JMenuItem ItmDelM = new javax.swing.JMenuItem("\u041f\u0440\u0435\u043c\u0430\u0445\u0432\u0430\u043d\u0435 \u043d\u0430 \u043c\u0435\u0441\u0435\u0446");
        ItmDelM.setFont(menuFont);
        ItmDelM.setActionCommand("ereasem");
        ItmDelM.addActionListener(getJMenuActionListener());
        ItmDelM.setBackground(new java.awt.Color(224,223,227));
        
        MnuSys.add(ItmDelM);
        ///
        javax.swing.JMenuItem ItmExport = new javax.swing.JMenuItem("\u0415\u043a\u0441\u043f\u043e\u0440\u0442 \u043d\u0430 \u0434\u0430\u043d\u043d\u0438");
        ItmExport.setFont(menuFont);
        ItmExport.setActionCommand("expflat");
        ItmExport.addActionListener(getJMenuActionListener());
        ItmExport.setBackground(new java.awt.Color(224,223,227));
        
        MnuSys.add(ItmExport);
        ////
        javax.swing.JMenuItem ItmImport = new javax.swing.JMenuItem("\u0418\u043c\u043f\u043e\u0440\u0442 \u043d\u0430 \u0434\u0430\u043d\u043d\u0438");
        ItmImport.setFont(menuFont);
        ItmImport.setActionCommand("import");
        ItmImport.addActionListener(getJMenuActionListener());
        ItmImport.setBackground(new java.awt.Color(224,223,227));
        
        MnuSys.add(ItmImport);
        
        ///
        javax.swing.JMenuItem ItmImportPic = new javax.swing.JMenuItem("\u0421\u043d\u0438\u043c\u043a\u0438");
        ItmImportPic.setFont(menuFont);
        ItmImportPic.setActionCommand("pic");
        ItmImportPic.addActionListener(getJMenuActionListener());
        ItmImportPic.setBackground(new java.awt.Color(224,223,227));
        
        MnuSys.add(ItmImportPic);
        MnuSys.addSeparator();
        ///
        javax.swing.JMenuItem ItmNKLPROF = new javax.swing.JMenuItem("\u041d\u0430\u0446\u0438\u043e\u043d\u0430\u043b\u0435\u043d \u043a\u043b\u0430\u0441\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 \u043d\u0430 \u043f\u0440\u043e\u0444\u0435\u0441\u0438\u0438\u0442\u0435");
        ItmNKLPROF.setFont(menuFont);
        ItmNKLPROF.setActionCommand("nprof");
        ItmNKLPROF.addActionListener(getJMenuActionListener());
        ItmNKLPROF.setBackground(new java.awt.Color(224,223,227));
        
        MnuSys.add(ItmNKLPROF);
        ///
        javax.swing.JMenuItem ItmNKLID= new javax.swing.JMenuItem("\u041d\u0430\u0446\u0438\u043e\u043d\u0430\u043b\u0435\u043d \u043a\u043b\u0430\u0441\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 \u043d\u0430 \u0438\u043a\u043e\u043d\u043e\u043c\u0438\u0447\u0435\u0441\u043a\u0438\u0442\u0435 \u0434\u0435\u0439\u043d\u043e\u0441\u0442\u0438");
        ItmNKLID.setFont(menuFont);
        ItmNKLID.setActionCommand("nkid");
        ItmNKLID.addActionListener(getJMenuActionListener());
        ItmNKLID.setBackground(new java.awt.Color(224,223,227));
        MnuSys.add(ItmNKLID);
        
        
        MnuSys.addSeparator();
        
        javax.swing.JMenuItem ItmArea= new javax.swing.JMenuItem("\u041e\u0431\u043b\u0430\u0441\u0442\u0438");
        ItmArea.setFont(menuFont);
        ItmArea.setActionCommand("area");
        ItmArea.addActionListener(getJMenuActionListener());
        ItmArea.setBackground(new java.awt.Color(224,223,227));
        MnuSys.add(ItmArea);
        
        
        
        javax.swing.JMenuItem ItmNas= new javax.swing.JMenuItem("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u0438 \u043c\u0435\u0441\u0442\u0430");
        ItmNas.setFont(menuFont);
        ItmNas.setActionCommand("nas");
        ItmNas.addActionListener(getJMenuActionListener());
        ItmNas.setBackground(new java.awt.Color(224,223,227));
        MnuSys.add(ItmNas);
        
        MnuSys.addSeparator();
        
        javax.swing.JMenuItem ItmVidOsig= new javax.swing.JMenuItem("\u0412\u0438\u0434 \u043e\u0441\u0438\u0433\u0443\u0440\u0435\u043d\u0438");
        ItmVidOsig.setFont(menuFont);
        ItmVidOsig.setActionCommand("vidosig");
        ItmVidOsig.addActionListener(getJMenuActionListener());
        ItmVidOsig.setBackground(new java.awt.Color(224,223,227));
        MnuSys.add(ItmVidOsig);
        
        javax.swing.JMenuItem ItmNKID= new javax.swing.JMenuItem("\u041a\u0430\u043b\u0435\u043d\u0434\u0430\u0440");
        ItmNKID.setFont(menuFont);
        ItmNKID.setActionCommand("calendar");
        ItmNKID.addActionListener(getJMenuActionListener());
        ItmNKID.setBackground(new java.awt.Color(224,223,227));
        MnuSys.add(ItmNKID);
        
        //End  menu
        
        
        
        //Setup help menu
        javax.swing.JMenu MnuHelp = new javax.swing.JMenu("\u041f\u041e\u041c\u041e\u0429");
        MnuHelp.setFont(menuFont);
        MnuHelp.setMnemonic('H');
        MnuHelp.setBackground(new java.awt.Color(224,223,227));
        NewJMenuBar.add(MnuHelp);
        //End records menu
        
        NewJMenuBar.setBackground(new java.awt.Color(224,223,227));
        return NewJMenuBar;
    }
    //End create menu bar
    
    //Create a tool bar
    protected javax.swing.JToolBar CreateJToolBar(){
        javax.swing.JToolBar NewJToolBar = new javax.swing.JToolBar("Toolbar");
        
        NewJToolBar.setMargin(new java.awt.Insets(0,0,0,0));
        
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
        NewJToolBar.add(PeriodLabel);
        //End create a toolbar button
        
        
        return NewJToolBar;
    }
    //End create a tool bar
    
    protected javax.swing.JButton CreateJToolbarButton(String srcToolTipText,String srcImageLocation,String srcActionCommand){
        javax.swing.JButton NewJButton = new javax.swing.JButton(new javax.swing.ImageIcon(srcImageLocation));
        
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
                
                FormSastav = new FrmNSastav(dbCON,this);
                //try{FormSastav.setMaximum(true);}catch(java.beans.PropertyVetoException bpve){bpve.printStackTrace();}
                Desk1.add(FormSastav);
                
                
                //Load the FormCustomer
                FormSastav.setVisible(true);
                
                try{
                    FormSastav.setIcon(false);
                    FormSastav.setSelected(true);
                }catch(java.beans.PropertyVetoException e){
                }
                //End load the FormCustomer
            }else{
                try{
                    FormSastav.setIcon(false);
                    FormSastav.setSelected(true);
                }catch(java.beans.PropertyVetoException e){
                }
            }} else {
            javax.swing.JOptionPane.showMessageDialog(null,"\u041d\u044f\u043c\u0430 \u0440\u0430\u0431\u043e\u0442\u043d\u0430 \u0434\u0430\u0442\u0430.\n ","",javax.swing.JOptionPane.WARNING_MESSAGE);
            }
        //End verify if the form is already loaded
        
    }
    
    protected void loadDODForm() throws java.sql.SQLException{
        
        boolean AlreadyLoaded = isLoaded("\u0414\u041e\u041e \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        if(AlreadyLoaded==false){
            FormDOD = new FrmDOD(dbCON,this, pYear);
            Desk1.add(FormDOD);
            
            
            //Load the FormSupplier
            FormDOD.setVisible(true);
            
            try{
                FormDOD.setIcon(false);
                FormDOD.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
            //End load the FormDOD
        }else{
            try{
                FormDOD.setIcon(false);
                FormDOD.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }
        //End verify if the form is already loaded
        
    }
    
    protected void loadDOOForm() throws java.sql.SQLException{
        //Verify if the form is already loaded
        boolean AlreadyLoaded = isLoaded("\u0414\u041e\u041e \u043d\u0430\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u044f");
        if(AlreadyLoaded==false){
            FormDOO = new imakante.salary.FrmModifikatori(dbCON,this);
            Desk1.add(FormDOO);
            
            try{FormDOO.setMaximum(true);}catch(java.beans.PropertyVetoException bpve){bpve.printStackTrace();}
            FormDOO.setVisible(true);
            
            try{
                FormDOO.setIcon(false);
                FormDOO.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
            //End load the FormDOD
        }else{
            try{
                FormDOO.setIcon(false);
                FormDOO.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }
        //End verify if the form is already loaded
        
    }
    
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
            }catch(java.beans.PropertyVetoException e){
            }
            //End load the FormDOD
        }else{
            try{
                FormMonth.setIcon(false);
                FormMonth.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }
        //End verify if the form is already loaded
        
    }
    
    protected void loadDateForm() {
        
        FrmDate frm = new FrmDate(this,dbCON);
        frm.setVisible(true);
        
    }
    
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
                }catch(java.beans.PropertyVetoException e){
                }
                
            }else{
                try{
                    FormSastav.setIcon(false);
                    FormSastav.setSelected(true);
                }catch(java.beans.PropertyVetoException e){
                }
            }} else {
            javax.swing.JOptionPane.showMessageDialog(null,"Няма работна дата.\n Въведете: Програма -> Смяна на период.","РЕА - Проект Мидас",javax.swing.JOptionPane.WARNING_MESSAGE);
            }
        
        
    }
    
    protected void loadVedomostАForm() {
        System.out.println("avansi 1");
        boolean AlreadyLoaded = isLoaded("Ведомости Аванси");
        
        if (pMonth != 0){
            if(AlreadyLoaded==false){
                System.out.println("avansi 2");
                try{
                    FormVedAvans = new FrmVedAvans(dbCON,this,pMonth,pYear);
                    Desk1.add(FormVedAvans);
                    FormVedAvans.setVisible(true);
                }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
                
                try{
                    FormVedAvans.setIcon(false);
                    FormVedAvans.setSelected(true);
                }catch(java.beans.PropertyVetoException e){
                }
                
            }else{
                try{
                    FormVedAvans.setIcon(false);
                    FormVedAvans.setSelected(true);
                }catch(java.beans.PropertyVetoException e){
                }
            }} else {
            javax.swing.JOptionPane.showMessageDialog(null,"Няма работна дата.\n Въведете: Програма -> Смяна на период.",
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.WARNING_MESSAGE);
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
            }catch(java.beans.PropertyVetoException e){
            }
            
        }else{
            try{
                FormNewM.setIcon(false);
                FormNewM.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
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
            }catch(java.beans.PropertyVetoException e){
            }
            
        }else{
            try{
                FormOtdel.setIcon(false);
                FormOtdel.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }
        
        
    }
    
    protected void loadDlajForm() throws java.sql.SQLException{
        
        boolean AlreadyLoaded = isLoaded("Списък отдели");
        if(AlreadyLoaded==false){
            FormDlajnost = new FrmDlajnost(dbCON,this);
            Desk1.add(FormDlajnost);
            try{FormDlajnost.setMaximum(true);}catch(java.beans.PropertyVetoException bpve){}
            FormDlajnost.setVisible(true);
            
            try{
                FormDlajnost.setIcon(false);
                FormDlajnost.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
            
        }else{
            try{
                FormDlajnost.setIcon(false);
                FormDlajnost.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
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
            }catch(java.beans.PropertyVetoException e){
            }
        }else{
            try{
                FormPic.setIcon(false);
                FormPic.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
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
    
    protected void loadArea(){
        javax.swing.JDialog FormArea = new frmArea(this, true, dbCON);
        FormArea.setVisible(true);
    }
    protected void loadVidOsig(){
        javax.swing.JDialog FormVidOsiguren = new FrmVidOsig(this, true, dbCON);
        FormVidOsiguren .setVisible(true);
    }
    
    protected void loadNIKD(){
        boolean AlreadyLoaded = isLoaded("\u041d\u041a\u0418\u0414");
        if(AlreadyLoaded==false){
            try{
                FormNKID = new imakante.salary.FrmNKID(dbCON, this);}catch(java.sql.SQLException sqle){}
            
            Desk1.add(FormNKID);
            try{FormNKID.setMaximum(true);}catch(java.beans.PropertyVetoException bpve){}
            FormNKID.setVisible(true);
            
            try{
                FormNKID.setIcon(false);
                FormNKID.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }else{
            try{
                FormNKID.setIcon(false);
                FormNKID.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }
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
            }catch(java.beans.PropertyVetoException e){
            }
        }else{
            try{
                FormNCP.setIcon(false);
                FormNCP.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }
        
    }
    
    protected void loadNasM() {
        
            nom.FrmCountry Formc = new nom.FrmCountry("Strani", this);  
            Desk1.add(Formc);
            try{Formc.setMaximum(true);}catch(java.beans.PropertyVetoException bpve){}
            Formc.setVisible(true);
       
    }
    protected void loadExtern() {
     /*
        boolean AlreadyLoaded = isLoaded("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u0438 \u043c\u0435\u0441\u0442\u0430");
        if(AlreadyLoaded==false){
      
            FormExtRes= new imakante.salary.FrmExternalRes() ;
            Desk1.add(FormExtRes);
            try{FormExtRes.setMaximum(true);}catch(java.beans.PropertyVetoException bpve){bpve.printStackTrace();}
            FormExtRes.setVisible(true);
      
            try{
                FormExtRes.setIcon(false);
                FormExtRes.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }else{
            try{
                FormExtRes.setIcon(false);
                FormExtRes.setSelected(true);
            }catch(java.beans.PropertyVetoException e){
            }
        }
      */
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
    
    public static int setMonth(int xMonth) {
        pMonth = xMonth;
        return pMonth;
    }
    
    public static int getMonth() {
        return pMonth;
    }
    
    public static int setYear(int xYear){
        pYear = xYear;
        return pYear;
    }
    
    public static int getYear(){
        return pYear;
    }
    
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
            } else if(srcObject=="nprof"){
                
                try{
                    loadNCP();
                } catch(Exception qle){
                };
            } else if(srcObject=="area"){
                
                try{
                    loadArea();
                } catch(Exception qle){
                };
                
            } else if(srcObject=="nas"){
                
                try{
                    loadNasM();
                } catch(Exception qle){
                };
            } else if(srcObject=="vidosig"){
                
                try{
                    loadVidOsig();
                } catch(Exception qle){
                };
                
            } else if(srcObject=="pred"){
                System.out.println("Vliza v else if");
                try{
                    loadExtern();
                } catch(Exception qle){
                };
                
            } else if(srcObject=="nkid"){
                
                try{
                    loadNIKD();
                } catch(Exception qle){qle.printStackTrace();
                };
            } else if(srcObject=="exit"){
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
        int PromptResult = javax.swing.JOptionPane.showOptionDialog(null,"\u041f\u0440\u0435\u043a\u0430\u0441\u0432\u0430\u043d\u0435 \u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430?"
                ,"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.DEFAULT_OPTION,javax.swing.JOptionPane.WARNING_MESSAGE,null,ObjButtons,ObjButtons[1]);
        if(PromptResult==0){
            System.out.println(
                    "\n\n" +
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415" +
                    "\n\n"
                    );
            try {
                dbCON.close();
                javax.swing.JOptionPane.showMessageDialog(null,"\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043a\u044a\u043c \u0431\u0430\u0437\u0430\u0442\u0430 \u0435 \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u0430.\n \u0417\u0430 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u0430 - \u041f\u0420\u041e\u0413\u0420\u0410\u041c\u0410 -> \u0412\u0445\u043e\u0434 \u0432 \u0411\u0430\u0437\u0430\u0442\u0430."
                        ,"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.WARNING_MESSAGE);
            } catch(java.sql.SQLException sqle){
            }
        }
    }
    
    protected void UnloadWindow(){
        String ObjButtons[] = {"\u0414\u0410","\u041d\u0415"};
        int PromptResult = javax.swing.JOptionPane.showOptionDialog(null,"\u0418\u0437\u0445\u043e\u0434 \u043e\u0442 \u043f\u0440\u043e\u0440\u0430\u043c\u0430\u0442\u0430?"
                ,"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",javax.swing.JOptionPane.DEFAULT_OPTION,javax.swing.JOptionPane.WARNING_MESSAGE,null,ObjButtons,ObjButtons[1]);
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
        
        javax.swing.JInternalFrame Form[] = Desk1.getAllFrames();
        for (int i = 0; i < Form.length; i++) {
            if (Form[i].getTitle().equalsIgnoreCase(FormTitle)) {
                Form[i].setVisible(true);
                try{
                    Form[i].setIcon(false);
                    Form[i].setSelected(true);
                }catch(java.beans.PropertyVetoException e){
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
                javax.swing.JFrame.setDefaultLookAndFeelDecorated(true);
            } catch (Exception e) {}
        }else if(sSelectedTheme == 2){
            //If Failed to load the liquid them then load my own XPStyleTheme
            // MetalTheme myXPStyleTheme = new XPStyleTheme();
            //MetalLookAndFeel.setCurrentTheme(myXPStyleTheme);
            try {
                javax.swing.UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");
            } catch (Exception err) {
                System.out.println("Error loading myXPStyleTheme");
                System.out.println(err);
            }
        }
    }
    
    protected static void setWM(String watermark) {
        
        if (watermark.equals("1")) {
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark("org.jvnet.substance.watermark.SubstanceStripeWatermark");
        } else if (watermark.equals("2")) {
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark("org.jvnet.substance.watermark.SubstanceKatakanaWatermark");
        } else if (watermark.equals("3")) {
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark("org.jvnet.substance.watermark.SubstanceBubblesWatermark");
        } else if (watermark.equals("4")) {
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark("org.jvnet.substance.watermark.SubstanceCrosshatchWatermark");
        } else if (watermark.equals("5")) {
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark("org.jvnet.substance.watermark.SubstanceBinaryWatermark");
        } else if (watermark.equals("6")) {
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark("org.jvnet.substance.watermark.SubstanceMosaicWatermark");
        } else if (watermark.equals("7")) {
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark("org.jvnet.substance.watermark.SubstanceLatchWatermark");
        } else if (watermark.equals("8")) {
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark("org.jvnet.substance.watermark.SubstanceMetalWallWatermark");
        } else if (watermark.equals("9")) {
            String img = "C:/Imakante/imakante.jpg";
            org.jvnet.substance.SubstanceLookAndFeel.setCurrentWatermark(new org.jvnet.substance.watermark.SubstanceImageWatermark(img));
        }
    }
    /************************* End custom method end **************************/
    
    /**************************** Main method start ***************************/
    
    public static void main(String[] args){
        try{
            String theme = "1", wm = "1";
            java.io.BufferedReader themer = new java.io.BufferedReader(new java.io.InputStreamReader(new
                    java.io.FileInputStream("c:/ima_config.ini"), "cp1251"));
            theme = themer.readLine();
            wm = themer.readLine();
            if(theme.equals("1")){  // Konfigurirane na Temata
                try {
                    String sysLook = javax.swing.UIManager.getSystemLookAndFeelClassName();     // Win L&F
                    javax.swing.UIManager.setLookAndFeel(sysLook);
                    
                } catch (Exception err) {
                    err.printStackTrace();
                }
            } else if(theme.equals("2")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel sustance = new org.jvnet.substance.SubstanceLookAndFeel();
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(sustance);
                    javax.swing.UIManager.setLookAndFeel("org.jvnet.substance.SubstanceLookAndFeel");
                }catch(Exception err){}
            }else if(theme.equals("3")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceBarbyPinkTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("4")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceBottleGreenTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("5")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceBrownTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("6")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceCharcoalTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("7")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceDarkVioletTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("8")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceEbonyTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("9")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceLightAquaTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("10")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceLimeGreenTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("11")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceOliveTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("12")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceOrangeTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("13")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstancePurpleTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("14")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceRaspberryTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("15")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceSepiaTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("16")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceSteelBlueTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("17")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceSunsetTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }else if(theme.equals("18")){
                try{
                    org.jvnet.substance.SubstanceLookAndFeel substance = new org.jvnet.substance.SubstanceLookAndFeel();
                    substance.setCurrentTheme(new org.jvnet.substance.theme.SubstanceTerracottaTheme());
                    setWM(wm);
                    javax.swing.UIManager.setLookAndFeel(substance);
                }catch(Exception err){}
            }
        }catch(java.io.IOException iox){
            try {
                String sysLook = javax.swing.UIManager.getSystemLookAndFeelClassName();
                javax.swing.UIManager.setLookAndFeel(sysLook);
                
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
    
    public javax.swing.JLabel getStatusLabel() {
        return StatusLabel;
    }
    
    public void setStatusLabel(javax.swing.JLabel StatusLabel) {
        this.StatusLabel = StatusLabel;
    }
    
    public FrmAct getFormActStDlaj() {
        return FormActStDlaj;
    }
    
    public void setFormActStDlaj(FrmAct FormActStDlaj) {
        this.FormActStDlaj = FormActStDlaj;
    }
    
    private  void setCurrDate(java.sql.Connection jcon){
        int imonth =0,iyear=0;
        java.sql.Connection dbInternal = jcon;
        
        try{
            java.sql.Statement stm = dbInternal.createStatement();
            java.sql.ResultSet rs = stm.executeQuery("SELECT ls_monthpar.pmonth AS lmonth, ls_monthpar.pyear AS lyear, MAX(ls_monthpar.id_period) AS period FROM ls_monthpar WHERE ls_monthpar.id_period = (SELECT MAX(id_period) FROM ls_monthpar) GROUP BY ls_monthpar.id_period");
            
            while(rs.next()){
                imonth = rs.getInt("lmonth");
                iyear  = rs.getInt("lyear");
                id_period = rs.getInt("period");
                
            }
            System.out.println("ddsfdsfs1 " + imonth);
            if(imonth == 0){
                System.out.println("ddsfdsfs " + imonth);
                javax.swing.JDialog FrmNachDate = new imakante.salary.frmNachDate(this, true, dbCON);
                FrmNachDate.setVisible(true);
                javax.swing.JDialog  clandarNew = new imakante.salary.calendarClass(this, true,dbCON,getMonth(),getYear());
                clandarNew.setVisible(true);
            }else {
                setYear(iyear);
                setMonth(imonth);
            }
        } catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        
        StrPeriod = "     Текущия период е месец   "+  getMonth()+ "    година " + getYear();
        
    }
    
    public static void loadNewBase(){
        javax.swing.JFrame FrmNBase = new imakante.salary.FrmNewBase();
        FrmNBase.setVisible(true);
    }
    
    public static int getId_period() {
        return id_period;
    }
    
    public static void setId_period(int aId_period) {
        id_period = aId_period;
    }

    public void setConn(java.sql.Connection conn) {

        this.dbCON = conn;
    }

    public java.sql.Connection getConn() {

        return dbCON;
    }
    
    
}
