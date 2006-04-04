
package imakante.sales;

import imakante.com.vcomponents.iDialog;
import imakante.com.vcomponents.iFrame;
import imakante.com.vcomponents.iInternalFrame;
import java.awt.AWTEvent;
import java.awt.Event;
import java.awt.event.ComponentEvent;
import java.awt.event.ComponentListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.ArrayList;
import java.util.EventObject;
import java.util.HashMap;
import javax.swing.*;
import java.util.Date;
import java.sql.*;
import java.awt.*;
import imakante.sales.FrmDocumentFacade;
import javax.swing.event.CellEditorListener;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.event.TableColumnModelEvent;
import javax.swing.event.TableColumnModelListener;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import imakante.sales.FrmDocumentFacade;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;
import java.awt.event.*;
import java.awt.Robot;
import java.awt.AWTException;
import java.lang.Math;
import javax.swing.border.*;
import java.math.*;
import org.netbeans.lib.awtextra.AbsoluteLayout;

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
    
    
    //DOKUMENTI
    final public static int STOKOVA_RAZPISKA=1;
    final public static int FAKTURI=2;
    final public static int FAKTURA_OPROSTENA = 201;
    final public static int FAKTURA_DANACHNA = 202;
    final public static int PROFORMA_FAKTURA=3;
    
    
    final public static int KONSGNACIONEN_PROTOKOL=4;
    final public static int NAREZDANE_ZA_PREHVYRQNE=5;
    final public static int PRIEMATELNA_RAZPISKA =6;
    final public static int PREDAVATELNA_RAZPISKA =7;
   
   public static int tetstcount =0;           
    
    
    
    /** Creates new form aeGroup */
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
        selectDocumentTypeToView(DocFacadeType);
        jTable1.getTableHeader().setReorderingAllowed(false);
        jTable1.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        jTable1.setModel(new docLineTableModel());
        jScrollPane2.getViewport().add(jTable1);
        jScrollPane2.repaint();
         setInputLisener();
        
        InputMap im = jTable1.getInputMap(JTable.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);
        KeyStroke tab = KeyStroke.getKeyStroke(KeyEvent.VK_TAB, 0);
        KeyStroke enter = KeyStroke.getKeyStroke(KeyEvent.VK_ENTER, 0);
        im.put(enter, im.get(tab));
        KeyStroke right = KeyStroke.getKeyStroke(KeyEvent.VK_RIGHT, 0);
        im.put(right, "none");
        jTable1.setInputMap(0,im);
        calculateWidthColumn(jTable1);
         
        
        getNavigatiionState();
        
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        
        if(isNew)
        {
            nowDate = new Date();
            repainUserEdit(0,false);
        }
        else
        {
            
        }
         imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
         String strDate;
         strDate = String.valueOf(jXDateCurs.getDate().getDate());
         strDate += "/" + String.valueOf(jXDateCurs.getDate().getMonth());
         strDate += "/" + String.valueOf(jXDateCurs.getDate().getYear()+1900);
         String DateSQLFormat = dateManip.convertDate(strDate);
        arrayRate = myParent.getCountriesT().getCurentRate(DateSQLFormat);
        if(arrayRate.size()<=0) jLabelInfoCurs.setVisible(true);
        else jLabelInfoCurs.setVisible(false);
        repaintComp();
        
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
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
        jLabel24 = new javax.swing.JLabel();
        jPanelCreateFacturi = new javax.swing.JPanel();
        jCheckBox1 = new javax.swing.JCheckBox();
        jButton1 = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jXDateCurs = new org.jdesktop.swingx.JXDatePicker();
        jLabelInfoCurs = new javax.swing.JLabel();

        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
        });

        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

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

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(500, 20, 250, 60));

        jPanelHead.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel1.setText("\u041d\u043e\u043c\u0435\u0440 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442:");

        jLabel2.setText("\u0414\u0430\u0442\u0430:");

        jLabelDocType.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabelDocType.setText("\u041f\u0420\u0418\u0415\u041c\u0410\u0422\u0415\u041b\u041d\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410");

        jTextFieldNomerDoc.setInputVerifier(new imakante.com.InputIntegerVerifier());

        jXDateDocument.setFont(new java.awt.Font("Times New Roman", 0, 12));
        jXDateDocument.setMinimumSize(new java.awt.Dimension(127, 20));
        jXDateDocument.setPreferredSize(new java.awt.Dimension(127, 20));

        org.jdesktop.layout.GroupLayout jPanelHeadLayout = new org.jdesktop.layout.GroupLayout(jPanelHead);
        jPanelHead.setLayout(jPanelHeadLayout);
        jPanelHeadLayout.setHorizontalGroup(
            jPanelHeadLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelHeadLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelHeadLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel2)
                    .add(jLabel1))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelHeadLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelHeadLayout.createSequentialGroup()
                        .add(jTextFieldNomerDoc, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 120, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 49, Short.MAX_VALUE)
                        .add(jLabelDocType))
                    .add(jPanelHeadLayout.createSequentialGroup()
                        .add(jXDateDocument, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(258, 258, 258))))
        );
        jPanelHeadLayout.setVerticalGroup(
            jPanelHeadLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelHeadLayout.createSequentialGroup()
                .add(jPanelHeadLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelHeadLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanelHeadLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel1)
                            .add(jTextFieldNomerDoc, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED))
                    .add(jPanelHeadLayout.createSequentialGroup()
                        .add(jLabelDocType, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(14, 14, 14)))
                .add(jPanelHeadLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel2)
                    .add(jXDateDocument, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel2.add(jPanelHead, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 20, 490, 60));

        jPanelContragent.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel3.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 No:");

        jLabel4.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 \u0438\u043c\u0435:");

        jLabel5.setText("\u0411\u0443\u043b\u0441\u0442\u0430\u0442:");

        jLabel6.setText("\u0414\u0430\u043d.No:");

        jLabel7.setText("\u0437\u0430\u0434\u044a\u043b\u0436\u0435\u043d\u0438\u044f:");

        jLabel8.setText("\u0410\u0434\u0440\u0435\u0441:");

        jLabel9.setText("\u0422\u0435\u043b:");

        jLabel10.setText("\u041f\u0440\u043e\u0441\u0440\u043e\u0447\u0432\u0430\u043d\u0435:");

        jTextFieldContrName.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldContrName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldContrNameKeyPressed(evt);
            }
        });

        jTextFieldBulstat.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldBulstat.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldBulstatKeyPressed(evt);
            }
        });

        jTextFieldDanNomer.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldDanNomer.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDanNomerKeyPressed(evt);
            }
        });

        jTextFieldZadylveniq.setPreferredSize(new java.awt.Dimension(80, 20));

        jTextFieldConNom.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldConNom.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldConNomKeyPressed(evt);
            }
        });

        jTextFieldAddress.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldAddress.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldAddressKeyPressed(evt);
            }
        });

        jTextFieldContTel.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextFieldContTel.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldContTel.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldContTelKeyPressed(evt);
            }
        });

        jTextFieldProsro4vane.setPreferredSize(new java.awt.Dimension(80, 20));

        jLabel15.setText("\u041c\u041e\u041b \u0438\u043c\u0435:");

        jTextFieldContrMOL.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldContrMOL.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldContrMOLKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanelContragentLayout = new org.jdesktop.layout.GroupLayout(jPanelContragent);
        jPanelContragent.setLayout(jPanelContragentLayout);
        jPanelContragentLayout.setHorizontalGroup(
            jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelContragentLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel3)
                    .add(jPanelContragentLayout.createSequentialGroup()
                        .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jLabel6)
                            .add(jLabel5)
                            .add(jLabel7))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jPanelContragentLayout.createSequentialGroup()
                        .add(jTextFieldConNom, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(12, 12, 12)
                        .add(jLabel4))
                    .add(jPanelContragentLayout.createSequentialGroup()
                        .add(jTextFieldBulstat, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jLabel8))
                    .add(jPanelContragentLayout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanelContragentLayout.createSequentialGroup()
                                .add(jTextFieldZadylveniq, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 27, Short.MAX_VALUE)
                                .add(jLabel10))
                            .add(jPanelContragentLayout.createSequentialGroup()
                                .add(jTextFieldDanNomer, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 49, Short.MAX_VALUE)
                                .add(jLabel15)))))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelContragentLayout.createSequentialGroup()
                        .add(jTextFieldProsro4vane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel9)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jTextFieldContTel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                        .add(org.jdesktop.layout.GroupLayout.LEADING, jTextFieldContrName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(org.jdesktop.layout.GroupLayout.LEADING, jTextFieldAddress, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(org.jdesktop.layout.GroupLayout.LEADING, jTextFieldContrMOL, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 352, Short.MAX_VALUE)))
                .add(21, 21, 21))
        );
        jPanelContragentLayout.setVerticalGroup(
            jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelContragentLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3)
                    .add(jTextFieldConNom, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel4)
                    .add(jTextFieldContrName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel5)
                    .add(jTextFieldBulstat, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel8)
                    .add(jTextFieldAddress, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel6)
                    .add(jTextFieldDanNomer, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel15)
                    .add(jTextFieldContrMOL, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelContragentLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel7)
                    .add(jTextFieldZadylveniq, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel10)
                    .add(jTextFieldProsro4vane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel9)
                    .add(jTextFieldContTel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2.add(jPanelContragent, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 80, 730, 120));

        jPanelObekt.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel11.setText("\u041e\u0431\u0435\u043a\u0442 No:");

        jLabel12.setText("\u0422\u0435\u043b.:");

        jLabel13.setText("\u0418\u043c\u0435:");

        jLabel14.setText("\u0410\u0434\u0440\u0435\u0441:");

        jTextFieldObektNo.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldObektNo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldObektNoKeyPressed(evt);
            }
        });

        jTextFieldObektName.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldObektName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldObektNameKeyPressed(evt);
            }
        });

        jTextFieldObektTel.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldObektTel.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldObektTelKeyPressed(evt);
            }
        });

        jTextFieldObektAddress.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldObektAddress.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldObektAddressKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanelObektLayout = new org.jdesktop.layout.GroupLayout(jPanelObekt);
        jPanelObekt.setLayout(jPanelObektLayout);
        jPanelObektLayout.setHorizontalGroup(
            jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelObektLayout.createSequentialGroup()
                .add(39, 39, 39)
                .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel11)
                    .add(jLabel12))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jTextFieldObektNo, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextFieldObektTel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(62, 62, 62)
                .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel13)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel14))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jTextFieldObektAddress, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 387, Short.MAX_VALUE)
                    .add(jTextFieldObektName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 387, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanelObektLayout.setVerticalGroup(
            jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelObektLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelObektLayout.createSequentialGroup()
                        .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel13)
                            .add(jTextFieldObektName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel14)
                            .add(jTextFieldObektAddress, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                    .add(jPanelObektLayout.createSequentialGroup()
                        .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel11)
                            .add(jTextFieldObektNo, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelObektLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTextFieldObektTel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jLabel12))))
                .add(59, 59, 59))
        );
        jPanel2.add(jPanelObekt, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 200, 730, 70));

        jPanel4.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 2, 11));

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(446, 60));
        jLabel16.setText("\u0414\u0438\u0441\u0442\u0440.:");
        jPanel4.add(jLabel16);

        jTextFieldDistr.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldDistr.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDistrKeyPressed(evt);
            }
        });

        jPanel4.add(jTextFieldDistr);

        jLabel17.setText("\u0414\u043e\u0441\u0442.:");
        jPanel4.add(jLabel17);

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

        jPanel2.add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 270, 430, 60));

        jPanelDocLine.setLayout(new javax.swing.BoxLayout(jPanelDocLine, javax.swing.BoxLayout.X_AXIS));

        jPanelDocLine.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jScrollPane2MouseClicked(evt);
            }
        });

        jPanelDocLine.add(jScrollPane2);

        jPanel2.add(jPanelDocLine, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 330, 730, 200));

        jPanelPrice.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel19.setText("\u0412\u0438\u0434 \u043f\u043b\u0430\u0449\u0430\u043d\u0435:");

        jComboBoxVidPla6tane.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "\u041e\u0422\u041b\u041e\u0416\u0415\u041d\u041e", "\u0411\u0420\u041e\u0419", "\u0411\u0410\u041d\u041a\u0410", "\u0427\u0410\u0421\u0422\u0418\u0427\u041d\u041e" }));
        jComboBoxVidPla6tane.setPreferredSize(new java.awt.Dimension(100, 20));

        jLabel20.setText("\u0414\u0430\u0442\u0430:");

        org.jdesktop.layout.GroupLayout jPanelPriceLayout = new org.jdesktop.layout.GroupLayout(jPanelPrice);
        jPanelPrice.setLayout(jPanelPriceLayout);
        jPanelPriceLayout.setHorizontalGroup(
            jPanelPriceLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelPriceLayout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel19)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jComboBoxVidPla6tane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel20)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePay, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 113, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanelPriceLayout.setVerticalGroup(
            jPanelPriceLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelPriceLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelPriceLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jXDatePay, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanelPriceLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel19)
                        .add(jLabel20)
                        .add(jComboBoxVidPla6tane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 24, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(21, Short.MAX_VALUE))
        );
        jPanel2.add(jPanelPrice, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 530, 340, 60));

        jPanel5.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabelDDSOsnovaText.setText("\u0414\u0430\u043d\u044a\u0447\u043d\u0430 \u043e\u0441\u043d\u043e\u0432\u0430:");

        jLabelAllDDSText.setText("\u0414\u0414\u0421:");

        jLabelDDSOsnova.setText("0.0");

        jLabelAllDDS.setText("0.0");

        jLabel28.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel28.setText("\u041e\u0411\u0429\u041e");

        jLabelAllTotal.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabelAllTotal.setText("0.0");

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .add(10, 10, 10)
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabelDDSOsnovaText)
                    .add(jLabelAllDDSText))
                .add(46, 46, 46)
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabelDDSOsnova)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabelAllDDS))
                .add(39, 39, 39)
                .add(jLabel28)
                .add(14, 14, 14)
                .add(jLabelAllTotal, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 64, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(75, 75, 75))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabelAllDDSText)
                    .add(jPanel5Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel28)
                            .add(jLabelAllDDS)
                            .add(jLabelAllTotal))))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabelDDSOsnovaText)
                    .add(jLabelDDSOsnova))
                .add(21, 21, 21))
        );
        jPanel2.add(jPanel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 530, 390, 60));

        jButtonCreateDocFacade.setText("\u0421\u044a\u0437\u0434\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442");
        jButtonCreateDocFacade.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCreateDocFacadeActionPerformed(evt);
            }
        });

        jPanel2.add(jButtonCreateDocFacade, new org.netbeans.lib.awtextra.AbsoluteConstraints(580, 640, -1, -1));

        jPanel6.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel30.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u0438:");

        jLabelAllBrojProduct.setText("00");

        jLabel32.setText("000");

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

        org.jdesktop.layout.GroupLayout jPanel6Layout = new org.jdesktop.layout.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jPanel6Layout.createSequentialGroup()
                        .add(jLabel30)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabelAllBrojProduct))
                    .add(jLabel32))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelPriceList, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 217, Short.MAX_VALUE))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel30)
                    .add(jLabelAllBrojProduct))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 17, Short.MAX_VALUE)
                .add(jLabel32)
                .addContainerGap())
            .add(jPanelPriceList, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 56, Short.MAX_VALUE)
        );
        jPanel2.add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 270, 300, 60));

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

        jPanel2.add(jSplitPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 590, 730, 50));

        jButton2.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u043b\u0438\u043d\u0438\u044f");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 640, 150, -1));

        jButtonAnulirane.setText("\u0410\u043d\u0443\u043b\u0438\u0440\u0430\u043d\u0435");
        jButtonAnulirane.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonAnuliraneActionPerformed(evt);
            }
        });

        jPanel2.add(jButtonAnulirane, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 640, -1, -1));

        jButtonDellDocFadade.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442");
        jButtonDellDocFadade.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDellDocFadadeActionPerformed(evt);
            }
        });

        jPanel2.add(jButtonDellDocFadade, new org.netbeans.lib.awtextra.AbsoluteConstraints(420, 640, -1, -1));

        jButton3.setText("\u0414\u043e\u0431\u0430\u0432\u044f\u043d\u0435 \u043d\u0430 \u043b\u0438\u043d\u0438\u044f");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 640, -1, -1));

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

        jPanel2.add(jPanelStorageINOUT, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 80, 300, 50));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, -20, 770, 670));

        jLabel24.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043a\u0443\u0440\u0441:");
        getContentPane().add(jLabel24, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 660, -1, -1));

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

        getContentPane().add(jPanelCreateFacturi, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 650, 420, 50));

        jButtonClose.setFont(new java.awt.Font("Tahoma", 1, 11));
        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButtonClose.setPreferredSize(new java.awt.Dimension(100, 23));
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        getContentPane().add(jButtonClose, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 690, -1, -1));

        jXDateCurs.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jXDateCursActionPerformed(evt);
            }
        });

        getContentPane().add(jXDateCurs, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 680, -1, -1));

        jLabelInfoCurs.setForeground(new java.awt.Color(255, 0, 51));
        jLabelInfoCurs.setText("\u041d\u0435 \u0435 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0430 \u0434\u0430\u0442\u0430!");
        getContentPane().add(jLabelInfoCurs, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 710, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jXDateCursActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jXDateCursActionPerformed
// TODO add your handling code here:
         imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
         String strDate;
         strDate = String.valueOf(jXDateCurs.getDate().getDate());
         strDate += "/" + String.valueOf(jXDateCurs.getDate().getMonth());
         strDate += "/" + String.valueOf(jXDateCurs.getDate().getYear()+1900);
         String DateSQLFormat = dateManip.convertDate(strDate);
        arrayRate = myParent.getCountriesT().getCurentRate(DateSQLFormat);
        if(arrayRate.size()<=0) jLabelInfoCurs.setVisible(true);
        else jLabelInfoCurs.setVisible(false);;
    }//GEN-LAST:event_jXDateCursActionPerformed

    private void jCheckBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCheckBox1ActionPerformed
