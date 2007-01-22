
package imakante.sales;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.ArrayList;
import java.util.HashMap;
import javax.swing.*;
import java.util.Date;
import java.sql.*;
import java.awt.*;
import javax.swing.table.TableColumn;
import java.awt.event.*;
import java.math.*;
import javax.swing.table.*;

public class aeDocumentFacade extends imakante.com.vcomponents.iDialog  // test
{
    final private static int CONTARGENT_NO = 0;
    final private static int CONTARGENT_BULSTAT = 1;
    final private static int CONTARGENT_DAN_NO = 2;
    final private static int CONTARGENT_NAME = 3;
    final private static int CONTARGENT_ADDRESS = 4;
    final private static int CONTARGENT_MOL = 6;
    final private static int CONTARGENT_TEL = 5;
    final private static int OBEKT_NO =0;
    final private static int OBEKT_NAME =1;
    final private static int OBEKT_ADDRESS =2;
    final private static int OBEKT_TEL =3;
    //KEY PRESED
    final private static int F7_KEY = 0;
    final private static int F8_KEY = 1;
    final private static int F9_KEY = 2;
    final private static int SEARCH_BY_CODE = 1;
    final private static int SEARCH_BY_NAME = 2;
    
    // Condition of document
    
    final private static String ANULIRANE = "2";
    final private static String IZTRIVANE = "1";
    final private static String USE_DOCUMENT = "0";
    final private static String NON_DEFINE = "-1";
    
    final private static int BROI_INPUT = 0;
    final private static int BROI_OUTPUT = 1;
    final private static int BROI_NON_IO = 2;
    
    
    //DOKUMENTI
    final public static int STOKOVA_RAZPISKA=100;
    final public static int FAKTURI=200;
    final public static int FAKTURA_OPROSTENA = 201;
    final public static int FAKTURA_DANACHNA = 202;
    final public static int PROFORMA_FAKTURA=300;
    
    final public static int KONSGNACIONEN_PROTOKOL=400;
    final public static int NAREZDANE_ZA_PREHVYRQNE=500;
    final public static int PRIEMATELNA_RAZPISKA =600;
    final public static int PREDAVATELNA_RAZPISKA =700;
    final public static int BRAK = 800;
    final public static int PROTOKOL_LIPSA = 900;
    final public static int OFERTA=1000;
    final public static int RAZPISKA_ZA_VRYSHTANE = 1100;
    
    
    public static int tetstcount =0;
    
    
    public aeDocumentFacade(imakante.com.vcomponents.iInternalFrame frame, boolean modal, boolean isnew,
            int pricelist) //test
    {
        super(frame, modal);
        this.myParent = (FrmDocumentFacade) frame;
        this.userDocFacade = myParent.getUserDocFacade();
        this.levelDocFacade = myParent.getDocFacadeLevel();
        this.priceList = pricelist;
        this.DocFacadeType = myParent.getDocFacadeType();
        this.isNew = isnew;
        
        initComponents();
        jLabelLevel.setText(String.valueOf(myParent.getDocFacadeLevel()));
        selectDocumentTypeToView(DocFacadeType);
        jTable1.getTableHeader().setReorderingAllowed(false);
        jTable1.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        jTable1.setModel(new docLineTableModel());
        //    jTable1.setRowSelectionAllowed(false); // zabranqvame selekciqta na celiq red
        jTable1.setCellSelectionEnabled(true);
        TableColumn tm = jTable1.getColumnModel().getColumn(4);
        tm.setCellRenderer(new ColorColumnRenderer(Color.lightGray, Color.blue));
        jScrollPane2.getViewport().add(jTable1);
        jScrollPane2.repaint();
        
        
        setInputLisener(); // for jTable1
        jTablePopUpMenu.add(jTableMenuIntem1);
        jTablePopUpMenu.add(jTableMenuItem2);
        jTablePopUpMenu.add(jTableMenuItem3);
        jTable1.setComponentPopupMenu(jTablePopUpMenu);
        setPopupMenuListener();
        InputMap im = jTable1.getInputMap(JTable.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);
        KeyStroke tab = KeyStroke.getKeyStroke(KeyEvent.VK_TAB, 0);
        KeyStroke enter = KeyStroke.getKeyStroke(KeyEvent.VK_ENTER, 0);
        im.put(enter, im.get(tab));
        KeyStroke right = KeyStroke.getKeyStroke(KeyEvent.VK_RIGHT, 0);
        im.put(right, "none");
        jTable1.setInputMap(0,im);
        calculateWidthColumn(jTable1);
        viewCow = jTable1.getColumnCount();
        insertEdit = new JTextField[viewCow];
        createInsertEditField();
        if(isNew) {
            jButtonOneRowM.setEnabled(false) ;
            jButtonOneRowP.setEnabled(false);
            jButtonToBegin.setEnabled(false);
            jButtonToEnd.setEnabled(false);
            
        } else {
            jButtonOneRowM.setEnabled(true) ;
            jButtonOneRowP.setEnabled(true);
            jButtonToBegin.setEnabled(true);
            jButtonToEnd.setEnabled(true);
        }
        getNavigatiionState();
        
        this.setResizable(false);
        this.setSize(740,740);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        
        
        if(isNew) {
            nowDate = new Date();
            repainUserEdit(0,false);
        } else {
            
        }
        imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
        String strDate = "01-01-2000";
        strDate = String.valueOf(jXDateCurs.getDate().getDate());
        strDate += "/" + String.valueOf(jXDateCurs.getDate().getMonth()+1);
        strDate += "/" + String.valueOf(jXDateCurs.getDate().getYear()+1900);
        String DateSQLFormat = dateManip.convertDate(strDate);
        System.out.println("DateSQLFormat "+DateSQLFormat);
        DateSQLFormat = myParent.getCountriesT().getLastCurentDate();
        System.out.println("DateSQLFormat 2 "+DateSQLFormat);
        strDate = checkAndConvertSQLFormat(DateSQLFormat);
        System.out.println("DateSQLFormat 3 "+DateSQLFormat);
        int dateInt[] = getDateAsInt(strDate);
        Date date = new Date(dateInt[2]-1900,dateInt[1]-1,dateInt[0]);
        jXDateCurs.setDate(date);
        arrayRate = myParent.getCountriesT().getCurentRate(DateSQLFormat);
        
        if(arrayRate.size()<2) {
            if(myParent.getDocFacadeType()!=NAREZDANE_ZA_PREHVYRQNE)
                jLabelInfoCurs.setVisible(true);
        } else {
            jLabelInfoCurs.setVisible(false);
            rate=1;
        }
        
        if(isNew) {
            jTextFieldConNom.grabFocus();
        } else {
            jTable1.changeSelection(0,0,false,false);
        }
        if(myParent.getDocFacadeType()==BRAK ||myParent.getDocFacadeType()==PROTOKOL_LIPSA) {
            TransferFocusDocTypeIsBrak();
        }
        repaintComp();
        
        setKeyListenerInserEdit();
        if(isNew) ((docLineTableModel) jTable1.getModel()).removeRow(0);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();
        jPanelHead = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabelDocType = new javax.swing.JLabel();
        jTextFieldNomerDoc = new javax.swing.JTextField();
        jXDateDocument = new org.jdesktop.swingx.JXDatePicker();
        jLabel24 = new javax.swing.JLabel();
        jXDateCurs = new org.jdesktop.swingx.JXDatePicker();
        jLabelLevel = new javax.swing.JLabel();
        jPanelContragent = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jTextFieldContrName = new javax.swing.JTextField();
        jTextFieldBulstat = new javax.swing.JTextField();
        jTextFieldDanNomer = new javax.swing.JTextField();
        jTextFieldZadylveniq = new javax.swing.JTextField();
        jTextFieldConNom = new javax.swing.JTextField();
        jTextFieldAddress = new javax.swing.JTextField();
        jTextFieldContTel = new javax.swing.JTextField();
        jTextFieldProsro4vane = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jTextFieldContrMOL = new javax.swing.JTextField();
        jPanelObekt = new javax.swing.JPanel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jTextFieldObektNo = new javax.swing.JTextField();
        jTextFieldObektName = new javax.swing.JTextField();
        jTextFieldObektTel = new javax.swing.JTextField();
        jTextFieldObektAddress = new javax.swing.JTextField();
        jPanel4 = new javax.swing.JPanel();
        jLabel16 = new javax.swing.JLabel();
        jTextFieldDistr = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        jTextFieldDeliver = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        jXDateDeliver = new org.jdesktop.swingx.JXDatePicker();
        jPanelDocLine = new javax.swing.JPanel();
        jScrollEdinInsert = new javax.swing.JScrollPane();
        jPanelInsertEdit = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jPanelPrice = new javax.swing.JPanel();
        jLabel19 = new javax.swing.JLabel();
        jComboBoxVidPla6tane = new javax.swing.JComboBox();
        jLabel20 = new javax.swing.JLabel();
        jXDatePay = new org.jdesktop.swingx.JXDatePicker();
        jPanel5 = new javax.swing.JPanel();
        jLabelDDSOsnovaText = new javax.swing.JLabel();
        jLabelAllDDSText = new javax.swing.JLabel();
        jLabelDDSOsnova = new javax.swing.JLabel();
        jLabelAllDDS = new javax.swing.JLabel();
        jLabel28 = new javax.swing.JLabel();
        jLabelAllTotal = new javax.swing.JLabel();
        jButtonCreateDocFacade = new javax.swing.JButton();
        jPanel6 = new javax.swing.JPanel();
        jLabel30 = new javax.swing.JLabel();
        jLabelAllBrojProduct = new javax.swing.JLabel();
        jLabel32 = new javax.swing.JLabel();
        jPanelPriceList = new javax.swing.JPanel();
        jLabelPricelist_1 = new javax.swing.JLabel();
        jLabelPricelist_2 = new javax.swing.JLabel();
        jLabelPrice_1 = new javax.swing.JLabel();
        jLabelPrice_2 = new javax.swing.JLabel();
        jLabel25 = new javax.swing.JLabel();
        jLabelValuta = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jSplitPane1 = new javax.swing.JSplitPane();
        jPanelComent = new javax.swing.JPanel();
        jLabel23 = new javax.swing.JLabel();
        jTextFieldComment = new javax.swing.JTextField();
        jPanelUser = new javax.swing.JPanel();
        jLabel21 = new javax.swing.JLabel();
        jTextFieldUserEdit = new javax.swing.JTextField();
        jLabel22 = new javax.swing.JLabel();
        jTextFieldUserLastEdit = new javax.swing.JTextField();
        jButton2 = new javax.swing.JButton();
        jButtonAnulirane = new javax.swing.JButton();
        jButtonDellDocFadade = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jPanelStorageINOUT = new javax.swing.JPanel();
        jLabel26 = new javax.swing.JLabel();
        jTextFieldStorageFROM = new javax.swing.JTextField();
        jLabel27 = new javax.swing.JLabel();
        jTextFieldStorageTO = new javax.swing.JTextField();
        jLabel29 = new javax.swing.JLabel();
        jLabelInfoCurs = new javax.swing.JLabel();
        jButtonClose = new javax.swing.JButton();
        jPanelCreateFacturi = new javax.swing.JPanel();
        jCheckBox1 = new javax.swing.JCheckBox();
        jButton1 = new javax.swing.JButton();
        jButtonPrint = new javax.swing.JButton();

        getContentPane().setLayout(null);

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
        });

        jPanel2.setLayout(null);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(400, 300));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder("\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jPanel3.setPreferredSize(new java.awt.Dimension(230, 70));
        jButtonToBegin.setText("<<");
        jButtonToBegin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToBeginActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonToBegin);

        jButtonOneRowM.setText("<");
        jButtonOneRowM.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowMActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonOneRowM);

        jButtonOneRowP.setText(">");
        jButtonOneRowP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowPActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonOneRowP);

        jButtonToEnd.setText(">>");
        jButtonToEnd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToEndActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonToEnd);

        jPanel2.add(jPanel3);
        jPanel3.setBounds(490, 0, 240, 70);

        jPanelHead.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanelHead.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel1.setText("\u041d\u043e\u043c\u0435\u0440 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442:");
        jPanelHead.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 10, -1, -1));

        jLabel2.setText("\u0414\u0430\u0442\u0430:");
        jPanelHead.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 30, -1, -1));

        jLabelDocType.setFont(new java.awt.Font("Tahoma", 1, 16));
        jLabelDocType.setText("\u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b \u0417\u0410 \u041b\u0418\u041f\u0421\u0410");
        jPanelHead.add(jLabelDocType, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 10, -1, -1));

        jTextFieldNomerDoc.setNextFocusableComponent(jTextFieldConNom);
        jTextFieldNomerDoc.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextFieldNomerDoc.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldNomerDocFocusLost(evt);
            }
        });
        jTextFieldNomerDoc.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldNomerDocKeyPressed(evt);
            }
        });

        jPanelHead.add(jTextFieldNomerDoc, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 10, 110, -1));

        jXDateDocument.setFont(new java.awt.Font("Times New Roman", 0, 12));
        jXDateDocument.setMinimumSize(new java.awt.Dimension(127, 20));
        jXDateDocument.setPreferredSize(new java.awt.Dimension(127, 20));
        jPanelHead.add(jXDateDocument, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 30, -1, -1));

        jLabel24.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043a\u0443\u0440\u0441:");
        jPanelHead.add(jLabel24, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 30, -1, -1));

        jXDateCurs.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jXDateCursActionPerformed(evt);
            }
        });

        jPanelHead.add(jXDateCurs, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 30, -1, -1));

        jLabelLevel.setForeground(new java.awt.Color(255, 51, 51));
        jLabelLevel.setText("koko");
        jPanelHead.add(jLabelLevel, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 40, -1, -1));

        jPanel2.add(jPanelHead);
        jPanelHead.setBounds(0, 0, 490, 70);

        jPanelContragent.setLayout(new java.awt.GridBagLayout());

        jPanelContragent.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel3.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 No:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 5, 5);
        jPanelContragent.add(jLabel3, gridBagConstraints);

        jLabel4.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 \u0438\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 5, 5);
        jPanelContragent.add(jLabel4, gridBagConstraints);

        jLabel5.setText("\u0411\u0443\u043b\u0441\u0442\u0430\u0442:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 5, 5);
        jPanelContragent.add(jLabel5, gridBagConstraints);

        jLabel6.setText("\u0414\u0430\u043d.No:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 5, 5);
        jPanelContragent.add(jLabel6, gridBagConstraints);

        jLabel7.setText("\u0437\u0430\u0434\u044a\u043b\u0436\u0435\u043d\u0438\u044f:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 5, 5);
        jPanelContragent.add(jLabel7, gridBagConstraints);

        jLabel8.setText("\u0410\u0434\u0440\u0435\u0441:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 5, 5);
        jPanelContragent.add(jLabel8, gridBagConstraints);

        jLabel9.setText("\u0422\u0435\u043b:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 5, 5);
        jPanelContragent.add(jLabel9, gridBagConstraints);

        jLabel10.setText("\u041f\u0440\u043e\u0441\u0440\u043e\u0447\u0432\u0430\u043d\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 5, 5);
        jPanelContragent.add(jLabel10, gridBagConstraints);

        jTextFieldContrName.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldContrName.setNextFocusableComponent(jTextFieldBulstat);
        jTextFieldContrName.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextFieldContrName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldContrNameKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jPanelContragent.add(jTextFieldContrName, gridBagConstraints);

        jTextFieldBulstat.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldBulstat.setNextFocusableComponent(jTextFieldAddress);
        jTextFieldBulstat.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextFieldBulstat.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldBulstatKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelContragent.add(jTextFieldBulstat, gridBagConstraints);

        jTextFieldDanNomer.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldDanNomer.setNextFocusableComponent(jTextFieldContrMOL);
        jTextFieldDanNomer.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextFieldDanNomer.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDanNomerKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelContragent.add(jTextFieldDanNomer, gridBagConstraints);

        jTextFieldZadylveniq.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldZadylveniq.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextFieldZadylveniq.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldZadylveniqKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelContragent.add(jTextFieldZadylveniq, gridBagConstraints);

        jTextFieldConNom.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldConNom.setNextFocusableComponent(jTextFieldContrName);
        jTextFieldConNom.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextFieldConNom.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldConNomKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jPanelContragent.add(jTextFieldConNom, gridBagConstraints);

        jTextFieldAddress.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldAddress.setNextFocusableComponent(jTextFieldDanNomer);
        jTextFieldAddress.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextFieldAddress.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldAddressKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelContragent.add(jTextFieldAddress, gridBagConstraints);

        jTextFieldContTel.setMinimumSize(new java.awt.Dimension(120, 20));
        jTextFieldContTel.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextFieldContTel.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldContTelKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 20);
        jPanelContragent.add(jTextFieldContTel, gridBagConstraints);

        jTextFieldProsro4vane.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldProsro4vane.setPreferredSize(new java.awt.Dimension(150, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelContragent.add(jTextFieldProsro4vane, gridBagConstraints);

        jLabel15.setText("\u041c\u041e\u041b \u0438\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 5, 5);
        jPanelContragent.add(jLabel15, gridBagConstraints);

        jTextFieldContrMOL.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldContrMOL.setNextFocusableComponent(jTextFieldObektNo);
        jTextFieldContrMOL.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextFieldContrMOL.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldContrMOLKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelContragent.add(jTextFieldContrMOL, gridBagConstraints);

        jPanel2.add(jPanelContragent);
        jPanelContragent.setBounds(0, 70, 730, 120);

        jPanelObekt.setLayout(new java.awt.GridBagLayout());

        jPanelObekt.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel11.setText("\u041e\u0431\u0435\u043a\u0442 No:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 5, 5);
        jPanelObekt.add(jLabel11, gridBagConstraints);

        jLabel12.setText("\u0422\u0435\u043b.:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 10, 5);
        jPanelObekt.add(jLabel12, gridBagConstraints);

        jLabel13.setText("\u0418\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 10, 5);
        jPanelObekt.add(jLabel13, gridBagConstraints);

        jLabel14.setText("\u0410\u0434\u0440\u0435\u0441:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 5, 5);
        jPanelObekt.add(jLabel14, gridBagConstraints);

        jTextFieldObektNo.setMinimumSize(new java.awt.Dimension(120, 20));
        jTextFieldObektNo.setNextFocusableComponent(jTextFieldObektAddress);
        jTextFieldObektNo.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextFieldObektNo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldObektNoKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jPanelObekt.add(jTextFieldObektNo, gridBagConstraints);

        jTextFieldObektName.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldObektName.setNextFocusableComponent(jTextFieldDistr);
        jTextFieldObektName.setPreferredSize(new java.awt.Dimension(350, 20));
        jTextFieldObektName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldObektNameKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 10, 5);
        jPanelObekt.add(jTextFieldObektName, gridBagConstraints);

        jTextFieldObektTel.setMinimumSize(new java.awt.Dimension(120, 20));
        jTextFieldObektTel.setNextFocusableComponent(jTextFieldObektName);
        jTextFieldObektTel.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextFieldObektTel.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldObektTelKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 10, 20);
        jPanelObekt.add(jTextFieldObektTel, gridBagConstraints);

        jTextFieldObektAddress.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldObektAddress.setNextFocusableComponent(jTextFieldObektTel);
        jTextFieldObektAddress.setPreferredSize(new java.awt.Dimension(350, 20));
        jTextFieldObektAddress.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldObektAddressKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 20);
        jPanelObekt.add(jTextFieldObektAddress, gridBagConstraints);

        jPanel2.add(jPanelObekt);
        jPanelObekt.setBounds(0, 190, 730, 70);

        jPanel4.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 2, 11));

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(446, 60));
        jLabel16.setText("\u0414\u0438\u0441\u0442\u0440.:");
        jPanel4.add(jLabel16);

        jTextFieldDistr.setNextFocusableComponent(jTextFieldDeliver);
        jTextFieldDistr.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldDistr.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDistrKeyPressed(evt);
            }
        });

        jPanel4.add(jTextFieldDistr);

        jLabel17.setText("\u0414\u043e\u0441\u0442.:");
        jPanel4.add(jLabel17);

        jTextFieldDeliver.setNextFocusableComponent(jXDateDeliver);
        jTextFieldDeliver.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldDeliver.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDeliverKeyPressed(evt);
            }
        });

        jPanel4.add(jTextFieldDeliver);

        jLabel18.setText("\u0414\u0430\u0442\u0430 :");
        jPanel4.add(jLabel18);

        jXDateDeliver.setPreferredSize(new java.awt.Dimension(100, 24));
        jPanel4.add(jXDateDeliver);

        jPanel2.add(jPanel4);
        jPanel4.setBounds(0, 260, 430, 60);

        jPanelDocLine.setLayout(new java.awt.BorderLayout());

        jPanelDocLine.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollEdinInsert.setHorizontalScrollBarPolicy(javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
        jScrollEdinInsert.setVerticalScrollBarPolicy(javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER);
        jScrollEdinInsert.setMinimumSize(new java.awt.Dimension(23, 40));
        jScrollEdinInsert.setPreferredSize(new java.awt.Dimension(100, 40));
        jPanelInsertEdit.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT, 0, 1));

        jScrollEdinInsert.setViewportView(jPanelInsertEdit);

        jPanelDocLine.add(jScrollEdinInsert, java.awt.BorderLayout.SOUTH);

        jScrollPane2.setFocusable(false);
        jScrollPane2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jScrollPane2MouseClicked(evt);
            }
        });

        jPanelDocLine.add(jScrollPane2, java.awt.BorderLayout.CENTER);

        jPanel2.add(jPanelDocLine);
        jPanelDocLine.setBounds(0, 320, 730, 190);

        jPanelPrice.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT, 5, 15));

        jPanelPrice.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel19.setText("\u0412\u0438\u0434 \u043f\u043b\u0430\u0449\u0430\u043d\u0435:");
        jPanelPrice.add(jLabel19);

        jComboBoxVidPla6tane.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "\u041e\u0422\u041b\u041e\u0416\u0415\u041d\u041e", "\u0411\u0420\u041e\u0419", "\u0411\u0410\u041d\u041a\u0410", "\u0427\u0410\u0421\u0422\u0418\u0427\u041d\u041e" }));
        jComboBoxVidPla6tane.setPreferredSize(new java.awt.Dimension(100, 20));
        jPanelPrice.add(jComboBoxVidPla6tane);

        jLabel20.setText("\u0414\u0430\u0442\u0430:");
        jPanelPrice.add(jLabel20);

        jPanelPrice.add(jXDatePay);

        jPanel2.add(jPanelPrice);
        jPanelPrice.setBounds(0, 510, 360, 60);

        jPanel5.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel5.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabelDDSOsnovaText.setText("\u0414\u0430\u043d\u044a\u0447\u043d\u0430 \u043e\u0441\u043d\u043e\u0432\u0430:");
        jPanel5.add(jLabelDDSOsnovaText, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 30, -1, -1));

        jLabelAllDDSText.setText("\u0414\u0414\u0421:");
        jPanel5.add(jLabelAllDDSText, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 10, -1, -1));

        jLabelDDSOsnova.setText("0.0");
        jPanel5.add(jLabelDDSOsnova, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 30, -1, -1));

        jLabelAllDDS.setText("0.0");
        jPanel5.add(jLabelAllDDS, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 10, -1, -1));

        jLabel28.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel28.setText("\u041e\u0411\u0429\u041e");
        jPanel5.add(jLabel28, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 10, -1, -1));

        jLabelAllTotal.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabelAllTotal.setText("0.0");
        jPanel5.add(jLabelAllTotal, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 10, -1, -1));

        jPanel2.add(jPanel5);
        jPanel5.setBounds(357, 510, 370, 60);

        jButtonCreateDocFacade.setText("\u0421\u044a\u0437\u0434\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442");
        jButtonCreateDocFacade.setNextFocusableComponent(jButtonClose);
        jButtonCreateDocFacade.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCreateDocFacadeActionPerformed(evt);
            }
        });

        jPanel2.add(jButtonCreateDocFacade);
        jButtonCreateDocFacade.setBounds(580, 620, 150, 23);

        jPanel6.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel6.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel30.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u0438:");
        jPanel6.add(jLabel30, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, -1, -1));

        jLabelAllBrojProduct.setText("00");
        jPanel6.add(jLabelAllBrojProduct, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 10, -1, -1));

        jLabel32.setText("000");
        jPanel6.add(jLabel32, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 40, -1, -1));

        jPanelPriceList.setLayout(new java.awt.GridBagLayout());

        jPanelPriceList.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 1:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelPriceList.add(jLabelPricelist_1, gridBagConstraints);

        jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 2:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelPriceList.add(jLabelPricelist_2, gridBagConstraints);

        jLabelPrice_1.setText("1");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelPriceList.add(jLabelPrice_1, gridBagConstraints);

        jLabelPrice_2.setText("1");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelPriceList.add(jLabelPrice_2, gridBagConstraints);

        jLabel25.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelPriceList.add(jLabel25, gridBagConstraints);

        jLabelValuta.setText("\u043b\u0432.");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelPriceList.add(jLabelValuta, gridBagConstraints);

        jSeparator1.setOrientation(javax.swing.SwingConstants.VERTICAL);
        jSeparator1.setPreferredSize(new java.awt.Dimension(2, 30));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridheight = 2;
        gridBagConstraints.insets = new java.awt.Insets(0, 5, 5, 5);
        jPanelPriceList.add(jSeparator1, gridBagConstraints);

        jPanel6.add(jPanelPriceList, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 0, 190, 60));

        jPanel2.add(jPanel6);
        jPanel6.setBounds(430, 260, 300, 60);

        jSplitPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jSplitPane1.setDividerLocation(0);
        jSplitPane1.setDividerSize(11);
        jSplitPane1.setOrientation(javax.swing.JSplitPane.VERTICAL_SPLIT);
        jSplitPane1.setOneTouchExpandable(true);
        jSplitPane1.setPreferredSize(new java.awt.Dimension(200, 50));
        jPanelComent.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel23.setText("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440:");

        jTextFieldComment.setPreferredSize(new java.awt.Dimension(300, 20));

        org.jdesktop.layout.GroupLayout jPanelComentLayout = new org.jdesktop.layout.GroupLayout(jPanelComent);
        jPanelComent.setLayout(jPanelComentLayout);
        jPanelComentLayout.setHorizontalGroup(
            jPanelComentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelComentLayout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel23)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextFieldComment, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 645, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanelComentLayout.setVerticalGroup(
            jPanelComentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelComentLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelComentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel23)
                    .add(jTextFieldComment, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jSplitPane1.setLeftComponent(jPanelComent);

        jPanelUser.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel21.setText("\u0418\u0437\u0434\u0430\u043b:");

        jTextFieldUserEdit.setPreferredSize(new java.awt.Dimension(80, 20));

        jLabel22.setText("\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430 \u043f\u0440\u0435\u0440\u0430\u0431\u043e\u0442\u043a\u0430:");

        jTextFieldUserLastEdit.setPreferredSize(new java.awt.Dimension(100, 20));

        org.jdesktop.layout.GroupLayout jPanelUserLayout = new org.jdesktop.layout.GroupLayout(jPanelUser);
        jPanelUser.setLayout(jPanelUserLayout);
        jPanelUserLayout.setHorizontalGroup(
            jPanelUserLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelUserLayout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel21)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextFieldUserEdit, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 163, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel22)
                .add(89, 89, 89)
                .add(jTextFieldUserLastEdit, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 165, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(140, 140, 140))
        );
        jPanelUserLayout.setVerticalGroup(
            jPanelUserLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelUserLayout.createSequentialGroup()
                .add(8, 8, 8)
                .add(jPanelUserLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel21)
                    .add(jTextFieldUserEdit, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 18, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel22)
                    .add(jTextFieldUserLastEdit, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 18, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(23, 23, 23))
        );
        jSplitPane1.setRightComponent(jPanelUser);

        jPanel2.add(jSplitPane1);
        jSplitPane1.setBounds(0, 570, 730, 50);

        jButton2.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u043b\u0438\u043d\u0438\u044f");
        jButton2.setNextFocusableComponent(jButton3);
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton2);
        jButton2.setBounds(10, 620, 150, 23);

        jButtonAnulirane.setText("\u0410\u043d\u0443\u043b\u0438\u0440\u0430\u043d\u0435");
        jButtonAnulirane.setNextFocusableComponent(jButtonDellDocFadade);
        jButtonAnulirane.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonAnuliraneActionPerformed(evt);
            }
        });

        jPanel2.add(jButtonAnulirane);
        jButtonAnulirane.setBounds(330, 620, 87, 23);

        jButtonDellDocFadade.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442");
        jButtonDellDocFadade.setNextFocusableComponent(jButtonCreateDocFacade);
        jButtonDellDocFadade.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDellDocFadadeActionPerformed(evt);
            }
        });

        jPanel2.add(jButtonDellDocFadade);
        jButtonDellDocFadade.setBounds(420, 620, 153, 23);

        jButton3.setText("\u0414\u043e\u0431\u0430\u0432\u044f\u043d\u0435 \u043d\u0430 \u043b\u0438\u043d\u0438\u044f");
        jButton3.setEnabled(false);
        jButton3.setNextFocusableComponent(jButtonAnulirane);
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton3);
        jButton3.setBounds(160, 620, 131, 23);

        jPanelStorageINOUT.setLayout(new java.awt.GridBagLayout());

        jPanelStorageINOUT.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel26.setText("\u041e\u0422:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanelStorageINOUT.add(jLabel26, gridBagConstraints);

        jTextFieldStorageFROM.setEditable(false);
        jTextFieldStorageFROM.setFont(new java.awt.Font("Tahoma", 1, 11));
        jTextFieldStorageFROM.setPreferredSize(new java.awt.Dimension(40, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanelStorageINOUT.add(jTextFieldStorageFROM, gridBagConstraints);

        jLabel27.setText("\u041a\u042a\u041c:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanelStorageINOUT.add(jLabel27, gridBagConstraints);

        jTextFieldStorageTO.setFont(new java.awt.Font("Tahoma", 1, 11));
        jTextFieldStorageTO.setPreferredSize(new java.awt.Dimension(40, 20));
        jTextFieldStorageTO.setInputVerifier(new imakante.com.InputIntegerVerifier());
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanelStorageINOUT.add(jTextFieldStorageTO, gridBagConstraints);

        jLabel29.setText("\u0421\u043a\u043b\u0430\u0434\u043e\u0432\u0435:");
        jPanelStorageINOUT.add(jLabel29, new java.awt.GridBagConstraints());

        jPanel2.add(jPanelStorageINOUT);
        jPanelStorageINOUT.setBounds(0, 70, 300, 50);

        jLabelInfoCurs.setForeground(new java.awt.Color(255, 0, 51));
        jLabelInfoCurs.setText("\u041d\u0435 \u0435 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0430 \u0434\u0430\u0442\u0430!");
        jPanel2.add(jLabelInfoCurs);
        jLabelInfoCurs.setBounds(560, 680, 160, 14);

        jButtonClose.setFont(new java.awt.Font("Tahoma", 1, 11));
        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButtonClose.setPreferredSize(new java.awt.Dimension(100, 23));
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel2.add(jButtonClose);
        jButtonClose.setBounds(10, 680, 100, 23);

        jPanelCreateFacturi.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 5, 0));

        jPanelCreateFacturi.setBorder(javax.swing.BorderFactory.createTitledBorder("\u0417\u0430 \u0444\u0430\u043a\u0442\u0443\u0440\u0430"));
        jCheckBox1.setText("\u0417\u0430 \u0441\u044a\u0437\u0434\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0444\u0430\u043a\u0442\u0443\u0440\u0430");
        jCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCheckBox1ActionPerformed(evt);
            }
        });

        jPanelCreateFacturi.add(jCheckBox1);

        jButton1.setText("\u0421\u044a\u0437\u0434\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0444\u0430\u043a\u0442\u0443\u0440\u0430...");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanelCreateFacturi.add(jButton1);

        jPanel2.add(jPanelCreateFacturi);
        jPanelCreateFacturi.setBounds(170, 650, 343, 53);

        jButtonPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jButtonPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrintActionPerformed(evt);
                jButton4ActionPerformed(evt);
            }
        });

        jPanel2.add(jButtonPrint);
        jButtonPrint.setBounds(580, 650, 140, 23);

        getContentPane().add(jPanel2);
        jPanel2.setBounds(0, 0, 730, 710);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        if(isDocFacadeCreate) {
            myParent.loadPrintReportJasper(myParent.getDocFacadeType(),myParent.getID_DocFacade(),myParent.getSelectedRow());
        } else {
            //============================
            checkForDiffWithOutSaveInDB();
            
            int rowCount = jTable1.getRowCount();
            boolean withRow = false;
            boolean restDocLine =false;
            
            if(isNew) {
                
                
            } else {
                if(true)
                    if(rows.size()>0) {
                    int id_dl;
                    docLineArray d=null;
                    
                    for(int i=0; i< rowCount; i++) {
                        restDocLine= false;
                        for(int j=0; j < rows.size();j++) {
                            // ako sa ravni vry6tame starite
                            // ako ne iztrivame docLine
                            id_dl = (Integer) jTable1.getValueAt(i,12);
                            d = (docLineArray) rows.get(j);
                            if(id_dl==d.getID_DocLine()) {
                                restDocLine = true;
                                // vry6tane na starite stoinosti
                                myParent.getCountriesT().updateDocLine(d.getID_DocLine(),myParent.getID_DocFacade(),d.getID_PC(),
                                        d.getStorageOut(),d.getPricePiece(),d.getRateReduction(),
                                        d.getNumberOfProduct(),d.getDDS(),d.getPriceTotal(),
                                        d.getPriceList());
                                
                                deleteDocLine(i,withRow,false);
                                break;
                            }
                            
                        }
                        if(!restDocLine) {
                            deleteDocLine(i,withRow,true);
                            
                        }
                    }
                    }
                myParent.loadPrintReportJasper(myParent.getDocFacadeType(),myParent.getID_DocFacade(),myParent.getSelectedRow());
            }
            //==============================
            
        }
        
    }//GEN-LAST:event_jButtonPrintActionPerformed
    
    private void jTextFieldNomerDocFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNomerDocFocusLost
        myParent.setNumberDocFacade(jTextFieldNomerDoc.getText());
    }//GEN-LAST:event_jTextFieldNomerDocFocusLost
    
    private void jTextFieldZadylveniqKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldZadylveniqKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldZadylveniq.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldZadylveniqKeyPressed
    
    private void jTextFieldNomerDocKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldNomerDocKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldNomerDoc.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldNomerDocKeyPressed
    
    private void jXDateCursActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jXDateCursActionPerformed
        imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
        String strDate;
        strDate = String.valueOf(jXDateCurs.getDate().getDate());
        strDate += "/" + String.valueOf(jXDateCurs.getDate().getMonth()+1);
        strDate += "/" + String.valueOf(jXDateCurs.getDate().getYear()+1900);
        String DateSQLFormat = dateManip.convertDate(strDate);
        System.out.println("DATA -->>>" + DateSQLFormat);
        arrayRate = myParent.getCountriesT().getCurentRate(DateSQLFormat);
        if(arrayRate.size()<2) {
            
            jLabelInfoCurs.setVisible(true);
        } else {
            jLabelInfoCurs.setVisible(false);;
            rate=1;
        }
    }//GEN-LAST:event_jXDateCursActionPerformed
    
    private void jCheckBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCheckBox1ActionPerformed
        // proverka za ve4e syzdadena faktura ot tazi stokova razpiska
        int tmpInt = myParent.getCountriesT().getStatusConnection(0,myParent.getID_DocFacade());
        // ??????  if(tmpInt == 0) // ne e syzdavana faktura
        {
            
            if(jCheckBox1.isSelected()) {
                myParent.getArrayOfID_DF().add((Integer)myParent.getID_DocFacade());
                isCheckOne = true;
                tetstcount++;
                System.out.println(tetstcount);
            } else {
                if(myParent.getArrayOfID_DF().size()>0) {
                    for(int i=0; i < myParent.getArrayOfID_DF().size(); i++) {
                        int id_df = (Integer)myParent.getArrayOfID_DF().get(i);
                        if(id_df == myParent.getID_DocFacade()) {
                            myParent.getArrayOfID_DF().remove(i);
                        }
                    }
                    if(myParent.getArrayOfID_DF().size()>0) isCheckOne = false;
                } else isCheckOne=false;
                
            }
        }
    }//GEN-LAST:event_jCheckBox1ActionPerformed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        isSetDataInTable = false; // za noviq red , zadylzitelno trqbva da mine prez formata za izbor na produkt
        ((docLineTableModel) jTable1.getModel()).addRow(new docLineArray());
        ((docLineTableModel) jTable1.getModel()).enableCellEditable(0);
        // za pozvolqvane na tyrsene na produkt ot ime
        ((docLineTableModel) jTable1.getModel()).enableCellEditable(1);
        str="";
        
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        
        
        Thread t = new Thread(new Runnable() {
            public void run() {
                createArraysForFactura();
            }
        });
        
        t.start();
        
        
        
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButtonDellDocFadadeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDellDocFadadeActionPerformed
        if(!isNew) {
            cancellationDocFacade(myParent.getID_DocFacade(),IZTRIVANE);
            rollBackNalichnosti();
            myParent.refreshTable();
            JOptionPane.showMessageDialog(this,"\u0418\u0437\u0442\u0440\u0438\u0442");
        }
    }//GEN-LAST:event_jButtonDellDocFadadeActionPerformed
    
    private void jButtonAnuliraneActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonAnuliraneActionPerformed
        if(!isNew) {
            cancellationDocFacade(myParent.getID_DocFacade(),ANULIRANE);
            rollBackNalichnosti();
            myParent.refreshTable();
            JOptionPane.showMessageDialog(this,"\u0410\u043D\u0443\u043B\u0438\u0440\u0430\u043D");
        }
    }//GEN-LAST:event_jButtonAnuliraneActionPerformed
    private int removeRow =-1;
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        boolean withRow = true;
        boolean alsoInDb = true;
       
        if(isNew) {
            
            deleteDocLine(jTable1.getSelectedRow(),withRow,alsoInDb);
        } else {
            int id_dl = (Integer) jTable1.getValueAt(jTable1.getSelectedRow(),12);
            int id_pc=0;
            for(int i=0; i < rows.size();i++) {
                docLineArray d = (docLineArray) rows.get(i);
                if(d==null)
                {
                    JOptionPane.showMessageDialog(this,"Не може да бъде изтрит редът");
                    return;
                }
                if(id_dl == d.getID_DocLine()) {
                    id_pc=d.getID_PC();
                    removeRow = i;
                    break;
                }
            }
            
            rows = reBuildRowsHashMap( rows,removeRow);
            
            
            int storage = (Integer) jTable1.getValueAt(jTable1.getSelectedRow(),2);
            int nal = (Integer) jTable1.getValueAt(jTable1.getSelectedRow(),4);
            
            myParent.getCountriesT().returnProducts(id_pc,storage,nal,myParent.getDocFacadeLevel());
            myParent.getCountriesT().emptyReturnProducts(id_dl,nal,myParent.getDocFacadeLevel());
            myParent.getCountriesT().deleteDocLine(id_dl)   ;
            ((docLineTableModel)jTable1.getModel()).removeRow(jTable1.getSelectedRow());
            
        }
      calculateTotalPriceForDocument();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButtonCreateDocFacadeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCreateDocFacadeActionPerformed
        sales_main.isMakeDocByInputData=false;
        sales_main.dataIn=null;
        sales_main.dataOut=null;
        int id_df = myParent.getID_DocFacade();
        boolean tmpIsNew = isNew;
        checkForDiffWithOutSaveInDB();
           //clearAllVariables();
        createDocument(id_df,myParent.getDocFacadeType(),0);
        if(tmpIsNew) {
            myParent.setRow(myParent.getTableMaxRow()-1);
            myParent.setAllVariables();
        }
     
        repaintComp();
        myParent.setSelectedRow(myParent.getRow());
        JOptionPane.showMessageDialog(this,"\u0423\u0441\u043F\u0435\u0448\u0435\u043D \u0437\u0430\u043F\u0438\u0441");
        //  int maxrowtable = myParent.getTableMaxRow();
        //  myParent.setSelectedRow(maxrowtable-1);
        isDocFacadeCreate = true;
        
    }//GEN-LAST:event_jButtonCreateDocFacadeActionPerformed
    
    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        //    System.exit(-1);
        System.out.println("Close Windows fromm XX");
        
    }//GEN-LAST:event_formWindowClosed
    
    private void jScrollPane2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jScrollPane2MouseClicked
