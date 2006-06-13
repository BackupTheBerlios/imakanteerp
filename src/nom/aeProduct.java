

package nom;

import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;
import javax.swing.*;
import java.awt.Color;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumn;
import javax.swing.table.DefaultTableCellRenderer;
public class aeProduct extends imakante.com.vcomponents.iDialog {
    
    /** Creates new form aeProduct */
    public aeProduct(imakante.com.vcomponents.iInternalFrame frame, boolean modal, boolean isnew, int selectComboBoxItem)// Test imakante.com.vcomponents.iInternalFrame frame  --- da se dobavi GROUP - nomer
    {
        super(frame, modal);
        this.myframe = frame;
        this.isNew = isnew; // opredelq dali zapisa sy6testwuwa v bazata;
        this.myParent = (nom.FrmProduct) frame;
        initComponents();
        
        getNavigatiionState();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        splitGroups = myParent.getCountriesT().getProductGroup(myParent.getGroup());
        for(int i=0;i<splitGroups.length;i++) {
            jComboBoxGroup.addItem(new String(splitGroups[i]));
            
        }
        
        if(selectComboBoxItem != 0) {
            
            selectComboBoxItem = getNewComboBoxIndex(selectComboBoxItem);
            
            jComboBoxGroup.setSelectedIndex(selectComboBoxItem);
        }
        
        // ------------Popylvane na colonite za opisanie
        splitNameOfColumn1 = myParent.getCountriesT().getProductDescriptionColumn();
        
        for(int i=0;i<splitNameOfColumn1.length;i++) {
            
            jComboBoxDescript1.addItem(new String(splitNameOfColumn1[i]));
            jComboBoxDescript2.addItem(new String(splitNameOfColumn1[i]));
            jComboBoxDescript3.addItem(new String(splitNameOfColumn1[i]));
            
        }
        this.setTitle("\u0412\u044A\u0432\u0435\u0436\u0434\u0430\u043D\u0435 \u043D\u0430 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
        jComboBoxGroup.requestFocus();
        if(!isNew) repaintComp();
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jLabelCod = new javax.swing.JLabel();
        jLabelName = new javax.swing.JLabel();
        jLabelBulstat = new javax.swing.JLabel();
        jLabelDanNomer = new javax.swing.JLabel();
        jLabelAddress = new javax.swing.JLabel();
        jLabelNM = new javax.swing.JLabel();
        jLabelTel = new javax.swing.JLabel();
        jLabelFax = new javax.swing.JLabel();
        jLabelEmail = new javax.swing.JLabel();
        jLabelWeb = new javax.swing.JLabel();
        jLabelMOL = new javax.swing.JLabel();
        jLabelOSO = new javax.swing.JLabel();
        jTextFieldName = new javax.swing.JTextField();
        jTextFieldCName = new javax.swing.JTextField();
        jTextFieldCod2 = new javax.swing.JTextField();
        jTextFieldSName = new javax.swing.JTextField();
        jTextFieldBarCod = new javax.swing.JTextField();
        jTextFieldFName = new javax.swing.JTextField();
        jTextFieldExpertSheet = new javax.swing.JTextField();
        jTextFieldPrice = new javax.swing.JTextField();
        jTextFieldFee = new javax.swing.JTextField();
        jTextFieldPromoPrices = new javax.swing.JTextField();
        jTextFieldMaxPOP = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jTextFieldContragent = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldCod1 = new javax.swing.JTextField();
        jComboBoxGroup = new javax.swing.JComboBox();
        jTextFieldMinProduct = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldCode = new javax.swing.JTextField();
        jPanel4 = new javax.swing.JPanel();
        jPanelDescription = new javax.swing.JPanel();
        jComboBoxDescript1 = new javax.swing.JComboBox();
        jComboBoxDescript2 = new javax.swing.JComboBox();
        jComboBoxDescript3 = new javax.swing.JComboBox();
        jTextFieldDescript1 = new javax.swing.JTextField();
        jTextFieldDescript2 = new javax.swing.JTextField();
        jTextFieldDescript3 = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setToolTipText("");
        jPanel1.setPreferredSize(new java.awt.Dimension(650, 270));
        jLabelCod.setText("\u0413\u0440\u0443\u043f\u0430:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel1.add(jLabelCod, gridBagConstraints);

        jLabelName.setText("\u0418\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelName, gridBagConstraints);

        jLabelBulstat.setText("\u041a\u043e\u04342");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelBulstat, gridBagConstraints);

        jLabelDanNomer.setText("\u0418\u043c\u0435 \u043d\u0430 \u0441\u044a\u043e\u0442\u0432.");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelDanNomer, gridBagConstraints);

        jLabelAddress.setText("\u041a\u0440\u0430\u0442\u043a\u043e \u0438\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelAddress, gridBagConstraints);

        jLabelNM.setText("\u0411\u0430\u0440\u043a\u043e\u0434:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelNM, gridBagConstraints);

        jLabelTel.setText("\u0424\u0430\u043a\u0442\u0443\u0440\u043d\u043e \u0438\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelTel, gridBagConstraints);

        jLabelFax.setText("\u0415\u043a\u0441\u043f\u0435\u0440\u0442\u0435\u043d \u043b\u0438\u0441\u0442:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelFax, gridBagConstraints);

        jLabelEmail.setText("\u0426\u0435\u043d\u0430:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelEmail, gridBagConstraints);

        jLabelWeb.setText("\u0422\u0430\u043a\u0441\u0438 (%):");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelWeb, gridBagConstraints);

        jLabelMOL.setText("\u041f\u0440\u043e\u043c\u043e. \u0446\u0435\u043d\u0438:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 10, 5);
        jPanel1.add(jLabelMOL, gridBagConstraints);

        jLabelOSO.setText("\u041c\u0430\u0445 % \u043d\u0430 \u043e\u0442\u0441\u0442\u044a\u043f\u043a\u0430:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelOSO, gridBagConstraints);

        jTextFieldName.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldName.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldNameFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldNameFocusLost(evt);
            }
        });
        jTextFieldName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldNameKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldName, gridBagConstraints);

        jTextFieldCName.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldCName.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldCName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldCNameFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldCNameFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldCName, gridBagConstraints);

        jTextFieldCod2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldCod2.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldCod2.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldCod2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldCod2FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldCod2FocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldCod2, gridBagConstraints);

        jTextFieldSName.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldSName.setPreferredSize(new java.awt.Dimension(170, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldSName, gridBagConstraints);

        jTextFieldBarCod.setText("000000");
        jTextFieldBarCod.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldBarCod.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldBarCod.setInputVerifier(new imakante.com.InputIntegerVerifier(10));
        jTextFieldBarCod.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldBarCodFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldBarCodFocusLost(evt);
            }
        });
        jTextFieldBarCod.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldBarCodKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldBarCod, gridBagConstraints);

        jTextFieldFName.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldFName.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldFName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldFNameFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldFNameFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldFName, gridBagConstraints);

        jTextFieldExpertSheet.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldExpertSheet.setNextFocusableComponent(jTextFieldPrice);
        jTextFieldExpertSheet.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldExpertSheet.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldExpertSheetFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldExpertSheetFocusLost(evt);
            }
        });
        jTextFieldExpertSheet.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldExpertSheetKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldExpertSheet, gridBagConstraints);

        jTextFieldPrice.setEditable(false);
        jTextFieldPrice.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPrice.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldPrice.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPriceFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPriceFocusLost(evt);
            }
        });
        jTextFieldPrice.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPriceKeyPressed(evt);
            }
        });
        jTextFieldPrice.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jTextFieldPriceMousePressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldPrice, gridBagConstraints);

        jTextFieldFee.setEditable(false);
        jTextFieldFee.setText("20.00");
        jTextFieldFee.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldFee.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldFee.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldFeeFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldFeeFocusLost(evt);
            }
        });
        jTextFieldFee.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldFeeKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextFieldFeeKeyReleased(evt);
            }
        });
        jTextFieldFee.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jTextFieldFeeMousePressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldFee, gridBagConstraints);

        jTextFieldPromoPrices.setEditable(false);
        jTextFieldPromoPrices.setToolTipText("\u0417\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e \u043f\u043e\u043b\u0435");
        jTextFieldPromoPrices.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPromoPrices.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldPromoPrices.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPromoPricesFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPromoPricesFocusLost(evt);
            }
        });
        jTextFieldPromoPrices.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPromoPricesKeyPressed(evt);
            }
        });
        jTextFieldPromoPrices.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jTextFieldPromoPricesMousePressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldPromoPrices, gridBagConstraints);

        jTextFieldMaxPOP.setText("0");
        jTextFieldMaxPOP.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldMaxPOP.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldMaxPOP.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldMaxPOP.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldMaxPOPFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldMaxPOPFocusLost(evt);
            }
        });
        jTextFieldMaxPOP.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldMaxPOPKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldMaxPOP, gridBagConstraints);

        jLabel1.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jPanel1.add(jLabel1, gridBagConstraints);

        jTextFieldContragent.setEditable(false);
        jTextFieldContragent.setToolTipText("\u0417\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e \u043f\u043e\u043b\u0435. \u0418\u0437\u043f\u043e\u043b\u0437\u0432\u0430\u0438\u0442\u0435 \u0434\u0432\u043e\u0435\u043d \u043a\u043b\u0438\u043a \u043d\u0430 \u043c\u0438\u0448\u043a\u0430\u0442\u0430 \u0438\u043b\u0438 \u043a\u043b\u0430\u0432\u0438\u0448\u0430 F7 \u0437\u0430 \u0438\u0437\u0431\u043e\u0440.");
        jTextFieldContragent.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldContragent.setNextFocusableComponent(jTextFieldCode);
        jTextFieldContragent.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldContragent.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldContragentFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldContragentFocusLost(evt);
            }
        });
        jTextFieldContragent.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldContragentKeyPressed(evt);
            }
        });
        jTextFieldContragent.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jTextFieldContragentMousePressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jPanel1.add(jTextFieldContragent, gridBagConstraints);

        jLabel2.setText("\u041a\u043e\u04341");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel2, gridBagConstraints);

        jTextFieldCod1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldCod1.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldCod1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldCod1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldCod1FocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldCod1, gridBagConstraints);

        jComboBoxGroup.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboBoxGroup.setPreferredSize(new java.awt.Dimension(170, 20));
        jComboBoxGroup.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboBoxGroupKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jPanel1.add(jComboBoxGroup, gridBagConstraints);

        jTextFieldMinProduct.setText("1");
        jTextFieldMinProduct.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldMinProduct.setPreferredSize(new java.awt.Dimension(50, 20));
        jTextFieldMinProduct.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldMinProductFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldMinProductFocusLost(evt);
            }
        });
        jTextFieldMinProduct.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldMinProductKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldMinProduct, gridBagConstraints);

        jLabel3.setText("\u041c\u0438\u043d. \u043a\u043e\u043b.:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel3, gridBagConstraints);

        jLabel4.setText("\u041a\u043e\u0434:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabel4, gridBagConstraints);

        jTextFieldCode.setToolTipText("\u041a\u043e\u0434\u0430 \u0435 \u0441\u044a\u0441\u0442\u0430\u0432\u0435\u043d \u0441\u0430\u043c\u043e \u043e\u0442 \u0446\u0438\u0444\u0440\u0438.");
        jTextFieldCode.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldCode.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldCode.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextFieldCode.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldCodeFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldCodeFocusLost(evt);
            }
        });
        jTextFieldCode.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldCodeKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldCode, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.NORTH);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(750, 100));
        jPanelDescription.setLayout(new java.awt.GridBagLayout());

        jPanelDescription.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "\u0420\u0430\u0437\u0444\u0430\u0441\u043e\u0432\u043a\u0430", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION));
        jPanelDescription.setPreferredSize(new java.awt.Dimension(350, 70));
        jComboBoxDescript1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboBoxDescript1.setPreferredSize(new java.awt.Dimension(80, 20));
        jComboBoxDescript1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboBoxDescript1KeyPressed(evt);
            }
        });

        jPanelDescription.add(jComboBoxDescript1, new java.awt.GridBagConstraints());

        jComboBoxDescript2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboBoxDescript2.setPreferredSize(new java.awt.Dimension(80, 20));
        jComboBoxDescript2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboBoxDescript2KeyPressed(evt);
            }
        });

        jPanelDescription.add(jComboBoxDescript2, new java.awt.GridBagConstraints());

        jComboBoxDescript3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboBoxDescript3.setPreferredSize(new java.awt.Dimension(80, 20));
        jComboBoxDescript3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboBoxDescript3KeyPressed(evt);
            }
        });

        jPanelDescription.add(jComboBoxDescript3, new java.awt.GridBagConstraints());

        jTextFieldDescript1.setEditable(false);
        jTextFieldDescript1.setText("1");
        jTextFieldDescript1.setAutoscrolls(false);
        jTextFieldDescript1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldDescript1.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        jPanelDescription.add(jTextFieldDescript1, gridBagConstraints);

        jTextFieldDescript2.setAutoscrolls(false);
        jTextFieldDescript2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldDescript2.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldDescript2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldDescript2FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldDescript2FocusLost(evt);
            }
        });
        jTextFieldDescript2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDescript2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        jPanelDescription.add(jTextFieldDescript2, gridBagConstraints);

        jTextFieldDescript3.setAutoscrolls(false);
        jTextFieldDescript3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldDescript3.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldDescript3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldDescript3FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldDescript3FocusLost(evt);
            }
        });
        jTextFieldDescript3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDescript3KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        jPanelDescription.add(jTextFieldDescript3, gridBagConstraints);

        jPanel4.add(jPanelDescription);

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

        jPanel4.add(jPanel3);

        getContentPane().add(jPanel4, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(650, 40));
        jButton1.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton3.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton3);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextFieldDescript3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldDescript3FocusLost
        fLost(jTextFieldDescript3);
    }//GEN-LAST:event_jTextFieldDescript3FocusLost
    
    private void jTextFieldDescript3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldDescript3FocusGained
        fGain(jTextFieldDescript3);
    }//GEN-LAST:event_jTextFieldDescript3FocusGained
    
    private void jTextFieldDescript2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldDescript2FocusLost
        fLost(jTextFieldDescript2);
    }//GEN-LAST:event_jTextFieldDescript2FocusLost
    
    private void jTextFieldDescript2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldDescript2FocusGained
        fGain(jTextFieldDescript2);
    }//GEN-LAST:event_jTextFieldDescript2FocusGained
    
    private void jTextFieldMinProductFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldMinProductFocusLost
        fLost(jTextFieldMinProduct);
    }//GEN-LAST:event_jTextFieldMinProductFocusLost
    
    private void jTextFieldMinProductFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldMinProductFocusGained
        fGain(jTextFieldMinProduct);
    }//GEN-LAST:event_jTextFieldMinProductFocusGained
    
    private void jTextFieldMaxPOPFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldMaxPOPFocusLost
        fLost(jTextFieldMaxPOP);
    }//GEN-LAST:event_jTextFieldMaxPOPFocusLost
    
    private void jTextFieldMaxPOPFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldMaxPOPFocusGained
        fGain(jTextFieldMaxPOP);
    }//GEN-LAST:event_jTextFieldMaxPOPFocusGained
    
    private void jTextFieldFNameFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldFNameFocusLost
        fLost(jTextFieldFName);
    }//GEN-LAST:event_jTextFieldFNameFocusLost
    
    private void jTextFieldFNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldFNameFocusGained
        fGain(jTextFieldFName);
    }//GEN-LAST:event_jTextFieldFNameFocusGained
    
    private void jTextFieldExpertSheetFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldExpertSheetFocusLost
        fLost(jTextFieldExpertSheet);
    }//GEN-LAST:event_jTextFieldExpertSheetFocusLost
    
    private void jTextFieldExpertSheetFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldExpertSheetFocusGained
        fGain(jTextFieldExpertSheet);
    }//GEN-LAST:event_jTextFieldExpertSheetFocusGained
    
    private void jTextFieldBarCodFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldBarCodFocusLost
        fLost(jTextFieldBarCod);
    }//GEN-LAST:event_jTextFieldBarCodFocusLost
    
    private void jTextFieldBarCodFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldBarCodFocusGained
        fGain(jTextFieldBarCod);
    }//GEN-LAST:event_jTextFieldBarCodFocusGained
    
    private void jTextFieldCNameFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCNameFocusLost
        fLost(jTextFieldCName);
    }//GEN-LAST:event_jTextFieldCNameFocusLost
    
    private void jTextFieldCNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCNameFocusGained
        fGain(jTextFieldCName);
    }//GEN-LAST:event_jTextFieldCNameFocusGained
    
    private void jTextFieldCod2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCod2FocusLost
        fLost(jTextFieldCod2);
    }//GEN-LAST:event_jTextFieldCod2FocusLost
    
    private void jTextFieldCod2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCod2FocusGained
        fGain(jTextFieldCod2);
    }//GEN-LAST:event_jTextFieldCod2FocusGained
    
    private void jTextFieldNameFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNameFocusLost
        fLost(jTextFieldName);
    }//GEN-LAST:event_jTextFieldNameFocusLost
    
    private void jTextFieldNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNameFocusGained
        fGain(jTextFieldName);
    }//GEN-LAST:event_jTextFieldNameFocusGained
    
    private void jTextFieldCod1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCod1FocusLost
        fLost(jTextFieldCod1);
    }//GEN-LAST:event_jTextFieldCod1FocusLost
    
    private void jTextFieldCod1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCod1FocusGained
        fGain(jTextFieldCod1);
    }//GEN-LAST:event_jTextFieldCod1FocusGained
    
    private void jTextFieldCodeFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCodeFocusLost
        fLost(jTextFieldCode);
    }//GEN-LAST:event_jTextFieldCodeFocusLost
    
    private void jTextFieldCodeFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCodeFocusGained
        fGain(jTextFieldCode);
    }//GEN-LAST:event_jTextFieldCodeFocusGained
    
    private void jComboBoxDescript1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBoxDescript1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jComboBoxDescript2.requestFocus();
        }
    }//GEN-LAST:event_jComboBoxDescript1KeyPressed
    
    private void jTextFieldDescript3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDescript3KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jButton1.requestFocus();
        }
    }//GEN-LAST:event_jTextFieldDescript3KeyPressed
    
    private void jTextFieldDescript2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDescript2KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jComboBoxDescript3.requestFocus();
        }
    }//GEN-LAST:event_jTextFieldDescript2KeyPressed
    
    private void jComboBoxDescript3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBoxDescript3KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jTextFieldDescript3.requestFocus();
        }
    }//GEN-LAST:event_jComboBoxDescript3KeyPressed
    
    private void jComboBoxDescript2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBoxDescript2KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jTextFieldDescript2.requestFocus();
        }
    }//GEN-LAST:event_jComboBoxDescript2KeyPressed
    
    private void jTextFieldMinProductKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldMinProductKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jComboBoxDescript1.requestFocus();
        }
    }//GEN-LAST:event_jTextFieldMinProductKeyPressed
    
    private void jTextFieldMaxPOPKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldMaxPOPKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldPromoPrices.requestFocus();
        }
    }//GEN-LAST:event_jTextFieldMaxPOPKeyPressed
    
    private void jTextFieldExpertSheetKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldExpertSheetKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldExpertSheet.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldExpertSheetKeyPressed
    
    private void jTextFieldCodeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldCodeKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldName.requestFocus();
        }
    }//GEN-LAST:event_jTextFieldCodeKeyPressed
    
    private void jComboBoxGroupKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBoxGroupKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldContragent.requestFocus();
            //  showContein(1,true);
            
        }
    }//GEN-LAST:event_jComboBoxGroupKeyPressed
    
    private void jTextFieldNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldNameKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            if(jTextFieldCName.getText().equals("")){jTextFieldCName.setText("" + jTextFieldName.getText());}
            if(jTextFieldSName.getText().equals("")){jTextFieldSName.setText("" + jTextFieldName.getText());}
            if(jTextFieldFName.getText().equals("")){jTextFieldFName.setText("" + jTextFieldName.getText());}
            jTextFieldName.revalidate();
            jTextFieldCName.revalidate();
            jTextFieldSName.revalidate();
            jTextFieldFName.getText();
            jTextFieldBarCod.requestFocus();}
    }//GEN-LAST:event_jTextFieldNameKeyPressed
    
    private void jTextFieldFeeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldFeeKeyPressed
        
        try {
            if(isNew && !myParent.isTypedFee) {
                ProductPriceFeeDialog =  new aeProductPriceFee(myParent,true,myParent.getId_PF(),true);
                ProductPriceFeeDialog.setVisible(true);
            } else {
                ProductPriceFeeDialog =  new aeProductPriceFee(myParent,true,myParent.getId_PF(),false);
                ProductPriceFeeDialog.setVisible(true);
            }
            
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        if(myParent.getId_PF()!=0  && !myParent.isTypedFee) {
            String  fee[] = myParent.getCountriesT().getProdictFee(myParent.getId_PF());
            jTextFieldFee.setText(fee[0]);
        } else jTextFieldFee.setText(myParent.getViewFee());
        //  repaintComp();
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldPrice.requestFocus();
        }
        
        
    }//GEN-LAST:event_jTextFieldFeeKeyPressed
    
    private void jTextFieldContragentFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldContragentFocusLost
        fLost(jTextFieldContragent);
    }//GEN-LAST:event_jTextFieldContragentFocusLost
    
    private void jTextFieldContragentFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldContragentFocusGained
        
        fGain(jTextFieldContragent);
    }//GEN-LAST:event_jTextFieldContragentFocusGained
    
    private void jTextFieldContragentKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldContragentKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_DELETE ) {
            jTextFieldContragent.setText("");
        } else showContein(1,true);
        if(evt.getKeyCode() ==java.awt.event.KeyEvent.VK_ENTER ){
            jTextFieldContragent.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldContragentKeyPressed
    
    private void jTextFieldContragentMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldContragentMousePressed
// TODO add your handling code here:
        if(evt.getClickCount() == 2 ) showContein(1,true);
        
    }//GEN-LAST:event_jTextFieldContragentMousePressed
    
    private void jTextFieldFeeFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldFeeFocusGained
        fGain(jTextFieldFee);
    }//GEN-LAST:event_jTextFieldFeeFocusGained
    
    private void jTextFieldFeeFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldFeeFocusLost
        fLost(jTextFieldFee);
    }//GEN-LAST:event_jTextFieldFeeFocusLost
    
    private void jTextFieldFeeKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldFeeKeyReleased
// TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldFeeKeyReleased
    
    private void jTextFieldFeeMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldFeeMousePressed
// TODO add your handling code here:
        try {
            if(isNew && !myParent.isTypedFee) {
                ProductPriceFeeDialog =  new aeProductPriceFee(myParent,true,myParent.getId_PF(),true);
                ProductPriceFeeDialog.setVisible(true);
            } else {
                ProductPriceFeeDialog =  new aeProductPriceFee(myParent,true,myParent.getId_PF(),false);
                ProductPriceFeeDialog.setVisible(true);
            }
            
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        if(myParent.getId_PF()!=0  && !myParent.isTypedFee) {
            String  fee[] = myParent.getCountriesT().getProdictFee(myParent.getId_PF());
            jTextFieldFee.setText(fee[0]);
        } else jTextFieldFee.setText(myParent.getViewFee());
        // repaintComp();
    }//GEN-LAST:event_jTextFieldFeeMousePressed
    
    private void jTextFieldPromoPricesFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPromoPricesFocusLost
        fLost(jTextFieldPromoPrices);
    }//GEN-LAST:event_jTextFieldPromoPricesFocusLost
    
    private void jTextFieldPromoPricesFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPromoPricesFocusGained
        fGain(jTextFieldPromoPrices);
    }//GEN-LAST:event_jTextFieldPromoPricesFocusGained
    
    private void jTextFieldPromoPricesMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldPromoPricesMousePressed
// TODO add your handling code here:
        try {
            if(isNew && !myParent.isTypedPromoPrice) {
                promoDialog = new aeProductPricePromotion(myParent,true,myParent.getId_PPP(),true);
                promoDialog.setVisible(true);
            } else {
                promoDialog = new aeProductPricePromotion(myParent,true,myParent.getId_PPP(),false);
                promoDialog.setVisible(true);
            }
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        if (myParent.getId_PPP()!=0 && !myParent.isTypedPromoPrice) {
            String promotion_price[] = myParent.getCountriesT().getProductPromotionPrice(myParent.getId_PPP());
            double p0 = Double.parseDouble(promotion_price[0]);
            double dds_ = 20;
            if(myParent.getId_PF()!=0) {
                dds_ = Double.parseDouble(myParent.getCountriesT().getProdictFee(myParent.getId_PF())[0]);
            }
            
            double p0dds = (p0*dds_/100)+p0;
            jTextFieldPromoPrices.setText(promotion_price[0]+"\u0431\u0435\u0437 \u0414\u0414\u0421, "+p0dds+"\u0441 \u0414\u0414\u0421");
            
        } else jTextFieldPromoPrices.setText(myParent.getViewPromoPrice());
        //   repaintComp();
        
    }//GEN-LAST:event_jTextFieldPromoPricesMousePressed
    
    private void jTextFieldPriceFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPriceFocusLost
        fLost(jTextFieldPrice);
    }//GEN-LAST:event_jTextFieldPriceFocusLost
    
    private void jTextFieldPriceFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPriceFocusGained
        fGain(jTextFieldPrice);
    }//GEN-LAST:event_jTextFieldPriceFocusGained
    
    private void jTextFieldPriceKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPriceKeyPressed
// TODO add your handling code here:
        
        try {
            if(isNew && !myParent.isTypedPrice) {
                ProductPriceDialog =  new aeProductPrice(myParent,true,myParent.getId_PP(),true);
                ProductPriceDialog.setVisible(true);
                
            } else {
                ProductPriceDialog =  new aeProductPrice(myParent,true,myParent.getId_PP(),false);
                ProductPriceDialog.setVisible(true);
            }
            
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        if (myParent.getId_PP()!=0 && !myParent.isTypedPrice) {
            String price[] = myParent.getCountriesT().getProductPrice(myParent.getId_PP());
            double p0 = Double.parseDouble(price[0]);
            double dds_ = 20;
            if(myParent.getId_PF()!=0) {
                dds_ = Double.parseDouble(myParent.getCountriesT().getProdictFee(myParent.getId_PF())[0]);
            }
            
            double p0dds = (p0*dds_/100)+p0;
            jTextFieldPrice.setText(price[0]+"\u0431\u0435\u0437 \u0414\u0414\u0421, "+p0dds+"\u0441 \u0414\u0414\u0421");
        } else jTextFieldPrice.setText(myParent.getViewPrice());
        //   repaintComp();
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldMaxPOP.requestFocus();
        }
        
    }//GEN-LAST:event_jTextFieldPriceKeyPressed
    
    private void jTextFieldPriceMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldPriceMousePressed
// TODO add your handling code here:
        
        try {
            if(isNew && !myParent.isTypedPrice) {
                ProductPriceDialog =  new aeProductPrice(myParent,true,myParent.getId_PP(),true);
                ProductPriceDialog.setVisible(true);
                
            } else {
                ProductPriceDialog =  new aeProductPrice(myParent,true,myParent.getId_PP(),false);
                ProductPriceDialog.setVisible(true);
            }
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        if (myParent.getId_PP()!=0 && !myParent.isTypedPrice) {
            String price[] = myParent.getCountriesT().getProductPrice(myParent.getId_PP());
            double p0 = Double.parseDouble(price[0]);
            double dds_ = 20;
            if(myParent.getId_PF()!=0) {
                dds_ = Double.parseDouble(myParent.getCountriesT().getProdictFee(myParent.getId_PF())[0]);
            }
            
            double p0dds = (p0*dds_/100)+p0;
            jTextFieldPrice.setText(price[0]+"\u0431\u0435\u0437 \u0414\u0414\u0421, "+p0dds+"\u0441 \u0414\u0414\u0421");
        } else jTextFieldPrice.setText(myParent.getViewPrice());
        // repaintComp();
        
        
    }//GEN-LAST:event_jTextFieldPriceMousePressed
    
    //
    private void jButtonToEndActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToEndActionPerformed
// TODO add your handling code here:
        isNew = false;
        myParent.mTableEnd();
        jButtonToEnd.setEnabled(false);
        jButtonOneRowP.setEnabled(false);
        jButtonToEnd.repaint();
        jButtonOneRowP.repaint();
        
        
        jButtonToBegin.setEnabled(true);
        jButtonOneRowM.setEnabled(true);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
        
        System.out.println(String.valueOf(myParent.getId_Group()));
        repaintComp();
    }//GEN-LAST:event_jButtonToEndActionPerformed
    
    private void jButtonOneRowPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowPActionPerformed
// TODO add your handling code here:
        isNew = false;
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
        System.out.println(String.valueOf(myParent.getId_Group()));
        repaintComp();
    }//GEN-LAST:event_jButtonOneRowPActionPerformed
    
    private void jButtonOneRowMActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowMActionPerformed
// TODO add your handling code here:
        isNew = false;
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
        System.out.println(String.valueOf(myParent.getId_Group()));
        repaintComp();
    }//GEN-LAST:event_jButtonOneRowMActionPerformed
    
    private void jButtonToBeginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToBeginActionPerformed
// TODO add your handling code here:
        isNew = false;
        myParent.mTableBegining();
        
        jButtonToBegin.setEnabled(false);
        jButtonOneRowM.setEnabled(false);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
        
        jButtonToEnd.setEnabled(true);
        jButtonOneRowP.setEnabled(true);
        jButtonToEnd.repaint();
        jButtonOneRowP.repaint();
        System.out.println(String.valueOf(myParent.getId_Group()));
        repaintComp();
    }//GEN-LAST:event_jButtonToBeginActionPerformed
    
    private void jTextFieldPromoPricesKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPromoPricesKeyPressed
// TODO add your handling code here:
        
        try {
            if(isNew && !myParent.isTypedPromoPrice) {
                promoDialog = new aeProductPricePromotion(myParent,true,myParent.getId_PPP(),true);
                promoDialog.setVisible(true);
            } else {
                promoDialog = new aeProductPricePromotion(myParent,true,myParent.getId_PPP(),false);
                promoDialog.setVisible(true);
            }
            
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        if (myParent.getId_PPP()!=0 && !myParent.isTypedPromoPrice) {
            String promotion_price[] = myParent.getCountriesT().getProductPromotionPrice(myParent.getId_PPP());
            double p0 = Double.parseDouble(promotion_price[0]);
            double dds_ = 20;
            if(myParent.getId_PF()!=0) {
                dds_ = Double.parseDouble(myParent.getCountriesT().getProdictFee(myParent.getId_PF())[0]);
            }
            
            double p0dds = (p0*dds_/100)+p0;
            jTextFieldPromoPrices.setText(promotion_price[0]+"\u0431\u0435\u0437 \u0414\u0414\u0421, "+p0dds+"\u0441 \u0414\u0414\u0421");
        } else jTextFieldPromoPrices.setText(myParent.getViewPromoPrice());
        //   repaintComp();
        
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextFieldMinProduct.requestFocus();
        }
        
    }//GEN-LAST:event_jTextFieldPromoPricesKeyPressed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