// TODO add your handling code here:
         if(jCheckBox1.isSelected())
        {
            myParent.getArrayOfID_DF().add((Integer)myParent.getID_DocFacade());
            isCheckOne = true;
            tetstcount++;
            System.out.println(tetstcount);
        }
         else
         {
             if(myParent.getArrayOfID_DF().size()>0)
             {
                 for(int i=0; i < myParent.getArrayOfID_DF().size(); i++)
                 {
                     int id_df = (Integer)myParent.getArrayOfID_DF().get(i);
                     if(id_df == myParent.getID_DocFacade())
                     {
                        myParent.getArrayOfID_DF().remove(i);
                     }
                 }
                if(myParent.getArrayOfID_DF().size()>0) isCheckOne = false; 
             }
             else isCheckOne=false;
              
         }
    }//GEN-LAST:event_jCheckBox1ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
// TODO add your handling code here:
        ((docLineTableModel) jTable1.getModel()).addRow(new docLineArray());
        ((docLineTableModel) jTable1.getModel()).enableCellEditable(0);
        
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
  
   
   Thread t = new Thread(new Runnable() {
       public void run()
       {
           createArraysForFactura();
       }
   });
   
   t.start();
   
   
   
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButtonDellDocFadadeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDellDocFadadeActionPerformed
// TODO add your handling code here:
        deleteDocFacade(myParent.getID_DocFacade());
        myParent.refreshTable();
    }//GEN-LAST:event_jButtonDellDocFadadeActionPerformed

    private void jButtonAnuliraneActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonAnuliraneActionPerformed
// TODO add your handling code here:
        cancellationDocFacade(myParent.getID_DocFacade());
        myParent.refreshTable();
    }//GEN-LAST:event_jButtonAnuliraneActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
// TODO add your handling code here:
        boolean withRow = true;
        boolean alsoInDb = true;
        if(isNew)
        {
        
        deleteDocLine(jTable1.getSelectedRow(),withRow,alsoInDb);
        }
        else
        {
            int id_dl = (Integer) jTable1.getValueAt(jTable1.getSelectedRow(),12);
            int id_pc=0;
            for(int i=0; i < rows.size();i++)
            {
                docLineArray d = (docLineArray) rows.get(i);
                if(id_dl == d.getID_DocLine())
                {
                    id_pc=d.getID_PC();
                    rows.remove(i);
                    break;
                }
            }
          
           int storage = (Integer) jTable1.getValueAt(jTable1.getSelectedRow(),2);
           int nal = (Integer) jTable1.getValueAt(jTable1.getSelectedRow(),4);
           
           myParent.getCountriesT().returnProducts(id_pc,storage,nal);
           myParent.getCountriesT().emptyReturnProducts(id_dl,nal);
           myParent.getCountriesT().deleteDocLine(id_dl)   ;
            ((docLineTableModel)jTable1.getModel()).removeRow(jTable1.getSelectedRow());
           
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButtonCreateDocFacadeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCreateDocFacadeActionPerformed
// TODO add your handling code here:
        int id_df = myParent.getID_DocFacade();
        createDocument(id_df,myParent.getDocFacadeType(),0);
        isDocFacadeCreate = true;
        
    }//GEN-LAST:event_jButtonCreateDocFacadeActionPerformed
    
    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
// TODO add your handling code here:
    //    System.exit(-1);
    }//GEN-LAST:event_formWindowClosed
    
    private void jScrollPane2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jScrollPane2MouseClicked