// TODO add your handling code here:
        
    }//GEN-LAST:event_jScrollPane2MouseClicked
    
    private void jTextFieldDeliverKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDeliverKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextDistDeliv(jTextFieldDeliver.getText(),selectDataOfDocFacade.DELIVER);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.DISTRIBUTOR_DELIVER,rs1,false))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,false);
            jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
            //  repainObektData(myParent.getID_Obekt());
            TransferFocusFromDeliver();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextDistDeliv(jTextFieldDeliver.getText(),selectDataOfDocFacade.DELIVER);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.DISTRIBUTOR_DELIVER,rs1,false))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,false);
            jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
            //  repainObektData(myParent.getID_Obekt());
            TransferFocusFromDeliver();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextDistDeliv(jTextFieldDeliver.getText(),selectDataOfDocFacade.DELIVER);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.DISTRIBUTOR_DELIVER,rs1,false))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,false);
            jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
            //  repainObektData(myParent.getID_Obekt());
            TransferFocusFromDeliver();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextDistDeliv(jTextFieldDeliver.getText(),selectDataOfDocFacade.DELIVER);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.DISTRIBUTOR_DELIVER,rs1,false))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,false);
            jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
            //  repainObektData(myParent.getID_Obekt());
            TransferFocusFromDeliver();
            
        }
    }//GEN-LAST:event_jTextFieldDeliverKeyPressed
    
    private void jTextFieldDistrKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDistrKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextDistDeliv(jTextFieldDistr.getText(),selectDataOfDocFacade.DISTRIBUTOR);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.DISTRIBUTOR_DELIVER,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,true);
            jTextFieldDistr.setText(myParent.getDistributorDocFacade());
            //  repainObektData(myParent.getID_Obekt());
            TransferFocusFromDitributor();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextDistDeliv(jTextFieldDistr.getText(),selectDataOfDocFacade.DISTRIBUTOR);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.DISTRIBUTOR_DELIVER,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,true);
            jTextFieldDistr.setText(myParent.getDistributorDocFacade());
            // repainObektData(myParent.getID_Obekt());
            TransferFocusFromDitributor();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextDistDeliv(jTextFieldDistr.getText(),selectDataOfDocFacade.DISTRIBUTOR);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.DISTRIBUTOR_DELIVER,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,true);
            jTextFieldDistr.setText(myParent.getDistributorDocFacade());
            //  repainObektData(myParent.getID_Obekt());
            TransferFocusFromDitributor();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextDistDeliv(jTextFieldDistr.getText(),selectDataOfDocFacade.DISTRIBUTOR);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.DISTRIBUTOR_DELIVER,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,true);
            jTextFieldDistr.setText(myParent.getDistributorDocFacade());
            //  repainObektData(myParent.getID_Obekt());
            TransferFocusFromDitributor();
        }
    }//GEN-LAST:event_jTextFieldDistrKeyPressed
    
    private void jTextFieldObektTelKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldObektTelKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektTel.getText(),OBEKT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_TEL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_TEL,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextObekt(jTextFieldObektTel.getText(),OBEKT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_TEL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_TEL,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextObekt(jTextFieldObektTel.getText(),OBEKT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_TEL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_TEL,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektTel.getText(),OBEKT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_TEL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_TEL,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
            
        }
        
    }//GEN-LAST:event_jTextFieldObektTelKeyPressed
    
    private void jTextFieldObektAddressKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldObektAddressKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektAddress.getText(),OBEKT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_ADDRESS,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_ADDRESS,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextObekt(jTextFieldObektAddress.getText(),OBEKT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_ADDRESS,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_ADDRESS,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextObekt(jTextFieldObektAddress.getText(),OBEKT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_ADDRESS,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_ADDRESS,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektAddress.getText(),OBEKT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_ADDRESS,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_ADDRESS,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
            
        }
    }//GEN-LAST:event_jTextFieldObektAddressKeyPressed
    
    private void jTextFieldObektNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldObektNameKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektName.getText(),OBEKT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_NAME,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NAME,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextObekt(jTextFieldObektName.getText(),OBEKT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_NAME,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NAME,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextObekt(jTextFieldObektName.getText(),OBEKT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_NAME,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NAME,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektName.getText(),OBEKT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_NAME,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NAME,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
            
        }
    }//GEN-LAST:event_jTextFieldObektNameKeyPressed
    
    private void jTextFieldObektNoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldObektNoKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektNo.getText(),OBEKT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NO,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextObekt(jTextFieldObektNo.getText(),OBEKT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NO,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextObekt(jTextFieldObektNo.getText(),OBEKT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NO,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektNo.getText(),OBEKT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.OBEKT_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NO,false);
            repainObektData(myParent.getID_Obekt());
            TransferFocusFromObekt();
        }
        
        
        
    }//GEN-LAST:event_jTextFieldObektNoKeyPressed
    
    private void jTextFieldContTelKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldContTelKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContTel.getText(),CONTARGENT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_TEL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_TEL,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldContTel.getText(),CONTARGENT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_TEL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_TEL,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldContTel.getText(),CONTARGENT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_TEL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_TEL,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContTel.getText(),CONTARGENT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_TEL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_TEL,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
    /*     if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER) {
         jTextFieldContTel.transferFocus();
         }
        if(jTextFieldObektNo.isVisible())
        {
          jTextFieldObektNo.grabFocus();
        }
        else
        {
          jTextFieldDistr.grabFocus();
        }*/
    }//GEN-LAST:event_jTextFieldContTelKeyPressed
    
    private void jTextFieldContrMOLKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldContrMOLKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContrMOL.getText(),CONTARGENT_MOL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_MOL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_MOL,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldContrMOL.getText(),CONTARGENT_MOL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_MOL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_MOL,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldContrMOL.getText(),CONTARGENT_MOL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_MOL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_MOL,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContrMOL.getText(),CONTARGENT_MOL);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_MOL,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_MOL,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
    /*    if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER) {
            jTextFieldContrMOL.transferFocus();
        }
        if(jTextFieldObektNo.isVisible())
        {
          jTextFieldObektNo.grabFocus();
        }
        else
        {
          jTextFieldDistr.grabFocus();
        }*/
    }//GEN-LAST:event_jTextFieldContrMOLKeyPressed
    
    private void jTextFieldAddressKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldAddressKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldAddress.getText(),CONTARGENT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_ADDRESS,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_ADDRESS,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldAddress.getText(),CONTARGENT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_ADDRESS,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_ADDRESS,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldAddress.getText(),CONTARGENT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_ADDRESS,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_ADDRESS,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldAddress.getText(),CONTARGENT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_ADDRESS,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_ADDRESS,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
   /*     if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            if(jTextFieldBulstat.getText().equals("")){
                jTextFieldBulstat.grabFocus();
            } else{
    //---------------------
                if(jPanelObekt.isVisible())
                    {
                      jTextFieldObektNo.grabFocus();
                    }
                    else
                    {
                      jTextFieldDistr.grabFocus();
                    }
    //----------------------
            }
        }*/
        
    }//GEN-LAST:event_jTextFieldAddressKeyPressed
    
    private void jTextFieldContrNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldContrNameKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContrName.getText(),CONTARGENT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_NAME,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NAME,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldContrName.getText(),CONTARGENT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_NAME,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NAME,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldContrName.getText(),CONTARGENT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_NAME,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NAME,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContrName.getText(),CONTARGENT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_NAME,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NAME,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
   /*     if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            if(jTextFieldContrName.getText().equals("")){
                jTextFieldContrName.grabFocus();
            } else{
        //---------------------
                if(jPanelObekt.isVisible())
                    {
                      jTextFieldObektNo.grabFocus();
                    }
                    else
                    {
                      jTextFieldDistr.grabFocus();
                    }
        //----------------------
            }
        }*/
        
    }//GEN-LAST:event_jTextFieldContrNameKeyPressed
    
    private void jTextFieldDanNomerKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDanNomerKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldDanNomer.getText(),CONTARGENT_DAN_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_DAN_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_DAN_NO,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldDanNomer.getText(),CONTARGENT_DAN_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_DAN_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_DAN_NO,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldDanNomer.getText(),CONTARGENT_DAN_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_DAN_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_DAN_NO,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldDanNomer.getText(),CONTARGENT_DAN_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_DAN_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_DAN_NO,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
  /*      if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldDanNomer.transferFocus();
        }
        if(jTextFieldObektNo.isVisible())
        {
          jTextFieldObektNo.requestFocus();
        }
        else
        {
          jTextFieldDistr.requestFocus();
        }*/
    }//GEN-LAST:event_jTextFieldDanNomerKeyPressed
    
    private void jTextFieldBulstatKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldBulstatKeyPressed
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldBulstat.getText(),CONTARGENT_BULSTAT);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_BULSTAT,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_BULSTAT,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldBulstat.getText(),CONTARGENT_BULSTAT);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_BULSTAT,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_BULSTAT,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldBulstat.getText(),CONTARGENT_BULSTAT);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_BULSTAT,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_BULSTAT,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldBulstat.getText(),CONTARGENT_BULSTAT);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_BULSTAT,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_BULSTAT,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
  /*      if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
             if(jTextFieldBulstat.getText().equals("")){
                jTextFieldBulstat.grabFocus();
            } else{
        //---------------------
                if(jTextFieldObektNo.isVisible())
                    {
                      jTextFieldObektNo.grabFocus();
                    }
                    else
                    {
                      jTextFieldDistr.grabFocus();
                    }
        //----------------------
            }
        }*/
        
    }//GEN-LAST:event_jTextFieldBulstatKeyPressed
    
    private void jTextFieldConNomKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldConNomKeyPressed
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldConNom.getText(),CONTARGENT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NO,false);
            
            repainContragentData(myParent.getID_Contragent());
            this.requestFocus();
            TransferFocusFromCotragent();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldConNom.getText(),CONTARGENT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NO,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldConNom.getText(),CONTARGENT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NO,false);
            repainContragentData(myParent.getID_Contragent());
            TransferFocusFromCotragent();
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldConNom.getText(),CONTARGENT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            if(callOrNotCallDialog(checkForMoreRecord(rs1),selectDataOfDocFacade.CONTARGENT_NO,rs1,true))
                dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NO,false);
            
            repainContragentData(myParent.getID_Contragent());
            this.requestFocus();
            TransferFocusFromCotragent();
        }
        
        
        
   /*     if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER){
            if(jTextFieldConNom.getText().equals("")){
                jTextFieldConNom.grabFocus();
            } else{
        //---------------------
                if(jTextFieldObektNo.isVisible())
                    {
                      jTextFieldObektNo.grabFocus();
                    }
                    else
                    {
                      jTextFieldDistr.grabFocus();
                    }
        //----------------------
            }
        }*/
        
    }//GEN-LAST:event_jTextFieldConNomKeyPressed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        checkForDiffWithOutSaveInDB();
        
        int rowCount = jTable1.getRowCount();
        boolean withRow = false;
        boolean restDocLine =false;
        
        if(isNew) {
            
            for(int i=0; i< rowCount; i++) {
                deleteDocLine(i,withRow,true);
            }
            deleteDocFacade(myParent.getDocFacadeType(),Long.parseLong(myParent.getNumberDocFacade()),myParent.getDocFacadeLevel(),NON_DEFINE);
        } else {
            if(!isDocFacadeCreate)
                if(rows.size()>0) {
                int id_dl;
                docLineArray d=null;
                
                for(int i=0; i< rowCount; i++) {
                    restDocLine= false;
                    for(int j=0; j < rows.size();j++) {
                        // ako sa ravni vry6tame starite
                        // ako ne iztrivame docLine
                        id_dl = (Integer) jTable1.getValueAt(i,12);
                        d = (docLineArray) rows.get(j);
                        if(id_dl==d.getID_DocLine()) {
                            restDocLine = true;
                            // vry6tane na starite stoinosti
                            myParent.getCountriesT().updateDocLine(d.getID_DocLine(),myParent.getID_DocFacade(),d.getID_PC(),
                                    d.getStorageOut(),d.getPricePiece(),d.getRateReduction(),
                                    d.getNumberOfProduct(),d.getDDS(),d.getPriceTotal(),
                                    d.getPriceList());
                            
                            deleteDocLine(i,withRow,false);
                            break;
                        }
                        
                    }
                    if(!restDocLine) {
                        deleteDocLine(i,withRow,true);
                        
                    }
                }
                }
            // ako dokumenta "FAKTURI " e izganiriran ot stokovi razpiski i ne izkame da go zapisvame
            if(sales_main.isMakeDocByInputData) {
                int rCount = jTable1.getRowCount();
                for(int i=0; i< rCount;i++) {
                    int id_dl_ =(Integer) jTable1.getValueAt(i,12);
                    myParent.getCountriesT().deleteDocLine(id_dl_);
                }
                
                //myParent.getCountriesT().deleteRow(myParent.getID_DocFacade());
                deleteDocFacade(myParent.getDocFacadeType(),Long.parseLong(myParent.getNumberDocFacade()),myParent.getDocFacadeLevel(),USE_DOCUMENT);
                sales_main.isMakeDocByInputData=false;
                sales_main.dataIn=null;
                sales_main.dataOut=null;
                myParent.refreshTable();
            }
            
            
        }
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    private void jButtonOneRowPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowPActionPerformed
        repareDataFromDBAndJTable();
        myParent.mOneRowPlus();
        if(myParent.isAtEnd()) {
            jButtonToEnd.setEnabled(false);
            jButtonOneRowP.setEnabled(false);
            jButtonToEnd.repaint();
            jButtonOneRowP.repaint();
            
        }
        
        jButtonToBegin.setEnabled(true);
        jButtonOneRowM.setEnabled(true);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
        repaintComp();
    }//GEN-LAST:event_jButtonOneRowPActionPerformed
    
    private void jButtonToEndActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToEndActionPerformed
        // OK
        repareDataFromDBAndJTable();
        myParent.mTableEnd();
        jButtonToEnd.setEnabled(false);
        jButtonOneRowP.setEnabled(false);
        jButtonToEnd.repaint();
        jButtonOneRowP.repaint();
        
        
        jButtonToBegin.setEnabled(true);
        jButtonOneRowM.setEnabled(true);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
        
        
        repaintComp();
    }//GEN-LAST:event_jButtonToEndActionPerformed
    
    private void jButtonOneRowMActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowMActionPerformed
        repareDataFromDBAndJTable();
        myParent.mOneRowMinus();
        if(myParent.isAtBegining()) {
            jButtonToBegin.setEnabled(false);
            jButtonOneRowM.setEnabled(false);
            jButtonToBegin.repaint();
            jButtonOneRowM.repaint();
            
        }
        jButtonToEnd.setEnabled(true);
        jButtonOneRowP.setEnabled(true);
        jButtonToEnd.repaint();
        jButtonOneRowP.repaint();
        repaintComp();
        
    }//GEN-LAST:event_jButtonOneRowMActionPerformed
    
    private void jButtonToBeginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToBeginActionPerformed
        repareDataFromDBAndJTable();
        myParent.mTableBegining();
        
        jButtonToBegin.setEnabled(false);
        jButtonOneRowM.setEnabled(false);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
        
        jButtonToEnd.setEnabled(true);
        jButtonOneRowP.setEnabled(true);
        jButtonToEnd.repaint();
        jButtonOneRowP.repaint();
        
        repaintComp();
        
    }//GEN-LAST:event_jButtonToBeginActionPerformed
    
   /* public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
    
                new aeDocumentFacade(new JFrame(),true,true,1,1,1,1).setVisible(true);
            }
        });
    }*/
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButtonAnulirane;
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonCreateDocFacade;
    private javax.swing.JButton jButtonDellDocFadade;
    private javax.swing.JButton jButtonOneRowM;
    private javax.swing.JButton jButtonOneRowP;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonToBegin;
    private javax.swing.JButton jButtonToEnd;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JComboBox jComboBoxVidPla6tane;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JLabel jLabel29;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel30;
    private javax.swing.JLabel jLabel32;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel jLabelAllBrojProduct;
    private javax.swing.JLabel jLabelAllDDS;
    private javax.swing.JLabel jLabelAllDDSText;
    private javax.swing.JLabel jLabelAllTotal;
    private javax.swing.JLabel jLabelDDSOsnova;
    private javax.swing.JLabel jLabelDDSOsnovaText;
    private javax.swing.JLabel jLabelDocType;
    private javax.swing.JLabel jLabelInfoCurs;
    private javax.swing.JLabel jLabelLevel;
    private javax.swing.JLabel jLabelPrice_1;
    private javax.swing.JLabel jLabelPrice_2;
    private javax.swing.JLabel jLabelPricelist_1;
    private javax.swing.JLabel jLabelPricelist_2;
    private javax.swing.JLabel jLabelValuta;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanelComent;
    private javax.swing.JPanel jPanelContragent;
    private javax.swing.JPanel jPanelCreateFacturi;
    private javax.swing.JPanel jPanelDocLine;
    private javax.swing.JPanel jPanelHead;
    private javax.swing.JPanel jPanelInsertEdit;
    private javax.swing.JPanel jPanelObekt;
    private javax.swing.JPanel jPanelPrice;
    private javax.swing.JPanel jPanelPriceList;
    private javax.swing.JPanel jPanelStorageINOUT;
    private javax.swing.JPanel jPanelUser;
    private javax.swing.JScrollPane jScrollEdinInsert;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSplitPane jSplitPane1;
    private javax.swing.JTextField jTextFieldAddress;
    private javax.swing.JTextField jTextFieldBulstat;
    private javax.swing.JTextField jTextFieldComment;
    private javax.swing.JTextField jTextFieldConNom;
    private javax.swing.JTextField jTextFieldContTel;
    private javax.swing.JTextField jTextFieldContrMOL;
    private javax.swing.JTextField jTextFieldContrName;
    private javax.swing.JTextField jTextFieldDanNomer;
    private javax.swing.JTextField jTextFieldDeliver;
    private javax.swing.JTextField jTextFieldDistr;
    private javax.swing.JTextField jTextFieldNomerDoc;
    private javax.swing.JTextField jTextFieldObektAddress;
    private javax.swing.JTextField jTextFieldObektName;
    private javax.swing.JTextField jTextFieldObektNo;
    private javax.swing.JTextField jTextFieldObektTel;
    private javax.swing.JTextField jTextFieldProsro4vane;
    private javax.swing.JTextField jTextFieldStorageFROM;
    private javax.swing.JTextField jTextFieldStorageTO;
    private javax.swing.JTextField jTextFieldUserEdit;
    private javax.swing.JTextField jTextFieldUserLastEdit;
    private javax.swing.JTextField jTextFieldZadylveniq;
    private org.jdesktop.swingx.JXDatePicker jXDateCurs;
    private org.jdesktop.swingx.JXDatePicker jXDateDeliver;
    private org.jdesktop.swingx.JXDatePicker jXDateDocument;
    private org.jdesktop.swingx.JXDatePicker jXDatePay;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
