package imakante.salary;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.beans.*;
import java.sql.*;



/**
 *
 * @author admin/dragiiski@mbox.contact.bg
 */

public class salary_main extends JFrame implements WindowListener{
    
    JPanel Panel1;
    JDesktopPane Desk1 = new JDesktopPane();
    
    
    JLabel StatusLabel = new JLabel("ИМАКАНТЕ",JLabel.CENTER);
    JLabel BTlabel = new JLabel();
    
    Dimension screen = 	Toolkit.getDefaultToolkit().getScreenSize();
    
    String StrBTitle = null;
    String DBDriver = null; //"com.mysql.jdbc.Driver";
    String DBSource = null; //"jdbc:mysql://localhost:3306/mida";
    String DBUserName = null; //"rado";
    String DBPassword = null; //"123";
    Connection dbCON;
    
    int pMonth = 0;
    int pYear = 0;
    //--Start variable the contains forms
    // frmDialog    FormDialog;
    
    FrmSastav    FormSastav;
    FrmDOD       FormDOD;
    FrmDOO       FormDOO;
    FrmMonth     FormMonth;
    FrmDate      FormDate;
    FrmNewM      FormNewM;
    FrmOtdel     FormOtdel;
    FrmDlajnost  FormDlajnost;
    FrmVedZaplati FormVedZaplati;

    
    Font menuFont = new Font("Dialog", Font.PLAIN, 12);
    
//	Thread ThFormLogo = new Thread(FormLogo);
    
    public salary_main(){
        
        super("ИМАКАНТЕ ЛИЧЕН СЪСТАВ v 0.0.1a");
        
        
        frmConnSalary fdia = new frmConnSalary(this);
        fdia.setVisible(true);
        
        try{
            Class.forName(DBDriver);
            dbCON = DriverManager.getConnection(DBSource,DBUserName ,DBPassword);
        } catch(ClassNotFoundException e)  {
            System.err.println("Failed to load driver");
            e.printStackTrace();
            System.exit(1);
        } catch(SQLException e){
            System.err.println("Unable to connect");
            e.printStackTrace();
            System.exit(1);
                    }
        //End set the main form properties
        
        
        FrmDate fdate = new FrmDate(this,dbCON);
        fdate.setVisible(true);
        //FormLogo.dispose();
        
        StatusLabel.setBorder(BorderFactory.createTitledBorder(""));
        StatusLabel.setFont(menuFont);
      
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
        getContentPane().add(StatusLabel,BorderLayout.PAGE_END);
        
        setJMenuBar(CreateJMenuBar());
        setExtendedState(this.MAXIMIZED_BOTH);
        
        setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        setIconImage(new ImageIcon("images/appicon.png").getImage());
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
        JMenu MnuFile = new JMenu("ПРОГРАМА");
        MnuFile.setFont(menuFont);
        MnuFile.setMnemonic('F');
        MnuFile.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuFile);
        //End setup file menu
        