// TODO add your handling code here:
        
        
    }//GEN-LAST:event_jScrollPane2MouseClicked
        
    private void jTextFieldDeliverKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDeliverKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextDistDeliv(jTextFieldDeliver.getText(),selectDataOfDocFacade.DELIVER);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,false);
            jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
          //  repainObektData(myParent.getID_Obekt());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextDistDeliv(jTextFieldDeliver.getText(),selectDataOfDocFacade.DELIVER);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,false);
            jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
          //  repainObektData(myParent.getID_Obekt());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextDistDeliv(jTextFieldDeliver.getText(),selectDataOfDocFacade.DELIVER);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,false);
            jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
          //  repainObektData(myParent.getID_Obekt());
        }
    }//GEN-LAST:event_jTextFieldDeliverKeyPressed
    
    private void jTextFieldDistrKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDistrKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextDistDeliv(jTextFieldDistr.getText(),selectDataOfDocFacade.DISTRIBUTOR);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,true);
            jTextFieldDistr.setText(myParent.getDistributorDocFacade());
          //  repainObektData(myParent.getID_Obekt());
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextDistDeliv(jTextFieldDistr.getText(),selectDataOfDocFacade.DISTRIBUTOR);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,true);
            jTextFieldDistr.setText(myParent.getDistributorDocFacade());
           // repainObektData(myParent.getID_Obekt());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextDistDeliv(jTextFieldDistr.getText(),selectDataOfDocFacade.DISTRIBUTOR);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.DISTRIBUTOR_DELIVER,true);
            jTextFieldDistr.setText(myParent.getDistributorDocFacade());
          //  repainObektData(myParent.getID_Obekt());
        }
    }//GEN-LAST:event_jTextFieldDistrKeyPressed
    
    private void jTextFieldObektTelKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldObektTelKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektTel.getText(),OBEKT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_TEL,false);
            repainObektData(myParent.getID_Obekt());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextObekt(jTextFieldObektTel.getText(),OBEKT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_TEL,false);
            repainObektData(myParent.getID_Obekt());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextObekt(jTextFieldObektTel.getText(),OBEKT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_TEL,false);
            repainObektData(myParent.getID_Obekt());
        }
    }//GEN-LAST:event_jTextFieldObektTelKeyPressed
    
    private void jTextFieldObektAddressKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldObektAddressKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektAddress.getText(),OBEKT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_ADDRESS,false);
            repainObektData(myParent.getID_Obekt());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextObekt(jTextFieldObektAddress.getText(),OBEKT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_ADDRESS,false);
            repainObektData(myParent.getID_Obekt());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextObekt(jTextFieldObektAddress.getText(),OBEKT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_ADDRESS,false);
            repainObektData(myParent.getID_Obekt());
        }
    }//GEN-LAST:event_jTextFieldObektAddressKeyPressed
    
    private void jTextFieldObektNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldObektNameKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektName.getText(),OBEKT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NAME,false);
            repainObektData(myParent.getID_Obekt());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextObekt(jTextFieldObektName.getText(),OBEKT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NAME,false);
            repainObektData(myParent.getID_Obekt());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextObekt(jTextFieldObektName.getText(),OBEKT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NAME,false);
            repainObektData(myParent.getID_Obekt());
        }
    }//GEN-LAST:event_jTextFieldObektNameKeyPressed
    
    private void jTextFieldObektNoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldObektNoKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextObekt(jTextFieldObektNo.getText(),OBEKT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NO,false);
            repainObektData(myParent.getID_Obekt());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextObekt(jTextFieldObektNo.getText(),OBEKT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NO,false);
            repainObektData(myParent.getID_Obekt());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextObekt(jTextFieldObektNo.getText(),OBEKT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.OBEKT_NO,false);
            repainObektData(myParent.getID_Obekt());
        }
    }//GEN-LAST:event_jTextFieldObektNoKeyPressed
    
    private void jTextFieldContTelKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldContTelKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContTel.getText(),CONTARGENT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_TEL,false);
            repainContragentData(myParent.getID_Contragent());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldContTel.getText(),CONTARGENT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_TEL,false);
            repainContragentData(myParent.getID_Contragent());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldContTel.getText(),CONTARGENT_TEL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_TEL,false);
            repainContragentData(myParent.getID_Contragent());
        }
    }//GEN-LAST:event_jTextFieldContTelKeyPressed
    
    private void jTextFieldContrMOLKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldContrMOLKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContrMOL.getText(),CONTARGENT_MOL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_MOL,false);
            repainContragentData(myParent.getID_Contragent());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldContrMOL.getText(),CONTARGENT_MOL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_MOL,false);
            repainContragentData(myParent.getID_Contragent());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldContrMOL.getText(),CONTARGENT_MOL);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_MOL,false);
            repainContragentData(myParent.getID_Contragent());
        }
    }//GEN-LAST:event_jTextFieldContrMOLKeyPressed
    
    private void jTextFieldAddressKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldAddressKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldAddress.getText(),CONTARGENT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_ADDRESS,false);
            repainContragentData(myParent.getID_Contragent());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldAddress.getText(),CONTARGENT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_ADDRESS,false);
            repainContragentData(myParent.getID_Contragent());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldAddress.getText(),CONTARGENT_ADDRESS);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_ADDRESS,false);
            repainContragentData(myParent.getID_Contragent());
        }
    }//GEN-LAST:event_jTextFieldAddressKeyPressed
    
    private void jTextFieldContrNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldContrNameKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldContrName.getText(),CONTARGENT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NAME,false);
            repainContragentData(myParent.getID_Contragent());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldContrName.getText(),CONTARGENT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NAME,false);
            repainContragentData(myParent.getID_Contragent());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldContrName.getText(),CONTARGENT_NAME);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NAME,false);
            repainContragentData(myParent.getID_Contragent());
        }
    }//GEN-LAST:event_jTextFieldContrNameKeyPressed
    
    private void jTextFieldDanNomerKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDanNomerKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldDanNomer.getText(),CONTARGENT_DAN_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_DAN_NO,false);
            repainContragentData(myParent.getID_Contragent());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldDanNomer.getText(),CONTARGENT_DAN_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_DAN_NO,false);
            repainContragentData(myParent.getID_Contragent());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldDanNomer.getText(),CONTARGENT_DAN_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_DAN_NO,false);
            repainContragentData(myParent.getID_Contragent());
        }
    }//GEN-LAST:event_jTextFieldDanNomerKeyPressed
    
    private void jTextFieldBulstatKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldBulstatKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldBulstat.getText(),CONTARGENT_BULSTAT);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_BULSTAT,false);
            repainContragentData(myParent.getID_Contragent());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldBulstat.getText(),CONTARGENT_BULSTAT);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_BULSTAT,false);
            repainContragentData(myParent.getID_Contragent());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldBulstat.getText(),CONTARGENT_BULSTAT);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_BULSTAT,false);
            repainContragentData(myParent.getID_Contragent());
        }
    }//GEN-LAST:event_jTextFieldBulstatKeyPressed
    
    private void jTextFieldConNomKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldConNomKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F7) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableIncludeTextContragent(jTextFieldConNom.getText(),CONTARGENT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NO,false);
            
            repainContragentData(myParent.getID_Contragent());
            
        }
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F8) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableStartTextContragent(jTextFieldConNom.getText(),CONTARGENT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NO,false);
            repainContragentData(myParent.getID_Contragent());
        }
        
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_F9) {
            java.sql.ResultSet rs1 = myParent.getCountriesT().getTableFinishTextContragent(jTextFieldConNom.getText(),CONTARGENT_NO);
            Connection conn1 = myParent.getCountriesT().getConn();
            dialogSelectData = new imakante.sales.selectDataOfDocFacade(myParent,true,rs1,conn1,selectDataOfDocFacade.CONTARGENT_NO,false);
            repainContragentData(myParent.getID_Contragent());
        }
    }//GEN-LAST:event_jTextFieldConNomKeyPressed
            
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
// TODO add your handling code here:
        int rowCount = jTable1.getRowCount();
        boolean withRow = false;
        boolean restDocLine =false;
        
        if(isNew)
        {
        
        for(int i=0; i< rowCount; i++)
        {
            deleteDocLine(i,withRow,true);
        }
        deleteDocFacade(myParent.getDocFacadeType(),Integer.parseInt(myParent.getNumberDocFacade()),myParent.getDocFacadeLevel());
        }
        else
        {
          if(!isDocFacadeCreate)  
          if(rows.size()>0)
          {
            int id_dl;
            docLineArray d=null;
            
          for(int i=0; i< rowCount; i++)
          { 
               restDocLine= false; 
               for(int j=0; j < rows.size();j++)
               {
                  // ako sa ravni vry6tame starite
                  // ako ne iztrivame docLine
                    id_dl = (Integer) jTable1.getValueAt(i,12);
                    d = (docLineArray) rows.get(j);
                    if(id_dl==d.getID_DocLine())
                    {
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
              if(!restDocLine) 
              {
                   deleteDocLine(i,withRow,true);
                   
              }  
          }
          }
        }
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    private void jButtonOneRowPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowPActionPerformed
// TODO add your handling code here:
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
// TODO add your handling code here:  OK
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
// TODO add your handling code here:
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
// TODO add your handling code here:
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
    
    /**
     * @param args the command line arguments
     */
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
    private javax.swing.JPanel jPanelObekt;
    private javax.swing.JPanel jPanelPrice;
    private javax.swing.JPanel jPanelPriceList;
    private javax.swing.JPanel jPanelStorageINOUT;
    private javax.swing.JPanel jPanelUser;
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
    private boolean isSetDataInTable = false;
    private boolean rowSelectedChange = false;
    private boolean isDocFacadeCreate = false;
    private boolean isCheckOne = false;
    private boolean isProductIN = false;
    private HashMap  rows=null;
    private double rate = 0;
    private HashMap arrayRate = new HashMap();
    private Double curs;
    
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
            // nezavisi6ti ot vida na dokumenta
            DocFacadeType = myParent.getDocFacadeType();
            showAllPanels();
            selectDocumentTypeToView(DocFacadeType);
            isDocFacadeCreate = false;
            jComboBoxVidPla6tane.setSelectedIndex(myParent.getDescriptipnPay());
            String newDate = checkAndConvertSQLFormat(myParent.getPayingDate());
            int dateInt[] = getDateAsInt(newDate);
            Date date = new Date(dateInt[2]-1900,dateInt[1],dateInt[0]);
            jXDatePay.setDate(date);
          //  jTextFieldPayDate.setText(myParent.getPayingDate());
             newDate = checkAndConvertSQLFormat(myParent.getDateDocFacade());
            dateInt = getDateAsInt(newDate);
            date = new Date(dateInt[2]-1900,dateInt[1],dateInt[0]);
            jXDateDocument.setDate(date);
             newDate = checkAndConvertSQLFormat(myParent.getPayingDate());
            dateInt = getDateAsInt(newDate);
            date = new Date(dateInt[2]-1900,dateInt[1],dateInt[0]);
            jXDatePay.setDate(date);
            
              switch(DocFacadeType)
                 {
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
                     case PROFORMA_FAKTURA :
                     {
                         jTextFieldNomerDoc.setText(myParent.getNumberDocFacade());
                    //     jTextFieldDateDoc.setText(myParent.getDateDocFacade());
                         repainContragentData(myParent.getID_Contragent());
                         repainUserEdit(myParent.getUserDocFacade(),true);
                         repainUserEdit(myParent.getUserDocFacade(),false);
                  //       jTextFieldPayDate.setText(myParent.getPayingDate());
                         jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
                         jTextFieldDistr.setText(myParent.getDistributorDocFacade());
                          //jTextFieldDateDeliver.setText(myParent.getD) // data na deliver
                         
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
                        jTextFieldDeliver.setText(myParent.getDeliverDocFacade());
                        jTextFieldDistr.setText(myParent.getDistributorDocFacade());
                          break;
                      }                   
                 }
           
            
           jTable1.setModel(new docLineTableModel());
           ((docLineTableModel)jTable1.getModel()).removeRow(0); 
           
           rows  = myParent.getCountriesT().getDocLine(myParent.getID_DocFacade());
           int countRow = rows.size();
           
           if(countRow>0)
           {
               for(int i=0;i < countRow; i++)
               {
                   docLineArray dd =(docLineArray) rows.get(i);
                   ((docLineTableModel)jTable1.getModel()).addRow(dd);

               }
               // presmqtane 
               
             double ddds = 0;
             double singePrice =0;
             double totalPriceLine = 0;
             int numberPiece = 0;
             int countRows = jTable1.getRowCount();

             double totalAllPrice = 0;
             double ddsOsnovaAll =0;
             double ddsPriceAll = 0;





             for(int i=0; i < countRows; i++)
             {
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
           else
           {
               ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray()); 
               
           }
           
           jTable1.repaint();
           
        }
        
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
    private void repainUserEdit(int iduser,boolean lastEditUser) 
    {
        if(lastEditUser)
        {
            if(iduser !=0 )
            {
             String userData[] = myParent.getCountriesT().getUserDataByID(iduser);
             jTextFieldUserLastEdit.setText(userData[1]);
            } 
            
        }
        else
        {
        if(iduser !=0 ) 
        {
            String userData[] = myParent.getCountriesT().getUserDataByID(iduser);
            jTextFieldUserEdit.setText(userData[1]);
        } else
            {
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
        
    jTable1.addFocusListener(new FocusListener() 
    {
        public void focusGained(FocusEvent e)
        { 
           ((docLineTableModel) jTable1.getModel()).enableCellEditable(0);  
        }
        public void focusLost(FocusEvent e)
        {
        }
   });    
        
   jTable1.addMouseListener(new MouseListener() {
       public void mouseClicked(MouseEvent e) 
       {
          int rowSelect = jTable1.getSelectedRow();
          changeColumnName(5,(String)jTable1.getValueAt(rowSelect,13),jTable1);
          changeColumnName(6,(String)jTable1.getValueAt(rowSelect,14),jTable1);
          changeColumnName(7,(String)jTable1.getValueAt(rowSelect,15),jTable1);
       }
       public void mouseEntered(MouseEvent e) 
       {
       }
       public void mouseExited(MouseEvent e)
       {
       }
       public void mousePressed(MouseEvent e) 
       {
             
       }
       public void mouseReleased(MouseEvent e)
       {
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
                
                
               
                
                if(e.getKeyCode()>=48 && e.getKeyCode()<=57) str += e.getKeyChar();
               
                
                  if(!isTyped)
                {
                Object value = jTable1.getCellEditor(rowSelect,columnSelect).getCellEditorValue();
                Component com = jTable1.getCellEditor(rowSelect,columnSelect).getTableCellEditorComponent(jTable1,value,true,rowSelect,columnSelect);
                JTextField ff = (JTextField) com;
                ff.setBackground(Color.RED);
                ff.selectAll();
                System.out.println(" >>>>>>>>>>>.. "+ff.getText()); 
                } 
                isTyped = true;
                System.out.println("===============keyPressed====================");
                System.out.print("jTable1.getSelectedRow: ");
                System.out.println(jTable1.getSelectedRow());
                System.out.print("jTable1.getSelectedColumn: ");
                System.out.println(jTable1.getSelectedColumn());
                System.out.println("================keyPressed===================");
               
                 if(e.getKeyCode()== KeyEvent.VK_DELETE) // selektira teksta v kletkata
                 {
                                
                 //   Object value = jTable1.getCellEditor(rowSelect,columnSelect).getCellEditorValue();
                    
                  //  Component com = jTable1.getCellEditor(rowSelect,columnSelect).getTableCellEditorComponent(jTable1,value,true,rowSelect,columnSelect);
                //    JTextField ff = (JTextField) com;
                //    ff.selectAll();
                //     System.out.println(" >>>>>>>>>>>.. "+ff.getText());
                   
                    isTyped = false;
                  
                 }
                
                if(e.getKeyCode()== KeyEvent.VK_ENTER) {
                    System.out.println("===========KeyEvent.VK_ENTER================");
                    System.out.print("jTable1.getSelectedRow: ");
                    System.out.println(rowSelect);
                    System.out.print("jTable1.getSelectedColumn: ");
                    System.out.println(columnSelect);
                    System.out.println("===========KeyEvent.VK_ENTER================");
                                    
                    if(columnSelect == 0) {
                        // popylvat se drugite stoinosti na doc line
                        isFinishRow = false;
                         
                        if(isProductIN)
                        {
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(4);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(5);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(6);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(7); 
                        }
                        else
                        {
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(3);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(4);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(5);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(6);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(7);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(8);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(9);
                        }
                      
                    }
                     if(columnSelect == 2)   // cenova lista
                    {
                       
                    }
                     
                    if(columnSelect == 3)   // cenova lista
                    {
                                    
                     
                      /*  ((docLineTableModel) jTable1.getModel()).enableCellEditable(4);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(5);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(6);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(7);*/
                     
                    }
                    
                    if(columnSelect == 4)  // 
                    {
                        
                    
                        
                    }
                     if(columnSelect == 5)  // 
                    {
                   
                        
                    }
                    
                    
                    if(columnSelect == 7)  // razfasovka 3
                    {
                        
                       /* ((docLineTableModel) jTable1.getModel()).enableCellEditable(8);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(9);*/
                       
                        
                    }
                    
                    if(columnSelect == 10)  // procent ostypka
                    {
                        if( !isFinishRow)
                        {
                            double alldds = Double.parseDouble(jLabelAllDDS.getText());
                            alldds += (Double) jTable1.getValueAt(rowSelect,11)*(Double) jTable1.getValueAt(rowSelect,10)/100;
                            jLabelAllDDS.setText(doubleRoundToString(4,alldds));
                            double ddsOsnova = Double.parseDouble(jLabelDDSOsnova.getText());
                            ddsOsnova += (Double) jTable1.getValueAt(rowSelect,11);
                            jLabelDDSOsnova.setText(doubleRoundToString(4,ddsOsnova));
                            double allTotal = Double.parseDouble(jLabelAllTotal.getText()); 
                            allTotal += alldds+ddsOsnova;
                            jLabelAllTotal.setText(doubleRoundToString(4,allTotal));
                            
                            if(jTable1.getSelectedRow()==(jTable1.getRowCount() - 1)) // pri polovfenie 4e reda e posleden
                            {
                                int i = 0;
                                i = jTable1.getSelectedRow();
                                ((docLineTableModel)jTable1.getModel()).setDefaultCellEditable();
                                ((docLineTableModel)jTable1.getModel()).setIsFinish(i);
                                ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray());
                                jTable1.changeSelection(i+1,-1,false,false);
                                System.out.println();
                               
                                 ((docLineTableModel) jTable1.getModel()).enableCellEditable(0);
                                // Save DocLine into DATABASE
                                int nn = (Integer)jTable1.getValueAt(rowSelect,4);
                                int prList =(Integer)jTable1.getValueAt(rowSelect,3);
                                double dds =(Double)jTable1.getValueAt(rowSelect,10);
                                double total = (Double)jTable1.getValueAt(rowSelect,11);
                                int tmpProductNumbers = myParent.getCountriesT().checkForEnoughProducts(myParent.getID_PC(),myParent.getStorageOUTProduct());
                                if(true) 
                                {
// PRIEMATELNA_RAZPISKA - IN produkt                                   
                                if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA)   
                                {
                                   if(isNew)
                                    {
                                      myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                          myParent.getProcentProduct(),nn,dds,total,prList);
                                
                                    int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                    jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                    //vry5tane na prodikta v tablicata s nali4nosti
                                    
                                    myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn);    
                                    }
                                    else
                                    {

                                        int id_dl = (Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d =null;
                                        int oldNumberProduct = 0;
                                        for(int j=0; j < rows.size();j++)
                                            {
                                               d = (docLineArray) rows.get(j);
                                               if(id_dl==d.getID_DocLine())
                                               {
                                                   oldNumberProduct = d.getNumberOfProduct();
                                                   break;
                                               }

                                            }
                                       if(newNumberProduct > oldNumberProduct)
                                        {
                                           myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(newNumberProduct-oldNumberProduct));
                                        }
                                       else
                                        {
                                          
                                            myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(oldNumberProduct-newNumberProduct ));
                                        }
                                      if(oldNumberProduct>0)
                                        {
                                          myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                                                        myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                        }
                                      else
                                        {
                                           myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                  myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                            int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                           jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                           
                                         
                                        }
                                      
                                    }
                                }
                                
                                else
//NAREZDANE_ZA_PREHVYRQNE                                    
                                if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE)
                                {
                                   if(isNew)
                                    {
                                      myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                          myParent.getProcentProduct(),nn,dds,total,prList);
                                
                                    int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                    jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                    //vry5tane na prodikta v tablicata s nali4nosti
                                    
                                    myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn);    
                                    }
                                    else
                                    {

                                        int id_dl = (Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d =null;
                                        int oldNumberProduct = 0;
                                        for(int j=0; j < rows.size();j++)
                                            {
                                               d = (docLineArray) rows.get(j);
                                               if(id_dl==d.getID_DocLine())
                                               {
                                                   oldNumberProduct = d.getNumberOfProduct();
                                                   break;
                                               }

                                            }
                                       if(newNumberProduct > oldNumberProduct)
                                        {
                                           myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(newNumberProduct-oldNumberProduct));
                                        }
                                       else
                                        {
                                          
                                            myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(oldNumberProduct-newNumberProduct ));
                                        }
                                      if(oldNumberProduct>0)
                                        {
                                          myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                                                        myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                        }
                                      else
                                        {
                                           myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                  myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                            int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                           jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                           
                                         
                                        }
                                      
                                    }
                                }
                                else
//!PROFORMA_FAKTURA                                    
                                if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA)
                                  {
                                    int storageTO = Integer.parseInt(jTextFieldStorageTO.getText());
                                    if(!isNew)
                                    {
                                        //vzimane na razlikata ot tablicata za DocLine i redaktiranite broiki ot jTable1
                                        // vry6tane na razlikata ako ima takava ili zapazvane na brojkite
                                        int id_dl = (Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d =null;
                                        int oldNumberProduct = 0;
                                        for(int j=0; j < rows.size();j++)
                                            {
                                               d = (docLineArray) rows.get(j);
                                               if(id_dl==d.getID_DocLine())
                                               {
                                                   oldNumberProduct = d.getNumberOfProduct();
                                                   break;
                                               }

                                            }
                                        if(newNumberProduct<tmpProductNumbers)
                                        {
                                         if(newNumberProduct > oldNumberProduct  )
                                          {
                                            myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(newNumberProduct - oldNumberProduct));
                                          }else
                                          {
                                           myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(oldNumberProduct-newNumberProduct ));
                                          }
                                        
                                         if(oldNumberProduct>0)
                                          {
                                            
                                           myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                                                        storageTO,myParent.getPriceOneProduct(),
                                                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                         }
                                         else
                                         {
                                           myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),storageTO,myParent.getPriceOneProduct(),
                                                                                  myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                            int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                           jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                           
                                        
                                         }
                                        }
                                        else // nqma dostaty4ni koli4etvo ot produkta
                                        {
                                           ((docLineTableModel) jTable1.getModel()).removeRow(rowSelect) ;
                                           ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray()); 
                                          
                                        }
                                    }
                                    else // ako dokumenta e nov
                                    {
                                    myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),storageTO,myParent.getPriceOneProduct(),
                                                                          myParent.getProcentProduct(),nn,dds,total,prList);
                                
                                    int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                    jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                    //zapazvane na prodikta v tablicata s nali4nosti
                                     myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn);
                                    }
                                  }