// input parametrs
    private int userDocFacade=0;
    private int levelDocFacade = 0;
    private int priceList=1;
    private int DocFacadeType;
    private boolean isNew= false;
    private boolean isFinishRow = false;
    
//------------------------------------
// internal parametrs
    private int docNumberLast =0;                  // nomer na documenta
    private Date nowDate = null;                   // teku6ta data
    private FrmDocumentFacade myParent;
    private selectDataOfDocFacade dialogSelectData = null;
    private String str=new String();
    private JTable jTable1 = new JTable();
    private int columnSelect = 0;
    private int rowSelect = 0;
    private int productDescription_1;
    private int productDescription_2;
    private int productDescription_3;
    private int id_df_NewFaktura = 0;
    private boolean isPressKey = false;
    private boolean isTyped = false;
    private boolean isSetDataInTable = false; // note: doblira  ((docLineTableModel)jTable1.getModel()).setIsFinishToEnterData();
    private boolean rowSelectedChange = false;
    private boolean isDocFacadeCreate = false;
    private boolean isCheckOne = false;
    private boolean isProductIN = false;
    private HashMap  rows=null;
    private double rate = 0;
    private HashMap arrayRate = new HashMap();
    private Double curs;
    private ArrayList editRows = new ArrayList();
    private HashMap checkForSaveInDB = new HashMap(); // zapisva informaciq, 4e reda e zapisan v bazata
    private JTextField insertEdit[] = null;
    private int viewCow = 12;  // vidimite coloni ot jtable1
    private boolean isLoadRow = false;
    // promenlivi za KeyListener na inseretEdit - tekstovite poleta na dokLine
    private KeyListener key0 = null;
    private KeyListener key1 = null;
    private KeyListener key2 = null;
    private KeyListener key3 = null;
    private KeyListener key4 = null;
    private KeyListener key5 = null;
    private KeyListener key6 = null;
    private KeyListener key7 = null;
    private KeyListener key8 = null;
    private KeyListener key9 = null;
    private KeyListener key10 = null;
    private JPopupMenu   jTablePopUpMenu = new JPopupMenu();
    private JMenuItem    jTableMenuIntem1 = new JMenuItem("Редакция на ред");
    private JMenuItem    jTableMenuItem2 = new JMenuItem("Изтриване на ред"); 
    private JMenuItem    jTableMenuItem3 = new JMenuItem("Продуктова карта");
    private int          selectedjTableRow = -1;
//----------------------------------------
    
    
    
    
    //---------------END My Variables