        //Set file sub menu
        JMenuItem ItmLockApp = new JMenuItem("Заключване на програмата");
        ItmLockApp.setFont(menuFont);
        ItmLockApp.setMnemonic('L');
        ItmLockApp.setIcon(new ImageIcon("images/lockapplication.png"));
        ItmLockApp.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_L,ActionEvent.CTRL_MASK
                )
                );
        ItmLockApp.setActionCommand("lockapp");
        ItmLockApp.addActionListener(JMenuActionListener);
        ItmLockApp.setBackground(new Color(255,255,255));
        
        JMenuItem ItmLogon = new JMenuItem("Вход в базата");
        ItmLogon.setFont(menuFont);
        ItmLogon.setMnemonic('I');
        ItmLogon.setIcon(new ImageIcon("images/lockapplication.png"));
        ItmLogon.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_I,ActionEvent.CTRL_MASK
                )
                );
        ItmLogon.setActionCommand("logon");
        ItmLogon.addActionListener(JMenuActionListener);
        ItmLogon.setBackground(new Color(255,255,255));
        
        
        
        JMenuItem ItmLoggOff = new JMenuItem("Изход от базата...");
        ItmLoggOff.setFont(menuFont);
        ItmLoggOff.setMnemonic('O');
        ItmLoggOff.setIcon(new ImageIcon("images/loggoff.png"));
        ItmLoggOff.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_O,ActionEvent.CTRL_MASK
                )
                );
        ItmLoggOff.setActionCommand("loggoff");
        ItmLoggOff.addActionListener(JMenuActionListener);
        ItmLoggOff.setBackground(new Color(255,255,255));
        
        JMenuItem ItmPeriod = new JMenuItem("Смяна на период");
        ItmPeriod.setFont(menuFont);
        ItmPeriod.setMnemonic('H');
        ItmPeriod.setIcon(new ImageIcon("images/lockapplication.png"));
        ItmPeriod.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_H,ActionEvent.CTRL_MASK
                )
                );
        ItmPeriod.setActionCommand("period");
        ItmPeriod.addActionListener(JMenuActionListener);
        ItmPeriod.setBackground(new Color(255,255,255));
        
        JMenuItem ItmExit = new JMenuItem("ИЗХОД");
        ItmExit.setFont(menuFont);
        ItmExit.setMnemonic('E');
        ItmExit.setIcon(new ImageIcon("images/exit.png"));
        ItmExit.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_E,ActionEvent.CTRL_MASK
                )
                );
        ItmExit.setActionCommand("exit");
        ItmExit.addActionListener(JMenuActionListener);
        ItmExit.setBackground(new Color(255,255,255));
        
        MnuFile.add(ItmLockApp);
        MnuFile.add(ItmPeriod);
        MnuFile.add(ItmLogon);
        MnuFile.addSeparator();
        MnuFile.add(ItmLoggOff);
        MnuFile.add(ItmExit);
        //End set file sub menu
        
        //Setup records menu
        
        JMenu MnuDoc = new JMenu("РЕДАКТИРАНЕ");
        MnuDoc.setFont(menuFont);
        MnuDoc.setMnemonic('D');
        MnuDoc.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuDoc);
        //
        
        JMenuItem ItmProd = new JMenuItem("Списък служители");
        ItmProd.setFont(menuFont);
        ItmProd.setMnemonic('P');
        ItmProd.setIcon(new ImageIcon("images/prod.png"));
        ItmProd.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_P,ActionEvent.CTRL_MASK
                )
                );
        ItmProd.setActionCommand("sluj");
        ItmProd.addActionListener(JMenuActionListener);
        ItmProd.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmProd);
        
        JMenuItem ItmFakturi = new JMenuItem("ДОО таблица");
        ItmFakturi.setFont(menuFont);
        ItmFakturi.setMnemonic('F');
        ItmFakturi.setIcon(new ImageIcon("images/fak.png"));
        ItmFakturi.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_F,ActionEvent.CTRL_MASK
                )
                );
        ItmFakturi.setActionCommand("doo");
        ItmFakturi.addActionListener(JMenuActionListener);
        ItmFakturi.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmFakturi);
        //
        //
        JMenuItem ItmProhods = new JMenuItem("ДОО начисления");
        ItmProhods.setFont(menuFont);
        ItmProhods.setMnemonic('f');
        ItmProhods.setIcon(new ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmProhods.setActionCommand("doo1");
        ItmProhods.addActionListener(JMenuActionListener);
        ItmProhods.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmProhods);
        //
        //
        
        
        //
        //
        
        
        JMenuItem ItmIzv = new JMenuItem("Удръжки");
        ItmIzv.setFont(menuFont);
        ItmIzv.setMnemonic('f');
        ItmIzv.setIcon(new ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmIzv.setActionCommand("Izv");
        ItmIzv.addActionListener(JMenuActionListener);
        ItmIzv.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmIzv);
        //
        //
        
        
        JMenuItem ItmPorach = new JMenuItem("Списък отдели");
        ItmPorach.setFont(menuFont);
        ItmPorach.setMnemonic('f');
        ItmPorach.setIcon(new ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmPorach.setActionCommand("otd");
        ItmPorach.addActionListener(JMenuActionListener);
        ItmPorach.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmPorach);
        //
        
        JMenuItem ItmDlaj = new JMenuItem("Списък длъжности");
        ItmDlaj.setFont(menuFont);
        ItmDlaj.setMnemonic('f');
        ItmDlaj.setIcon(new ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmDlaj.setActionCommand("dlaj");
        ItmDlaj.addActionListener(JMenuActionListener);
        ItmDlaj.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmDlaj);
        //
        
        
        JMenuItem ItmMDanni = new JMenuItem("Месечни данни");
        ItmMDanni.setFont(menuFont);
        ItmMDanni.setMnemonic('f');
        ItmMDanni.setIcon(new ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmMDanni.setActionCommand("mes");
        ItmMDanni.addActionListener(JMenuActionListener);
        ItmMDanni.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmMDanni);
        //
        
        
        JMenuItem ItmOtpis = new JMenuItem("Уведомления за трудови договори");
        ItmOtpis.setFont(menuFont);
        ItmOtpis.setMnemonic('f');
        ItmOtpis.setIcon(new ImageIcon("images/fak.png"));
        //ItmFakturi.setAccelerator(
        //	KeyStroke.getKeyStroke(
        //			KeyEvent.VK_C,ActionEvent.CTRL_MASK
        //		)
        //	);
        ItmOtpis.setActionCommand("Prehv");
        ItmOtpis.addActionListener(JMenuActionListener);
        ItmOtpis.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmOtpis);
        //
        //
        
        
        JMenuItem ItmOffer = new JMenuItem("Социални осигуровки");
        ItmOffer.setFont(menuFont);
        ItmOffer.setMnemonic('f');
        ItmOffer.setActionCommand("Offer");
        ItmOffer.addActionListener(JMenuActionListener);
        ItmOffer.setBackground(new Color(255,255,255));
        
        MnuDoc.add(ItmOffer);
        
        //
        //
        JMenu MnuKasa = new JMenu("ВЕДОМОСТИ");
        MnuKasa.setFont(menuFont);
        MnuKasa.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuKasa);
        //End records menu
        //
        JMenuItem ItmPrihoo = new JMenuItem("Ведомости заплати");
        ItmPrihoo.setFont(menuFont);
        ItmPrihoo.setActionCommand("zved");
        ItmPrihoo.addActionListener(JMenuActionListener);
        ItmPrihoo.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmPrihoo);
        //
        //
        JMenuItem ItmRazhoo = new JMenuItem("Ведомости аванси");
        ItmRazhoo.setFont(menuFont);
        ItmRazhoo.setActionCommand("aved");
        ItmRazhoo.addActionListener(JMenuActionListener);
        ItmRazhoo.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmRazhoo);
        //
        JMenuItem ItmNalicni = new JMenuItem("Ведомости ДОО");
        ItmNalicni.setFont(menuFont);
        ItmNalicni.setActionCommand("dooved");
        ItmNalicni.addActionListener(JMenuActionListener);
        ItmNalicni.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmNalicni);
        
        JMenuItem ItmVedCO = new JMenuItem("Ведомости СО");
        ItmVedCO.setFont(menuFont);
        ItmVedCO.setActionCommand("soved");
        ItmVedCO.addActionListener(JMenuActionListener);
        ItmVedCO.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmVedCO);
        
        //
        
        JMenuItem ItmOpis = new JMenuItem("ДОО от работници");
        ItmOpis.setFont(menuFont);
        ItmOpis.setActionCommand("Prihoo");
        ItmOpis.addActionListener(JMenuActionListener);
        ItmOpis.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmOpis);
        
        //
        
        JMenuItem ItmZDR = new JMenuItem("Здравни осигуровки");
        ItmZDR.setFont(menuFont);
        ItmZDR.setActionCommand("Prihoo");
        ItmZDR.addActionListener(JMenuActionListener);
        ItmZDR.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmZDR);
        //
        
        JMenuItem ItmBank = new JMenuItem("Банкови плащания");
        ItmBank.setFont(menuFont);
        ItmBank.setActionCommand("Prihoo");
        ItmBank.addActionListener(JMenuActionListener);
        ItmBank.setBackground(new Color(255,255,255));
        
        MnuKasa.add(ItmBank);
        
        
        //
        JMenu MnuRec = new JMenu("ИЗПЪЛНЕНИЕ");
        MnuRec.setFont(menuFont);
        MnuRec.setMnemonic('R');
        MnuRec.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuRec);
        //End records menu
        
        //Set records sub menu
        
        //-- For Customer
        JMenuItem ItmAvansi = new JMenuItem("Аванси");
        ItmAvansi.setFont(menuFont);
        ItmAvansi.setMnemonic('C');
        ItmAvansi.setIcon(new ImageIcon("images/customer.png"));
        ItmAvansi.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_C,ActionEvent.CTRL_MASK
                )
                );
        ItmAvansi.setActionCommand("avansi");
        ItmAvansi.addActionListener(JMenuActionListener);
        ItmAvansi.setBackground(new Color(255,255,255));
        
        MnuRec.add(ItmAvansi);
        
        
        //-- For FISHOVE
        
        JMenuItem ItmFishove = new JMenuItem("Фишове");
        ItmFishove.setFont(menuFont);
        ItmFishove.setMnemonic('S');
        ItmFishove.setIcon(new ImageIcon("images/supplier.png"));
        ItmFishove.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_S,ActionEvent.CTRL_MASK
                )
                );
        ItmFishove.setActionCommand("fish");
        ItmFishove.addActionListener(JMenuActionListener);
        ItmFishove.setBackground(new Color(255,255,255));
        
        MnuRec.add(ItmFishove);
        
        //-- For SalesRep
        JMenuItem ItmZarab = new JMenuItem("Заработка");
        ItmZarab.setFont(menuFont);
        ItmZarab.setMnemonic('B');
        ItmZarab.setIcon(new ImageIcon("images/SalesRep.png"));
        ItmZarab.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_B,ActionEvent.CTRL_MASK
                )
                );
        ItmZarab.setActionCommand("zarab");
        ItmZarab.addActionListener(JMenuActionListener);
        ItmZarab.setBackground(new Color(255,255,255));
        
        MnuRec.add(ItmZarab);
        
        //-- For Warehouse
        JMenuItem ItmPremii = new JMenuItem("Премии");
        ItmPremii.setFont(menuFont);
        ItmPremii.setMnemonic('V');
        ItmPremii.setIcon(new ImageIcon("images/Warehouse.png"));
        ItmPremii.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_V,ActionEvent.CTRL_MASK
                )
                );
        ItmPremii.setActionCommand("premii");
        ItmPremii.addActionListener(JMenuActionListener);
        ItmPremii.setBackground(new Color(255,255,255));
        
        MnuRec.add(ItmPremii);
        
        
        
        //End records sub menu
        
        //Setup proccess menu
        JMenu MnuProccess = new JMenu("СПРАВКИ");
        MnuProccess.setFont(menuFont);
        MnuProccess.setMnemonic('P');
        MnuProccess.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuProccess);
        //End records menu
        
        //Set proccess sub menu
        
        //-- For New Invoice
        JMenuItem ItmSPFish = new JMenuItem("Фишове");
        ItmSPFish.setFont(menuFont);
        ItmSPFish.setMnemonic('I');
        ItmSPFish.setIcon(new ImageIcon("images/newinvoice.png"));
        ItmSPFish.setAccelerator(
                KeyStroke.getKeyStroke(
                KeyEvent.VK_F1,ActionEvent.CTRL_MASK
                )
                );
        ItmSPFish.setActionCommand("SPInv");
        ItmSPFish.addActionListener(JMenuActionListener);
        ItmSPFish.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPFish);
        
        //-- For New PO
        JMenuItem ItmSPNU = new JMenuItem("Начисления и удръжки");
        ItmSPNU.setFont(menuFont);
        ItmSPNU.setMnemonic('P');
        ItmSPNU.setIcon(new ImageIcon("images/newpurchaseorder.png"));
        ItmSPNU.setActionCommand("Oborot");
        ItmSPNU.addActionListener(JMenuActionListener);
        ItmSPNU.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPNU);
        
        //-- For New Purchase Receipt
        JMenuItem ItmSBalance = new JMenuItem("Суми за счетоводна информация");
        ItmSBalance.setFont(menuFont);
        ItmSBalance.setMnemonic('E');
        ItmSBalance.setIcon(new ImageIcon("images/newrecieve.png"));
        ItmSBalance.setActionCommand("SBalance");
        ItmSBalance.addActionListener(JMenuActionListener);
        ItmSBalance.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSBalance);
        
        //-- For New Expenses
        JMenuItem ItmSProhod = new JMenuItem("Списъци");
        ItmSProhod.setFont(menuFont);
        ItmSProhod.setActionCommand("SProhod");
        ItmSProhod.addActionListener(JMenuActionListener);
        ItmSProhod.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSProhod);
        
        //-- For New Expenses
        JMenuItem ItmSPSalaryP = new JMenuItem("Заплати за период от време");
        ItmSPSalaryP.setFont(menuFont);
        ItmSPSalaryP.setActionCommand("SExpense");
        ItmSPSalaryP.addActionListener(JMenuActionListener);
        ItmSPSalaryP.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPSalaryP);
        
        //-- For New ДДС
        JMenuItem ItmStaj = new JMenuItem("Натрупан стаж");
        ItmStaj.setFont(menuFont);
        ItmStaj.setActionCommand("spstaj");
        ItmStaj.addActionListener(JMenuActionListener);
        ItmStaj.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmStaj);
        
        //End proccess sub menu
        
        //-- For New ДДС
        JMenuItem ItmSPZarab = new JMenuItem("Заработки");
        ItmSPZarab.setFont(menuFont);
        ItmSPZarab.setActionCommand("spzarab");
        ItmSPZarab.addActionListener(JMenuActionListener);
        ItmSPZarab.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPZarab);
        