// ==POFORMA_FAKTURA                               
                                else // ako dokumenta e POFORMA_FAKTURA
                                {
                                   if(!isNew)
                                    {
                                        int id_dl = (Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d = (docLineArray) rows.get(rowSelect);
                                       
                                                                            
                                        myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                                                        myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                    }
                                    else
                                    {
                                    myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                          myParent.getProcentProduct(),nn,dds,total,prList);
                                
                                    int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                    jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                    } 
                                  }
                                
                                }
                                 else
                                {
                                    ((docLineTableModel) jTable1.getModel()).removeRow(rowSelect);
                                     if(rowSelect==0)
                                     {
                                         ((docLineTableModel) jTable1.getModel()).addRow(new docLineArray());
                                     }
                                      
                                }
                                 isSetDataInTable = false;  
                                
                            }
                            if(jTable1.getSelectedRow()!=(jTable1.getRowCount() - 1)) // pri polovenie 4e reda ne e posleden
                            {
                          
                               int i = 0;
                                i = jTable1.getSelectedRow();
                                ((docLineTableModel)jTable1.getModel()).setDefaultCellEditable();
                                ((docLineTableModel)jTable1.getModel()).setIsFinish(i);
                                ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray());
                                jTable1.changeSelection(i+1,-1,false,false);
                                System.out.println();
                               
                                 ((docLineTableModel) jTable1.getModel()).enableCellEditable(0);
                                // Save DocLine into DATABASE
                                int nn = (Integer)jTable1.getValueAt(rowSelect,4);
                                int prList =(Integer)jTable1.getValueAt(rowSelect,3);
                                double dds =(Double)jTable1.getValueAt(rowSelect,10);
                                double total = (Double)jTable1.getValueAt(rowSelect,11);
                                int tmp = myParent.getCountriesT().checkForEnoughProducts(myParent.getID_PC(),myParent.getStorageOUTProduct());
                                if(true) //nn<=tmp
                                {
// PRIEMATELNA_RAZPISKA - IN produkt                                  
                                if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA)   
                                 {
                                    if(isNew)
                                    {
                                     myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                          myParent.getProcentProduct(),nn,dds,total,prList);
                                
                                    int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                    jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                    //vry5tane na prodikta v tablicata s nali4nosti
                                    myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn);    
                                    }
                                    else
                                    {
                                       int id_dl = (Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d =null;
                                        int oldNumberProduct = 0;
                                        for(int j=0; j < rows.size();j++)
                                            {
                                               d = (docLineArray) rows.get(j);
                                               if(id_dl==d.getID_DocLine())
                                               {
                                                   oldNumberProduct = d.getNumberOfProduct();
                                                   break;
                                               }

                                            }
                                       if(newNumberProduct > oldNumberProduct)
                                        {
                                           myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(newNumberProduct-oldNumberProduct));
                                        }
                                       else
                                        {
                                          
                                            myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(oldNumberProduct-newNumberProduct ));
                                        }
                                      if(oldNumberProduct>0)
                                        {
                                          myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                                                        myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                        }
                                      else
                                        {
                                           myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                  myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                            int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                           jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                           
                                         
                                        } 
                                    }
                                 }
                                 else