//---------------START MyFunction
    
    private void getNavigatiionState() // ??
    {
        if(myParent.isAtBegining()) {
            jButtonToBegin.setEnabled(false);
            jButtonOneRowM.setEnabled(false);
            jButtonToBegin.repaint();
            jButtonOneRowM.repaint();
        }
        if(myParent.isAtEnd()) {
            jButtonToEnd.setEnabled(false);
            jButtonOneRowP.setEnabled(false);
            jButtonToEnd.repaint();
            jButtonOneRowP.repaint();
        }
        
    }
    private void repaintComp() // ??
    {
        if(isNew) {
            
            //  String strDate = new String();
            //  strDate = String.valueOf(nowDate.getDate());
            //   strDate += "/" + String.valueOf(nowDate.getMonth());
            //   strDate += "/" + String.valueOf(nowDate.getYear()+1900);
            //    jTextFieldDateDoc.setText(strDate);
            
            if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE)
                jTextFieldStorageFROM.setText(String.valueOf(myParent.getStorageOUTProduct()));
            jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
            
        } else {
            initAllTextField();
            isSetDataInTable = true;
            // nezavisi6ti ot vida na dokumenta
            DocFacadeType = myParent.getDocFacadeType();
            showAllPanels();
            selectDocumentTypeToView(DocFacadeType);
            isDocFacadeCreate = false;
            try {
                jComboBoxVidPla6tane.setSelectedIndex(myParent.getDescriptipnPay()-1);
            } catch (IllegalArgumentException iae){
                jComboBoxVidPla6tane.setSelectedIndex(0);
            }
            String newDate = checkAndConvertSQLFormat(myParent.getPayingDate());
            int dateInt[] = getDateAsInt(newDate);
            Date date = new Date(dateInt[2]-1900,dateInt[1]-1,dateInt[0]);
            jXDatePay.setDate(date);
            //  jTextFieldPayDate.setText(myParent.getPayingDate());
            newDate = checkAndConvertSQLFormat(myParent.getDateDocFacade());
            dateInt = getDateAsInt(newDate);
            date = new Date(dateInt[2]-1900,dateInt[1]-1,dateInt[0]);
            jXDateDocument.setDate(date);
            newDate = checkAndConvertSQLFormat(myParent.getPayingDate());
            dateInt = getDateAsInt(newDate);
            date = new Date(dateInt[2]-1900,dateInt[1]-1,dateInt[0]);
            jXDatePay.setDate(date);
            jTextFieldComment.setText(myParent.getCommenatDocFacade());
            switch(DocFacadeType) {
                case FAKTURI :
                {
                    
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    //    jTextFieldDateDoc.setText(myParent.getDateDocFacade());
                    repainContragentData(myParent.getID_Contragent());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    //     jTextFieldPayDate.setText(myParent.getPayingDate());
                    //jComboBoxVidPla6tane.setSelectedIndex(myParent.get) //vid pla6tane
                    break;
                }
                case FAKTURA_DANACHNA :
                {
                    
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    //    jTextFieldDateDoc.setText(myParent.getDateDocFacade());
                    repainContragentData(myParent.getID_Contragent());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    //     jTextFieldPayDate.setText(myParent.getPayingDate());
                    //jComboBoxVidPla6tane.setSelectedIndex(myParent.get) //vid pla6tane
                    break;
                }
                case FAKTURA_OPROSTENA :
                {
                    
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    //    jTextFieldDateDoc.setText(myParent.getDateDocFacade());
                    repainContragentData(myParent.getID_Contragent());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    //     jTextFieldPayDate.setText(myParent.getPayingDate());
                    //jComboBoxVidPla6tane.setSelectedIndex(myParent.get) //vid pla6tane
                    break;
                }
                case PROFORMA_FAKTURA :
                {
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    //     jTextFieldDateDoc.setText(myParent.getDateDocFacade());
                    repainContragentData(myParent.getID_Contragent());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    //       jTextFieldPayDate.setText(myParent.getPayingDate());
                    //  jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
                    //  jTextFieldDistr.setText(myParent.getDistributorDocFacade());
                    //jTextFieldDateDeliver.setText(myParent.getD) // data na deliver
                    
                    break;
                }
                case OFERTA :
                {
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    
                    repainContragentData(myParent.getID_Contragent());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    
                    
                    break;
                    
                    
                }
                case BRAK :
                {
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    
                    break;
                }
                case PROTOKOL_LIPSA :
                {
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    
                    break;
                }
                case STOKOVA_RAZPISKA :
                {
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    //      jTextFieldDateDoc.setText(myParent.getDateDocFacade());
                    repainObektData(myParent.getID_Obekt());
                    repainContragentData(myParent.getID_Contragent());
                    repainDistDeliv(myParent.getDistributorDocFacade(),myParent.getDeliverDocFacade(),myParent.getDeliverDate());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    //      jTextFieldPayDate.setText(myParent.getPayingDate());
                    break;
                }
                case KONSGNACIONEN_PROTOKOL :
                {
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    //       jTextFieldDateDoc.setText(myParent.getDateDocFacade());
                    repainObektData(myParent.getID_Obekt());
                    repainContragentData(myParent.getID_Contragent());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    //        jTextFieldPayDate.setText(myParent.getPayingDate());
                    break;
                }
                
                case NAREZDANE_ZA_PREHVYRQNE:
                {
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    jTextFieldStorageTO.setText(String.valueOf(myParent.getINStorageDocFacade()));
                    jTextFieldStorageFROM.setText(String.valueOf(myParent.getStorageOUTProduct()));
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    break;
                }
                case PREDAVATELNA_RAZPISKA :
                {
                    break;
                }
                case PRIEMATELNA_RAZPISKA :
                {
                    jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    repainContragentData(myParent.getID_Contragent());
                    repainUserEdit(myParent.getUserDocFacade(),true);
                    repainUserEdit(myParent.getUserDocFacade(),false);
                    newDate = checkAndConvertSQLFormat(myParent.getDeliverDate());
                    dateInt = getDateAsInt(newDate);
                    date = new Date(dateInt[2]-1900,dateInt[1],dateInt[0]);
                    jXDateDeliver.setDate(date);
                    jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
                    jTextFieldDistr.setText(myParent.getDistributorDocFacade());
                    break;
                }
            }
            
            
            
            
            jTable1.setModel(new docLineTableModel());
            ((docLineTableModel)jTable1.getModel()).removeRow(0);
            //
            rows  = myParent.getCountriesT().getDocLine(myParent.getID_DocFacade());
            int countRow = rows.size();
            
            if(countRow>0) {
                for(int i=0;i < countRow; i++) {
                    docLineArray dd =(docLineArray) rows.get(i);
                    dd.setRatioOfDisBand(dd.getNumerOfDisBand());
                    ((docLineTableModel)jTable1.getModel()).addRow(dd);
                    productDescription_1 = dd.getNumerOfDisBand()[0];
                    productDescription_2 = dd.getNumerOfDisBand()[1];
                    productDescription_3 = dd.getNumerOfDisBand()[2];
                    
                    // changeColumnName(5,dd.getNameOfDisBand()[0],jTable1);
                    // changeColumnName(6,dd.getNameOfDisBand()[1],jTable1);
                    // changeColumnName(7,dd.getNameOfDisBand()[2],jTable1);
                    jTable1.setValueAt(new Double(0),i,9); // setvane na max procent za otstypka v "0"
                    jTable1.setValueAt(calculateProductDescription(dd.getNumberOfProduct(),productDescription_2,productDescription_3)[0],i,5);
                    jTable1.setValueAt(calculateProductDescription(dd.getNumberOfProduct(),productDescription_2,productDescription_3)[1],i,6);
                    jTable1.setValueAt(calculateProductDescription(dd.getNumberOfProduct(),productDescription_2,productDescription_3)[2],i,7); //jTable1.getRowCount()
                    
                    int tmpInfo[] = myParent.getCountriesT().getFromConsigmentIDInfo(dd.getID_PC());
                    double tmpPrList[] = new double[8];
                    if(tmpInfo[7]>1) {
                        tmpPrList = myParent.getCountriesT().getPriceListByID(tmpInfo[1]);
                    } else {
                        tmpPrList = myParent.getCountriesT().getPriceListByID(tmpInfo[4]);
                    }
                    jTable1.setValueAt(new Double(tmpPrList[4]),i,17);  // dostavna cena
                    jTable1.setValueAt(new Double(tmpPrList[0]),i,18);  //  \
                    jTable1.setValueAt(new Double(tmpPrList[1]),i,19);  //   > cenova lista
                    jTable1.setValueAt(new Double(tmpPrList[2]),i,20);  //  /
                    
                    jTable1.setValueAt(new Integer(dd.getRatioOfDisBand()[0]),i,21);
                    jTable1.setValueAt(new Integer(dd.getRatioOfDisBand()[1]),i,22);
                    jTable1.setValueAt(new Integer(dd.getRatioOfDisBand()[2]),i,23);
                    jTable1.setValueAt(new Boolean(true),i,24);  //  markira reda dali  moze da se redaktira
                    //  markira reda kato  zavyr6en t.e. dannite sa vyvedeni v kolonite
                    //((docLineTableModel)jTable1.getModel()).getIsFinishToEnterData(i);
                    
                    docLineArray dd1 = ((docLineTableModel)jTable1.getModel()).getRow(i);
                    boolean ddfsa = dd1.getIsFinishRow();
                    ((docLineTableModel)jTable1.getModel()).setIsFinishToEnterData(i);
                    dd1 = ((docLineTableModel)jTable1.getModel()).getRow(i);
                    ddfsa = dd1.getIsFinishRow();
                }
                
                
                
                
                
            } else {
                // ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray());
                
            }
            
            jTable1.repaint();
            jCheckBox1.setSelected(false);
            
            jButtonOneRowM.setEnabled(true) ;
            jButtonOneRowP.setEnabled(true);
            jButtonToBegin.setEnabled(true);
            jButtonToEnd.setEnabled(true);
            
            getNavigatiionState();
            isProductIN = checkInOutProduct(myParent.getDocFacadeType());
          /*  if(isProductIN) {
                ((docLineTableModel) jTable1.getModel()).disableCellEditable(0);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(4);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(5);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(6);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(7);
            } else {
                ((docLineTableModel) jTable1.getModel()).disableCellEditable(0);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(3);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(4);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(5);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(6);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(7);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(8);
                ((docLineTableModel) jTable1.getModel()).enableCellEditable(9);
            }*/
            calculateTotalPriceForDocument();
        } // END dokumenta se redaktira
        if(myParent.getDocFacadeType()==OFERTA) {
            HideColumns(4); // skrivane na broj produkt
            HideColumns(5); // skrivane na razfasovka 1
            HideColumns(6); // skrivane na razfasovka 2
            HideColumns(7); // skrivane na razfasovka 3
            HideColumns(11); // skrivane na ob6to
        }
        for(int i=12 ; i<25;i++) {
            HideColumns(i);
        }
        calculateWidthInsertEditFieldALL();
    }
    
    private void repainContragentData(int idcontragent) {
        String contragentdata[] = new String[7];
        if(idcontragent!=0) {
            contragentdata = myParent.getCountriesT().getContragentDataByID(idcontragent) ;
            
            jTextFieldConNom.setText(contragentdata[0]);
            jTextFieldBulstat.setText(contragentdata[1]);
            jTextFieldDanNomer.setText(contragentdata[2]);
            jTextFieldContrName.setText(contragentdata[3]);
            jTextFieldAddress.setText(contragentdata[4]);
            jTextFieldContrMOL.setText(contragentdata[5]);
            jTextFieldContTel.setText(contragentdata[6]);
            
        }
        
    }
    
    private void repainObektData(int idobekt) {
        String obektdata[] = new String[4];
        if(idobekt !=0) {
            obektdata =  myParent.getCountriesT().getObektDataByID(idobekt);
            
            jTextFieldObektNo.setText(obektdata[0]);
            jTextFieldObektName.setText(obektdata[1]);
            jTextFieldObektAddress.setText(obektdata[2]);
            jTextFieldObektTel.setText(obektdata[3]);
            
        }
        
    }
    private void repainUserEdit(int iduser,boolean lastEditUser) {
        if(lastEditUser) {
            if(iduser !=0 ) {
                String userData[] = myParent.getCountriesT().getUserDataByID(iduser);
                jTextFieldUserLastEdit.setText(userData[1]);
            }
            
        } else {
            if(iduser !=0 ) {
                String userData[] = myParent.getCountriesT().getUserDataByID(iduser);
                jTextFieldUserEdit.setText(userData[1]);
            } else {
                String userData[] = myParent.getCountriesT().getUserDataByID(myParent.getUserEditFortm());
                jTextFieldUserEdit.setText(userData[1]);
            }
        }
    }
    private String changeColumnName(int column, String newname, JTable tbl) {
        String oldName;
        TableColumn tableColumn = tbl.getColumnModel().getColumn(column);
        oldName  = (String)tableColumn.getHeaderValue();
        tableColumn.setHeaderValue(newname);
        tbl.getTableHeader().repaint();
        return oldName;
    }
    private void setInputLisener() {
        getKeyBoardManager();
        
        jTable1.addMouseListener(new MouseListener() {
            public void mouseClicked(MouseEvent e) {
                int rowSelect = jTable1.getSelectedRow();
                changeColumnName(5,(String)jTable1.getValueAt(rowSelect,13),jTable1);
                changeColumnName(6,(String)jTable1.getValueAt(rowSelect,14),jTable1);
                changeColumnName(7,(String)jTable1.getValueAt(rowSelect,15),jTable1);
                if((Integer)jTable1.getValueAt(rowSelect,0)>0 & (Integer)jTable1.getValueAt(rowSelect,2)>0 &
                        (Integer)jTable1.getValueAt(rowSelect,4)>0  ) {
                    // set data for rowSelect docLine
                    myParent.setID_PC((Integer)jTable1.getValueAt(rowSelect,16));
                    myParent.setPriceList((Integer)jTable1.getValueAt(rowSelect,3));
                    double tmpPrList[] = new double[5];
                    tmpPrList[0]= (Double)jTable1.getValueAt(rowSelect,18);
                    tmpPrList[1]=(Double)jTable1.getValueAt(rowSelect,19);
                    tmpPrList[2]=(Double)jTable1.getValueAt(rowSelect,20);
                    tmpPrList[3]=1.0;
                    tmpPrList[4]=(Double)jTable1.getValueAt(rowSelect,17); // dostavna cena
                    myParent.setWorkPriceListProduct(tmpPrList);
                    myParent.setBrojProduct((Integer)jTable1.getValueAt(rowSelect,4));
                    
                    productDescription_1 = (Integer)jTable1.getValueAt(rowSelect,21);
                    productDescription_2 = (Integer)jTable1.getValueAt(rowSelect,22);
                    productDescription_3 = (Integer)jTable1.getValueAt(rowSelect,23);
                    myParent.setPriceOneProduct(((Double)jTable1.getValueAt(rowSelect,8)));
                    isProductIN = checkInOutProduct(myParent.getDocFacadeType());
                    if(isProductIN) {
                        jLabel32.setText("0");
                        jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 1");
                        jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 2");
                        jLabelPrice_1.setText("");
                        jLabelPrice_2.setText("");
                    } else {
                        jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[0])); //????
                        jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[1])); //???
                        
                        jLabelPrice_1.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[0]-1])); //???
                        jLabelPrice_2.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[1]-1]));  //???
                        Double curs = myParent.getWorkPriceListProduct()[3];  //????
                        jLabelValuta.setText(myParent.getCountriesT().getValutaByID(curs.intValue()));
                    }
                    calculateWidthColumn(jTable1);
                    calculateWidthInsertEditFieldALL();
                }
            }
            public void mouseEntered(MouseEvent e) {
            }
            public void mouseExited(MouseEvent e) {
            }
            public void mousePressed(MouseEvent e) {
                
            }
            public void mouseReleased(MouseEvent e) {
            }
        });
        
        
        jTable1.addKeyListener(new KeyListener() {
            public void keyPressed(KeyEvent e) {
                
                columnSelect = jTable1.getSelectedColumn();
                rowSelect = jTable1.getSelectedRow();
                
                if(e.getKeyCode()== KeyEvent.VK_UP) // selektira teksta v kletkata
                {
                    
                    changeColumnName(5,(String)jTable1.getValueAt(rowSelect,13),jTable1);
                    changeColumnName(6,(String)jTable1.getValueAt(rowSelect,14),jTable1);
                    changeColumnName(7,(String)jTable1.getValueAt(rowSelect,15),jTable1);
                }
                if(e.getKeyCode()== KeyEvent.VK_DOWN) // selektira teksta v kletkata
                {
                    
                    changeColumnName(5,(String)jTable1.getValueAt(rowSelect,13),jTable1);
                    changeColumnName(6,(String)jTable1.getValueAt(rowSelect,14),jTable1);
                    changeColumnName(7,(String)jTable1.getValueAt(rowSelect,15),jTable1);
                }
                
                
                
                
                
                
                
            }
            public void keyReleased(KeyEvent e) {
                
                
                
            }
            public void keyTyped(KeyEvent e) {
                
                
            }
        });
        
        
        
    }
    
    private int[] calculateProductDescription(int allCount, int productDescription2,int productDescription3 ) {
        int desc[] = new int[3];
        if(allCount >= productDescription3) {
            int c3 = (allCount/productDescription3);
            int c2 = (allCount%productDescription3)/productDescription2;
            int c1 = (allCount%productDescription3)%productDescription2;
            
            desc[0] = c1;
            desc[1] = c2;
            desc[2] = c3;
        } else {
            if(allCount >= productDescription2 ) {
                int c3 = 0;
                int c2 = (allCount)/productDescription2;
                int c1 = (allCount)%productDescription2;;
                
                desc[0] = c1;
                desc[1] = c2;
                desc[2] = c3;
            } else {
                int c3 = 0;
                int c2 = 0;
                int c1 = allCount;
                
                desc[0] = c1;
                desc[1] = c2;
                desc[2] = c3;
                
            }
        }
        
        
        return desc;
    }
    
    private int[] calculatePriceList(int startpricelist) {
        int pricelist[] = new int[2] ;
        if(startpricelist==1) {
            pricelist[0] = 2;
            pricelist[1] = 3;
        }
        if(startpricelist==2) {
            pricelist[0] = 1;
            pricelist[1] = 3;
        }
        if(startpricelist==3) {
            pricelist[0] = 1;
            pricelist[1] = 2;
        }
        return pricelist;
    }
    private double  calculateTotalPrice(double priceOne, int broj) {
        return priceOne*broj;
    }
    
    private double  calculateTotalDDS(double totalpruce, double dds) {
        return totalpruce*dds;
    }
    private void calculateWidthColumn( JTable table) {
        int numColumns = table.getColumnCount();
        int numRows = table.getRowCount();
        int headerWidth = 0;
        Component comp = null;
        TableColumn column = null;
        int cellWidth = 0;
        int temp = 0;
        
        for (int i = 0; i < numColumns; i++) {
            column = table.getColumnModel().getColumn(i);
            
            comp = table.getTableHeader().getDefaultRenderer().
                    getTableCellRendererComponent(table, column.getHeaderValue(),
                    false, false, 0, i);
            
            headerWidth = comp.getPreferredSize().width;
            
            for (int j = 0; j < numRows; j++) {
                comp = table.getDefaultRenderer(table.getColumnClass(i)).
                        getTableCellRendererComponent(table, table.getValueAt(j,i),
                        false, false, j, i);
                
                temp = comp.getPreferredSize().width;
                
                if (temp > cellWidth) {
                    cellWidth = temp;
                }
            }
            
            
            column.setPreferredWidth(Math.max(headerWidth+20, cellWidth+20));
            cellWidth = 0;
        }
        
        
    }
    private void createDocument(int id_df,int typeDoc, int connection) {
        switch(typeDoc) {
            case FAKTURI :
            {
                int contragent_in = 0;
                int contragent_out = myParent.getID_Contragent();;
                int obekt_in = 0;
                int obekt_out = 0;
                
                int facturaConnection=0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                System.out.println("docFacadeTotal = "+ docFacadeTotal + "   : "+jLabelAllTotal.getText());
                System.out.println("docFacadeAllDDS = " + docFacadeAllDDS + "   : "+jLabelAllDDS.getText());
                
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                String docFacadeCondition = "0";
                String docFacadeCommnet = jTextFieldComment.getText();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                String dateDeliver = dateManip.convertDate("01.01.2000");
                
                String strDate;
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1); //
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(), (jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                break;
            }
            case FAKTURA_DANACHNA :
            {
                int contragent_in = 0;
                int contragent_out = myParent.getID_Contragent();;
                int obekt_in = 0;
                int obekt_out = 0;
                
                int facturaConnection=0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                System.out.println("docFacadeTotal = "+ docFacadeTotal + "   : "+jLabelAllTotal.getText());
                System.out.println("docFacadeAllDDS = " + docFacadeAllDDS + "   : "+jLabelAllDDS.getText());
                
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                String docFacadeCondition = "0";
                String docFacadeCommnet = jTextFieldComment.getText();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                String dateDeliver = dateManip.convertDate("01.01.2000");
                
                String strDate;
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1); //
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                break;
            }
            case FAKTURA_OPROSTENA :
            {
                int contragent_in = 0;
                int contragent_out = myParent.getID_Contragent();;
                int obekt_in = 0;
                int obekt_out = 0;
                
                int facturaConnection=0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                String docFacadeCondition = "0";
                String docFacadeCommnet = jTextFieldComment.getText();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                String dateDeliver = dateManip.convertDate("01.01.2000");
                
                String strDate;
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1); //
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                break;
            }
            case PROFORMA_FAKTURA :
            {
                int contragent_in = 0;
                int contragent_out = myParent.getID_Contragent();;
                int obekt_in = 0;
                int obekt_out = 0;
                
                int facturaConnection=0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                String docFacadeCondition = "0";
                String docFacadeCommnet = jTextFieldComment.getText();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                String dateDeliver = dateManip.convertDate("01.01.2000");
                String strDate;
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(), (jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                break;
            }
            case OFERTA :
            {
                int contragent_in = 0;
                int contragent_out = myParent.getID_Contragent();;
                int obekt_in = 0;
                int obekt_out = 0;
                
                int facturaConnection=0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                String docFacadeCondition = "0";
                String docFacadeCommnet = jTextFieldComment.getText();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                String dateDeliver = dateManip.convertDate("01.01.2000");
                String strDate;
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                break;
                
                
            }
            case BRAK :
            {
                int contragent_in = 0;
                int contragent_out = 0;
                int obekt_in = 0;
                int obekt_out = 0;
                
                int facturaConnection=0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                String docFacadeCondition = "0";
                String docFacadeCommnet = jTextFieldComment.getText();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                String dateDeliver = dateManip.convertDate("01.01.2000");
                String strDate;
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                
                break;
            }
            case PROTOKOL_LIPSA :
            {
                int contragent_in = 0;
                int contragent_out = 0;
                int obekt_in = 0;
                int obekt_out = 0;
                
                int facturaConnection=0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                String docFacadeCondition = "0";
                String docFacadeCommnet = jTextFieldComment.getText();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                String dateDeliver = dateManip.convertDate("01.01.2000");
                String strDate;
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                
                
                break;
            }
            case STOKOVA_RAZPISKA :
            {
                int contragent_in = 0;
                int contragent_out = myParent.getID_Contragent();
                int obekt_in = 0;
                int obekt_out = myParent.getID_Obekt();
                
                
                int facturaConnection= connection;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                String docFacadeCondition = "0";
                
                String docFacadeCommnet = jTextFieldComment.getText();
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                
                
                String strDate;
                
                strDate = String.valueOf(jXDateDeliver.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
                String dateDeliver = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                break;
            }
            case KONSGNACIONEN_PROTOKOL :
            {
                int contragent_in = 0;
                int contragent_out = myParent.getID_Contragent();
                int obekt_in = 0;
                int obekt_out = myParent.getID_Obekt();
                
                
                int facturaConnection= connection;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                String docFacadeCondition = "0";
                
                String docFacadeCommnet = jTextFieldComment.getText();
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                
                String strDate;
                
                strDate = String.valueOf(jXDateDeliver.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
                String dateDeliver = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                break;
            }
            case NAREZDANE_ZA_PREHVYRQNE:
            {
                int contragent_in = 0;
                int contragent_out = 0;
                int obekt_in = 0;
                int obekt_out = 0;
                
                
                int facturaConnection= connection;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorageFROM = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = Integer.parseInt(jTextFieldStorageTO.getText());
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                String docFacadeCondition = "0";
                
                String docFacadeCommnet = jTextFieldComment.getText();
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                
                
                String strDate;
                
                strDate = String.valueOf(jXDateDeliver.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
                String dateDeliver = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorageFROM,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                break;
            }
            case PREDAVATELNA_RAZPISKA :
            {
                break;
            }
            case PRIEMATELNA_RAZPISKA :
            {
                int contragent_in = myParent.getID_Contragent();;
                int contragent_out = 0;
                int obekt_in = 0;
                int obekt_out = 0;
                
                
                int facturaConnection= 0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                String docFacadeCondition = "0";
                
                String docFacadeCommnet = jTextFieldComment.getText();
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                
                String strDate;
                
                strDate = String.valueOf(jXDateDeliver.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
                String dateDeliver = dateManip.convertDate(strDate);
                System.out.println("dateDeliver :"+dateDeliver);
                strDate = " ";
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                System.out.println("payingDate :"+payingDate);
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                System.out.println("docFacadeDate :"+docFacadeDate);
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                
                
                
                break;
            }
            case  RAZPISKA_ZA_VRYSHTANE:
            {
                int contragent_in = myParent.getID_Contragent();;
                int contragent_out = 0;
                int obekt_in = 0;
                int obekt_out = 0;
                
                
                int facturaConnection= 0;
                int payingOrder = 0;
                int zaqvkaConnection = 0;
                
                int docFacadeLevel = myParent.getDocFacadeLevel();
                int docFacadeStorage = myParent.getStorageOUTProduct();
                int docFacadeStorageTO = 0;
                int docFacadeType = myParent.getDocFacadeType();
                double docFacadeTotal = Double.parseDouble(jLabelAllTotal.getText());
                double docFacadeAllDDS = Double.parseDouble(jLabelAllDDS.getText());
                String docFacadeCondition = "0";
                
                String docFacadeCommnet = jTextFieldComment.getText();
                int userEdit =  myParent.getUserEditFortm();
                int userLastEdit = userEdit;
                if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();
                
                imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
                
                
                String strDate;
                
                strDate = String.valueOf(jXDateDeliver.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
                String dateDeliver = dateManip.convertDate(strDate);
                System.out.println("dateDeliver :"+dateDeliver);
                strDate = " ";
                strDate = String.valueOf(jXDatePay.getDate().getDate());
                strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
                String payingDate = dateManip.convertDate(strDate);
                System.out.println("payingDate :"+payingDate);
                strDate = " ";
                strDate = String.valueOf(jXDateDocument.getDate().getDate());
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth()+1);
                strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
                String docFacadeDate = dateManip.convertDate(strDate);
                System.out.println("docFacadeDate :"+docFacadeDate);
                
                long numberDoc = Long.parseLong(myParent.getNumberDocFacade());
                myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                        obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),(jComboBoxVidPla6tane.getSelectedIndex() + 1),
                        numberDoc,userEdit,userLastEdit,
                        facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                        docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO);
                
                
                
                break;
            }
        }
        if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE) {
            emptyPreservation(isNew);
            
        } else
            if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA || myParent.getDocFacadeType()==RAZPISKA_ZA_VRYSHTANE ) {
            emptyReturnet(isNew);
            
            } else
                if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA && myParent.getDocFacadeType()!=OFERTA)
                    emptyPreservation(isNew);
        
        
        
        isNew = false; // ve4e dokumenta ne se vodi kato "nov"
        myParent.refreshTable();
        
        
    }
    
    private void emptyPreservation(boolean isnew) {
        int id_dl = 0;
        int maxRow = jTable1.getRowCount();
        int nal = 0;
        if(isnew) {
            for(int i=0; i < maxRow; i++) {
                id_dl =(Integer) jTable1.getValueAt(i,12);
                nal = (Integer)jTable1.getValueAt(i,4);
                
                if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE) {
                    moveProductFStTSt(id_dl,nal);
                }
                myParent.getCountriesT().emptyPreservation(id_dl,nal,myParent.getDocFacadeLevel());
            }
        } else {
            if(rows.size()>0) {
                int newNumberProduct;
                int oldNumberProduct;
                boolean intoDB = false;
                for(int i=0; i < maxRow; i++) {
                    id_dl =(Integer) jTable1.getValueAt(i,12);
                    newNumberProduct = (Integer)jTable1.getValueAt(i,4);
                    intoDB = false;
                    for(int j=0; j < rows.size();j++) {
                        
                        docLineArray d = (docLineArray) rows.get(j);
                        oldNumberProduct = d.getNumberOfProduct();
                        
                        if(id_dl == d.getID_DocLine()) {
                            if(newNumberProduct > oldNumberProduct) {
                                if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE) {
                                    moveProductFStTSt(id_dl,(newNumberProduct-oldNumberProduct));
                                }
                                
                                myParent.getCountriesT().emptyPreservation(id_dl,(newNumberProduct-oldNumberProduct),myParent.getDocFacadeLevel());
                                
                            } else {
                                if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE) {
                                    moveProductFStTSt(id_dl,-(newNumberProduct-oldNumberProduct));
                                }
                                
                                myParent.getCountriesT().emptyReturnProducts(id_dl,(oldNumberProduct-newNumberProduct),myParent.getDocFacadeLevel());
                            }
                            intoDB = true;
                        }
                    }
                    if(!intoDB) {
                        if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE) {
                            moveProductFStTSt(id_dl,newNumberProduct);
                        }
                        
                        myParent.getCountriesT().emptyPreservation(id_dl,newNumberProduct,myParent.getDocFacadeLevel());
                        
                    }
                    
                    
                    
                    
                }
            } else {
                for(int i=0; i < maxRow; i++) {
                    id_dl =(Integer) jTable1.getValueAt(i,12);
                    nal = (Integer)jTable1.getValueAt(i,4);
                    if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE) {
                        moveProductFStTSt(id_dl,nal);
                    } else
                        myParent.getCountriesT().emptyPreservation(id_dl,nal,myParent.getDocFacadeLevel());
                }
            }
        }
    }
    private void emptyReturnet(boolean isnew) {
        int id_dl;
        int maxRow = jTable1.getRowCount();
        int nal;
        if(isnew) {
            for(int i=0; i < maxRow; i++) {
                id_dl =(Integer) jTable1.getValueAt(i,12);
                nal = (Integer)jTable1.getValueAt(i,4);
                myParent.getCountriesT().emptyReturnProducts(id_dl,nal,myParent.getDocFacadeLevel());
            }
        } else {
            if(rows.size()>0) {
                int newNumberProduct;
                int oldNumberProduct;
                boolean intoDB = false;
                for(int i=0; i < maxRow; i++) {
                    id_dl =(Integer) jTable1.getValueAt(i,12);
                    newNumberProduct = (Integer)jTable1.getValueAt(i,4);
                    intoDB = false;
                    for(int j=0; j < rows.size();j++) {
                        
                        docLineArray d = (docLineArray) rows.get(j);
                        oldNumberProduct = d.getNumberOfProduct();
                        
                        if(id_dl == d.getID_DocLine()) {
                            if(newNumberProduct > oldNumberProduct) {
                                myParent.getCountriesT().emptyReturnProducts(id_dl,(newNumberProduct-oldNumberProduct),myParent.getDocFacadeLevel());
                                
                            } else {
                                
                                myParent.getCountriesT().emptyPreservation(id_dl,(oldNumberProduct-newNumberProduct),myParent.getDocFacadeLevel());
                            }
                            intoDB = true;
                        }
                    }
                    if(!intoDB) // reda ne sy6testvuva v Bazata
                    {
                        myParent.getCountriesT().emptyReturnProducts(id_dl,newNumberProduct,myParent.getDocFacadeLevel());
                        
                    }
                    
                    
                    
                    
                }
            } else {
                for(int i=0; i < maxRow; i++) {
                    id_dl =(Integer) jTable1.getValueAt(i,12);
                    nal = (Integer)jTable1.getValueAt(i,4);
                    myParent.getCountriesT().emptyReturnProducts(id_dl,nal,myParent.getDocFacadeLevel());
                }
            }
        }
    }
    /**
     *Opredelq viziqta na dokumentite
     *@param typeDoc  -vid dokument
     */
    private void selectDocumentTypeToView(int typeDoc) {
        switch(typeDoc) {
            case FAKTURI :
            {
                this.setTitle("\u0424\u0410\u041a\u0422\u0423\u0420\u0410");
                jLabelDocType.setText("\u0424\u0410\u041a\u0422\u0423\u0420\u0410");
                jPanelObekt.setVisible(false);
                jPanel4.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                Point p = jPanel6.getLocation();
                p.y = jPanelContragent.getLocation().y+jPanelContragent.getSize().height;
                jPanel6.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                
                break;
                
            }
            case FAKTURA_DANACHNA :
            {
                
                this.setTitle("\u0414\u0410\u041d\u042a\u0427\u041d\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410");
                jLabelDocType.setText("\u0414\u0410\u041d\u042a\u0427\u041d\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410");
                jPanelObekt.setVisible(false);
                jPanel4.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                Point p = jPanel6.getLocation();
                p.y = jPanelContragent.getLocation().y+jPanelContragent.getSize().height;
                jPanel6.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                
                break;
                
            }
            case FAKTURA_OPROSTENA:
            {
                
                this.setTitle("\u041e\u041f\u0420\u041e\u0421\u0422\u0415\u041d\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410");
                jLabelDocType.setText("\u041e\u041f\u0420\u041e\u0421\u0422\u0415\u041d\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410");
                jPanelObekt.setVisible(false);
                jPanel4.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                Point p = jPanel6.getLocation();
                p.y = jPanelContragent.getLocation().y+jPanelContragent.getSize().height;
                jPanel6.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                
                break;
                
            }
            case PROFORMA_FAKTURA :
            {
                this.setTitle("\u041f\u0420\u041e\u0424\u041e\u0420\u041c\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410");
                jLabelDocType.setText("\u041f\u0420\u041e\u0424\u041e\u0420\u041c\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410");
                jPanelObekt.setVisible(false);
                jPanel4.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                
                Point p = jPanel6.getLocation();
                p.y = jPanelContragent.getLocation().y+jPanelContragent.getSize().height;
                jPanel6.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                break;
            }
            case OFERTA :
            {
                this.setTitle("\u041e\u0424\u0415\u0420\u0422\u0410");
                jLabelDocType.setText("\u041e\u0424\u0415\u0420\u0422\u0410");
                jPanelObekt.setVisible(false);
                jPanel4.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                
                Point p = jPanel6.getLocation();
                p.y = jPanelContragent.getLocation().y+jPanelContragent.getSize().height;
                jPanel6.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                break;
                
                
            }
            case BRAK :
            {
                
                this.setTitle("\u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b \u0417\u0410 \u0411\u0420\u0410\u041a");
                jLabelDocType.setText("\u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b \u0417\u0410 \u0411\u0420\u0410\u041a");
                jPanelObekt.setVisible(false);
                jPanel4.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                jPanelContragent.setVisible(false);
                
                Point p = jPanelHead.getLocation();
                p.y = jPanelHead.getLocation().y+jPanelHead.getSize().height;
                jPanel6.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                
                break;
            }
            case PROTOKOL_LIPSA :
            {
                
                this.setTitle("\u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b \u0417\u0410 \u041b\u0418\u041f\u0421\u0410");
                jLabelDocType.setText("\u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b \u0417\u0410 \u041b\u0418\u041f\u0421\u0410");
                jPanelObekt.setVisible(false);
                jPanel4.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                jPanelContragent.setVisible(false);
                
                Point p = jPanelHead.getLocation();
                p.y = jPanelHead.getLocation().y+jPanelHead.getSize().height;
                jPanel6.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                
                break;
            }
            case STOKOVA_RAZPISKA :
            {
                this.setTitle("\u0421\u0422\u041e\u041a\u041e\u0412\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410");
                jLabelDocType.setText("\u0421\u0422\u041e\u041a\u041e\u0412\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410");
                jPanelStorageINOUT.setVisible(false);
                
                break;
            }
            case KONSGNACIONEN_PROTOKOL :
            {
                this.setTitle("\u041a\u041e\u041d\u0421\u0413\u041d\u0410\u0426\u0418\u041e\u041d\u0415\u041d \u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b");
                jLabelDocType.setFont(new java.awt.Font("Tahoma", 0, 18));
                jLabelDocType.setText("\u041a\u041e\u041d\u0421\u0413\u041d\u0410\u0426\u0418\u041e\u041d\u0415\u041d \u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b");
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                break;
            }
            case NAREZDANE_ZA_PREHVYRQNE:
            {
                this.setTitle("\u041d\u0410\u0420\u0415\u0416\u0414\u0410\u041d\u0415 \u0417\u0410 \u041f\u0420\u0415\u0425\u0412\u042a\u0420\u041b\u042f\u041d\u0415");
                rate=1;
                jLabelDocType.setText("\u041d\u0410\u0420\u0415\u0416\u0414\u0410\u041d\u0415 \u0417\u0410 \u041f\u0420\u0415\u0425\u0412\u042a\u0420\u041b\u042f\u041d\u0415");
                jPanelObekt.setVisible(false);
                jPanelContragent.setVisible(false);
                jPanel4.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jXDateCurs.setVisible(false);
                
                jLabelInfoCurs.setVisible(false);
                jLabel24.setVisible(false);
                rate=1;
                jPanelStorageINOUT.setSize(jPanelStorageINOUT.getSize().width,jPanel6.getSize().height);
                Point p = jPanel6.getLocation();
                p.y = jPanelHead.getLocation().y+jPanelHead.getSize().height;
                jPanel6.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                
                
                break;
            }
            case PREDAVATELNA_RAZPISKA :
            {
                break;
            }
            case PRIEMATELNA_RAZPISKA :
            {
                this.setTitle("\u041f\u0420\u0418\u0415\u041c\u0410\u0422\u0415\u041b\u041d\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410");
                jLabelDocType.setText("\u041f\u0420\u0418\u0415\u041c\u0410\u0422\u0415\u041b\u041d\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410");
                jPanelObekt.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                Point p = jPanel6.getLocation();
                p.y = jPanelContragent.getLocation().y+jPanelContragent.getSize().height;
                jPanel6.setLocation(p);
                p.x=jPanel4.getLocation().x;
                jPanel4.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                break;
            }
            case RAZPISKA_ZA_VRYSHTANE:
            {
                this.setTitle("\u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410 \u0417\u0410 \u0412\u0420\u042a\u0429\u0410\u041d\u0415");
                jLabelDocType.setText("\u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410 \u0417\u0410 \u0412\u0420\u042a\u0429\u0410\u041d\u0415");
                jPanelObekt.setVisible(false);
                jPanelCreateFacturi.setVisible(false);
                jPanelStorageINOUT.setVisible(false);
                Point p = jPanel6.getLocation();
                p.y = jPanelContragent.getLocation().y+jPanelContragent.getSize().height;
                jPanel6.setLocation(p);
                p.x=jPanel4.getLocation().x;
                jPanel4.setLocation(p);
                // promqna na polozenieto na jPanelDocLini i razmera mu
                p = jPanelDocLine.getLocation();
                p.y = jPanel6.getLocation().y+jPanel6.getSize().height;
                jPanelDocLine.setLocation(p);
                int deltaH = jPanelPrice.getLocation().y - (p.y+jPanelDocLine.getSize().height); // razlikata s koqto trqbva da se uveli4i jPanelDocLine
                jPanelDocLine.setSize(jPanelDocLine.getSize().width,(jPanelDocLine.getSize().height+deltaH));
                break;
            }
            
        }
    }
    private void showAllPanels() {
        jPanelObekt.setVisible(true);
        jPanel4.setVisible(true);
        jPanelCreateFacturi.setVisible(true);
        jPanelStorageINOUT.setVisible(true);
        
    }
    private void deleteDocLine(int selectRow, boolean withRowTable,boolean alsoInBD) {
        int id_dl =(Integer) jTable1.getValueAt(selectRow,12);
        int nal = (Integer)jTable1.getValueAt(selectRow,4);
        if(!isNew) {
            //vry6tane na koli4etvata v tablicata za nali4nostite
            int newNumberProduct = nal;
            docLineArray d=null;
            int oldNumberProduct =0;
            for(int i=0; i < rows.size();i++) {
                d = (docLineArray) rows.get(i);
                if(id_dl==d.getID_DocLine()) {
                    oldNumberProduct = d.getNumberOfProduct();
                    break;
                }
                
            }
            if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA || myParent.getDocFacadeType()==RAZPISKA_ZA_VRYSHTANE ) {
                
                if(newNumberProduct > oldNumberProduct) {
                    myParent.getCountriesT().clearReturnProducts(id_dl,(-oldNumberProduct+newNumberProduct),myParent.getDocFacadeLevel());
                } else {
                    
                    myParent.getCountriesT().clearPreservation(id_dl,(-newNumberProduct+oldNumberProduct),myParent.getDocFacadeLevel());
                }
                if(alsoInBD) myParent.getCountriesT().deleteDocLine(id_dl);
                
            } else
                
                if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA || myParent.getDocFacadeType()!=OFERTA)
                    if(newNumberProduct > oldNumberProduct) {
                myParent.getCountriesT().clearPreservation(id_dl,(newNumberProduct-oldNumberProduct),myParent.getDocFacadeLevel());
                    } else {
                myParent.getCountriesT().clearReturnProducts(id_dl,(oldNumberProduct-newNumberProduct),myParent.getDocFacadeLevel());
                    }
            if(alsoInBD) myParent.getCountriesT().deleteDocLine(id_dl);
        } else // ako e NOV dokumenta
        {
            if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA || myParent.getDocFacadeType()==RAZPISKA_ZA_VRYSHTANE) {
                myParent.getCountriesT().clearReturnProducts(id_dl,nal,myParent.getDocFacadeLevel());
            } else
                if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA || myParent.getDocFacadeType()!=OFERTA)
                    myParent.getCountriesT().clearPreservation(id_dl,nal,myParent.getDocFacadeLevel());
            
            if(alsoInBD) myParent.getCountriesT().deleteDocLine(id_dl);
        }
        if(withRowTable) {
            
            ((docLineTableModel)jTable1.getModel()).removeRow(selectRow);
            
            
            double ddds = 0;
            double singePrice =0;
            double totalPriceLine = 0;
            int numberPiece = 0;
            int countRows = jTable1.getRowCount();
            
            double totalAllPrice = 0;
            double ddsOsnovaAll =0;
            double ddsPriceAll = 0;
            
            
            
            
            
            for(int i=0; i < countRows; i++) {
                ddds = (Double)jTable1.getValueAt(i,10);
                //  singePrice = (Double)jTable1.getValueAt(i,8);
                totalPriceLine = (Double) jTable1.getValueAt(i,11);
                //  numberPiece = (Integer) jTable1.getValueAt(i,4);
                
                
                ddsOsnovaAll += totalPriceLine;
                ddsPriceAll += (totalPriceLine*ddds/100);
                
                
                
            }
            
            jLabelAllTotal.setText(doubleRoundToString(4,ddsOsnovaAll+ddsPriceAll));
            jLabelDDSOsnova.setText(doubleRoundToString(4,ddsOsnovaAll));
            jLabelAllDDS.setText(doubleRoundToString(4,ddsPriceAll));
        }
        
        
    }
    private String doubleRoundToString(int digit, double indouble) {
        String newDouble = new String();
        double r = indouble;
        BigDecimal bd = new BigDecimal(r);
        bd = bd.setScale(digit,BigDecimal.ROUND_HALF_UP);
        r = bd.doubleValue();
        return newDouble.valueOf(r);
    }
    // iztriva se ot bazata
    private void  deleteDocFacade(int type,long numberDocFadade, int level,String condition) {
        myParent.getCountriesT().deleteRow(type,numberDocFadade,level,condition);
    }
    private void cancellationDocFacade(int id_df,String condition) {
        myParent.getCountriesT().cancellationDocFacade(id_df,condition);
    }
    
    // markira dokumenta kato iztrit t.e. promena conditon v "1"
    private void  deleteDocFacade(int id_df) {
        myParent.getCountriesT().deleteRow(id_df);
    }
    private void createArraysForFactura() {
        
        if(!isCheckOne) {
            
            //showMesage
            return;
        }
        //stage 1
        HashMap data1;
        HashMap data2;
        ArrayList arrayOfData = new ArrayList();
        int countDocFacade = myParent.getArrayOfID_DF().size();
        for(int i=0;i<countDocFacade; i++) {
            
            data1 = myParent.getCountriesT().getDocLine((Integer)myParent.getArrayOfID_DF().get(i));
            arrayOfData.add(data1);
        }
        //stage 2
        // sybirane na vsi4ki linii v edin hashmap
        int countDocLine = arrayOfData.size();
        // sybirane na linii
        data1 = (HashMap)arrayOfData.get(0);
        for(int i=1; i < countDocLine; i++) {
            data2 =(HashMap)arrayOfData.get(i);
            data1 = addLineByID_PC(data1,data2);
            
        }
        // stage 3
        // zapis na  HashMap i ArrayList namira6ti se v salesMain
        // i ustanovqvane na makeDocByInputData=true;
        // proverka dali ima dokumenti za iskarvane(faktura) predi da se opiname da otvorim FrmDocLiune za (stokova razpiska)
        
        // format na HashMap_a ==> put(<poreden_nomer>,<docLineArray>)
        //zatwarqne na formata
        
        sales_main.dataIn = data1;
        sales_main.dataOut= myParent.getArrayOfID_DF();
        sales_main.isMakeDocByInputData = true;
        System.out.println("end create HashMap");
        this.dispose();
        myParent.closeFrm();
        
    }
    private HashMap addLineByID_PC(HashMap in1,HashMap in2) {
        HashMap in1_in2=in1;
        int countIn1 = in1.size();
        int countIn2 = in2.size();
        boolean isHaveOne = false;
        boolean delDocLine[] = new boolean[countIn2];
        for(int i=0;i<countIn1; i++) {
            docLineArray d1 = (docLineArray) in1.get(i);
            int id_pm1 = myParent.getCountriesT().getIDPMByIDPC(d1.getID_PC());
            double priceOne1 = d1.getPricePiece();
            
            docLineArray in1In2 = d1;
            
            for(int j=0; j < countIn2; j++) {
                if(!delDocLine[j]) {
                    docLineArray d2 = (docLineArray) in2.get(j);
                    int id_pm2 = myParent.getCountriesT().getIDPMByIDPC(d2.getID_PC());
                    double priceOne2 = d2.getPricePiece();
                    
                    if((id_pm1==id_pm2)&&(priceOne1==priceOne2)) {
                        
                        in1In2.setCodeOfProduct(d1.getCodeOfProduct());
                        in1In2.setDDS(d1.getDDS());
                        in1In2.setID_DocLine(0); //////??????
                        in1In2.setID_PC(d1.getID_PC());
                        in1In2.setIsFinishRow(true);
                        in1In2.setNameOfDisBand(d1.getNameOfDisBand());
                        in1In2.setNameOfProduct(d1.getNameOfProduct());
                        in1In2.setNumberOfProduct(d1.getNumberOfProduct()+d2.getNumberOfProduct());
                        in1In2.setNumerOfDisBand(d1.getNumerOfDisBand());
                        in1In2.setPriceList(d1.getPriceList());
                        in1In2.setPricePiece(priceOne1);
                        in1In2.setPriceTotal(d1.getPriceTotal()+d2.getPriceTotal());
                        in1In2.setRateReduction(0);
                        in1In2.setStorageOut(1);
                        delDocLine[j] = true;
                        
                    }
                }
                
                
            }
            
        }
        int key = countIn1;
        for(int j=0 ; j <countIn2; j++) {
            if(!delDocLine[j]) {
                docLineArray d = (docLineArray) in2.get(j);
                in1_in2.put(key,d);
                key++;
            }
        }
        
        return in1_in2;
    }
    
    private void repainDistDeliv(String dist,String devil,String date) {
        jTextFieldDeliver.setText(devil);
        jTextFieldDistr.setText(dist);
        String newDate = checkAndConvertSQLFormat(date);
        int dateInt[] = getDateAsInt(newDate);
        Date date1 = new Date(dateInt[2]-1900,dateInt[1],dateInt[0]);
        jXDateDeliver.setDate(date1);
        
    }
    private double getRate(String valuta) {
        double rate =1;
        try {
            if(arrayRate.size()>0) rate =(Double) arrayRate.get(valuta);
        } catch(Exception x) {
            rate =1;
        }
        
        return rate;
    }
    public  int[] getDateAsInt(String in) {
        int date[] = new int[3];
        int lenght = in.length();
        char ch[] = in.toCharArray();
        String day = String.copyValueOf(ch,0,2); //
        int dayInt = Integer.parseInt(day);
        String month = String.copyValueOf(ch,3,2);
        int monthInt = Integer.parseInt(month);
        String year = String.copyValueOf(ch,6,4);
        int yearInt = Integer.parseInt(year);
        date[0]= dayInt;
        date[1]= monthInt;
        date[2]= yearInt;
        return date;
    }
    private  String checkAndConvertSQLFormat(String in) {
        String newDate = in;
        System.out.println(" data koiato podavam " + in);
        char ch[] = in.toCharArray();
        int length = in.length();
        int bufLength=0;
        int  countS = 0;
        for(int i=0; i < length;i++) {
            if(ch[i]==45 || ch[i]==46 || ch[i]==47 ) {
                countS++;
                if(i==4 && countS==1) // SQL format
                {
                    newDate = in.substring(length-2,length);
                    int newLength=length;
                    String newIn=in;
                    char d_ch[] = newDate.toCharArray();
                    if(d_ch[0]==45 || d_ch[0]==46 || d_ch[0]==47 ) {
                        d_ch[0] = '0';
                        newDate =String.valueOf(d_ch);
                        newIn = in.substring(0,length-1);
                        newIn += newDate;
                        newLength = newIn.length();
                    }
                    newDate +="/";
                    
                    String m_newDate =newIn.substring(newLength-5,newLength-3);
                    char m_ch[] = m_newDate.toCharArray();
                    
                    if(m_ch[0]==45 || m_ch[0]==46 || m_ch[0]==47 ) {
                        m_ch[0] = '0';
                        m_newDate =String.valueOf(m_ch);
                    }
                    newDate +=m_newDate;
                    newDate +="/";
                    newDate +=in.substring(0,4);
                    break;
                }
            }
        }
        
        
        
        return newDate;
    }
    private void processKeyPress(int docType,int firstCenterLast, int searchBy,int enterKet) {
        // searchBy :
        //  1: tyrsene po kod na produkta
        //  2: tyrsene po ime na produkta
        //firstCenterLast -> F7 key - center; F8 key - first; F9 key - last
        
      /*  try
              {
                Robot robot = new Robot();
                robot.keyPress(KeyEvent.VK_ENTER);
       
       
       
            } catch (AWTException e12){};*/
        
        isProductIN = checkInOutProduct(docType);
        
/*        if(isProductIN) {
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(4);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(5);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(6);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(7);
        } else {
 
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(3);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(4);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(5);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(6);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(7);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(8);
            ((docLineTableModel) jTable1.getModel()).enableCellEditable(9);
        }
 */
        if(rate!=0) {
            
            //jTable1.grabFocus();
            
            try {
                java.lang.Thread.sleep(100);
            } catch(Exception df){System.out.println("sleep - error");};
            
            
            if(str.equals("0") || str==null) str="";
            
            System.out.println("str :::"+str);
            java.sql.ResultSet rs1 =null;
            
            if(docType==PRIEMATELNA_RAZPISKA || myParent.getDocFacadeType()==RAZPISKA_ZA_VRYSHTANE) {
                //  rs1 = myParent.getCountriesT().getTableProductInfo(str,3,myParent.getDocFacadeLevel(),0,myParent.getStorageOUTProduct());
                if(searchBy==SEARCH_BY_CODE) {
                    rs1 = myParent.getCountriesT().getTableProductInfo(str,firstCenterLast+3,0,0,myParent.getStorageOUTProduct());
                }
                if(searchBy==SEARCH_BY_NAME) {
                    rs1 = myParent.getCountriesT().getTableProductInfo(str,firstCenterLast+9,0,0,myParent.getStorageOUTProduct());
                }
            } else {
                if(searchBy==SEARCH_BY_CODE) {
                    rs1 = myParent.getCountriesT().getTableProductInfo(str,firstCenterLast+0,myParent.getDocFacadeLevel(),0,myParent.getStorageOUTProduct());
                }
                if(searchBy==SEARCH_BY_NAME) {
                    //firstCenterLast+4 - izbirame podhodq6tata SQl zaqvka
                    // viz procedurata
                    rs1 = myParent.getCountriesT().getTableProductInfo(str,firstCenterLast+6,myParent.getDocFacadeLevel(),0,myParent.getStorageOUTProduct());
                }
                
            }
            
            
            
            Connection conn1 = myParent.getCountriesT().getConn();
            
            showProductDocLine dialog = new showProductDocLine(myParent,true,rs1,conn1,isProductIN);
            dialog.setVisible(true);
            str = "";
            System.out.print("myParent.getCodeProduct = ");
            System.out.println(myParent.getCodeProduct());
            
            //         ((docLineTableModel) jTable1.getModel()).enableCellEditable(3);
            
            
            
            //          jTable1.changeSelection(jTable1.getSelectedRow(),4,false,false);
            
            
            if(myParent.getIsSelectProduct()) {
                
                jLabel32.setText(String.valueOf(myParent.getCountriesT().getAllProductWithOutLevel(myParent.getID_PC(),
                        myParent.getDocFacadeLevel(),myParent.getStorageOUTProduct())));
                //              jTable1.setValueAt(myParent.getCodeProduct(),jTable1.getSelectedRow(),0);
                insertEdit[0].setText(String.valueOf(myParent.getCodeProduct()));
                //              jTable1.setValueAt(myParent.getNameProduct(),jTable1.getSelectedRow(),1);
                insertEdit[1].setText(String.valueOf(myParent.getNameProduct()));
                //              jTable1.setValueAt(myParent.getStorageOUTProduct(),jTable1.getSelectedRow(),2);
                insertEdit[2].setText(String.valueOf(myParent.getStorageOUTProduct()));
                jLabelAllBrojProduct.setText(String.valueOf(myParent.getBrojProduct())); //
                if(isProductIN) {
                    jLabel32.setText("0");
                    jLabelAllBrojProduct.setText("0"); //
                    //                  jTable1.setValueAt(0,jTable1.getSelectedRow(),3);
                    insertEdit[3].setText(String.valueOf(0));
                    jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 1");
                    jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 2");
                    
                    jLabelPrice_1.setText("");
                    jLabelPrice_2.setText("");
                    //                   jTable1.setValueAt(myParent.getBrojProduct(),jTable1.getSelectedRow(),4);
                    insertEdit[4].setText(String.valueOf(myParent.getBrojProduct()));
                } else // ot sklada navyn;
                {
                    
//                    jTable1.setValueAt(myParent.getPriceList(),jTable1.getSelectedRow(),3); // ????????
                    insertEdit[3].setText(String.valueOf(myParent.getPriceList()));
                    jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[0])); //????
                    jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[1])); //???
                    
                    jLabelPrice_1.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[0]-1])); //???
                    jLabelPrice_2.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[1]-1]));  //???
                    Double curs = myParent.getWorkPriceListProduct()[3];  //????
                    jLabelValuta.setText(myParent.getCountriesT().getValutaByID(curs.intValue()));