//
        JMenuItem ItmSPSots = new JMenuItem("Отчет за социално осигуряване");
        ItmSPSots.setFont(menuFont);
        ItmSPSots.setActionCommand("spsots");
        ItmSPSots.addActionListener(JMenuActionListener);
        ItmSPSots.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSPSots);
        
        //End proccess sub menu
        JMenuItem ItmSpStistic = new JMenuItem("Справки за статистиката");
        ItmSpStistic.setFont(menuFont);
        ItmSpStistic.setActionCommand("spstatist");
        ItmSpStistic.addActionListener(JMenuActionListener);
        ItmSpStistic.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmSpStistic);
        //
        JMenuItem ItmPDOD = new JMenuItem("Преизчисляване на ДОД");
        ItmPDOD.setFont(menuFont);
        ItmPDOD.setActionCommand("pdod");
        ItmPDOD.addActionListener(JMenuActionListener);
        ItmPDOD.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmPDOD);
        //
        JMenuItem ItmBPL = new JMenuItem("Банкови плащания");
        ItmBPL.setFont(menuFont);
        ItmBPL.setActionCommand("bpl");
        ItmBPL.addActionListener(JMenuActionListener);
        ItmBPL.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmBPL);
        //
        JMenuItem ItmUTD = new JMenuItem("Уведомления за трудови договори");
        ItmUTD.setFont(menuFont);
        ItmUTD.setActionCommand("Zadalk");
        ItmUTD.addActionListener(JMenuActionListener);
        ItmUTD.setBackground(new Color(255,255,255));
        
        MnuProccess.add(ItmUTD);
        
        //Setup system menu
        JMenu MnuSys = new JMenu("СИСТЕМНИ");
        MnuSys.setFont(menuFont);
        MnuSys.setMnemonic('S');
        MnuSys.setBackground(new Color(255,255,255));
        NewJMenuBar.add(MnuSys);
        ////
        
        JMenuItem ItmFirma = new JMenuItem("Данни на фирмата");
        ItmFirma.setFont(menuFont);
        ItmFirma.setActionCommand("danfirm");
        ItmFirma.addActionListener(JMenuActionListener);
        ItmFirma.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmFirma);
        
        ///////
        
        JMenuItem ItmNewM = new JMenuItem("Създаване на месец");
        ItmNewM.setFont(menuFont);
        ItmNewM.setActionCommand("newm");
        ItmNewM.addActionListener(JMenuActionListener);
        ItmNewM.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmNewM);
        ////
        
        JMenuItem ItmDelM = new JMenuItem("Премахване на месец");
        ItmDelM.setFont(menuFont);
        ItmDelM.setActionCommand("danfirm");
        ItmDelM.addActionListener(JMenuActionListener);
        ItmDelM.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmDelM);
        ///
        JMenuItem ItmExport = new JMenuItem("Експорт на данни");
        ItmExport.setFont(menuFont);
        ItmExport.setActionCommand("expflat");
        ItmExport.addActionListener(JMenuActionListener);
        ItmExport.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmExport);
        ////
        JMenuItem ItmImport = new JMenuItem("Импорт на данни");
        ItmImport.setFont(menuFont);
        ItmImport.setActionCommand("danfirm");
        ItmImport.addActionListener(JMenuActionListener);
        ItmImport.setBackground(new Color(255,255,255));
        
        MnuSys.add(ItmImport);
        
        
        //End  menu
        
        
        
        //Setup help menu
        JMenu MnuHelp = new JMenu("ПОМОЩ");
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
        NewJToolBar.add(CreateJToolbarButton("Customers Record","images/customer.png","toolCus"));
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
    
    protected void loadSastavForm() throws SQLException{
        //Verify if the form is already loaded
        boolean AlreadyLoaded = isLoaded("Списък служители");
        if (pMonth != 0){
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
            JOptionPane.showMessageDialog(null,"Няма работна дата.\n Въведете: Програма -> Смяна на период.","РЕА - Проект Мидас",JOptionPane.WARNING_MESSAGE);
            }
        //End verify if the form is already loaded
        
    }
    //End create customer from
    
    //Create dod form
    protected void loadDODForm() throws SQLException{
        //Verify if the form is already loaded
        System.out.println(pYear);
        boolean AlreadyLoaded = isLoaded("ДОО таблица");
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
    
    
    
    protected void loadDOOForm() throws SQLException{
        //Verify if the form is already loaded
        boolean AlreadyLoaded = isLoaded("ДОО начисления");
        if(AlreadyLoaded==false){
            FormDOO = new FrmDOO(dbCON,this,pMonth, pYear);
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
    protected void loadMonthForm() throws SQLException{
        //Verify if the form is already loaded
        boolean AlreadyLoaded = isLoaded("Месечни данни");
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
        
        
        FrmVedZaplati FormVedZaplati = new FrmVedZaplati(this, dbCON, pYear,pMonth);
        FormVedZaplati.setVisible(true);
        
    }
    protected void loadLogonForm() throws SQLException{
        try {
            dbCON.close();
        } catch(SQLException sqle){
        }
        frmConnSalary frm = new frmConnSalary(this);
        frm.setVisible(true);
        
        try{
            Class.forName(DBDriver);
            dbCON = DriverManager.getConnection(DBSource,DBUserName ,DBPassword);
        } catch(ClassNotFoundException e)  {
            System.err.println("Failed to load driver");
            e.printStackTrace();
            System.exit(1);
        } catch(SQLException e){
            System.err.println("Unable to connect");
            e.printStackTrace();
            System.exit(1);
        }
        
//	   jta.setText(((MyDialog)ae.getSource()).getText());
        
        System.out.println(pYear);
        
    }
    
    protected void loadNewMForm() throws SQLException{
        
        boolean AlreadyLoaded = isLoaded("Месечни данни");
        if(AlreadyLoaded==false){
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
    
    protected void loadOtdelForm() throws SQLException{
        
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
            //End load the FormDOD
        }else{
            try{
                FormOtdel.setIcon(false);
                FormOtdel.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        //End verify if the form is already loaded
        
    }
    protected void loadDlajForm() throws SQLException{
        
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
            //End load the FormDOD
        }else{
            try{
                FormDlajnost.setIcon(false);
                FormDlajnost.setSelected(true);
            }catch(PropertyVetoException e){
            }
        }
        //End verify if the form is already loaded
        
    }
    
    
    
    
    /******************** End method for loading form start *******************/
    public int setMonth(int xMonth) {
        pMonth = xMonth;
        return pMonth;
    }
    public int setYear(int xYear){
        
        
        pYear = xYear;
        //System.out.println(pYear);
        return pYear;
    }
    
    // za nastroika na bazata
    
    public String setDBDriver(String strDriver){
        DBDriver = strDriver;
        return DBDriver;
    }
    
    
    public String setDBSource(String strSource){
        DBSource = strSource;
        return DBSource;
    }
    
    
    public String setUser(String strUser){
        DBUserName = strUser;
        return DBUserName;
    }
     public String setFirm(String strFirm){
       
        StrBTitle = "Личен състав на фирма " + strFirm;
        return StrBTitle;
    }
    
    public String setPass(String strPass){
        DBPassword = strPass;
        return DBPassword;
    }
    
    
    /************************** Event handling start **************************/
    
    //Create action listener for JMenu
    ActionListener JMenuActionListener = new ActionListener(){
        public void actionPerformed(ActionEvent e) {
            String srcObject = e.getActionCommand();
            if(srcObject=="newm"){
                try{
                    loadNewMForm();
                }catch(SQLException sqle){
                    
                }
            }
            
            else if(srcObject=="doo"){
                try{
                    loadDODForm();
                }catch(SQLException sqle){
                }
            }
            
            else if(srcObject=="loggoff"){
                try{
                    UnloadConnection();
                }catch(SQLException sqle){
                }
            }
            
            else if(srcObject=="logon"){
                try{
                    loadLogonForm();
                }catch(SQLException sqle){
                }
            }
            
            else if(srcObject=="sluj"){
                try{
                    loadSastavForm();
                }catch(SQLException sqle){
                }
            }
            
            else if(srcObject=="doo1"){
                try{
                    loadDOOForm();
                }catch(SQLException sqle){
                }
            } else if(srcObject=="mes"){
                try{
                    loadMonthForm();
                }catch(SQLException sqle){
                }
            } else if(srcObject=="period"){
                
                loadDateForm();
                
            } else if(srcObject=="otd"){
                
                try{
                    loadOtdelForm();
                }catch(SQLException sqle){
                };
                
            } else if(srcObject=="dlaj"){
                
                try{
                    loadDlajForm();
                }catch(SQLException sqle){
                };
            } else if(srcObject=="expflat"){
                
                try{
                    FrmExport fExport = new FrmExport(dbCON);
                    fExport.setVisible(true);
                }catch(SQLException sqle){
                };
            } else if(srcObject=="zved"){
                
                try{
                    loadVedomostZForm();
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
    ActionListener JToolBarActionListener = new ActionListener(){
        public void actionPerformed(ActionEvent e)	{
            String srcObject = e.getActionCommand();
            if(srcObject=="doo"){
                try{
                    loadDODForm();
                }catch(SQLException sqle){
                }
            }
            
            else if(srcObject=="toolInv"){
                try{
                    loadNewMForm();
                }catch(SQLException sqle){
                }
            }
        }
    };
    //End create action Listerner for JToolBar Button
    
    //Interface event from WindowListener start
    public void windowOpened(WindowEvent e){
    }
    public void windowClosing(WindowEvent e){
        UnloadWindow();
    }
    public void windowClosed(WindowEvent e){
    }
    public void windowIconified(WindowEvent e){
    }
    public void windowDeiconified(WindowEvent e){
    }
    public void windowActivated(WindowEvent e){
    }
    public void windowDeactivated(WindowEvent e){
    }
    //End interface event from WindowListener start
    
    /************************ End event handling start ************************/
    
    /************************** Custom method start ***************************/
    
    protected void UnloadConnection() throws SQLException {
        String ObjButtons[] = {"ДА","НЕ"};
        int PromptResult = JOptionPane.showOptionDialog(null,"Прекасване на връзка с базата?","ИМАКАНТЕ",JOptionPane.DEFAULT_OPTION,JOptionPane.WARNING_MESSAGE,null,ObjButtons,ObjButtons[1]);
        if(PromptResult==0){
            System.out.println(
                    "\n\n" +
                    "ИМАКАНТЕ" +
                    "\n\n"
                    );
            try {
                dbCON.close();
                JOptionPane.showMessageDialog(null,"Връзката към базата е успешно прекъсната.\n За да продължите работа - ПРОГРАМА -> Вход в Базата.","ПРОЕКТ ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
            } catch(SQLException sqle){
            }
        }
    }
    
    protected void UnloadWindow(){
        String ObjButtons[] = {"ДА","НЕ"};
        int PromptResult = JOptionPane.showOptionDialog(null,"Изход от прорамата?","ИМАКАНТЕ",JOptionPane.DEFAULT_OPTION,JOptionPane.WARNING_MESSAGE,null,ObjButtons,ObjButtons[1]);
        if(PromptResult==0){
            System.out.println(
                    "\n\n" +
                    "ИМАКАНТЕ" +
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
}