//NAREZDANE_ZA_PREHVYRQNE                                     
                                 if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE)
                                {
                                   if(isNew)
                                    {
                                        
                                    }
                                    else
                                    {
                                        
                                    } 
                                }
                                else
//!PROFORMA_FAKTURA - OUT produkt                                    
                                if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA)
                                  {
                                    if(!isNew)
                                    {
                                        //vzimane na razlikata ot tablicata za DocLine i redaktiranite broiki ot jTable1
                                        // vry6tane na razlikata ako ima takava ili zapazvane na brojkite
                                        int id_dl = (Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d =null;
                                        int oldNumberProduct = 0;
                                        for(int j=0; j < rows.size();j++)
                                            {
                                               d = (docLineArray) rows.get(j);
                                               if(id_dl==d.getID_DocLine())
                                               {
                                                   oldNumberProduct = d.getNumberOfProduct();
                                                   break;
                                               }

                                            }
                                    int tmpProductNumbers = myParent.getCountriesT().checkForEnoughProducts(myParent.getID_PC(),myParent.getStorageOUTProduct());    
                                    if(newNumberProduct<tmpProductNumbers)
                                      {
                                       if(newNumberProduct > oldNumberProduct)
                                        {
                                            myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(newNumberProduct - oldNumberProduct));
                                        }else
                                        {
                                          myParent.getCountriesT().returnProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),(oldNumberProduct-newNumberProduct ));
                                        }
                                        
                                        myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                                                        myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                    }
                                    else
                                    {
                                    myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                          myParent.getProcentProduct(),nn,dds,total,prList);
                                
                                    int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                    jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                    //zapazvane na prodikta v tablicata s nali4nosti
                                     myParent.getCountriesT().preserveProducts(myParent.getID_PC(),myParent.getStorageOUTProduct(),nn);
                                    }
                                    }
                                    else
                                    {
                                        ((docLineTableModel) jTable1.getModel()).removeRow(rowSelect) ;
                                        ((docLineTableModel)jTable1.getModel()).addRow(new docLineArray());
                                    }
                                  }
//==  POFORMA_FAKTURA                               
                                else // ako dokumenta e POFORMA_FAKTURA
                                {
                                   if(!isNew)
                                    {
                                        int id_dl = (Integer) jTable1.getValueAt(rowSelect,12);
                                        int newNumberProduct = nn;
                                        docLineArray d = (docLineArray) rows.get(rowSelect);
                                       
                                                                            
                                        myParent.getCountriesT().updateDocLine(id_dl,myParent.getID_DocFacade(),myParent.getID_PC(),
                                                                                        myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                                        myParent.getProcentProduct(),newNumberProduct,dds,total,prList);
                                    }
                                    else
                                    {
                                    myParent.getCountriesT().insertDocLine(myParent.getID_DocFacade(),myParent.getID_PC(),myParent.getStorageOUTProduct(),myParent.getPriceOneProduct(),
                                                                          myParent.getProcentProduct(),nn,dds,total,prList);
                                
                                    int maxID_DocLine = myParent.getCountriesT().getMaxIdDocLine();
                                    jTable1.setValueAt(maxID_DocLine,rowSelect,12);
                                    } 
                                  }
                                
                                }
                                 else
                                {
                                    ((docLineTableModel) jTable1.getModel()).removeRow(rowSelect);
                                     if(rowSelect==0)
                                     {
                                         ((docLineTableModel) jTable1.getModel()).addRow(new docLineArray());
                                     }
                                      
                                }
                                 isSetDataInTable = false;  
                                
                                



                            }
                            
                            
                            
                        }
                        
                        isFinishRow = true;
                       
                       
                        
                    }
                }
                
                
                
                if(e.getKeyCode()==KeyEvent.VK_F7)
                {
// =============START=================                    
                 processKeyPress(myParent.getDocFacadeType(),F7_KEY);
                 
// ================STOP==============
                }
                
                if(e.getKeyCode()==KeyEvent.VK_F8)
                {
                   processKeyPress(myParent.getDocFacadeType(),F8_KEY);
                }

                if(e.getKeyCode()==KeyEvent.VK_F9)
                {
                   processKeyPress(myParent.getDocFacadeType(),F9_KEY);  
                }
            }
            public void keyReleased(KeyEvent e)
            {
                 columnSelect = jTable1.getSelectedColumn()-1;
                 rowSelect = jTable1.getSelectedRow();
                 
             if(e.getKeyCode()== KeyEvent.VK_ENTER)
             {
                 if(columnSelect == 0)
                 {
                  isFinishRow = false;
                  System.out.println("keyReleased    == = ==    0000");
                  
                  if(!isSetDataInTable&&rate!=0)
                  {
                    str = String.valueOf(jTable1.getValueAt(rowSelect,columnSelect));
                    if(str.equals("0")) str="";
                    processKeyPress(myParent.getDocFacadeType(),F7_KEY);
                   
                
                  }
                
                
                 }
                     
                  if(columnSelect == 3)   // cenova lista ---------------------------------------------
                    {
                       
                      int pp = (Integer)  jTable1.getValueAt(rowSelect,columnSelect);
                      double p[] = new double[3];
                      if(!isProductIN)
                      if(pp>=1 && pp <=3)  
                      {
                          System.out.println("---------->"+String.valueOf(jTable1.getValueAt(rowSelect,columnSelect)));
                        p = myParent.getWorkPriceListProduct();
                       
                       jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(pp)[0]));
                       jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(pp)[1]));
                       jLabelPrice_1.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(pp)[0]-1]));
                       jLabelPrice_2.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(pp)[1]-1]));
//rate--------->              
                       jTable1.setValueAt(myParent.getWorkPriceListProduct()[pp-1]*rate,rowSelect,8);
                       
                       myParent.setPriceOneProduct(myParent.getWorkPriceListProduct()[pp-1]);
                       jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),myParent.getBrojProduct()),jTable1.getSelectedRow(),11); 
                        
                      }
                      else 
                      {
                        jTable1.setValueAt(myParent.getPriceList(),rowSelect,columnSelect);
                        jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[0]));
                        jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[1]));