// rate select
                    rate = getRate(jLabelValuta.getText()); //?????
                    
                    //  jTable1.setValueAt(myParent.getBrojProduct(),jTable1.getSelectedRow(),4); // v tablicata se pokazvat maksimalniq broi produkti
//                    jTable1.setValueAt(0,jTable1.getSelectedRow(),4); //
                    insertEdit[4].setText(String.valueOf(0));
                    jLabelAllBrojProduct.setText(String.valueOf(myParent.getBrojProduct())); //
                }
                
                
                
                
                
                
                productDescription_1 = Integer.parseInt(myParent.getProductDescription()[0][1]);
                productDescription_2 = Integer.parseInt(myParent.getProductDescription()[1][1]);
                productDescription_3 = Integer.parseInt(myParent.getProductDescription()[2][1]);
                
                insertEdit[21].setText(String.valueOf(myParent.getProductDescription()[0][1]));
                insertEdit[22].setText(String.valueOf(myParent.getProductDescription()[1][1]));
                insertEdit[23].setText(String.valueOf(myParent.getProductDescription()[2][1]));
                
                changeColumnName(5,myParent.getProductDescription()[0][0],jTable1);
                changeColumnName(6,myParent.getProductDescription()[1][0],jTable1);
                changeColumnName(7,myParent.getProductDescription()[2][0],jTable1);
                
                // jTable1.setValueAt(myParent.getProductDescription()[0][0],jTable1.getSelectedRow(),13);
                //  jTable1.setValueAt(myParent.getProductDescription()[1][0],jTable1.getSelectedRow(),14);
                //  jTable1.setValueAt(myParent.getProductDescription()[2][0],jTable1.getSelectedRow(),15);
                insertEdit[13].setText(String.valueOf(myParent.getProductDescription()[0][0]));
                insertEdit[14].setText(String.valueOf(myParent.getProductDescription()[1][0]));
                insertEdit[15].setText(String.valueOf(myParent.getProductDescription()[2][0]));
                
                // jTable1.setValueAt(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[0],jTable1.getSelectedRow(),5);
                // jTable1.setValueAt(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[1],jTable1.getSelectedRow(),6);
                // jTable1.setValueAt(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[2],jTable1.getSelectedRow(),7);
                insertEdit[5].setText(String.valueOf(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[0]));
                insertEdit[6].setText(String.valueOf(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[1]));
                insertEdit[7].setText(String.valueOf(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[2]));
                
                if(isProductIN) {
                    myParent.setPriceOneProduct(myParent.getWorkPriceListProduct()[4]); // dostavna cena
// rate --->   jTable1.setValueAt(myParent.getPriceOneProduct()*rate,jTable1.getSelectedRow(),8);
//                    jTable1.setValueAt(myParent.getPriceOneProduct(),jTable1.getSelectedRow(),8);
                    insertEdit[8].setText(String.valueOf(myParent.getPriceOneProduct()));
//                    jTable1.setValueAt(0.0,jTable1.getSelectedRow(),9);
                    insertEdit[9].setText(String.valueOf(0.0));
                    
                } else  // ot sklada navyn;
                {
                    myParent.setPriceOneProduct(myParent.getWorkPriceListProduct()[myParent.getPriceList()-1]); //??????
// rate --->
                    //                   jTable1.setValueAt(myParent.getPriceOneProduct()*rate,jTable1.getSelectedRow(),8);//????
                    insertEdit[8].setText(String.valueOf(myParent.getPriceOneProduct()*rate));
                    //                   jTable1.setValueAt(myParent.getProcentProduct(),jTable1.getSelectedRow(),9);     //??????
                    insertEdit[9].setText(String.valueOf(myParent.getProcentProduct()));
                }
                
                myParent.setDDSProduct(myParent.getProductFee()[0]);
                System.out.println("DDS = "+ myParent.getProductFee()[0] );