//SAVE RECORD
        
        myParent.setId_Group(myParent.getCountriesT().getIndexConnOfId()[jComboBoxGroup.getSelectedIndex()]);
        if(isNew) // zapisa NE sy6testvuva v bazata!!
        {
            
            int v1,v2,v3,m1,m2,m3;
            v1 = 1;
            try {
                v2 = Integer.parseInt(jTextFieldDescript2.getText());
                v3 = Integer.parseInt(jTextFieldDescript3.getText());
                m1 = myParent.getCountriesT().getIndexConnOfIdColumn()[jComboBoxDescript1.getSelectedIndex()];
                m2 = myParent.getCountriesT().getIndexConnOfIdColumn()[jComboBoxDescript2.getSelectedIndex()];
                m3 = myParent.getCountriesT().getIndexConnOfIdColumn()[jComboBoxDescript3.getSelectedIndex()];
                
                
                myParent.setId_PD( myParent.getCountriesT().setProductDescriptionColumn(v1,v2,v3,m1,m2,m3));
            } catch(Exception xx){myParent.setId_PD(1);};
            if(myParent.isTypedFee) myParent.setId_PF(myParent.saveProductFeeToDB());
            if(myParent.isTypedPromoPrice) myParent.setId_PPP(myParent.saveProductPromotionPriceToDB());
            if(myParent.isTypedPrice) myParent.setId_PP(myParent.saveNewPriceToDb());
            myParent.isTypedFee = false;
            myParent.isTypedPromoPrice = false;
            myParent.isTypedPrice = false;
            if(myParent.getId_Group()<1) {
                myParent.setId_Group(1);
            }
            if(myParent.getId_PF()<1) {
                myParent.setId_PF(1);
            }
            if(myParent.getId_PD()<1) {
                myParent.setId_PD(1);
            }
            if(myParent.getId_PP()<1) {
                myParent.setId_PP(1);
            }
            if(myParent.getId_PPP()<1) {
                myParent.setId_PPP(1);
            }
            
            
            
            
            
            
            
            {
                
                if(setAllVariables()) {
                    
                    myParent.getCountriesT().insertRow(myParent.getId_PM(),myParent.getId_PPP(),myParent.getId_PP(),
                            myParent.getId_PF(),myParent.getId_Group(),myParent.getId_PD(),
                            myParent.getNamePM(),myParent.getSNamePM(),myParent.getFNamePM(),
                            myParent.getCNamePM(),myParent.getMax_POP(),myParent.getFlag(),
                            myParent.getExpertSheet(),myParent.getBarCod(),myParent.getCod1(),
                            myParent.getCod2(),myParent.getMinProduct(),myParent.getCodePM());
                    
                    
                    int maxId_pm = myParent.getCountriesT().getMaxId();
                    
                    
                    myParent.getCountriesT().setNewConsigment(maxId_pm); // syzdavane na nova partida s nomer 0001;
                    if(jTextFieldContragent.getText().length() > 0)
                        myParent.getCountriesT().setIDProductContragent(maxId_pm,myParent.getId_Contragent(),0);
                    
                    isNew = false;
                    showOKMessage();
                } else {
                    showMessage();
                    
                }
                
            }
        } else  // zapisa  sy6testvuva v bazata!!
        {
            if(setAllVariables()) {
                int v1,v2,v3,m1,m2,m3;
                v1 = 1;
                v2 = Integer.parseInt(jTextFieldDescript2.getText());
                v3 = Integer.parseInt(jTextFieldDescript3.getText());
                m1 = myParent.getCountriesT().getIndexConnOfIdColumn()[jComboBoxDescript1.getSelectedIndex()];
                m2 = myParent.getCountriesT().getIndexConnOfIdColumn()[jComboBoxDescript2.getSelectedIndex()];
                m3 = myParent.getCountriesT().getIndexConnOfIdColumn()[jComboBoxDescript3.getSelectedIndex()];
                myParent.getCountriesT().updateProductDescriprionColumn(myParent.getId_PD(),v1,v2,v3,m1,m2,m3);
                
                if(myParent.isTypedPrice ) {
                    if(myParent.getId_PP()>1) {
                        myParent.updateNewPriceToDb();
                    } else {
                        myParent.setId_PP(myParent.saveNewPriceToDb());
                    }
                }
                
                if(myParent.isTypedFee) {
                    if( myParent.getId_PF()>1) {
                        myParent.updateProductFeeToDB();
                    } else {
                        myParent.setId_PF(myParent.saveProductFeeToDB());
                    }
                }
                
                
                
                if(myParent.isTypedPromoPrice) {
                    if(myParent.getId_PPP()>1) {
                        myParent.updateProductPromotionPriceToDB();
                    } else {
                        myParent.setId_PPP(myParent.saveProductPromotionPriceToDB());
                    }
                }
                
                myParent.isTypedPrice = false;
                myParent.isTypedFee = false;
                myParent.isTypedPromoPrice = false;
                
                myParent.getCountriesT().updateRow(myParent.getId_PM(),myParent.getId_PPP(),myParent.getId_PP(),
                        myParent.getId_PF(),myParent.getId_Group(),myParent.getId_PD(),
                        myParent.getNamePM(),myParent.getSNamePM(),myParent.getFNamePM(),
                        myParent.getCNamePM(),myParent.getMax_POP(),myParent.getFlag(),
                        myParent.getExpertSheet(),myParent.getBarCod(),myParent.getCod1(),
                        myParent.getCod2(),myParent.getMinProduct(),myParent.getCodePM());
                int maxId_pm = myParent.getCountriesT().getMaxId();
                // update tablicat s partidite za novoto ID -------------
                myParent.getCountriesT().updateIDProductConsigment(maxId_pm,myParent.getId_PM());
                
                if(isNewInputContragent) {
                    if(jTextFieldContragent.getText().length() > 0)
                        myParent.getCountriesT().setIDProductContragent(maxId_pm,myParent.getId_Contragent(),0);
                    
                } else {
                    
                    if(jTextFieldContragent.getText().length() > 0) {
                        myParent.getCountriesT().updateIDProductContragent(myParent.getId_PM(),myParent.getId_Contragent(),1);
                        myParent.getCountriesT().setIDProductContragent(maxId_pm,myParent.getId_Contragent(),0);
                    } else myParent.getCountriesT().updateIDProductContragent(myParent.getId_PM(),myParent.getId_Contragent(),1);
                    
                }
                showOKMessage();
            } else {
                showMessage();
                
            }
            
        }
        //  jButton3.doClick(); // zatvarq se aeProsuct
        //  repaintComp();
        myParent.refreshTable();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jTextFieldBarCodKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldBarCodKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){jTextFieldExpertSheet.requestFocus();}
    }//GEN-LAST:event_jTextFieldBarCodKeyPressed
    
    /**
     * @param args the command line arguments
     */
   /* public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new aeProduct(new JFrame(),true,true,1).setVisible(true);
            }
        });
    }*/
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButtonOneRowM;
    private javax.swing.JButton jButtonOneRowP;
    private javax.swing.JButton jButtonToBegin;
    private javax.swing.JButton jButtonToEnd;
    private javax.swing.JComboBox jComboBoxDescript1;
    private javax.swing.JComboBox jComboBoxDescript2;
    private javax.swing.JComboBox jComboBoxDescript3;
    private javax.swing.JComboBox jComboBoxGroup;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabelAddress;
    private javax.swing.JLabel jLabelBulstat;
    private javax.swing.JLabel jLabelCod;
    private javax.swing.JLabel jLabelDanNomer;
    private javax.swing.JLabel jLabelEmail;
    private javax.swing.JLabel jLabelFax;
    private javax.swing.JLabel jLabelMOL;
    private javax.swing.JLabel jLabelNM;
    private javax.swing.JLabel jLabelName;
    private javax.swing.JLabel jLabelOSO;
    private javax.swing.JLabel jLabelTel;
    private javax.swing.JLabel jLabelWeb;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanelDescription;
    private javax.swing.JTextField jTextFieldBarCod;
    private javax.swing.JTextField jTextFieldCName;
    private javax.swing.JTextField jTextFieldCod1;
    private javax.swing.JTextField jTextFieldCod2;
    private javax.swing.JTextField jTextFieldCode;
    private javax.swing.JTextField jTextFieldContragent;
    private javax.swing.JTextField jTextFieldDescript1;
    private javax.swing.JTextField jTextFieldDescript2;
    private javax.swing.JTextField jTextFieldDescript3;
    private javax.swing.JTextField jTextFieldExpertSheet;
    private javax.swing.JTextField jTextFieldFName;
    private javax.swing.JTextField jTextFieldFee;
    private javax.swing.JTextField jTextFieldMaxPOP;
    private javax.swing.JTextField jTextFieldMinProduct;
    private javax.swing.JTextField jTextFieldName;
    private javax.swing.JTextField jTextFieldPrice;
    private javax.swing.JTextField jTextFieldPromoPrices;
    private javax.swing.JTextField jTextFieldSName;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private FrmProduct myParent;
    private javax.swing.JComboBox jComboBoxColumn1 = new javax.swing.JComboBox();
    private javax.swing.JComboBox jComboBoxColumn2 = new javax.swing.JComboBox();
    private javax.swing.JComboBox jComboBoxColumn3 = new javax.swing.JComboBox();
    private showContentsCon_Gr showContein;
    private imakante.com.vcomponents.iInternalFrame myframe;
    private String splitGroups[] = null;
    private String splitNameOfColumn1[] = null;
    private String splitNameOfColumn2[] = null;
    private String splitNameOfColumn3[] = null;
    private aeProductPricePromotion promoDialog;
    private boolean  isNewInputContragent = true;
    private aeProductPriceFee ProductPriceFeeDialog;
    private aeProductPrice ProductPriceDialog;
    private aeProductPricePromotion ProductPricePromotionDialog;
    boolean isNew; // za opredelqne dali zapisa e 4isto nov, t.e dali ne sy6testva b bazata
    
    
    //---------------END My Variables