//rate ---------->
                        jLabelPrice_1.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[0]-1]*rate));
                        jLabelPrice_2.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[1]-1]*rate));
                        
                        
                           
                      }
                      
                       /* ((docLineTableModel) jTable1.getModel()).disableCellEditable(3);
                        ((docLineTableModel) jTable1.getModel()).enableCellEditable(4);*/
                   
    
                        
                     
                    }
                  if(columnSelect == 4)   // broiki ot produkta ---------------------------------------------
                    {
                     
                      int br = (Integer) jTable1.getValueAt(rowSelect,columnSelect) ;
                      br = java.lang.Math.abs(br);
                      if(isProductIN)
                      {
                        jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[0],jTable1.getSelectedRow(),5);
                        jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[1],jTable1.getSelectedRow(),6);
                        jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[2],jTable1.getSelectedRow(),7);
                        jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br),jTable1.getSelectedRow(),11); 
                      }
                      else    
                      if(br <= myParent.getBrojProduct())
                      {
                        jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[0],jTable1.getSelectedRow(),5);
                        jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[1],jTable1.getSelectedRow(),6);
                        jTable1.setValueAt(calculateProductDescription(br,productDescription_2,productDescription_3)[2],jTable1.getSelectedRow(),7);
                        jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br),jTable1.getSelectedRow(),11);
                      }
  
                    }
                 if(columnSelect == 5)   // razfasovka 1 ---------------------------------------------
                   {
                     isTyped = false;
                      int rz1 = (Integer) jTable1.getValueAt(rowSelect,columnSelect);
                      rz1 = java.lang.Math.abs(rz1);
                      int br = (Integer) jTable1.getValueAt(rowSelect,4) ;
                      int oldRz1 = calculateProductDescription(br,productDescription_2,productDescription_3)[0];
                      if(rz1<=productDescription_2)
                      {
                          int tmp = (rz1-oldRz1);
                          if(isProductIN)
                          {
                            jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
//rate-------> jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                            jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br+tmp),jTable1.getSelectedRow(),11);
                          }
                          else
                         if((br+tmp)<=myParent.getBrojProduct())
                         {
                             jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
 //rate------->
                              jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                         } else  jTable1.setValueAt(new Integer(oldRz1),rowSelect,5);
                      }
                      else  jTable1.setValueAt(new Integer(oldRz1),rowSelect,5);
                  
                   }
                 if(columnSelect == 6) // razfasovka 2 ---------------------------------------------
                 {
                     int rz2 = (Integer) jTable1.getValueAt(rowSelect,columnSelect);
                     rz2 = java.lang.Math.abs(rz2);
                     int br = (Integer) jTable1.getValueAt(rowSelect,4) ;
                     int oldRz2 = calculateProductDescription(br,productDescription_2,productDescription_3)[1]; 
                     if( rz2 <= productDescription_3 )
                     {
                         int tmp = (rz2-oldRz2);
                         tmp *=  productDescription_2;
                          if(isProductIN)
                          {
                            jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
 //rate ------> jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11); 
                            jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br+tmp),jTable1.getSelectedRow(),11); 
                          }
                          else
                         if((br+tmp)<=myParent.getBrojProduct())
                         {
                              jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
 //rate ------>                             
                               jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                         }
                         else  jTable1.setValueAt(new Integer(oldRz2),rowSelect,6);
                         
                         
                     }
                     else  jTable1.setValueAt(new Integer(oldRz2),rowSelect,6);
                 }
                 if(columnSelect == 7) // razfasovka 3 ---------------------------------------------
                 {
                     int rz3 = (Integer) jTable1.getValueAt(rowSelect,columnSelect);
                     rz3 = java.lang.Math.abs(rz3);
                     int br = (Integer) jTable1.getValueAt(rowSelect,4) ;
                     int oldRz3 = calculateProductDescription(br,productDescription_2,productDescription_3)[2]; 
                     
                         int tmp = (rz3-oldRz3);
                         tmp *=  productDescription_3;
                          if(isProductIN)
                          {
                             jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
//rate ----->jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                             jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),br+tmp),jTable1.getSelectedRow(),11);
                          }
                          else
                         if((br+tmp)<=myParent.getBrojProduct())
                         {
                              jTable1.setValueAt(new Integer(br+tmp),rowSelect,4);
//rate ----->                              
                               jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,br+tmp),jTable1.getSelectedRow(),11);
                         }
                         else  jTable1.setValueAt(new Integer(oldRz3),rowSelect,7);
                         
                         
                    
                 } 
                 if(columnSelect == 8) // price one piece
                 {
    //rate ----------> 
                     if(!isProductIN)
                     {
                      double newPrice = (Double)jTable1.getValueAt(rowSelect,columnSelect);
                       int br = (Integer) jTable1.getValueAt(rowSelect,4) ; 
                       
                      if(newPrice<=myParent.getPriceOneProduct()*rate)
                      {
                          double newPP =100-(newPrice*100)/(myParent.getPriceOneProduct()*rate);
                          jTable1.setValueAt(new Double(newPP),rowSelect,9);
                          
                          jTable1.setValueAt(calculateTotalPrice(newPrice,br),jTable1.getSelectedRow(),11);
                      }
                      else jTable1.setValueAt(myParent.getPriceOneProduct()*rate,rowSelect,8);
                     }
                     else jTable1.setValueAt(myParent.getPriceOneProduct(),rowSelect,8);
                         
                 }
                 if(columnSelect == 9) // procent 
                 {
                     if(!isProductIN)
                     { 
                      double newPP = (Double)jTable1.getValueAt(rowSelect,columnSelect);
                       int br = (Integer) jTable1.getValueAt(rowSelect,4) ; 
                      if(newPP <= myParent.getProcentProduct())
                      {
                          double newPrice =(myParent.getPriceOneProduct()*rate)-(newPP/100)*(myParent.getPriceOneProduct()*rate);
                          jTable1.setValueAt(new Double(newPrice),rowSelect,8);
                         
                          jTable1.setValueAt(calculateTotalPrice(newPrice,br),jTable1.getSelectedRow(),11);
                          
                      }else jTable1.setValueAt(myParent.getProcentProduct(),rowSelect,9); 
                     }else jTable1.setValueAt(myParent.getProcentProduct(),rowSelect,9);
                 } 
                  
                  
                  
                  
                  
                  
             }
                
                
                
                
            }
            public void keyTyped(KeyEvent e) 
            {
              
                
            }
        });
 


    }
    
private int[] calculateProductDescription(int allCount, int productDescription2,int productDescription3 )    
{
    int desc[] = new int[3];
    if(allCount >= productDescription3)
    {
         int c3 = (allCount/productDescription3);
         int c2 = (allCount%productDescription3)/productDescription2;
         int c1 = (allCount%productDescription3)%productDescription2;
         
         desc[0] = c1;
         desc[1] = c2;
         desc[2] = c3;
    }
    else
    {
        if(allCount >= productDescription2 )
        {
         int c3 = 0;
         int c2 = (allCount)/productDescription2;
         int c1 = (allCount)%productDescription2;;  
            
         desc[0] = c1;
         desc[1] = c2;
         desc[2] = c3;
        }
        else
        {
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
         
private int[] calculatePriceList(int startpricelist)  
{
    int pricelist[] = new int[2] ;
    if(startpricelist==1)
    {
        pricelist[0] = 2;
        pricelist[1] = 3;
    }
    if(startpricelist==2)
    {
        pricelist[0] = 1;
        pricelist[1] = 3;
    }
     if(startpricelist==3)
    {
        pricelist[0] = 1;
        pricelist[1] = 2;
    }
    return pricelist;
}
 private double  calculateTotalPrice(double priceOne, int broj) 
 {
     return priceOne*broj;
 }
 
 private double  calculateTotalDDS(double totalpruce, double dds)
 {
     return totalpruce*dds;
 }
 private void calculateWidthColumn( JTable table)
 {
      int numColumns = table.getColumnCount();
      int numRows = table.getRowCount();
      int headerWidth = 0;
     Component comp = null;
     TableColumn column = null;
     int cellWidth = 0;
     int temp = 0;
     
      for (int i = 0; i < numColumns; i++) 
	{
            column = table.getColumnModel().getColumn(i);

	    comp = table.getTableHeader().getDefaultRenderer().
		getTableCellRendererComponent(table, column.getHeaderValue(), 
					      false, false, 0, i);
                           
	    headerWidth = comp.getPreferredSize().width; 
         
	    for (int j = 0; j < numRows; j++)
	    {
		comp = table.getDefaultRenderer(table.getColumnClass(i)).
		    getTableCellRendererComponent(table, table.getValueAt(j,i),
						  false, false, j, i);

		temp = comp.getPreferredSize().width;

		if (temp > cellWidth)
		{
		    cellWidth = temp;
		}
	    }

	   
            column.setPreferredWidth(Math.max(headerWidth+20, cellWidth+20));
	    cellWidth = 0;
        }
     
     
 }
 private void createDocument(int id_df,int typeDoc, int connection)
 {
     switch(typeDoc)
     {
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
             
             int userEdit =  myParent.getUserEditFortm(); 
             int userLastEdit = userEdit;
             if(myParent.getUserEditFortm()!=0) userLastEdit =  myParent.getUserEditFortm();       
             String docFacadeCondition = "0"; 
             String docFacadeCommnet = jTextFieldComment.getText();
             
             imakante.com.dateManipulation dateManip = new imakante.com.dateManipulation();
             
             String dateDeliver = dateManip.convertDate("01.01.2000");
             
             String strDate;
             strDate = String.valueOf(jXDatePay.getDate().getDate());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
             String payingDate = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDateDocument.getDate().getDate());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
             String docFacadeDate = dateManip.convertDate(strDate);
             
             int numberDoc = Integer.parseInt(myParent.getNumberDocFacade());
             myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                     obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),jComboBoxVidPla6tane.getSelectedIndex(),
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
             strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
             String payingDate = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDateDocument.getDate().getDate());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
             String docFacadeDate = dateManip.convertDate(strDate);
             
             
             
             int numberDoc = Integer.parseInt(myParent.getNumberDocFacade());
             myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                     obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),jComboBoxVidPla6tane.getSelectedIndex(),
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
             strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
             String dateDeliver = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDatePay.getDate().getDate());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
             String payingDate = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDateDocument.getDate().getDate());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
             String docFacadeDate = dateManip.convertDate(strDate);
             
             
             int numberDoc = Integer.parseInt(myParent.getNumberDocFacade());
             myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                     obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),jComboBoxVidPla6tane.getSelectedIndex(),
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
             strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
             String dateDeliver = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDatePay.getDate().getDate());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
             String payingDate = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDateDocument.getDate().getDate());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
             String docFacadeDate = dateManip.convertDate(strDate);
             
             
             int numberDoc = Integer.parseInt(myParent.getNumberDocFacade());
             myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                     obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),jComboBoxVidPla6tane.getSelectedIndex(),
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
             strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
             String dateDeliver = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDatePay.getDate().getDate());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
             String payingDate = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDateDocument.getDate().getDate());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
             String docFacadeDate = dateManip.convertDate(strDate);
             
             
             int numberDoc = Integer.parseInt(myParent.getNumberDocFacade());
             myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                     obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),jComboBoxVidPla6tane.getSelectedIndex(),
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
             strDate += "/" + String.valueOf(jXDateDeliver.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDeliver.getDate().getYear()+1900);
             String dateDeliver = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDatePay.getDate().getDate());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDatePay.getDate().getYear()+1900);
             String payingDate = dateManip.convertDate(strDate);
             
             strDate = " ";
             strDate = String.valueOf(jXDateDocument.getDate().getDate());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getMonth());
             strDate += "/" + String.valueOf(jXDateDocument.getDate().getYear()+1900);
             String docFacadeDate = dateManip.convertDate(strDate);
             
             
             int numberDoc = Integer.parseInt(myParent.getNumberDocFacade());
             myParent.getCountriesT().updateRow(id_df,contragent_out,contragent_in,obekt_out,
                     obekt_in,myParent.getID_Distributor(),myParent.getID_Deliver(),jComboBoxVidPla6tane.getSelectedIndex(),
                     numberDoc,userEdit,userLastEdit,
                     facturaConnection,payingOrder,zaqvkaConnection,docFacadeLevel,docFacadeStorage,docFacadeType,
                     docFacadeTotal,docFacadeAllDDS,docFacadeCondition,docFacadeDate,docFacadeCommnet,dateDeliver,payingDate,1,docFacadeStorageTO); 
              
              
              
              break;
          }
     }
   if(myParent.getDocFacadeType()==NAREZDANE_ZA_PREHVYRQNE)
   {
      emptyPreservation(isNew); 
      emptyReturnet(isNew);
   }
   else 
   if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA)
   {
        emptyReturnet(isNew);
   }
   else
   if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA)
       emptyPreservation(isNew);
   
     
   
  isNew = false; // ve4e dokumenta ne se vodi kato "nov"
  myParent.refreshTable(); 
 }
 