//                jTable1.setValueAt(myParent.getDDSProduct(),jTable1.getSelectedRow(),10);
                insertEdit[10].setText(String.valueOf(myParent.getDDSProduct()));
                if(isProductIN) {
//                    jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),myParent.getBrojProduct()),jTable1.getSelectedRow(),11);
                    insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct(),myParent.getBrojProduct())));
                } else {
// rate ---->
//                    jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,myParent.getBrojProduct()),jTable1.getSelectedRow(),11);
                    insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct()*rate,myParent.getBrojProduct())));
                }
                
//               calculateWidthColumn(jTable1);
                
                myParent.setIsSelectProduct(false);
                isSetDataInTable = true;
                
                insertEdit[16].setText(String.valueOf(myParent.getID_PC()));
                insertEdit[17].setText(String.valueOf(myParent.getWorkPriceListProduct()[4]));
                insertEdit[18].setText(String.valueOf( myParent.getWorkPriceListProduct()[0]  ));
                insertEdit[19].setText(String.valueOf( myParent.getWorkPriceListProduct()[1]  ));
                insertEdit[20].setText(String.valueOf( myParent.getWorkPriceListProduct()[2]  ));
                
            }
            System.out.println("++----------------<3>-------F7------------");
            System.out.print("jTable1.getSelectedRow: ");
            System.out.println(jTable1.getSelectedRow());
            System.out.print("jTable1.getSelectedColumn: ");
            System.out.println(jTable1.getSelectedColumn());
            System.out.println("++----------------<3>-------F7-----------");
            //           ((docLineTableModel)jTable1.getModel()).setIsFinishToEnterData(jTable1.getSelectedRow());
        } else {
            //show meseage za valuta
        }
        
    }
    private boolean checkInOutProduct(int doctype) // false - OUT ot skalda; true -  IN v skalda
    {
        if(doctype == PRIEMATELNA_RAZPISKA  || doctype==RAZPISKA_ZA_VRYSHTANE) {
            return true;
        }
        return false;
    }
    
    
    private void  moveProductFStTSt(int in_id_dl,int nal) {
        if(in_id_dl!=0) {
            docLineArray data = new docLineArray();
            data =  myParent.getCountriesT().getRowDocLine(in_id_dl) ;
            int id_pc = data.getID_PC();
            int storageFROM = data.getStorageOut();
            int storageTO = Integer.parseInt(jTextFieldStorageTO.getText());
            
            int levelForNali4nost=0;
            boolean isLevelOne=false;
            switch(myParent.getDocFacadeLevel()) {
                case 2 :
                {
                    levelForNali4nost =0;
                    break;
                }
                case 3 :
                {
                    levelForNali4nost =1;
                    break;
                }
                case 1 :
                {
                    levelForNali4nost =0;
                    isLevelOne=true;
                    break;
                }
            }
            int id_nal = myParent.getCountriesT().searchForNamlichnost(id_pc,storageTO,levelForNali4nost);
            if(id_nal>0) {
                myParent.getCountriesT().increaseProductNal(id_nal,nal,storageTO,id_pc,levelForNali4nost);
                if(isLevelOne) {
                    levelForNali4nost = 1;
                    int id_nal_tmp = myParent.getCountriesT().searchForNamlichnost(id_pc,storageTO,levelForNali4nost);
                    if(id_nal_tmp>0) {
                        myParent.getCountriesT().increaseProductNal(id_nal_tmp,nal,storageTO,id_pc,levelForNali4nost);
                    } else {
                        id_nal =  myParent.getCountriesT().insertProductNal();
                        myParent.getCountriesT().increaseProductNal(id_nal,nal,storageTO,id_pc,levelForNali4nost);
                    }
                }
                
            } else {
                id_nal =  myParent.getCountriesT().insertProductNal();
                myParent.getCountriesT().increaseProductNal(id_nal,nal,storageTO,id_pc,levelForNali4nost);
                if(isLevelOne) {
                    levelForNali4nost = 1;
                    int id_nal_tmp = myParent.getCountriesT().searchForNamlichnost(id_pc,storageTO,levelForNali4nost);
                    if(id_nal_tmp>0) {
                        myParent.getCountriesT().increaseProductNal(id_nal_tmp,nal,storageTO,id_pc,levelForNali4nost);
                    } else {
                        id_nal =  myParent.getCountriesT().insertProductNal();
                        myParent.getCountriesT().increaseProductNal(id_nal,nal,storageTO,id_pc,levelForNali4nost);
                    }
                }
                
            }
        }
    }
    
    
    private void setNNReturnProduct(int brojProdukt) {
        int nn =brojProdukt;
        int levelForNali4nost=0;
        int emulateLevel=2;
        boolean isLevelOne=false;
        switch(myParent.getDocFacadeLevel()) {
            case 2 :
            {
                levelForNali4nost =0;
                emulateLevel=2;
                break;
            }
            case 3 :
            {
                levelForNali4nost =1;
                emulateLevel=3;
                break;
            }
            case 1 :
            {
                levelForNali4nost =0;
                emulateLevel=2;
                isLevelOne=true;
                break;
            }
        }
        int id_nal = myParent.getCountriesT().searchForNamlichnost(myParent.getID_PC(),myParent.getStorageOUTProduct(),levelForNali4nost);
        if(id_nal>0) {
            myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
            if(isLevelOne) {
                levelForNali4nost = 1;
                emulateLevel=3;
                int id_nal_tmp = myParent.getCountriesT().searchForNamlichnost(myParent.getID_PC(),myParent.getStorageOUTProduct(),levelForNali4nost);
                if(id_nal_tmp>0) {
                    myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
                } else {
                    id_nal =  myParent.getCountriesT().insertProductNal();
                    myParent.getCountriesT().increaseProductNal(id_nal,0,myParent.getStorageOUTProduct(),myParent.getID_PC(),levelForNali4nost);
                    myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
                }
            }
            
        } else {
            id_nal =  myParent.getCountriesT().insertProductNal();
            myParent.getCountriesT().increaseProductNal(id_nal,0,myParent.getStorageOUTProduct(),myParent.getID_PC(),levelForNali4nost);
            myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
            if(isLevelOne) {
                levelForNali4nost = 1;
                emulateLevel=3;
                int id_nal_tmp = myParent.getCountriesT().searchForNamlichnost(myParent.getID_PC(),myParent.getStorageOUTProduct(),levelForNali4nost);
                if(id_nal_tmp>0) {
                    myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
                } else {
                    id_nal =  myParent.getCountriesT().insertProductNal();
                    myParent.getCountriesT().increaseProductNal(id_nal,0,myParent.getStorageOUTProduct(),myParent.getID_PC(),levelForNali4nost);
                    myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
                }
            }
        }
        
    }
    private void setNNPreserveProducts(int brojProdukt) {
        int nn =brojProdukt;
        int levelForNali4nost=0;
        int emulateLevel=2;
        boolean isLevelOne=false;
        switch(myParent.getDocFacadeLevel()) {
            case 2 :
            {
                levelForNali4nost =0;
                emulateLevel=2;
                break;
            }
            case 3 :
            {
                levelForNali4nost =1;
                emulateLevel=3;
                break;
            }
            case 1 :
            {
                levelForNali4nost =0;
                emulateLevel=2;
                isLevelOne=true;
                break;
            }
        }
        int id_nal = myParent.getCountriesT().searchForNamlichnost(myParent.getID_PC(),myParent.getStorageOUTProduct(),levelForNali4nost);
        if(id_nal>0) {
            myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
            if(isLevelOne) {
                levelForNali4nost = 1;
                emulateLevel=3;
                int id_nal_tmp = myParent.getCountriesT().searchForNamlichnost(myParent.getID_PC(),myParent.getStorageOUTProduct(),levelForNali4nost);
                if(id_nal_tmp>0) {
                    myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
                } else {
                    id_nal =  myParent.getCountriesT().insertProductNal();
                    myParent.getCountriesT().increaseProductNal(id_nal,0,myParent.getStorageOUTProduct(),myParent.getID_PC(),levelForNali4nost);
                    myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
                }
            }
            
        } else {
            id_nal =  myParent.getCountriesT().insertProductNal();
            myParent.getCountriesT().increaseProductNal(id_nal,0,myParent.getStorageOUTProduct(),myParent.getID_PC(),levelForNali4nost);
            myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
            if(isLevelOne) {
                levelForNali4nost = 1;
                emulateLevel=3;
                int id_nal_tmp = myParent.getCountriesT().searchForNamlichnost(myParent.getID_PC(),myParent.getStorageOUTProduct(),levelForNali4nost);
                if(id_nal_tmp>0) {
                    myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
                } else {
                    id_nal =  myParent.getCountriesT().insertProductNal();
                    myParent.getCountriesT().increaseProductNal(id_nal,0,myParent.getStorageOUTProduct(),myParent.getID_PC(),levelForNali4nost);
                    myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,emulateLevel);
                }
            }
        }
        
    }
    private int getColumnIndex(String in) //test
    {
        int count = jTable1.getColumnCount();
        for(int i=0; i < count; i++) {
            if(jTable1.getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    private void HideColumns(int col) {
        int iColumn = col;
// set column width
        jTable1.getColumnModel().getColumn(iColumn).setMaxWidth(0);
        jTable1.getColumnModel().getColumn(iColumn).setMinWidth(0);
        jTable1.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        jTable1.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
        
    }
    /**
     *
     */
    private void calculateTotalPriceForDocument() {
        
        double ddds = 0;
        double singePrice =0;
        double totalPriceLine = 0;
        int numberPiece = 0;
        int countRows = jTable1.getRowCount();
        
        double totalAllPrice = 0;
        double ddsOsnovaAll =0;
        double ddsPriceAll = 0;
        
        for(int i=0; i < countRows; i++) {
            ddds = (Double)jTable1.getValueAt(i,10);
            //  singePrice = (Double)jTable1.getValueAt(i,8);
            totalPriceLine = (Double) jTable1.getValueAt(i,11);
            //  numberPiece = (Integer) jTable1.getValueAt(i,4);
            ddsOsnovaAll += totalPriceLine;
            ddsPriceAll += (totalPriceLine*ddds/100);
        }
        
        jLabelAllTotal.setText(doubleRoundToString(4,ddsOsnovaAll+ddsPriceAll));
        jLabelDDSOsnova.setText(doubleRoundToString(4,ddsOsnovaAll));
        jLabelAllDDS.setText(doubleRoundToString(4,ddsPriceAll));
    }
    private void checkForDiffWithOutSaveInDB() {
        int countRows = jTable1.getRowCount();
        
        for(int i=0; i < countRows; i++) {
            int tmpId_dl = (Integer)jTable1.getValueAt(i,12);
            try {
                boolean tmp = (Boolean) checkForSaveInDB.get(tmpId_dl);
            } catch(Exception ex) {
                if(tmpId_dl>0) {
                    for(int j=0;j<rows.size();j++) {
                        docLineArray dd = (docLineArray) rows.get(j);
                        if(dd.getID_DocLine()==tmpId_dl) {
                            jTable1.setValueAt(new Integer(dd.getCodeOfProduct()),i,0);
                            jTable1.setValueAt(new String(dd.getNameOfProduct()),i,1);
                            jTable1.setValueAt(new Integer(dd.getStorageOut()),i,2);
                            jTable1.setValueAt(new Integer(dd.getPriceList()),i,3);
                            jTable1.setValueAt(new Integer(dd.getNumberOfProduct()),i,4);
                            jTable1.setValueAt(new Double(dd.getPricePiece()),i,8);
                            jTable1.setValueAt(new Double(dd.getRateReduction()),i,9);
                            jTable1.setValueAt(new Double(dd.getDDS()),i,10);
                            jTable1.setValueAt(new Double(dd.getPriceTotal()),i,11);
                            
                        }
                    }
                }
            }
        }
    }
    private void repareDataFromDBAndJTable() {
        checkForDiffWithOutSaveInDB();
        
        int rowCount = jTable1.getRowCount();
        boolean withRow = false;
        boolean restDocLine =false;
        
        if(isNew) {
            
            for(int i=0; i< rowCount; i++) {
                deleteDocLine(i,withRow,true);
            }
            deleteDocFacade(myParent.getDocFacadeType(),Integer.parseInt(myParent.getNumberDocFacade()),myParent.getDocFacadeLevel(),NON_DEFINE);
        } else {
            if(!isDocFacadeCreate)
                if(rows.size()>0) {
                int id_dl;
                docLineArray d=null;
                
                for(int i=0; i< rowCount; i++) {
                    restDocLine= false;
                    for(int j=0; j < rows.size();j++) {
                        // ako sa ravni vry6tame starite
                        // ako ne iztrivame docLine
                        id_dl = (Integer) jTable1.getValueAt(i,12);
                        d = (docLineArray) rows.get(j);
                        if(id_dl==d.getID_DocLine()) {
                            restDocLine = true;
                            // vry6tane na starite stoinosti
                            myParent.getCountriesT().updateDocLine(d.getID_DocLine(),myParent.getID_DocFacade(),d.getID_PC(),
                                    d.getStorageOut(),d.getPricePiece(),d.getRateReduction(),
                                    d.getNumberOfProduct(),d.getDDS(),d.getPriceTotal(),
                                    d.getPriceList());
                            
                            deleteDocLine(i,withRow,false);
                            break;
                        }
                        
                    }
                    if(!restDocLine) {
                        deleteDocLine(i,withRow,true);
                        
                    }
                }
                }
            if(sales_main.isMakeDocByInputData) {
                int rCount = jTable1.getRowCount();
                for(int i=0; i< rCount;i++) {
                    int id_dl_ =(Integer) jTable1.getValueAt(i,12);
                    myParent.getCountriesT().deleteDocLine(id_dl_);
                }
                myParent.getCountriesT().deleteRow(myParent.getID_DocFacade());
                sales_main.isMakeDocByInputData=false;
                sales_main.dataIn=null;
                sales_main.dataOut=null;
                myParent.refreshTable();
            }
            
            
        }
    }
    private KEDispatcher kk;
    private void getKeyBoardManager() {
        
        java.awt.KeyboardFocusManager kbm = java.awt.KeyboardFocusManager.getCurrentKeyboardFocusManager();
        kk = new KEDispatcher(kbm);
        
    }
    private class KEDispatcher implements KeyEventDispatcher {
        private java.awt.KeyboardFocusManager kbm;
        KEDispatcher(java.awt.KeyboardFocusManager kbm) {
            this.kbm = kbm;
            kbm.addKeyEventDispatcher(this);
        }
        public boolean dispatchKeyEvent(KeyEvent e) {
            
            if(e.getKeyCode()==KeyEvent.VK_F5) {
                System.out.println("KEDispatcher + F5")   ;
                jButtonCreateDocFacade.doClick();
                return false;
            }
            return false;
        }
        
    }
    private String removeCharacter(String ss1) {
        String ret = new String();
        
        
        boolean haveBad = true;
        int f =0;
        String ss = ss1;
        ret="";
        f=ss.indexOf("\uffff");
        while(f!=-1) {
            haveBad=false;
            if(f>0) {
                ret = ss.substring(0,f) ;
                ret += ss.substring(f+1,ss.length());
            } else {
                ret = ss.substring(f+1,ss.length()) ;
                
            }
            f=ret.indexOf("\uffff") ;
            ss = ret;
        }
        if(haveBad) {
            ret = ss;
        }
        return ret;
    }
    private void TransferFocusFromCotragent() {
        
        if(jPanelObekt.isVisible()) {
            jTextFieldObektNo.grabFocus();
        } else {
            if(jPanel4.isVisible()) {
                jTextFieldDistr.grabFocus();
            } else {
                jTable1.requestFocus();
                jTable1.changeSelection(0,0,false,false);
            }
        }
        
    }
    private void TransferFocusFromObekt() {
        jTextFieldDistr.requestFocus();
    }
    private void TransferFocusFromDitributor() {
        jTextFieldDeliver.requestFocus();
    }
    private void TransferFocusFromDeliver() {
        jTable1.requestFocus();
        jTable1.changeSelection(0,0,false,false);
    }
    private void TransferFocusDocTypeIsBrak() {
        jTable1.requestFocus();
        jTable1.changeSelection(0,0,false,false);
    }
    private void initAllTextField() {
        jTextFieldAddress.setText("");
        
        jTextFieldBulstat.setText("");
        jTextFieldComment.setText("");
        jTextFieldComment.setText("");
        
        jTextFieldConNom.setText("");
        jTextFieldContTel.setText("");
        jTextFieldContrMOL.setText("");
        jTextFieldContrName.setText("");
        jTextFieldDanNomer.setText("");
        jTextFieldDeliver.setText("");
        jTextFieldDistr.setText("");
        jTextFieldNomerDoc.setText("");
        jTextFieldObektAddress.setText("");
        
        jTextFieldObektName.setText("");
        jTextFieldObektNo.setText("");
        jTextFieldObektTel.setText("");
        
        
        
    }
    // vry6ta nali4nosti v rezultat na iztrivane na dokument ili na anulirane
    private void rollBackNalichnosti() {
        checkForDiffWithOutSaveInDB();
        
        int rowCount = jTable1.getRowCount();
        boolean withRow = false;
        boolean restDocLine =false;
        if(!isDocFacadeCreate) // ako dokumenta ne e zapisan
        {
            if(rows.size()>0) {
                int id_dl;
                docLineArray d=null;
                
                for(int i=0; i< rowCount; i++) {
                    restDocLine= false;
                    for(int j=0; j < rows.size();j++) {
                        // ako sa ravni vry6tame starite
                        // ako ne iztrivame docLine
                        id_dl = (Integer) jTable1.getValueAt(i,12);
                        d = (docLineArray) rows.get(j);
                        if(id_dl==d.getID_DocLine()) {
                            restDocLine = true;
                            // vry6tane na starite stoinosti
                            myParent.getCountriesT().updateDocLine(d.getID_DocLine(),myParent.getID_DocFacade(),d.getID_PC(),
                                    d.getStorageOut(),d.getPricePiece(),d.getRateReduction(),
                                    d.getNumberOfProduct(),d.getDDS(),d.getPriceTotal(),
                                    d.getPriceList());
                            
                            
                            break;
                        }
                        
                    }
                    if(!restDocLine) {
                        int ttid_dl =(Integer) jTable1.getValueAt(i,12);
                        myParent.getCountriesT().deleteDocLine(ttid_dl);
                        ((docLineTableModel)jTable1.getModel()).removeRow(i);
                    }
                }
            }
        } else // dokumenta e zapisan predvaritelno
        {
            
        }
        int IONalichnost = 0;
        int ddtype = myParent.getDocFacadeType();
        if(ddtype==FAKTURA_DANACHNA || ddtype==FAKTURA_OPROSTENA || ddtype==STOKOVA_RAZPISKA ||
                ddtype==BRAK || ddtype==PROTOKOL_LIPSA || ddtype==PREDAVATELNA_RAZPISKA || ddtype==NAREZDANE_ZA_PREHVYRQNE) {
            IONalichnost = BROI_OUTPUT;
        }
        if(ddtype==PRIEMATELNA_RAZPISKA || ddtype==RAZPISKA_ZA_VRYSHTANE) {
            IONalichnost = BROI_INPUT;
        }
        if(ddtype==OFERTA || ddtype == PROFORMA_FAKTURA) {
            IONalichnost = BROI_NON_IO;
        }
        switch(IONalichnost) {
            case BROI_INPUT:
            {
                for(int i=0;i<jTable1.getRowCount();i++) {
                    int id_pc = (Integer)jTable1.getValueAt(i,16);
                    int sttorage = (Integer)jTable1.getValueAt(i,2);
                    int broi = (Integer)jTable1.getValueAt(i,4);
                    // trebva da se inicializira id_pc i storage
                    setNNPreserveProducts(broi);
                }
                emptyPreservation(true);
                break;
            }
            case BROI_OUTPUT:
            {
                
                for(int i=0;i<jTable1.getRowCount();i++) {
                    int id_pc = (Integer)jTable1.getValueAt(i,16);
                    int sttorage = (Integer)jTable1.getValueAt(i,2);
                    int broi = (Integer)jTable1.getValueAt(i,4);
                    // trebva da se inicializira id_pc i storage
                    setNNReturnProduct(broi);
                }
                emptyReturnet(true);
                break;
            }
            case BROI_NON_IO:
            {
                break;
            }
        }
    }
    private void clearAllVariables() {
        columnSelect = 0;
        rowSelect = 0;
        productDescription_1= 0 ;
        productDescription_2 = 0;
        productDescription_3 = 0;
        id_df_NewFaktura = 0;
    }
    private  class ColorColumnRenderer extends DefaultTableCellRenderer {
        Color bkgndColor, fgndColor;
        
        public ColorColumnRenderer(Color bkgnd, Color foregnd) {
            super();
            bkgndColor = bkgnd;
            fgndColor = foregnd;
        }
        
        public Component getTableCellRendererComponent
                (JTable table, Object value, boolean isSelected,
                boolean hasFocus, int row, int column) {
            Component cell = super.getTableCellRendererComponent
                    (table, value, isSelected, hasFocus, row, column);
            
            cell.setBackground( bkgndColor );
            cell.setForeground( fgndColor );
            
            return cell;
        }
    }
//=============
    private boolean checkForMoreRecord(java.sql.ResultSet rr) {
        int countRecord = 0;
        boolean isMoreRecord = false;
        try {
            while(rr.next()) {
                countRecord++;
                if(countRecord >= 2) {
                    isMoreRecord = true;
                    break;
                }
            }
            rr.first();
        } catch(Exception ss){};
        return isMoreRecord;
    }
    private boolean callOrNotCallDialog(boolean moreOrNot,int sqlselect,java.sql.ResultSet rr,boolean isDistributor) {
        String ContragentData[] = new String[7];
        String ObectData[] = new String[4];
        String codeDistributorDeliver;
        boolean return_value = moreOrNot;
        if(!moreOrNot) // ima samo edin zappis
        {
            
            if(sqlselect == selectDataOfDocFacade.CONTARGENT_ADDRESS | sqlselect == selectDataOfDocFacade.CONTARGENT_BULSTAT | sqlselect == selectDataOfDocFacade.CONTARGENT_DAN_NO |
                    sqlselect == selectDataOfDocFacade.CONTARGENT_MOL | sqlselect == selectDataOfDocFacade.CONTARGENT_NAME | sqlselect == selectDataOfDocFacade.CONTARGENT_NAME |
                    sqlselect == selectDataOfDocFacade.CONTARGENT_NO | sqlselect == selectDataOfDocFacade.CONTARGENT_TEL) {
                
           /*  String columnNameContragent[] =  {"id_contragent","Код на контрагента","Име на контрагента",
             "Булстат на контрагента","Дан No на контрагента","Адрес на контрагента",
             "id_nm","Телефон на контрагента","Fax на контрагента","Email на контрагента",
             "Web на контрагента", "id_mol","МОЛ на контрагента"};*/
                try {
                    rr.first();
                    //  rr.next();
                    int ID = (Integer)rr.getInt("id_contragent");
                    myParent.setID_Contragent(ID);
                    ContragentData[0] =(String)rr.getString(2); // code
                    ContragentData[3] = (String)rr.getString(3);  // name
                    ContragentData[1] = (String)rr.getString(4);  // bulstat
                    ContragentData[2] = (String)rr.getString(5);   // dany4en
                    ContragentData[4] = (String)rr.getString(6); //address
                    ContragentData[6] = (String)rr.getString(8); // telefon
                    ContragentData[5] = (String)rr.getString(13); // MOL - name
                    
                    myParent.setContragentData(ContragentData);
                    
                    
                } catch(SQLException ss){System.out.println("erroro");};
                
            }
            
            if(sqlselect == selectDataOfDocFacade.OBEKT_ADDRESS | sqlselect == selectDataOfDocFacade.OBEKT_NAME | sqlselect == selectDataOfDocFacade.OBEKT_NO | sqlselect == selectDataOfDocFacade.OBEKT_TEL) {
           /* String columnNameObekt[] = {"id_n_obekt","Код","Име на обекта","Адрес на обекта","id_ls_n_person","Телефон на обекта"}; // da se napi6at imenata na kolonite
             columnName = columnNameObekt;
             this.setTitle("О Б Е К Т");*/
                try {
                    int ID = (Integer)rr.getInt("id_obekt");
                    myParent.setID_Obekt(ID);
                    ObectData[0] = (String)rr.getString(2); // code
                    ObectData[1] = (String)rr.getString(3); // name
                    ObectData[2] = (String)rr.getString(4); // address
                    ObectData[3] = (String)rr.getString(6);; //telefon
                    
                    myParent.setObektData(ObectData);
                    
                } catch(SQLException ss){};
            }
            if(sqlselect == selectDataOfDocFacade.DISTRIBUTOR_DELIVER) {
            /* String columnNameDistDeliver[] = {"id_ls_n_person","Код","ЕГН","НЛК","Име","Коментар"}; // da se napi6at imenata ba kolonite
             columnName = columnNameDistDeliver;
             this.setTitle("ДИСТРИБУТОР/ДОСТАВЧИК");*/
                try {
                    if(isDistributor) // true  - ditributor
                    {
                        int ID = (Integer)rr.getInt("id_ls_n_person");
                        int codeD = (Integer)rr.getInt(2);
                        codeDistributorDeliver = String.valueOf(codeD);
                        myParent.setID_Distributor(ID);
                        myParent.setDistributorDocFacade(codeDistributorDeliver);
                    } else // false deliver
                    {
                        int ID = (Integer)rr.getInt("id_ls_n_person");
                        int codeD = (Integer)rr.getInt(2);
                        codeDistributorDeliver = String.valueOf(codeD);
                        myParent.setID_Deliver(ID);
                        myParent. setDeliverDocFacade(codeDistributorDeliver);
                    }
                } catch(SQLException ss){};
                
            }
            
            
        }
        
        return return_value;
    }
    private void jFocusGained(java.awt.event.FocusEvent evt, JTextField field){
    field.selectAll();
    }
    private void createInsertEditField() {
        
        
        int len =20;
        int h = 20;
        for(int i=0;i<viewCow;i++) {
            len = jTable1.getColumnModel().getColumn(i).getPreferredWidth();
            switch (i) {
                case 0:
                {
                    insertEdit[0] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[0].setInputVerifier(new imakante.com.InputIntegerVerifier());
                    insertEdit[0].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[0].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[0]);
                        }});
                    break;
                }
                case 3:
                {
                    insertEdit[3] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[3].setInputVerifier(new imakante.com.InputIntegerVerifier());
                    insertEdit[3].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[3].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[3]);
                        }});
                    break;
                }
                case 4:
                {
                    insertEdit[4] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[4].setInputVerifier(new imakante.com.InputIntegerVerifier());
                    insertEdit[4].setBackground(Color.GRAY);
                    insertEdit[4].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[4].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[4]);
                        }});
                    break;
                }
                case 5:
                {
                    insertEdit[5] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[5].setInputVerifier(new imakante.com.InputIntegerVerifier());
                    insertEdit[5].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[5].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[5]);
                        }});
                    break;
                }
                case 6:
                {
                    insertEdit[6] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[6].setInputVerifier(new imakante.com.InputIntegerVerifier());
                    insertEdit[6].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[6].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[6]);
                        }});
                    break;
                }
                case 7:
                {
                    insertEdit[7] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[7].setInputVerifier(new imakante.com.InputIntegerVerifier());
                    insertEdit[7].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[7].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[7]);
                        }});
                    break;
                }
                case 8:
                {
                    insertEdit[8] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[8].setInputVerifier(new imakante.com.InputDoubleVerifier());
                    insertEdit[8].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                   insertEdit[8].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[8]);
                        }});
                    break;
                }
                case 9:
                {
                    insertEdit[9] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[9].setInputVerifier(new imakante.com.InputDoubleVerifier());
                    insertEdit[9].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[9].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[9]);
                        }});
                    break;
                }
                case 10:
                {
                    insertEdit[10] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[10].setInputVerifier(new imakante.com.InputDoubleVerifier());
                    insertEdit[10].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[10].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[10]);
                        }});
                    break;
                }
                case 11:
                {
                    insertEdit[11] =new JTextField(); // new org.softsmithy.lib.swing.JIntegerField();
                    insertEdit[11].setInputVerifier(new imakante.com.InputDoubleVerifier());
                    insertEdit[11].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                    insertEdit[11].addFocusListener(new java.awt.event.FocusAdapter() {
                        public void focusGained(java.awt.event.FocusEvent evt) {
                            jFocusGained(evt,insertEdit[11]);
                        }});
                    break;
                }
                default:
                {
                    insertEdit[i] = new JTextField();
                    insertEdit[i].setHorizontalAlignment(javax.swing.JTextField.LEFT);
                }
            }
            
            insertEdit[i].setPreferredSize(new Dimension(len,h));
            jPanelInsertEdit.add(insertEdit[i]);
            if(i>11) insertEdit[i].setVisible(false);
        }
        
        insertEdit[11].setEditable(false);
        insertEdit[11].setBackground(Color.RED);
        // prihva6tane na scrollbara
        
        jScrollEdinInsert.setHorizontalScrollBar(jScrollPane2.getHorizontalScrollBar());
        
    }
    
    private void calculateWidthInsertEditFieldALL() {
        jPanelInsertEdit.removeAll();
        Runtime.getRuntime().gc();
        createInsertEditField();
        int len =20;
        int h = 20;
        for(int i=0;i<viewCow;i++) {
            if(i>11) break;
            len = jTable1.getColumnModel().getColumn(i).getPreferredWidth();
            insertEdit[i].setMinimumSize(new Dimension(len,h));
            insertEdit[i].setMaximumSize(new Dimension(999,h));
            insertEdit[i].setPreferredSize(new Dimension(len,h));
            
        }
        jPanelInsertEdit.repaint();
        setKeyListenerInserEdit();
        
    }
    
    private void setKeyListenerInserEdit() {
        if(key0!=null) insertEdit[0].removeKeyListener(key0);
        if(key1!=null) insertEdit[1].removeKeyListener(key1);
        if(key2!=null) insertEdit[2].removeKeyListener(key2);
        if(key3!=null) insertEdit[3].removeKeyListener(key3);
        if(key4!=null) insertEdit[4].removeKeyListener(key4);
        if(key5!=null) insertEdit[5].removeKeyListener(key5);
        if(key6!=null) insertEdit[6].removeKeyListener(key6);
        if(key7!=null) insertEdit[7].removeKeyListener(key7);
        if(key8!=null) insertEdit[8].removeKeyListener(key8);
        if(key9!=null) insertEdit[9].removeKeyListener(key9);
        if(key10!=null) insertEdit[10].removeKeyListener(key10);
        
// kode na produkta
        key0 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                
                
                if(e.getKeyCode()==e.VK_F7) {
                    imakante.com.InputIntegerVerifier ii = new  imakante.com.InputIntegerVerifier();
                    if(!ii.verify(insertEdit[0])) return;
                    isFinishRow = false;
                    str = insertEdit[0].getText();
                    clearInsertEditData();
                    
                    processKeyPress(myParent.getDocFacadeType(),F7_KEY,SEARCH_BY_CODE,4);
                    
                }
                if(e.getKeyCode()==e.VK_F8) {
                    imakante.com.InputIntegerVerifier ii = new  imakante.com.InputIntegerVerifier();
                    if(!ii.verify(insertEdit[0])) return;
                    isFinishRow = false;
                    str = insertEdit[0].getText();
                    clearInsertEditData();
                    processKeyPress(myParent.getDocFacadeType(),F8_KEY,SEARCH_BY_CODE,4);
                }
                if(e.getKeyCode()==e.VK_F9) {
                    imakante.com.InputIntegerVerifier ii = new  imakante.com.InputIntegerVerifier();
                    if(!ii.verify(insertEdit[0])) return;
                    isFinishRow = false;
                    str = insertEdit[0].getText();
                    clearInsertEditData();
                    processKeyPress(myParent.getDocFacadeType(),F9_KEY,SEARCH_BY_CODE,4);
                }
                if(e.getKeyCode()==e.VK_ENTER) {
                    if(insertEdit[0].getText().equals("")){
                   System.out.print('\u0007');
                    }
                    else{
                    insertEdit[0].transferFocus();}
                }
                
                
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        
        insertEdit[0].addKeyListener(key0);
// ime na produkta
        key1 =  new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_F7) {
                    isFinishRow = false;
                    str = insertEdit[1].getText();
                    clearInsertEditData();
                    
                    processKeyPress(myParent.getDocFacadeType(),F7_KEY,SEARCH_BY_NAME,3);
                    
                }
                if(e.getKeyCode()==e.VK_F8) {
                    isFinishRow = false;
                    str = insertEdit[1].getText();
                    clearInsertEditData();
                    processKeyPress(myParent.getDocFacadeType(),F8_KEY,SEARCH_BY_NAME,3);
                }
                if(e.getKeyCode()==e.VK_F9) {
                    isFinishRow = false;
                    str = insertEdit[1].getText();
                    clearInsertEditData();
                    processKeyPress(myParent.getDocFacadeType(),F9_KEY,SEARCH_BY_NAME,3);
                    
                }
                if(e.getKeyCode()==e.VK_ENTER) {
                    insertEdit[1].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[1].addKeyListener(key1);
// nomer sklad
        key2 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_ENTER) {
                    insertEdit[2].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[2].addKeyListener(key2);
// Cenova lista
        key3 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_ENTER) {
                    int pp =  Integer.valueOf(insertEdit[3].getText()) ;             // (Integer)  jTable1.getValueAt(rowSelect,columnSelect);
                    double p[] = new double[3];
                    if(!isProductIN) {
                        if(pp>=1 && pp <=3) {
                            System.out.println("---------->"+String.valueOf(pp));
                            p = myParent.getWorkPriceListProduct();
                            
                            jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(pp)[0]));
                            jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(pp)[1]));
                            jLabelPrice_1.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(pp)[0]-1]));
                            jLabelPrice_2.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(pp)[1]-1]));