//---------------START MyFunction
    private void getNavigatiionState() // ok
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
    private void repaintComp() // Test
    {
        jTextFieldContragent.setText("");
        if(!isNew) {
            jTextFieldName.setText(myParent.getNamePM());
            jTextFieldCName.setText(myParent.getCNamePM());
            jTextFieldSName.setText(myParent.getSNamePM());
            jTextFieldFName.setText(myParent.getFNamePM());
            jTextFieldBarCod.setText(String.valueOf(myParent.getBarCod()));
            
            jTextFieldCod1.setText(myParent.getCod1());
            jTextFieldCod2.setText(myParent.getCod2());
            jTextFieldMaxPOP.setText(String.valueOf(myParent.getMax_POP()));
            jTextFieldExpertSheet.setText(myParent.getExpertSheet());
            jTextFieldMinProduct.setText(String.valueOf(myParent.getMinProduct()));
            
            jTextFieldCode.setText(myParent.getCodePM());
            
        }
        if(isNew) {
            
        }
        
        if((myParent.getId_PD()!=0)) // n_product_description
        {
            String description[][] = myParent.getCountriesT().getDescription(myParent.getId_PD());
            
            
            int newItem = getNewComboBoxColumnIndex(Integer.parseInt(description[0][0]));
            jComboBoxDescript1.setSelectedIndex(newItem);
            
            newItem = getNewComboBoxColumnIndex(Integer.parseInt(description[1][0]));
            jComboBoxDescript2.setSelectedIndex(newItem);
            
            newItem = getNewComboBoxColumnIndex(Integer.parseInt(description[2][0]));
            jComboBoxDescript3.setSelectedIndex(newItem);
            
            
            // jTextFieldDescript1.setText(description[0][1]);
            jTextFieldDescript2.setText(description[1][1]);
            jTextFieldDescript3.setText(description[2][1]);
            
            
            
            
        }
        if(myParent.getId_PF()!=0) {
            String  fee[] = myParent.getCountriesT().getProdictFee(myParent.getId_PF());
            jTextFieldFee.setText(fee[0]);
        } else jTextFieldFee.setText(myParent.getViewFee());
        if (myParent.getId_PP()!=0) {
            String price[] = myParent.getCountriesT().getProductPrice(myParent.getId_PP());
            jTextFieldPrice.setText(price[0]);
        } else jTextFieldPrice.setText(myParent.getViewPrice());
        if (myParent.getId_PPP()!=0) {
            String promotion_price[] = myParent.getCountriesT().getProductPromotionPrice(myParent.getId_PPP());
            jTextFieldPromoPrices.setText(promotion_price[0]);
        } else jTextFieldPromoPrices.setText(myParent.getViewPromoPrice());
        
        if (myParent.getId_Group()!=0) // ?????
        {
            int newIndexGroup = getNewComboBoxIndex(myParent.getId_Group());
            jComboBoxGroup.setSelectedIndex(newIndexGroup);
        }
        
        
        isNewInputContragent = true;
        if(myParent.getId_PM()>0) {
            myParent.setId_Contragent(myParent.getCountriesT().getContragentID(myParent.getId_PM(),0));
            
            if(myParent.getId_Contragent() != 0) {
                isNewInputContragent = false; // flag opredelq6t dali za tozi produkt imame vkaran kontragent ili ne
                String contragent = myParent.getCountriesT().getProductContragent(myParent.getId_Contragent());
                jTextFieldContragent.setText(contragent);
            }
        }
        
    }
    private void showContein(int con_gr, boolean isEditalble) // test
    {
        try {
            
            java.sql.ResultSet r1 = myParent.getCountriesT().getShowContein();
            showContein = new showContentsCon_Gr(myframe,true,r1,myParent.getCountriesT().getConn());
            showContein.setVisible(true);
            String contragent = myParent.getCountriesT().getProductContragent(myParent.getId_Contragent());
            jTextFieldContragent.setText(contragent);
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        
    }
    private int getNewComboBoxIndex(int oldindex) //OK
    {
        int newindex= 0;
        for(int i = 0; i < myParent.getCountriesT().getIndexConnOfId().length; i++) {
            if(myParent.getCountriesT().getIndexConnOfId()[i]==oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
    private int getNewComboBoxColumnIndex(int oldindex) //OK
    {
        int newindex= 0;
        for(int i = 0; i < myParent.getCountriesT().getIndexConnOfIdColumn().length; i++) {
            if(myParent.getCountriesT().getIndexConnOfIdColumn()[i]==oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    private boolean  setAllVariables() {
        boolean isOk= true;
        
        myParent.setNamePM(jTextFieldName.getText());
        myParent.setSNamePM(jTextFieldSName.getText());
        myParent.setFNamePM(jTextFieldFName.getText());
        myParent.setCNamePM(jTextFieldCName.getText());
        myParent.setCod1(jTextFieldCod1.getText());
        myParent.setCod2(jTextFieldCod2.getText());
        myParent.setExpertSheet(jTextFieldExpertSheet.getText());
        
        myParent.setCodePM(jTextFieldCode.getText());
        
        try {
            myParent.setBarCod(Integer.parseInt(jTextFieldBarCod.getText()));
            myParent.setMax_POP(Double.parseDouble(jTextFieldMaxPOP.getText()));
            myParent.setMinProduct(Integer.parseInt(jTextFieldMinProduct.getText()));
        } catch(Exception e) {
            // showMessage();
            isOk = false;
        }
        if( (myParent.getId_PF() ==0) || (myParent.getId_Group()==0) || (myParent.getId_PP()==0) ||
                (myParent.getId_PPP() ==0) || (myParent.getId_PD()==0)) {
            isOk = false;
        }
        return isOk;
    }
    
    private void showMessage() {
        JOptionPane.showMessageDialog(this,"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043a\u043e\u0440\u0435\u043a\u043d\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435");
        
        
    }
    private void showOKMessage() {
        JOptionPane.showMessageDialog(this,"\u0417\u0430\u043F\u0438\u0441\u044A\u0442 \u0435 \u043A\u043E\u0440\u0435\u043A\u0442\u0435\u043D");
        
    }
    private void fGain(javax.swing.JTextField jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JTextField jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 255, 255), null));
    }
    
    
}// end class