private void emptyPreservation(boolean isnew)
{
   int id_dl; 
   int maxRow = jTable1.getRowCount();
   int nal;
   if(isnew)
   {
   for(int i=0; i < maxRow; i++)
   {
       id_dl =(Integer) jTable1.getValueAt(i,12);
       nal = (Integer)jTable1.getValueAt(i,4);
       myParent.getCountriesT().emptyPreservation(id_dl,nal);
   }
   }
   else
   {
    if(rows.size()>0)
    {
        int newNumberProduct;
        int oldNumberProduct;
        boolean intoDB = false;
     for(int i=0; i < maxRow; i++)
       {
         id_dl =(Integer) jTable1.getValueAt(i,12);
         newNumberProduct = (Integer)jTable1.getValueAt(i,4); 
          intoDB = false;
          for(int j=0; j < rows.size();j++)  
          {
            
             docLineArray d = (docLineArray) rows.get(j);
             oldNumberProduct = d.getNumberOfProduct();
      
             if(id_dl == d.getID_DocLine())
             {
                 if(newNumberProduct > oldNumberProduct)
                   {
                     myParent.getCountriesT().emptyPreservation(id_dl,(newNumberProduct-oldNumberProduct));
                 
                   }
                 else
                 {
                    myParent.getCountriesT().emptyReturnProducts(id_dl,(oldNumberProduct-newNumberProduct));
                 }  
                intoDB = true;
             }
          }
          if(!intoDB)
          {
             myParent.getCountriesT().emptyPreservation(id_dl,newNumberProduct); 
            
          }
            
            
          
   
       }  
    }
    else
    {
       for(int i=0; i < maxRow; i++)
        {
           id_dl =(Integer) jTable1.getValueAt(i,12);
           nal = (Integer)jTable1.getValueAt(i,4);
           myParent.getCountriesT().emptyPreservation(id_dl,nal);
       } 
    }
   }
}
private void emptyReturnet(boolean isnew)
{
   int id_dl; 
   int maxRow = jTable1.getRowCount();
   int nal;
   if(isnew)
   {
   for(int i=0; i < maxRow; i++)
   {
       id_dl =(Integer) jTable1.getValueAt(i,12);
       nal = (Integer)jTable1.getValueAt(i,4);
       myParent.getCountriesT().emptyReturnProducts(id_dl,nal);
   }
   }
   else
   {
    if(rows.size()>0)
    {
        int newNumberProduct;
        int oldNumberProduct;
        boolean intoDB = false;
     for(int i=0; i < maxRow; i++)
       {
         id_dl =(Integer) jTable1.getValueAt(i,12);
         newNumberProduct = (Integer)jTable1.getValueAt(i,4); 
          intoDB = false;
          for(int j=0; j < rows.size();j++)  
          {
            
             docLineArray d = (docLineArray) rows.get(j);
             oldNumberProduct = d.getNumberOfProduct();
      
             if(id_dl == d.getID_DocLine())
             {
                 if(newNumberProduct > oldNumberProduct)
                   {
                     myParent.getCountriesT().emptyReturnProducts(id_dl,(newNumberProduct-oldNumberProduct));
                 
                   }
                 else
                 {
                    
                    myParent.getCountriesT().emptyPreservation(id_dl,(oldNumberProduct-newNumberProduct));
                 }  
                intoDB = true;
             }
          }
          if(!intoDB)
          {
             myParent.getCountriesT().emptyPreservation(id_dl,newNumberProduct); 
            
          }
            
            
          
   
       }  
    }
    else
    {
       for(int i=0; i < maxRow; i++)
        {
           id_dl =(Integer) jTable1.getValueAt(i,12);
           nal = (Integer)jTable1.getValueAt(i,4);
           myParent.getCountriesT().emptyReturnProducts(id_dl,nal);
       } 
    }
   }
}
        
 private void selectDocumentTypeToView(int typeDoc)
 {
      switch(typeDoc)
     {
         case FAKTURI :
         {
             jLabelDocType.setText("\u0424\u0410\u041a\u0422\u0423\u0420\u0410");
             jPanelObekt.setVisible(false);
             jPanel4.setVisible(false);
             jPanelCreateFacturi.setVisible(false);
             jPanelStorageINOUT.setVisible(false);
             break;
            
         }
         case PROFORMA_FAKTURA :
         {
             jLabelDocType.setText("\u041f\u0420\u041e\u0424\u041e\u0420\u041c\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410");
             jPanelObekt.setVisible(false);
             jPanel4.setVisible(false);
             jPanelCreateFacturi.setVisible(false);
              jPanelStorageINOUT.setVisible(false);
             break;
         }
         case STOKOVA_RAZPISKA :
         {
             jLabelDocType.setText("\u0421\u0422\u041e\u041a\u041e\u0412\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410");
             jPanelStorageINOUT.setVisible(false);
             
             break;
         }
         case KONSGNACIONEN_PROTOKOL :
         {
             jLabelDocType.setFont(new java.awt.Font("Tahoma", 0, 18));
             jLabelDocType.setText("\u041a\u041e\u041d\u0421\u0413\u041d\u0410\u0426\u0418\u041e\u041d\u0415\u041d \u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b");
             jPanelCreateFacturi.setVisible(false);
             jPanelStorageINOUT.setVisible(false);
             break;
         }
          case NAREZDANE_ZA_PREHVYRQNE:
          {
             jLabelDocType.setText("\u041d\u0410\u0420\u0415\u0416\u0414\u0410\u041d\u0415 \u0417\u0410 \u041f\u0420\u0415\u0425\u0412\u042a\u0420\u041b\u042f\u041d\u0415");
             jPanelObekt.setVisible(false);
             jPanelContragent.setVisible(false);
             jPanel4.setVisible(false);
             jPanelCreateFacturi.setVisible(false);
            
              
              break;
          }
          case PREDAVATELNA_RAZPISKA :
          {
              break;
          }
          case PRIEMATELNA_RAZPISKA :
          {
             jLabelDocType.setText("\u041f\u0420\u0418\u0415\u041c\u0410\u0422\u0415\u041b\u041d\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410");
             jPanelObekt.setVisible(false);
             jPanelCreateFacturi.setVisible(false); 
             jPanelStorageINOUT.setVisible(false);
              break;
          }
         
         
     }
 }