//rate--------->
                            // jTable1.setValueAt(myParent.getWorkPriceListProduct()[pp-1]*rate,rowSelect,8);
                            insertEdit[8].setText(String.valueOf(myParent.getWorkPriceListProduct()[pp-1]*rate ));
                            myParent.setPriceOneProduct(myParent.getWorkPriceListProduct()[pp-1]);
                            // jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),myParent.getBrojProduct()),jTable1.getSelectedRow(),11);
                            insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct(),myParent.getBrojProduct())));
                            
                        } else {
                            //jTable1.setValueAt(myParent.getPriceList(),rowSelect,columnSelect);
                            insertEdit[3].setText(String.valueOf(myParent.getPriceList()));
                            jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[0]));
                            jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[1]));
//rate ---------->
                            jLabelPrice_1.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[0]-1]*rate));
                            jLabelPrice_2.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[1]-1]*rate));
                            
                            
                            
                        }
                    } else // produkta se vkarva v sklada, negovata cenova lista zadylzitelno trqbva da byde "0",
                        // t.e. dostavna cena
                    {
                        //jTable1.setValueAt(0,rowSelect,columnSelect);
                        insertEdit[3].setText("0");
                    }
                    insertEdit[3].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[3].addKeyListener(key3);
// Broj produkti
        key4 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_ENTER || e.getKeyCode()==e.VK_TAB) {
                    int br = 0;
                    if(insertEdit[4].getText().equals("")){}
                    else{br =Integer.valueOf(insertEdit[4].getText()); }  //(Integer) jTable1.getValueAt(rowSelect,columnSelect) ;
                    br = java.lang.Math.abs(br);
                    if(isProductIN) {
                        //jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[0],jTable1.getSelectedRow(),5);
                        //jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[1],jTable1.getSelectedRow(),6);
                        //jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[2],jTable1.getSelectedRow(),7);
                        //jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br),jTable1.getSelectedRow(),11);
                        
                        insertEdit[5].setText(String.valueOf(calculateProductDescription(br,productDescription_2,productDescription_3)[0] ));
                        insertEdit[6].setText(String.valueOf(calculateProductDescription(br,productDescription_2,productDescription_3)[1] ));
                        insertEdit[7].setText(String.valueOf(calculateProductDescription(br,productDescription_2,productDescription_3)[2] ));
                        insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct(),br)));
                        
                    } else
                        if(true) // br <= myParent.getBrojProduct()
                        {
                        // jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[0],jTable1.getSelectedRow(),5);
                        // jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[1],jTable1.getSelectedRow(),6);
                        // jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[2],jTable1.getSelectedRow(),7);
                        // jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br),jTable1.getSelectedRow(),11);
                        insertEdit[5].setText(String.valueOf(calculateProductDescription(br,productDescription_2,productDescription_3)[0] ));
                        insertEdit[6].setText(String.valueOf(calculateProductDescription(br,productDescription_2,productDescription_3)[1] ));
                        insertEdit[7].setText(String.valueOf(calculateProductDescription(br,productDescription_2,productDescription_3)[2] ));
                        insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct(),br) ));
                        }
                    insertEdit[4].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[4].addKeyListener(key4);
// Razfasovka 1
        key5 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_ENTER) {
                    isTyped = false;
                    int rz1 = 0;
                    if(insertEdit[5].getText().equals("")){}
                    else{
                        rz1 = Integer.valueOf(String.valueOf( insertEdit[5].getText()));
                    }  //(Integer) jTable1.getValueAt(rowSelect,columnSelect);
                    
                    rz1 = java.lang.Math.abs(rz1);
                    int br = 0;
                    if( insertEdit[4].getText().equals("")){}
                    else{ br = Integer.valueOf(String.valueOf( insertEdit[4].getText()))  ; }      //(Integer) jTable1.getValueAt(rowSelect,4) ;
                    int oldRz1 = calculateProductDescription(br,productDescription_2,productDescription_3)[0];
                    if(rz1<=productDescription_2) {
                        int tmp = (rz1-oldRz1);
                        if(isProductIN) {
                            //jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
                            insertEdit[4].setText(String.valueOf(new Integer(br+tmp)));
//rate-------> jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                            //jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br+tmp),jTable1.getSelectedRow(),11);
                            insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp)));
                        } else
                            if(true) // (br+tmp)<=myParent.getBrojProduct()
                            {
                            // jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
                            insertEdit[4].setText(String.valueOf(new Integer(br+tmp)));
                            //rate------->
                            //jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                            insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp)));
                            } else insertEdit[5].setText(String.valueOf(new Integer(oldRz1))); //jTable1.setValueAt(new Integer(oldRz1),rowSelect,5);
                    } else insertEdit[5].setText(String.valueOf(new Integer(oldRz1)));//jTable1.setValueAt(new Integer(oldRz1),rowSelect,5);
                    jScrollEdinInsert.getHorizontalScrollBar().setValue(jScrollEdinInsert.getHorizontalScrollBar().getMaximum());
                    
                    insertEdit[5].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[5].addKeyListener(key5);
// Razfasovka 2
        key6 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_ENTER) {
                    int rz2 = 0;
                    if(insertEdit[6].getText().equals("")){}
                    else{rz2 =Integer.valueOf(insertEdit[6].getText());}     //(Integer) jTable1.getValueAt(rowSelect,columnSelect);
                    rz2 = java.lang.Math.abs(rz2);
                    int br = 0;
                    if(insertEdit[4].getText().equals("")){}
                    else{br = Integer.valueOf(insertEdit[4].getText());} //(Integer) jTable1.getValueAt(rowSelect,4) ;
                    int oldRz2 = calculateProductDescription(br,productDescription_2,productDescription_3)[1];
                    if( rz2 <= productDescription_3 ) {
                        int tmp = (rz2-oldRz2);
                        tmp *=  productDescription_2;
                        if(isProductIN) {
                            //jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
                            insertEdit[4].setText(String.valueOf(new Integer(br+tmp)));
          //rate ------> jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                           // jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br+tmp),jTable1.getSelectedRow(),11);
                            insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp)));
                        } else
                            if(true) // (br+tmp)<=myParent.getBrojProduct()
                            {
                            // jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
                            insertEdit[4].setText(String.valueOf(new Integer(br+tmp)));
         //rate ------>
                            //jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                            insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp)));
                            } else   insertEdit[6].setText(String.valueOf(new Integer(oldRz2)));  //jTable1.setValueAt(new Integer(oldRz2),rowSelect,6);
                        
                        
                    } else   insertEdit[6].setText(String.valueOf(new Integer(oldRz2)));//jTable1.setValueAt(new Integer(oldRz2),rowSelect,6);
                    insertEdit[6].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[6].addKeyListener(key6);