private void showAllPanels()
{
       jPanelObekt.setVisible(true);
       jPanel4.setVisible(true);
       jPanelCreateFacturi.setVisible(true);
       jPanelStorageINOUT.setVisible(true);
    
}
 private void deleteDocLine(int selectRow, boolean withRowTable,boolean alsoInBD)
 {
     int id_dl =(Integer) jTable1.getValueAt(selectRow,12);
     int nal = (Integer)jTable1.getValueAt(selectRow,4); 
     if(!isNew)
     {
       //vry6tane na koli4etvata v tablicata za nali4nostite
        int newNumberProduct = nal;
        docLineArray d=null;
        int oldNumberProduct =0;
        for(int i=0; i < rows.size();i++)
        {
           d = (docLineArray) rows.get(i);
           if(id_dl==d.getID_DocLine())
           {
               oldNumberProduct = d.getNumberOfProduct();
               break;
           }
           
        }
      if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA)
      {
         
          if(newNumberProduct > oldNumberProduct)
             {
                myParent.getCountriesT().clearReturnProducts(id_dl,(oldNumberProduct-newNumberProduct));   
             }
             else
             {
                
                myParent.getCountriesT().clearPreservation(id_dl,(newNumberProduct-oldNumberProduct)); 
             }   
           if(alsoInBD) myParent.getCountriesT().deleteDocLine(id_dl); 
            
      }
      else
        
        if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA)
             if(newNumberProduct > oldNumberProduct)
             {
                myParent.getCountriesT().clearPreservation(id_dl,(newNumberProduct-oldNumberProduct));    
             }
             else
             {
                myParent.getCountriesT().clearReturnProducts(id_dl,(oldNumberProduct-newNumberProduct));
             }
          if(alsoInBD) myParent.getCountriesT().deleteDocLine(id_dl);
     }
     else // ako e NOV dokumenta
     {
       if(myParent.getDocFacadeType()==PRIEMATELNA_RAZPISKA)  
       {
           myParent.getCountriesT().clearReturnProducts(id_dl,nal);
       }
       else
       if(myParent.getDocFacadeType()!=PROFORMA_FAKTURA)
                  myParent.getCountriesT().clearPreservation(id_dl,nal); 
       
       if(alsoInBD) myParent.getCountriesT().deleteDocLine(id_dl);
     }
     if(withRowTable)
     {
        
            ((docLineTableModel)jTable1.getModel()).removeRow(selectRow);


             double ddds = 0;
             double singePrice =0;
             double totalPriceLine = 0;
             int numberPiece = 0;
             int countRows = jTable1.getRowCount();

             double totalAllPrice = 0;
             double ddsOsnovaAll =0;
             double ddsPriceAll = 0;





             for(int i=0; i < countRows; i++)
             {
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
  private String doubleRoundToString(int digit, double indouble)
{
    String newDouble = new String();
    double r = indouble;
    BigDecimal bd = new BigDecimal(r);
    bd = bd.setScale(digit,BigDecimal.ROUND_HALF_UP);
    r = bd.doubleValue();
    return newDouble.valueOf(r);
}
 private void  deleteDocFacade(int type,int numberDocFadade, int level)
 {
     myParent.getCountriesT().deleteRow(type,numberDocFadade,level);
 }
private void cancellationDocFacade(int id_df) 
{
    myParent.getCountriesT().cancellationDocFacade(id_df);
}
private void  deleteDocFacade(int id_df)
 {
     myParent.getCountriesT().deleteRow(id_df);
 }
private void createArraysForFactura() 
{
    
    if(!isCheckOne)
    {
        
        //showMesage
        return;
    }
    //stage 1
    HashMap data1;
    HashMap data2;
    ArrayList arrayOfData = new ArrayList();
    int countDocFacade = myParent.getArrayOfID_DF().size();
    for(int i=0;i<countDocFacade; i++)
    {
        
        data1 = myParent.getCountriesT().getDocLine((Integer)myParent.getArrayOfID_DF().get(i));
        arrayOfData.add(data1);
    }
    //stage 2
    // sybirane na vsi4ki linii v edin hashmap
    int countDocLine = arrayOfData.size();
    // sybirane na linii
    data1 = (HashMap)arrayOfData.get(0);
    for(int i=1; i < countDocLine; i++)
    {
        data2 =(HashMap)arrayOfData.get(i);
        data1 = addLineByID_PC(data1,data2);
        
    }
    // stage 3
    // zapis v HashMap namira6t se v salesMain
    // i ustanovqvane na makeDocByInputData=true;
    // proverka dali ima dokumenti za iskarvane(faktura) predi da se opiname da otvorim FrmDocLiune za (stokova razpiska)
     
    //zatwarqne na formata
 
    
    
}
private HashMap addLineByID_PC(HashMap in1,HashMap in2)
{
    HashMap in1_in2=in1;
    int countIn1 = in1.size();
    int countIn2 = in2.size();
    boolean isHaveOne = false;
    boolean delDocLine[] = new boolean[countIn2];
    for(int i=0;i<countIn1; i++)
    {
        docLineArray d1 = (docLineArray) in1.get(i);
        int id_pm1 = myParent.getCountriesT().getIDPMByIDPC(d1.getID_PC());
        double priceOne1 = d1.getPricePiece();
       
        docLineArray in1In2 = d1;
        
        for(int j=0; j < countIn2; j++)
        {
            if(!delDocLine[j])
            {
                docLineArray d2 = (docLineArray) in2.get(j);
                int id_pm2 = myParent.getCountriesT().getIDPMByIDPC(d2.getID_PC());
                double priceOne2 = d2.getPricePiece();

                if((id_pm1==id_pm2)&&(priceOne1==priceOne2))
                {

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
    for(int j=0 ; j <countIn2; j++)
    {
        if(!delDocLine[j])
        {
            docLineArray d = (docLineArray) in2.get(j);
            in1_in2.put(key,d);
            key++;
        }
    }
    
    return in1_in2;
}

private void repainDistDeliv(String dist,String devil,String date)
{
    jTextFieldDeliver.setText(devil);
    jTextFieldDistr.setText(dist);
    String newDate = checkAndConvertSQLFormat(date);
    int dateInt[] = getDateAsInt(newDate);
    Date date1 = new Date(dateInt[2]-1900,dateInt[1],dateInt[0]);
    jXDateDeliver.setDate(date1);
    
}
private double getRate(String valuta)
{
    double rate =0;
    
    rate =(Double) arrayRate.get(valuta);
    
    return rate;
}
 public  int[] getDateAsInt(String in) 
 {
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
 private  String checkAndConvertSQLFormat(String in)
 {
     String newDate = in;
     char ch[] = in.toCharArray();
     int length = in.length();
     int bufLength=0;
     for(int i=0; i < length;i++)
     {
         if(ch[i]==45 || ch[i]==46 || ch[i]==47 )
         {
             if(i==4) // SQL format
             {
                 newDate = in.substring(length-2,length);
                 newDate +="/";
                 newDate +=in.substring(length-5,length-3); 
                 newDate +="/";
                 newDate +=in.substring(0,4); 
                 break;
             }
         }
     }
     
     
     
     return newDate;
 }
 private void processKeyPress(int docType,int firstCenterLast)
 {
     //firstCenterLast -> F7 key - center; F8 key - first; F9 key - last
     isProductIN = checkInOutProduct(docType);
     
     
     if(rate!=0)
       {
        try
          {
            Robot robot = new Robot();

            robot.keyPress(KeyEvent.VK_ENTER);
           } 
           catch (AWTException e12){}
       
        System.out.println("str :::"+str);
        java.sql.ResultSet rs1 = myParent.getCountriesT().getTableProductInfo(str,firstCenterLast,myParent.getDocFacadeLevel(),0);
        Connection conn1 = myParent.getCountriesT().getConn();
                   
        showProductDocLine dialog = new showProductDocLine(myParent,true,rs1,conn1,isProductIN);
        dialog.setVisible(true);
        str = "";
        System.out.print("myParent.getCodeProduct = ");
        System.out.println(myParent.getCodeProduct());
                    
        ((docLineTableModel) jTable1.getModel()).enableCellEditable(3);
              
                        

        if(myParent.getIsSelectProduct())
          {
                        
           jLabel32.setText(String.valueOf(myParent.getCountriesT().getAllProductWithOutLevel(myParent.getID_PC(),0)));
           jTable1.setValueAt(myParent.getCodeProduct(),jTable1.getSelectedRow(),0);
           jTable1.setValueAt(myParent.getNameProduct(),jTable1.getSelectedRow(),1);
           jTable1.setValueAt(myParent.getStorageOUTProduct(),jTable1.getSelectedRow(),2);           
           if(isProductIN)
             {
               jTable1.setValueAt(0,jTable1.getSelectedRow(),3);
               jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 1"); 
               jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 2"); 
                    
               jLabelPrice_1.setText(""); 
               jLabelPrice_2.setText("");  
               jTable1.setValueAt(myParent.getBrojProduct(),jTable1.getSelectedRow(),4);
             }
             else // ot sklada navyn;
                { 
                 jTable1.setValueAt(myParent.getPriceList(),jTable1.getSelectedRow(),3); // ????????
                 jLabelPricelist_1.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[0])); //????
                 jLabelPricelist_2.setText("\u0426\u0435\u043d\u0430 "+String.valueOf(calculatePriceList(myParent.getPriceList())[1])); //???
                    
                 jLabelPrice_1.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[0]-1])); //???
                 jLabelPrice_2.setText(String.valueOf(myParent.getWorkPriceListProduct()[calculatePriceList(myParent.getPriceList())[1]-1]));  //???
                 Double curs = myParent.getWorkPriceListProduct()[3];  //????
                 jLabelValuta.setText(myParent.getCountriesT().getValutaByID(curs.intValue()));
// rate select   
                 rate = getRate(jLabelValuta.getText()); //?????
                    
                 jTable1.setValueAt(myParent.getBrojProduct(),jTable1.getSelectedRow(),4); //????
                 jLabelAllBrojProduct.setText(String.valueOf(myParent.getBrojProduct())); //????
                }
                 
           
          
          
                  
                    
           productDescription_1 = Integer.parseInt(myParent.getProductDescription()[0][1]);
           productDescription_2 = Integer.parseInt(myParent.getProductDescription()[1][1]);
           productDescription_3 = Integer.parseInt(myParent.getProductDescription()[2][1]);
                    
           changeColumnName(5,myParent.getProductDescription()[0][0],jTable1);
           changeColumnName(6,myParent.getProductDescription()[1][0],jTable1);
           changeColumnName(7,myParent.getProductDescription()[2][0],jTable1);
                   
           jTable1.setValueAt(myParent.getProductDescription()[0][0],jTable1.getSelectedRow(),13);
           jTable1.setValueAt(myParent.getProductDescription()[1][0],jTable1.getSelectedRow(),14);
           jTable1.setValueAt(myParent.getProductDescription()[2][0],jTable1.getSelectedRow(),15);
                   
           jTable1.setValueAt(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[0],jTable1.getSelectedRow(),5);
           jTable1.setValueAt(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[1],jTable1.getSelectedRow(),6);
           jTable1.setValueAt(calculateProductDescription(myParent.getBrojProduct(),productDescription_2,productDescription_3)[2],jTable1.getSelectedRow(),7);
                    
                  
           if(isProductIN)
             {
               myParent.setPriceOneProduct(myParent.getWorkPriceListProduct()[4]); // dostavna cena
// rate --->   jTable1.setValueAt(myParent.getPriceOneProduct()*rate,jTable1.getSelectedRow(),8);
               jTable1.setValueAt(myParent.getPriceOneProduct(),jTable1.getSelectedRow(),8);     
              jTable1.setValueAt(0.0,jTable1.getSelectedRow(),9);    
                     
             }
             else  // ot sklada navyn;
             {
               myParent.setPriceOneProduct(myParent.getWorkPriceListProduct()[myParent.getPriceList()-1]); //??????
// rate --->         
              jTable1.setValueAt(myParent.getPriceOneProduct()*rate,jTable1.getSelectedRow(),8);//????
                    
              jTable1.setValueAt(myParent.getProcentProduct(),jTable1.getSelectedRow(),9);     //??????
                    
             }
           
           myParent.setDDSProduct(myParent.getProductFee()[0]);
           jTable1.setValueAt(myParent.getDDSProduct(),jTable1.getSelectedRow(),10);
            if(isProductIN)
            {
             jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct(),myParent.getBrojProduct()),jTable1.getSelectedRow(),11);    
            }
            else
            {
// rate ---->        
            jTable1.setValueAt(calculateTotalPrice(myParent.getPriceOneProduct()*rate,myParent.getBrojProduct()),jTable1.getSelectedRow(),11);  
            }

           calculateWidthColumn(jTable1);
           myParent.setIsSelectProduct(false);
           isSetDataInTable = true;
           }
            System.out.println("----------------<3>-------F7------------");
            System.out.print("jTable1.getSelectedRow: ");
            System.out.println(jTable1.getSelectedRow());
            System.out.print("jTable1.getSelectedColumn: ");
            System.out.println(jTable1.getSelectedColumn());
            System.out.println("----------------<3>-------F7-----------");
           }
            else
                {
                    //show meseage za valuta
                }  
 }
 private boolean checkInOutProduct(int doctype) // false - OUT ot skalda; true -  IN v skalda
 {
     if(doctype == PRIEMATELNA_RAZPISKA )
     {
         return true;
     }
     return false;
 }
}// end class