// Razfasovka 3
        key7 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_ENTER) {
                    int rz3 = 0;
                    if(insertEdit[7].getText().equals(""))
                    {}
                    else{ rz3 = Integer.valueOf(insertEdit[7].getText());  }   ;//(Integer) jTable1.getValueAt(rowSelect,columnSelect);
                    rz3 = java.lang.Math.abs(rz3);
                    int br = 0;
                    if(insertEdit[4].getText().equals("")){}
                    else{br = Integer.valueOf(insertEdit[4].getText());}  //(Integer) jTable1.getValueAt(rowSelect,4) ;
                    int oldRz3 = calculateProductDescription(br,productDescription_2,productDescription_3)[2];
                    
                    int tmp = (rz3-oldRz3);
                    tmp *=  productDescription_3;
                    if(isProductIN) {
                        // jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
                        insertEdit[4].setText(String.valueOf( new Integer(br+tmp) ))  ;
//rate ----->jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                        // jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br+tmp),jTable1.getSelectedRow(),11);
                        insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct(),br+tmp) ))  ;
                    } else
                        if(true) // (br+tmp)<=myParent.getBrojProduct()
                        {
                        //jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
                        insertEdit[4].setText(String.valueOf( new Integer(br+tmp) ))  ;
//rate ----->
                        //jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                        insertEdit[11].setText(String.valueOf(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp)))  ;
                        } else  insertEdit[7].setText(String.valueOf(new Integer(oldRz3)))    ;//jTable1.setValueAt(new Integer(oldRz3),rowSelect,7);
                    insertEdit[7].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[7].addKeyListener(key7);
// Edini4na cena
        key8 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_ENTER) {
                    if(!isProductIN) {
                        double newPrice = 0;
                        if(insertEdit[8].getText().equals("")){}
                        else{newPrice = Double.valueOf(insertEdit[8].getText());}    // (Double)jTable1.getValueAt(rowSelect,columnSelect);
                        int br =0;
                        if(insertEdit[4].getText().equals("")){}
                        else{br = Integer.valueOf(insertEdit[4].getText());}            //(Integer) jTable1.getValueAt(rowSelect,4) ;
                        
                        if(true)    //ograni4eniq v cenata -> naprimer: (newPrice>=myParent.getPriceOneProduct()*rate)
                        {
                            double newPP =0;
                            if(myParent.getPriceOneProduct()!=0){
                             newPP =100-((newPrice*100)/(myParent.getPriceOneProduct()*rate));} //za da ne se poluchi bezkrainost v sluchai na 0
                            if(newPP>0) {
                                //jTable1.setValueAt(new Double(newPP),rowSelect,9);
                                insertEdit[9].setText(String.valueOf(new Double(newPP) ));
                                if(newPP==myParent.getProcentProduct())
                                    //jTable1.setValueAt(new Double(0),rowSelect,9);
                                    insertEdit[9].setText(String.valueOf(new Double(0)));
                            } else {
                                //jTable1.setValueAt(new Double(0),rowSelect,9);
                                insertEdit[9].setText(String.valueOf(new Double(0)));
                            }
                            
                            //jTable1.setValueAt(calculateTotalPrice(newPrice,br),jTable1.getSelectedRow(),11);
                            insertEdit[11].setText(String.valueOf(calculateTotalPrice(newPrice,br)));
                        } else insertEdit[8].setText(String.valueOf(myParent.getPriceOneProduct()*rate)); //jTable1.setValueAt(myParent.getPriceOneProduct()*rate,rowSelect,8);
                    } else insertEdit[8].setText(String.valueOf(myParent.getPriceOneProduct())); //jTable1.setValueAt(myParent.getPriceOneProduct(),rowSelect,8);
                    insertEdit[8].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[8].addKeyListener(key8);
//Procent otstypka
        key9 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(e.getKeyCode()==e.VK_ENTER) {
                    if(!isProductIN) {
                        double newPrice1 = Double.valueOf(insertEdit[8].getText());  //(Double)jTable1.getValueAt(rowSelect,8);
                        if(newPrice1<=myParent.getPriceOneProduct()*rate) {
                            
                            double newPP = Double.valueOf(insertEdit[9].getText()); //(Double)jTable1.getValueAt(rowSelect,columnSelect);
                            int br = Integer.valueOf(insertEdit[4].getText())             ;// (Integer) jTable1.getValueAt(rowSelect,4) ;
                            if(newPP <= myParent.getProcentProduct()&& newPP>0) {
                                double newPrice =(myParent.getPriceOneProduct()*rate)-(newPP/100)*(myParent.getPriceOneProduct()*rate);
                                // jTable1.setValueAt(new Double(newPrice),rowSelect,8);
                                insertEdit[8].setText(String.valueOf(new Double(newPrice)));
                                // jTable1.setValueAt(calculateTotalPrice(newPrice,br),jTable1.getSelectedRow(),11);
                                insertEdit[11].setText(String.valueOf(calculateTotalPrice(newPrice,br)));
                            } else insertEdit[9].setText(String.valueOf(new Double(0))); //jTable1.setValueAt(new Double(0),rowSelect,9);
                        } else insertEdit[9].setText(String.valueOf(new Double(0))); //jTable1.setValueAt(new Double(0),rowSelect,9);
                    } else insertEdit[9].setText(String.valueOf(myParent.getProcentProduct())); //jTable1.setValueAt(myParent.getProcentProduct(),rowSelect,9);
                    insertEdit[9].transferFocus();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[9].addKeyListener(key9);
        
        key10 = new KeyListener() {
            public void keyPressed(KeyEvent e) {
            }
            public void keyReleased(KeyEvent e) {
                
                if(e.getKeyCode()==e.VK_ENTER) {
                    //----------------- START---------------
                    if(isLoadRow) {
                        isSetDataInTable = true;
                        if(selectedjTableRow==-1) return;
                        ((docLineTableModel) jTable1.getModel()).removeRow(selectedjTableRow) ;
                    }
                    System.out.println("START  insertEdit[10].addKeyListener - VK_ENTER");
                    if(!isSetDataInTable) return;
                    System.out.println("columnSelect == 10");
                    
                    if( !isFinishRow) //proverka dali e priklu4ilo vyvezdaneto na reda
                    {
                        str="";
                        System.out.println("Start save data in DB");
                        double alldds = Double.parseDouble(jLabelAllDDS.getText());
                        //                        alldds += (Double) jTable1.getValueAt(rowSelect,11)*(Double) jTable1.getValueAt(rowSelect,10)/100;
                        alldds += Double.valueOf(insertEdit[11].getText())*Double.valueOf(insertEdit[10].getText())/100;
                        //   jLabelAllDDS.setText(doubleRoundToString(4,alldds));
                        double ddsOsnova = Double.parseDouble(jLabelDDSOsnova.getText());
                        //                      ddsOsnova += (Double) jTable1.getValueAt(rowSelect,11);
                        ddsOsnova += Double.valueOf(insertEdit[11].getText());
                        //     jLabelDDSOsnova.setText(doubleRoundToString(4,ddsOsnova));
                        double allTotal = Double.parseDouble(jLabelAllTotal.getText());
                        allTotal = alldds+ddsOsnova;
                        //      jLabelAllTotal.setText(doubleRoundToString(4,allTotal));
                        
                        System.out.println("Общо = "+ allTotal + "::"+doubleRoundToString(4,allTotal));
                        System.out.println("ДДС = "+ alldds + "::"+doubleRoundToString(4,alldds));
                        System.out.println("База = "+ ddsOsnova + "::" + doubleRoundToString(4,ddsOsnova));
                        
                        //                        jTable1.setValueAt(true,jTable1.getSelectedRow(),24); // markirame reda - ve4e ne moze da se redaktira
                        
                        //                        myParent.setPriceOneProduct((Double) jTable1.getValueAt(rowSelect,8));
                        myParent.setPriceOneProduct(Double.valueOf(insertEdit[8].getText()));
                        //                        myParent.setProcentProduct((Double) jTable1.getValueAt(rowSelect,9));
                        myParent.setProcentProduct(Double.valueOf(insertEdit[9].getText()));
                        if(true) //jTable1.getSelectedRow()==(jTable1.getRowCount() - 1)   pri polovfenie 4e reda e posleden
                        {
                            //                              int i = 0;
                            System.out.println("IF ROW IS LAST");
                            //                              i = jTable1.getSelectedRow();
                            //                              ((docLineTableModel)jTable1.getModel()).setDefaultCellEditable();
                            //  ((docLineTableModel)jTable1.getModel()).setIsFinishToEnterData(i); // markirame reda kato priklu4en s vyvezdaneto
                            //                              ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray());
                            //                              jTable1.changeSelection(i+1,-1,false,false);
                            System.out.println("changeSelection");
                            
                            //                              ((docLineTableModel) jTable1.getModel()).enableCellEditable(0);
                            //za tyrsene po ime
                            //                               ((docLineTableModel) jTable1.getModel()).enableCellEditable(1);
                            // Save DocLine into DATABASE
                            int nn = Integer.valueOf(insertEdit[4].getText());            // (Integer)jTable1.getValueAt(rowSelect,4);
                            int prList = Integer.valueOf(insertEdit[3].getText());        // (Integer)jTable1.getValueAt(rowSelect,3);
                            double dds = Double.valueOf(insertEdit[10].getText());                 //  (Double)jTable1.getValueAt(rowSelect,10);
                            double total =  Double.valueOf(insertEdit[11].getText());             //  (Double)jTable1.getValueAt(rowSelect,11);
                            //    int tmpProductNumbers = myParent.getCountriesT().checkForEnoughProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getDocFacadeLevel());
                            if(true) {
// PRIEMATELNA_RAZPISKA - IN produkt
                                if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA || myParent.getDocFacadeType()==RAZPISKA_ZA_VRYSHTANE ) {
                                    if(!isLoadRow) {
                                        myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                myParent.getProcentProduct(),nn,dds,total,prList);
                                        
                                        int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                        //  jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                        insertEdit[12].setText(String.valueOf(maxID_DocLine));
                                        //vry5tane na prodikta v tablicata s nali4nosti
                                        
                                        setNNReturnProduct(nn);
                                        
                                        
                                    } else {
                                        
                                        int id_dl=0;
                                        if(insertEdit[12].getText().equals("")){
                                        }else{
                                        id_dl =Integer.valueOf(insertEdit[12].getText()); }    // (Integer) jTable1.getValueAt(rowSelect,12);
                                       int newNumberProduct = nn;
                                        docLineArray d =null;
                                        int oldNumberProduct = 0;
                                        for(int j=0; j < rows.size();j++) {
                                            d = (docLineArray) rows.get(j);
                                            if(id_dl==d.getID_DocLine()) {
                                                oldNumberProduct = d.getNumberOfProduct();
                                                break;
                                            }
                                            
                                        }
                                        if(newNumberProduct > oldNumberProduct) {
                                            
                                            //    myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(newNumberProduct-oldNumberProduct),myParent.getDocFacadeLevel());
                                            setNNReturnProduct(newNumberProduct-oldNumberProduct);
                                            
                                        } else {
                                            
                                            // myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(oldNumberProduct-newNumberProduct ),myParent.getDocFacadeLevel());
                                            setNNPreserveProducts(oldNumberProduct-newNumberProduct);
                                        }
                                        if(oldNumberProduct>0) {
                                            myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                    myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                    myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                        } else {
                                            myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                    myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                            int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                            //  jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                            insertEdit[12].setText(String.valueOf(maxID_DocLine));
                                            
                                        }
                                        
                                    }
                                }
                                
                                else
//NAREZDANE_ZA_PREHVYRQNE
                                    if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE) {
                                    int storageTO = myParent.getStorageOUTProduct();
                                    if(isLoadRow) {
                                        //vzimane na razlikata ot tablicata za DocLine i redaktiranite broiki ot jTable1
                                        // vry6tane na razlikata ako ima takava ili zapazvane na brojkite
                                        int id_dl=0;
                                        if(insertEdit[12].getText().equals("")){
                                        }else{
                                        id_dl =Integer.valueOf(insertEdit[12].getText()); }    // (Integer) jTable1.getValueAt(rowSelect,12);
                                       int newNumberProduct = nn;
                                        docLineArray d =null;
                                        int oldNumberProduct = 0;
                                        for(int j=0; j < rows.size();j++) {
                                            d = (docLineArray) rows.get(j);
                                            if(id_dl==d.getID_DocLine()) {
                                                oldNumberProduct = d.getNumberOfProduct();
                                                break;
                                            }
                                            
                                        }
                                        if(true) //newNumberProduct<tmpProductNumbers
                                        {
                                            if(newNumberProduct > oldNumberProduct  ) {
                                                myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(newNumberProduct - oldNumberProduct),myParent.getDocFacadeLevel());
                                            }else {
                                                myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(oldNumberProduct-newNumberProduct ),myParent.getDocFacadeLevel());
                                            }
                                            
                                            if(oldNumberProduct>0) {
                                                
                                                myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                        storageTO,myParent.getPriceOneProduct(),
                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                            } else {
                                                myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),storageTO,myParent.getPriceOneProduct(),
                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                                int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                                //  jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                                insertEdit[12].setText(String.valueOf(maxID_DocLine));
                                                
                                            }
                                        } else // nqma dostaty4ni koli4etvo ot produkta
                                        {
                                            //  ((docLineTableModel) jTable1.getModel()).removeRow(rowSelect) ;
                                            //  ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray());
                                            
                                        }
                                    } else // ako dokumenta e nov
                                    {
                                        myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),storageTO,myParent.getPriceOneProduct(),
                                                myParent.getProcentProduct(),nn,dds,total,prList);
                                        
                                        int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                        // jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                        insertEdit[12].setText(String.valueOf(maxID_DocLine));
                                        //zapazvane na prodikta v tablicata s nali4nosti
                                        myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,myParent.getDocFacadeLevel());
                                    }
                                    } else
//!PROFORMA_FAKTURA ili OFETRA
                                        if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA && myParent.getDocFacadeType()!=OFERTA) {
                                    int storageTO = myParent.getStorageOUTProduct();
                                    if(isLoadRow) {
                                        //vzimane na razlikata ot tablicata za DocLine i redaktiranite broiki ot jTable1
                                        // vry6tane na razlikata ako ima takava ili zapazvane na brojkite
                                        int id_dl=0;
                                        if(insertEdit[12].getText().equals("")){
                                        }else{
                                        id_dl =Integer.valueOf(insertEdit[12].getText()); }    // (Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d =null;
                                        int oldNumberProduct = 0;
                                        for(int j=0; j < rows.size();j++) {
                                            d = (docLineArray) rows.get(j);
                                            if(id_dl==d.getID_DocLine()) {
                                                oldNumberProduct = d.getNumberOfProduct();
                                                break;
                                            }
                                            
                                        }
                                        if(true) //newNumberProduct<tmpProductNumbers
                                        {
                                            if(newNumberProduct > oldNumberProduct  ) {
                                                myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(newNumberProduct - oldNumberProduct),myParent.getDocFacadeLevel());
                                            }else {
                                                myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(oldNumberProduct-newNumberProduct ),myParent.getDocFacadeLevel());
                                            }
                                            
                                            if(oldNumberProduct>0) {
                                                double newPrice1 =Double.valueOf(insertEdit[8].getText());               // (Double) jTable1.getValueAt(rowSelect,8);
                                                double newPP1 =Double.valueOf(insertEdit[9].getText());                 // (Double) jTable1.getValueAt(rowSelect,9);
                                                myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                        storageTO,newPrice1,
                                                        newPP1,newNumberProduct,dds,total,prList);
                                            } else {
                                                double newPrice1 =Double.valueOf(insertEdit[8].getText());      // (Double) jTable1.getValueAt(rowSelect,8);
                                                double newPP1 = Double.valueOf(insertEdit[9].getText());       //(Double) jTable1.getValueAt(rowSelect,9);
                                                myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),storageTO,newPrice1,
                                                        newPP1,newNumberProduct,dds,total,prList);
                                                int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                                //  jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                                insertEdit[12].setText(String.valueOf(maxID_DocLine));
                                                
                                            }
                                        } else // nqma dostaty4ni koli4etvo ot produkta
                                        {
                                            //   ((docLineTableModel) jTable1.getModel()).removeRow(rowSelect) ;
                                            //   ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray());
                                            
                                        }
                                    } else // ako dokumenta e nov
                                    {
                                        double newPrice1 =Double.valueOf(insertEdit[8].getText());        // (Double) jTable1.getValueAt(rowSelect,8);
                                        double newPP1 =Double.valueOf(insertEdit[9].getText());           // (Double) jTable1.getValueAt(rowSelect,9);
                                        myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),storageTO,newPrice1,
                                                newPP1,nn,dds,total,prList);
                                        
                                        int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                        //  jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                        insertEdit[12].setText(String.valueOf(maxID_DocLine));
                                        //zapazvane na prodikta v tablicata s nali4nosti
                                        myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn,myParent.getDocFacadeLevel());
                                    }
                                        }
// ==POFORMA_FAKTURA ili OFERTA
                                        else // ako dokumenta e POFORMA_FAKTURA ili OFERTA
                                            if(myParent.getDocFacadeType()==PROFORMA_FAKTURA || myParent.getDocFacadeType()==OFERTA){
                                    if(isLoadRow) {
                                        int id_dl =Integer.valueOf(insertEdit[12].getText());                       //(Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d = (docLineArray) rows.get(rowSelect);
                                        
                                        
                                        myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                    } else {
                                        myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                myParent.getProcentProduct(),nn,dds,total,prList);
                                        
                                        int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                        //  jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                        insertEdit[12].setText(String.valueOf(maxID_DocLine));
                                    }
                                            }
                                
                            } else {
                                // ((docLineTableModel) jTable1.getModel()).removeRow(rowSelect);
                                if(rowSelect==0) {
                                    //((docLineTableModel) jTable1.getModel()).addRow(new docLineArray());
                                }
                                
                            }
                            isSetDataInTable = false;
                            
                        }
                        
                    }
                    
                    isFinishRow = true;
                    int tmpId_dl =Integer.valueOf(insertEdit[12].getText());                   //(Integer)jTable1.getValueAt(rowSelect,12);
                    checkForSaveInDB.put(new Integer(tmpId_dl),new Boolean(true));
                    
                    str="";
                    
                    enterAllDataToTable();
                    clearInsertEditData();
                    calculateTotalPriceForDocument();
                    jScrollEdinInsert.getHorizontalScrollBar().setValue(jScrollEdinInsert.getHorizontalScrollBar().getMinimum());
                    insertEdit[0].setEditable(true);
                    insertEdit[1].setEditable(true);
                    System.out.println("End procedure to save in DB");
                    //-------------------STOP-----------------
                }
                
                
                
                
            }
            public void keyTyped(KeyEvent e) {
            }
        };
        insertEdit[10].addKeyListener(key10);
        
        
        
        
    }
    
    private void enterAllDataToTable() {
        
        docLineArray dd = new docLineArray();
        dd.setCodeOfProduct(Integer.valueOf(insertEdit[0].getText()));
        dd.setNameOfProduct(insertEdit[1].getText());
        dd.setStorageOut(Integer.valueOf(insertEdit[2].getText()));
        dd.setPriceList(Integer.valueOf(insertEdit[3].getText()));
        dd.setNumberOfProduct(Integer.valueOf(insertEdit[4].getText()));
        int tmp[] = new int[3];
        tmp[0] = Integer.valueOf(insertEdit[5].getText());
        tmp[1] = Integer.valueOf(insertEdit[6].getText());
        tmp[2] = Integer.valueOf(insertEdit[7].getText());
        dd.setNumerOfDisBand(tmp);
        dd.setPricePiece(Double.valueOf(insertEdit[8].getText()));
        dd.setRateReduction(Double.valueOf(insertEdit[9].getText()));
        dd.setDDS(Double.valueOf(insertEdit[10].getText()));
        dd.setPriceTotal(Double.valueOf(insertEdit[11].getText()));
        dd.setID_DocLine(Integer.valueOf(insertEdit[12].getText()));
        String strTmp[] = new String[3];
        strTmp[0] = insertEdit[13].getText();
        strTmp[1] = insertEdit[14].getText();
        strTmp[2] = insertEdit[15].getText();
        dd.setNameOfDisBand(strTmp);
        ((docLineTableModel) jTable1.getModel()).addRow(dd);
    }
    
    private void clearInsertEditData() {
        for(int i=0;i<viewCow;i++) {
            insertEdit[i].setText("");
        }
        insertEdit[0].requestFocus();
    }
    private void calculateRowInsertEdit() {
        double price = Double.valueOf(insertEdit[8].getText());
        int numberProd = Integer.valueOf(insertEdit[4].getText());
        double totoal = price*numberProd;
        insertEdit[11].setText(String.valueOf(totoal));
    }
    private void setPopupMenuListener() {
        jTableMenuIntem1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                if(isNew) return;
                try {
                    int id_dl = (Integer)jTable1.getValueAt(jTable1.getSelectedRow(),12);
                    
                    if(id_dl>0) {
                        loadJTableToInsertEdit();
                         isFinishRow = false;
                         insertEdit[0].setEditable(false);
                         insertEdit[1].setEditable(false);
                    }
                    
                } catch(Exception ex){};
            }
        });
    }
    private void loadJTableToInsertEdit() {
        int  row  = jTable1.getSelectedRow();
        selectedjTableRow = row;
        for(int i=0;i<viewCow;i++) {
            String srt = String.valueOf(jTable1.getValueAt(row,i));
            insertEdit[i].setText(srt) ;
            
        }
   /*  productDescription_1 = Integer.parseInt(insertEdit[21].getText());
     productDescription_2 = Integer.parseInt(insertEdit[22].getText());
     productDescription_3 = Integer.parseInt(insertEdit[23].getText());
     double pricelist[] = new double[5];
     pricelist[0] =Double.valueOf(insertEdit[18].getText()); //   \
     pricelist[1] = Double.valueOf(insertEdit[19].getText()); //   > cenova lista
     pricelist[2] = Double.valueOf(insertEdit[20].getText()); //  /
    
     pricelist[3] =1;  // curs
     pricelist[4] =  Double.valueOf(insertEdit[17].getText());  // dostavna cena
     myParent.setWorkPriceListProduct(pricelist);
     myParent.setPriceList(Integer.valueOf( insertEdit[3].getText()));*/
        isLoadRow=true;
    }
    
  private HashMap reBuildRowsHashMap(HashMap in,int forRemove)  
  {
      HashMap newRows = new HashMap();
      int key=0;
      for(int i=0;i<in.size();i++)
      {
          if(i!=forRemove)
          {
              newRows.put(key,in.get(i));
              key++;
          }
             
      }
      
      return newRows;
      
  }
}// end class




