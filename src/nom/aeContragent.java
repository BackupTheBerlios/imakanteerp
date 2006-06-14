package nom;

import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;
import javax.swing.*;
import nom.showAddressContragent;
import nom.showNameOfMOL_OSO;

public class aeContragent extends imakante.com.vcomponents.iDialog {
    
    /** Creates new form aeContragent */
    public aeContragent(imakante.com.vcomponents.iInternalFrame frame, boolean modal, boolean isnew) {
        super(frame, modal);
        this.myframe = frame;
        this.isNew = isnew; // opredelq dali zapisa sy6testwuwa v bazata;
        this.myParent = (nom.FrmContragent) frame;
        initComponents();
        getNavigatiionState();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        //  showNameOfMOL_OSO setMOL = new showNameOfMOL_OSO(myframe,true,myParent.getContragentDB().getTablesWithNames(""),myParent.getContragentDB().getConn(),true);
        //init combo box for currency
        
        this.setTitle("\u0412\u044A\u0432\u0435\u0436\u0434\u0430\u043D\u0435 \u043D\u0430 \u043A\u043E\u043D\u0442\u0440\u0430\u0433\u0435\u043D\u0442");
        jTextFieldCod.requestFocus();
        repaintComp();
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
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
        jTextFieldCod = new javax.swing.JTextField();
        jTextFieldName = new javax.swing.JTextField();
        jTextFieldDanNomer = new javax.swing.JTextField();
        jTextFieldBulstat = new javax.swing.JTextField();
        jTextFieldAddress = new javax.swing.JTextField();
        jTextFieldNM = new javax.swing.JTextField();
        jTextFieldTel = new javax.swing.JTextField();
        jTextFieldFax = new javax.swing.JTextField();
        jTextFieldEmail = new javax.swing.JTextField();
        jTextFieldWeb = new javax.swing.JTextField();
        jTextFieldMOL = new javax.swing.JTextField();
        jTextFieldOSO = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextFieldNameBank_R = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldIBAN_R = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextFieldBIC_R = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldNameBank_D = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jTextFieldIBAN_D = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextFieldBIC_D = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jComboBoxValutaR = new javax.swing.JComboBox();
        jLabel8 = new javax.swing.JLabel();
        jComboBoxValutaD = new javax.swing.JComboBox();
        jLabel9 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("\u0414\u0430\u043d\u043d\u0438 \u0437\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0430"));
        jPanel1.setPreferredSize(new java.awt.Dimension(600, 330));
        jLabelCod.setText("\u041a\u043e\u0434:");

        jLabelName.setText("\u0418\u043c\u0435:");

        jLabelBulstat.setText("\u0415\u0418\u041a:");

        jLabelDanNomer.setText("\u0414\u0430\u043d.\u2116");

        jLabelAddress.setText("\u0410\u0434\u0440\u0435\u0441:");

        jLabelNM.setText("\u041d\u0430\u0441.\u043c\u044f\u0441\u0442\u043e *:");

        jLabelTel.setText("\u0422\u0435\u043b.:");

        jLabelFax.setText("Fax:");

        jLabelEmail.setText("e-mail:");

        jLabelWeb.setText("web page:");

        jLabelMOL.setText("\u041c\u041e\u041b *:");

        jLabelOSO.setText("\u041e\u0421\u041e *:");

        jTextFieldCod.setToolTipText("\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u0430\u043c\u043e \u0446\u0438\u0444\u0440\u0438");
        jTextFieldCod.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldCod.setNextFocusableComponent(jTextFieldName);
        jTextFieldCod.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldCod.setInputVerifier(new imakante.com.InputIntegerVerifier());
        /*jTextFieldCod.setInputVerifier(new InputVerifier()
            {
                public boolean verify(JComponent input)
                {
                    byte UpRange = 57;
                    byte DownRange = 48;
                    boolean checkSimbol=false;
                    JTextField tf = (JTextField) input;
                    int lenth = tf.getText().length();
                    byte ch[] = new byte[lenth];
                    ch = tf.getText().getBytes();

                    for(int i=0;i < lenth; i++)
                    {
                        if(( ch[i]<= UpRange)&&(ch[i] >=DownRange))
                        {
                            checkSimbol = true;
                        }
                        else checkSimbol= false;
                    }
                    System.out.println("setInputVerifier" + checkSimbol );
                    return checkSimbol;
                }
            });*/

            jTextFieldCod.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldCodFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldCodFocusLost(evt);
                }
            });
            jTextFieldCod.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldCodKeyPressed(evt);
                }
            });

            jTextFieldName.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldName.setNextFocusableComponent(jTextFieldDanNomer);
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

            jTextFieldDanNomer.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldDanNomer.setNextFocusableComponent(jTextFieldBulstat);
            jTextFieldDanNomer.setPreferredSize(new java.awt.Dimension(80, 20));
            jTextFieldDanNomer.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldDanNomerFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldDanNomerFocusLost(evt);
                }
            });
            jTextFieldDanNomer.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldDanNomerKeyPressed(evt);
                }
            });

            jTextFieldBulstat.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldBulstat.setMinimumSize(new java.awt.Dimension(150, 20));
            jTextFieldBulstat.setNextFocusableComponent(jTextFieldAddress);
            jTextFieldBulstat.setPreferredSize(new java.awt.Dimension(80, 20));
            jTextFieldBulstat.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldBulstatFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldBulstatFocusLost(evt);
                }
            });
            jTextFieldBulstat.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldBulstatKeyPressed(evt);
                }
            });

            jTextFieldAddress.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldAddress.setNextFocusableComponent(jTextFieldNM);
            jTextFieldAddress.setPreferredSize(new java.awt.Dimension(170, 20));
            jTextFieldAddress.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldAddressFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldAddressFocusLost(evt);
                }
            });
            jTextFieldAddress.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldAddressKeyPressed(evt);
                }
            });

            jTextFieldNM.setBackground(new java.awt.Color(204, 204, 255));
            jTextFieldNM.setToolTipText("F7  \u0437\u0430 \u0438\u0437\u0431\u043e\u0440 \u043d\u0430 \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
            jTextFieldNM.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldNM.setNextFocusableComponent(jTextFieldTel);
            jTextFieldNM.setPreferredSize(new java.awt.Dimension(170, 20));
            jTextFieldNM.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldNMFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldNMFocusLost(evt);
                }
            });
            jTextFieldNM.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldNMKeyPressed(evt);
                }
            });

            jTextFieldTel.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldTel.setNextFocusableComponent(jTextFieldFax);
            jTextFieldTel.setPreferredSize(new java.awt.Dimension(170, 20));
            jTextFieldTel.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldTelFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldTelFocusLost(evt);
                }
            });
            jTextFieldTel.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldTelKeyPressed(evt);
                }
            });

            jTextFieldFax.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldFax.setNextFocusableComponent(jTextFieldEmail);
            jTextFieldFax.setPreferredSize(new java.awt.Dimension(170, 20));
            jTextFieldFax.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldFaxFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldFaxFocusLost(evt);
                }
            });
            jTextFieldFax.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldFaxKeyPressed(evt);
                }
            });

            jTextFieldEmail.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldEmail.setNextFocusableComponent(jTextFieldWeb);
            jTextFieldEmail.setPreferredSize(new java.awt.Dimension(170, 20));
            jTextFieldEmail.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldEmailFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldEmailFocusLost(evt);
                }
            });
            jTextFieldEmail.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldEmailKeyPressed(evt);
                }
            });

            jTextFieldWeb.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldWeb.setNextFocusableComponent(jTextFieldMOL);
            jTextFieldWeb.setPreferredSize(new java.awt.Dimension(170, 20));
            jTextFieldWeb.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldWebFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldWebFocusLost(evt);
                }
            });
            jTextFieldWeb.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldWebKeyPressed(evt);
                }
            });

            jTextFieldMOL.setBackground(new java.awt.Color(204, 204, 255));
            jTextFieldMOL.setToolTipText("F7  \u0437\u0430 \u0438\u0437\u0431\u043e\u0440 \u043d\u0430 \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
            jTextFieldMOL.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldMOL.setNextFocusableComponent(jTextFieldOSO);
            jTextFieldMOL.setPreferredSize(new java.awt.Dimension(170, 20));
            jTextFieldMOL.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldMOLKeyPressed(evt);
                }
            });

            jTextFieldOSO.setBackground(new java.awt.Color(204, 204, 255));
            jTextFieldOSO.setToolTipText("F7  \u0437\u0430 \u0438\u0437\u0431\u043e\u0440 \u043d\u0430 \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
            jTextFieldOSO.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldOSO.setNextFocusableComponent(jTextFieldNameBank_R);
            jTextFieldOSO.setPreferredSize(new java.awt.Dimension(170, 20));
            jTextFieldOSO.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldOSOKeyPressed(evt);
                }
            });

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

            jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder("\u0411\u0430\u043d\u043a\u043e\u0432\u0430 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f"));
            jLabel1.setText("\u0418\u043c\u0435 \u043d\u0430 \u0411\u0430\u043d\u043a\u0430\u0442\u0430 \u0437\u0430 \u0440\u0430\u0437\u043f\u043b\u0430\u0449\u0430\u0442\u0435\u043b\u043d\u0430 \u0441\u043c\u0435\u0442\u043a\u0430");

            jTextFieldNameBank_R.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldNameBank_R.setNextFocusableComponent(jTextFieldIBAN_R);
            jTextFieldNameBank_R.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldNameBank_RFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldNameBank_RFocusLost(evt);
                }
            });
            jTextFieldNameBank_R.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldNameBank_RKeyPressed(evt);
                }
            });

            jLabel2.setText("IBAN \u043d\u0430 \u0420\u0410\u0417\u041f\u041b\u0410\u0429\u0410\u0422\u0420\u0415\u041b\u041d\u0410 \u0421\u041c\u0415\u0422\u041a\u0410");

            jTextFieldIBAN_R.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldIBAN_R.setNextFocusableComponent(jTextFieldBIC_R);
            jTextFieldIBAN_R.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldIBAN_RFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldIBAN_RFocusLost(evt);
                }
            });
            jTextFieldIBAN_R.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldIBAN_RKeyPressed(evt);
                }
            });

            jLabel3.setText("BIC \u043d\u0430 \u0431\u0430\u043d\u043a\u0430\u0442\u0430 \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b \u0440\u0430\u043f\u043b\u0430\u0449\u0430\u043d\u0435");

            jTextFieldBIC_R.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldBIC_R.setNextFocusableComponent(jComboBoxValutaR);
            jTextFieldBIC_R.setInputVerifier(new imakante.com.InputCharacterVerifier());
            jTextFieldBIC_R.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldBIC_RFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldBIC_RFocusLost(evt);
                }
            });
            jTextFieldBIC_R.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldBIC_RKeyPressed(evt);
                }
            });

            jLabel4.setText("\u0418\u043c\u0435 \u043d\u0430 \u0411\u0430\u043d\u043a\u0430\u0442\u0430 \u0437\u0430 \u0414\u0414\u0421 \u0441\u043c\u0435\u0442\u043a\u0430");

            jTextFieldNameBank_D.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldNameBank_D.setNextFocusableComponent(jTextFieldIBAN_D);
            jTextFieldNameBank_D.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldNameBank_DFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldNameBank_DFocusLost(evt);
                }
            });
            jTextFieldNameBank_D.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldNameBank_DKeyPressed(evt);
                }
            });

            jLabel5.setText("IBAN \u043d\u0430 \u0414\u0414\u0421 \u0421\u041c\u0415\u0422\u041a\u0410");

            jTextFieldIBAN_D.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldIBAN_D.setNextFocusableComponent(jTextFieldBIC_D);
            jTextFieldIBAN_D.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldIBAN_DFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldIBAN_DFocusLost(evt);
                }
            });
            jTextFieldIBAN_D.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldIBAN_DKeyPressed(evt);
                }
            });

            jLabel6.setText("BIC \u043d\u0430 \u0431\u0430\u043d\u043a\u0430\u0442\u0430 \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b \u0414\u0414\u0421");

            jTextFieldBIC_D.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jTextFieldBIC_D.setNextFocusableComponent(jComboBoxValutaD);
            jTextFieldBIC_D.setInputVerifier(new imakante.com.InputCharacterVerifier());
            jTextFieldBIC_D.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jTextFieldBIC_DFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jTextFieldBIC_DFocusLost(evt);
                }
            });
            jTextFieldBIC_D.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jTextFieldBIC_DKeyPressed(evt);
                }
            });

            jLabel7.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

            jComboBoxValutaR.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "BGL", "EU", "USD" }));
            jComboBoxValutaR.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jComboBoxValutaR.setNextFocusableComponent(jTextFieldNameBank_D);
            jComboBoxValutaR.setPreferredSize(new java.awt.Dimension(55, 19));
            jComboBoxValutaR.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jComboBoxValutaRFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jComboBoxValutaRFocusLost(evt);
                }
            });
            jComboBoxValutaR.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jComboBoxValutaRKeyPressed(evt);
                }
            });

            jLabel8.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

            jComboBoxValutaD.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "BGL", "EU", "USD" }));
            jComboBoxValutaD.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
            jComboBoxValutaD.setNextFocusableComponent(jButton1);
            jComboBoxValutaD.setPreferredSize(new java.awt.Dimension(55, 19));
            jComboBoxValutaD.addFocusListener(new java.awt.event.FocusAdapter() {
                public void focusGained(java.awt.event.FocusEvent evt) {
                    jComboBoxValutaDFocusGained(evt);
                }
                public void focusLost(java.awt.event.FocusEvent evt) {
                    jComboBoxValutaDFocusLost(evt);
                }
            });
            jComboBoxValutaD.addKeyListener(new java.awt.event.KeyAdapter() {
                public void keyPressed(java.awt.event.KeyEvent evt) {
                    jComboBoxValutaDKeyPressed(evt);
                }
            });

            org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
            jPanel4.setLayout(jPanel4Layout);
            jPanel4Layout.setHorizontalGroup(
                jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                        .add(jLabel6)
                        .add(jLabel5)
                        .add(jLabel4)
                        .add(jLabel3)
                        .add(jLabel1)
                        .add(jLabel2))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                        .add(jPanel4Layout.createSequentialGroup()
                            .add(jTextFieldBIC_D, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 220, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 13, Short.MAX_VALUE)
                            .add(jLabel8)
                            .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                            .add(jComboBoxValutaD, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 115, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .add(jTextFieldIBAN_D, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 392, Short.MAX_VALUE)
                        .add(jPanel4Layout.createSequentialGroup()
                            .add(jTextFieldBIC_R, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 219, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 13, Short.MAX_VALUE)
                            .add(jLabel7)
                            .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                            .add(jComboBoxValutaR, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 116, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .add(jTextFieldIBAN_R, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 392, Short.MAX_VALUE)
                        .add(jTextFieldNameBank_R, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 392, Short.MAX_VALUE)
                        .add(jTextFieldNameBank_D, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 392, Short.MAX_VALUE)))
            );
            jPanel4Layout.setVerticalGroup(
                jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                .add(jPanel4Layout.createSequentialGroup()
                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel1)
                        .add(jTextFieldNameBank_R, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jTextFieldIBAN_R, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel2))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel3)
                        .add(jTextFieldBIC_R, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jComboBoxValutaR, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel7))
                    .add(18, 18, 18)
                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel4)
                        .add(jTextFieldNameBank_D, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel5)
                        .add(jTextFieldIBAN_D, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel6)
                        .add(jTextFieldBIC_D, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jComboBoxValutaD, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel8))
                    .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            );

            jLabel9.setText("* \u041c\u0430\u0440\u043a\u0438\u0440\u0430\u043d\u0438\u0442\u0435 \u043f\u043e\u043b\u0435\u0442\u0430 \u0441\u0430 \u0438\u0437\u0431\u043e\u0440\u043d\u0438 \u043e\u0442 \u0441\u043f\u0438\u0441\u044a\u043a \u0441 F7");

            org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
            jPanel1.setLayout(jPanel1Layout);
            jPanel1Layout.setHorizontalGroup(
                jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                .add(jPanel1Layout.createSequentialGroup()
                    .add(74, 74, 74)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                        .add(jLabelName)
                        .add(jLabelCod)
                        .add(jLabelDanNomer)
                        .add(jLabelAddress)
                        .add(jLabelTel)
                        .add(jLabelEmail)
                        .add(jLabelMOL))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                        .add(jPanel1Layout.createSequentialGroup()
                            .add(jTextFieldEmail, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .addContainerGap())
                        .add(jPanel1Layout.createSequentialGroup()
                            .add(jTextFieldTel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .addContainerGap())
                        .add(jPanel1Layout.createSequentialGroup()
                            .add(jTextFieldAddress, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .addContainerGap())
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanel1Layout.createSequentialGroup()
                                .add(jTextFieldCod, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 148, Short.MAX_VALUE)
                                .add(378, 378, 378))
                            .add(jPanel1Layout.createSequentialGroup()
                                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, jTextFieldName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                            .add(jLabelNM)
                                            .add(jPanel1Layout.createSequentialGroup()
                                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                                .add(jTextFieldDanNomer, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 170, Short.MAX_VALUE)
                                                .add(36, 36, 36)
                                                .add(jLabelBulstat))
                                            .add(jLabelFax)
                                            .add(jLabelWeb)
                                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                                                .add(jTextFieldMOL, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 54, Short.MAX_VALUE)
                                                .add(jLabelOSO)))
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                            .add(jTextFieldOSO, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .add(org.jdesktop.layout.GroupLayout.LEADING, jTextFieldWeb, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .add(org.jdesktop.layout.GroupLayout.LEADING, jTextFieldFax, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .add(org.jdesktop.layout.GroupLayout.LEADING, jTextFieldNM, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .add(org.jdesktop.layout.GroupLayout.LEADING, jTextFieldBulstat, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 175, Short.MAX_VALUE))))
                                .addContainerGap()))))
                .add(jPanel1Layout.createSequentialGroup()
                    .addContainerGap()
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                    .addContainerGap()
                    .add(jLabel9)
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 141, Short.MAX_VALUE)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap())
            );
            jPanel1Layout.setVerticalGroup(
                jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                .add(jPanel1Layout.createSequentialGroup()
                    .addContainerGap()
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabelCod)
                        .add(jTextFieldCod, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabelName)
                        .add(jTextFieldName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabelDanNomer)
                        .add(jLabelBulstat)
                        .add(jTextFieldBulstat, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jTextFieldDanNomer, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabelAddress)
                        .add(jTextFieldAddress, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabelNM)
                        .add(jTextFieldNM, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabelTel)
                        .add(jTextFieldTel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabelFax)
                        .add(jTextFieldFax, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabelEmail)
                        .add(jTextFieldEmail, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabelWeb)
                        .add(jTextFieldWeb, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabelMOL)
                        .add(jTextFieldMOL, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabelOSO)
                        .add(jTextFieldOSO, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                        .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel9))
                    .addContainerGap())
            );

            jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
            jPanel2.setPreferredSize(new java.awt.Dimension(263, 40));
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

            org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
            getContentPane().setLayout(layout);
            layout.setHorizontalGroup(
                layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 657, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 657, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
            );
            layout.setVerticalGroup(
                layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                .add(layout.createSequentialGroup()
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 486, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
            );
            pack();
        }// </editor-fold>//GEN-END:initComponents
    
    private void jComboBoxValutaDFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboBoxValutaDFocusLost
        fLost(jComboBoxValutaD);
    }//GEN-LAST:event_jComboBoxValutaDFocusLost
    
    private void jComboBoxValutaDFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboBoxValutaDFocusGained
        fGain(jComboBoxValutaD);
    }//GEN-LAST:event_jComboBoxValutaDFocusGained
    
    private void jTextFieldBIC_DFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldBIC_DFocusGained
        fGain(jTextFieldBIC_D);
    }//GEN-LAST:event_jTextFieldBIC_DFocusGained
    
    private void jTextFieldIBAN_DFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldIBAN_DFocusLost
        fLost(jTextFieldIBAN_D);
    }//GEN-LAST:event_jTextFieldIBAN_DFocusLost
    
    private void jTextFieldIBAN_DFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldIBAN_DFocusGained
        fGain(jTextFieldIBAN_D);
    }//GEN-LAST:event_jTextFieldIBAN_DFocusGained
    
    private void jTextFieldNameBank_DFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNameBank_DFocusLost
        fLost(jTextFieldNameBank_D);
    }//GEN-LAST:event_jTextFieldNameBank_DFocusLost
    
    private void jTextFieldNameBank_DFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNameBank_DFocusGained
        fGain(jTextFieldNameBank_D);
    }//GEN-LAST:event_jTextFieldNameBank_DFocusGained
    
    private void jComboBoxValutaRFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboBoxValutaRFocusLost
        fLost(jComboBoxValutaR);
    }//GEN-LAST:event_jComboBoxValutaRFocusLost
    
    private void jComboBoxValutaRFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboBoxValutaRFocusGained
        fGain(jComboBoxValutaR);
    }//GEN-LAST:event_jComboBoxValutaRFocusGained
    
    private void jTextFieldBIC_RFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldBIC_RFocusGained
        fGain(jTextFieldBIC_R);
    }//GEN-LAST:event_jTextFieldBIC_RFocusGained
    
    private void jTextFieldIBAN_RFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldIBAN_RFocusLost
        fLost(jTextFieldIBAN_R);
    }//GEN-LAST:event_jTextFieldIBAN_RFocusLost
    
    private void jTextFieldIBAN_RFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldIBAN_RFocusGained
        fGain(jTextFieldIBAN_R);
    }//GEN-LAST:event_jTextFieldIBAN_RFocusGained
    
    private void jTextFieldNameBank_RFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNameBank_RFocusLost
        fLost(jTextFieldNameBank_R);
    }//GEN-LAST:event_jTextFieldNameBank_RFocusLost
    
    private void jTextFieldNameBank_RFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNameBank_RFocusGained
        fGain(jTextFieldNameBank_R);
    }//GEN-LAST:event_jTextFieldNameBank_RFocusGained
    
    private void jTextFieldWebFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldWebFocusLost
        fLost(jTextFieldWeb);
    }//GEN-LAST:event_jTextFieldWebFocusLost
    
    private void jTextFieldWebFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldWebFocusGained
        fGain(jTextFieldWeb);
    }//GEN-LAST:event_jTextFieldWebFocusGained
    
    private void jTextFieldEmailFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldEmailFocusLost
        fLost(jTextFieldEmail);
    }//GEN-LAST:event_jTextFieldEmailFocusLost
    
    private void jTextFieldEmailFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldEmailFocusGained
        fGain(jTextFieldEmail);
    }//GEN-LAST:event_jTextFieldEmailFocusGained
    
    private void jTextFieldFaxFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldFaxFocusLost
        fLost(jTextFieldFax);
    }//GEN-LAST:event_jTextFieldFaxFocusLost
    
    private void jTextFieldFaxFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldFaxFocusGained
        fGain(jTextFieldFax);
    }//GEN-LAST:event_jTextFieldFaxFocusGained
    
    private void jTextFieldTelFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldTelFocusLost
        fLost(jTextFieldTel);
    }//GEN-LAST:event_jTextFieldTelFocusLost
    
    private void jTextFieldTelFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldTelFocusGained
        fGain(jTextFieldTel);
    }//GEN-LAST:event_jTextFieldTelFocusGained
    
    private void jTextFieldNMFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNMFocusLost
        fLost(jTextFieldNM);
    }//GEN-LAST:event_jTextFieldNMFocusLost
    
    private void jTextFieldNMFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNMFocusGained
        fGain(jTextFieldNM);
    }//GEN-LAST:event_jTextFieldNMFocusGained
    
    private void jTextFieldAddressFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldAddressFocusLost
        fLost(jTextFieldAddress);
    }//GEN-LAST:event_jTextFieldAddressFocusLost
    
    private void jTextFieldAddressFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldAddressFocusGained
        fGain(jTextFieldAddress);
    }//GEN-LAST:event_jTextFieldAddressFocusGained
    
    private void jTextFieldBulstatFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldBulstatFocusLost
        fLost(jTextFieldBulstat);
    }//GEN-LAST:event_jTextFieldBulstatFocusLost
    
    private void jTextFieldBulstatFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldBulstatFocusGained
        fGain(jTextFieldBulstat);
    }//GEN-LAST:event_jTextFieldBulstatFocusGained
    
    private void jTextFieldDanNomerFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldDanNomerFocusLost
        fLost(jTextFieldDanNomer);
    }//GEN-LAST:event_jTextFieldDanNomerFocusLost
    
    private void jTextFieldDanNomerFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldDanNomerFocusGained
        fGain(jTextFieldDanNomer);
    }//GEN-LAST:event_jTextFieldDanNomerFocusGained
    
    private void jTextFieldNameFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNameFocusLost
        fLost(jTextFieldName);
    }//GEN-LAST:event_jTextFieldNameFocusLost
    
    private void jTextFieldNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldNameFocusGained
        fGain(jTextFieldName);
    }//GEN-LAST:event_jTextFieldNameFocusGained
    
    private void jTextFieldCodFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCodFocusLost
        fLost(jTextFieldCod);
    }//GEN-LAST:event_jTextFieldCodFocusLost
    
    private void jTextFieldCodFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCodFocusGained
        fGain(jTextFieldCod);
    }//GEN-LAST:event_jTextFieldCodFocusGained
    
    private void jComboBoxValutaDKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBoxValutaDKeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jComboBoxValutaD.transferFocus();
        }
    }//GEN-LAST:event_jComboBoxValutaDKeyPressed
    
    private void jTextFieldBIC_DKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldBIC_DKeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldBIC_D.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldBIC_DKeyPressed
    
    private void jTextFieldIBAN_DKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldIBAN_DKeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldIBAN_D.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldIBAN_DKeyPressed
    
    private void jTextFieldNameBank_DKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldNameBank_DKeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldNameBank_D.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldNameBank_DKeyPressed
    
    private void jComboBoxValutaRKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBoxValutaRKeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jComboBoxValutaR.transferFocus();
        }
    }//GEN-LAST:event_jComboBoxValutaRKeyPressed
    
    private void jTextFieldBIC_RKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldBIC_RKeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldBIC_R.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldBIC_RKeyPressed
    
    private void jTextFieldIBAN_RKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldIBAN_RKeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldIBAN_R.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldIBAN_RKeyPressed
    
    private void jTextFieldNameBank_RKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldNameBank_RKeyPressed
        
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldNameBank_R.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldNameBank_RKeyPressed
    
    private void jTextFieldBIC_RFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldBIC_RFocusLost
        
        fLost(jTextFieldBIC_R);
        jTextFieldBIC_R.setText(jTextFieldBIC_R.getText().toUpperCase());
    }//GEN-LAST:event_jTextFieldBIC_RFocusLost
    
    private void jTextFieldBIC_DFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldBIC_DFocusLost
        fLost(jTextFieldBIC_D);
        jTextFieldBIC_D.setText(jTextFieldBIC_D.getText().toUpperCase());
    }//GEN-LAST:event_jTextFieldBIC_DFocusLost
    
    private void jTextFieldWebKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldWebKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldWeb.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldWebKeyPressed
    
    private void jTextFieldEmailKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldEmailKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldEmail.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldEmailKeyPressed
    
    private void jTextFieldFaxKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldFaxKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldFax.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldFaxKeyPressed
    
    private void jTextFieldTelKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldTelKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldTel.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldTelKeyPressed
    
    private void jTextFieldAddressKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldAddressKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldAddress.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldAddressKeyPressed
    
    private void jTextFieldBulstatKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldBulstatKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldBulstat.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldBulstatKeyPressed
    
    private void jTextFieldDanNomerKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDanNomerKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldDanNomer.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldDanNomerKeyPressed
    
    private void jTextFieldNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldNameKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldName.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldNameKeyPressed
    
    private void jTextFieldCodKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldCodKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldCod.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldCodKeyPressed
    
    private void jButtonToEndActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToEndActionPerformed
// TODO add your handling code here:
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
    
    private void jTextFieldOSOKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldOSOKeyPressed
        
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()) {
            if(jTextFieldOSO.getText()=="") {
                java.sql.ResultSet r1 = myParent.getContragentDB().getTablesWithNames("");
                java.sql.Connection c1 = myParent.getContragentDB().getConn();
                showNameOfMOL_OSO setOSO = new showNameOfMOL_OSO(myframe,true,r1,c1,false);
            } else {
                java.sql.ResultSet r1 = myParent.getContragentDB().getTablesWithNames(jTextFieldOSO.getText());
                java.sql.Connection c1 = myParent.getContragentDB().getConn();
                showNameOfMOL_OSO setOSO = new showNameOfMOL_OSO(myframe,true,r1,c1,false);
            }
            // repaintComp();
            if (myParent.getID_OSO()!=-1) {
                String namOSO = myParent.getContragentDB().getNameWithID(myParent.getID_OSO(),false);
                jTextFieldOSO.setText(namOSO);
            }
        }
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldOSO.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldOSOKeyPressed
    
    private void jTextFieldMOLKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldMOLKeyPressed
        
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()) {
            if(jTextFieldMOL.getText()==null) {
                java.sql.ResultSet r1 = myParent.getContragentDB().getTablesWithNames(null);
                java.sql.Connection c1 = myParent.getContragentDB().getConn();
                showNameOfMOL_OSO setMOL = new showNameOfMOL_OSO(myframe,true,r1,c1,true);
            } else {
                java.sql.ResultSet r1 = myParent.getContragentDB().getTablesWithNames(jTextFieldMOL.getText());
                java.sql.Connection c1 = myParent.getContragentDB().getConn();
                showNameOfMOL_OSO setMOL = new showNameOfMOL_OSO(myframe,true,r1,c1,true);
            }
            // repaintComp();
            if(myParent.getID_MOL()!=-1) {
                String namMOL = myParent.getContragentDB().getNameWithID(myParent.getID_MOL(),true);
                jTextFieldMOL.setText(namMOL);
            }
            
        }
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldMOL.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldMOLKeyPressed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
        if(isNew) // zapisa NE sy6testvuva v bazata!!
        {
            if((myParent.getID_NM()==-1) | (myParent.getID_MOL()==-1) | (myParent.getID_OSO()==-1)) {
                // syob6tenie da se vuvede naseleneto mqsto, MOL i OSO;
                JOptionPane.showMessageDialog(this, "\u041c\u043e\u043b\u044f \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e, \u041c\u041e\u041b \u0438 \u041e\u0421\u041e");
                
            } else {
                try {
                    myParent.setCod(Integer.parseInt(jTextFieldCod.getText()));
                } catch(Exception e) {
                    e.printStackTrace();
                }
                myParent.setName(jTextFieldName.getText());
                myParent.setBulstat(jTextFieldBulstat.getText());
                myParent.setDanNomer(jTextFieldDanNomer.getText());
                myParent.setAddress(jTextFieldAddress.getText());
                myParent.setTel(jTextFieldTel.getText());
                myParent.setFax(jTextFieldFax.getText());
                myParent.setEmail(jTextFieldEmail.getText());
                myParent.setWeb(jTextFieldWeb.getText());
                
                myParent.setNameBank_R(jTextFieldNameBank_R.getText());
                myParent.setNameBank_D(jTextFieldNameBank_D.getText());
                
                myParent.setIBAN_R(jTextFieldIBAN_R.getText());
                myParent.setIBAN_D(jTextFieldIBAN_D.getText());
                
                myParent.setBIC_R(jTextFieldBIC_R.getText());
                myParent.setBIC_D(jTextFieldBIC_D.getText());
                
                myParent.setValuta_R((String)jComboBoxValutaR.getSelectedItem());
                myParent.setValuta_D((String)jComboBoxValutaD.getSelectedItem());
                
                
                
                
                myParent.getContragentDB().insertRow(myParent.getCod(),myParent.getName(),
                        myParent.getBulstat(),myParent.getDanNomer(),
                        myParent.getAddress(),myParent.getID_NM(),
                        myParent.getTel(),myParent.getFax(),myParent.getEmail(),
                        myParent.getWeb(),myParent.getID_MOL(),myParent.getID_OSO(),
                        myParent.getNameBank_R(),myParent.getNameBank_D(),
                        myParent.getIBAN_D(), myParent.getIBAN_R(),
                        myParent.getBIC_R(),myParent.getBIC_D(),
                        myParent.getValita_D(),myParent.getValita_R()
                        );
                JOptionPane.showMessageDialog(this, "\u0423\u0441\u043F\u0435\u0448\u0435\u043D \u0437\u0430\u043F\u0438\u0441");
                myParent.refreshTable();
                jButton3.doClick();
            }
        } else  // zapisa  sy6testvuva v bazata!!
        {
            try {
                myParent.setCod(Integer.parseInt(jTextFieldCod.getText()));
            } catch(Exception e) {
                e.printStackTrace();
            }
            myParent.setName(jTextFieldName.getText());
            myParent.setBulstat(jTextFieldBulstat.getText());
            myParent.setDanNomer(jTextFieldDanNomer.getText());
            myParent.setAddress(jTextFieldAddress.getText());
            myParent.setTel(jTextFieldTel.getText());
            myParent.setFax(jTextFieldFax.getText());
            myParent.setEmail(jTextFieldEmail.getText());
            myParent.setWeb(jTextFieldWeb.getText());
            myParent.setNameBank_R(jTextFieldNameBank_R.getText());
            myParent.setNameBank_D(jTextFieldNameBank_D.getText());
            
            myParent.setIBAN_R(jTextFieldIBAN_R.getText());
            myParent.setIBAN_D(jTextFieldIBAN_D.getText());
            
            myParent.setBIC_R(jTextFieldBIC_R.getText());
            myParent.setBIC_D(jTextFieldBIC_D.getText());
            
            myParent.setValuta_R((String)jComboBoxValutaR.getSelectedItem());
            myParent.setValuta_D((String)jComboBoxValutaD.getSelectedItem());
            
            myParent.getContragentDB().updateRow(myParent.getId(),myParent.getCod(),myParent.getName(),
                    myParent.getBulstat(),myParent.getDanNomer(),
                    myParent.getAddress(),myParent.getID_NM(),
                    myParent.getTel(),myParent.getFax(),myParent.getEmail(),
                    myParent.getWeb(),myParent.getID_MOL(),myParent.getID_OSO(),
                    myParent.getNameBank_R(),myParent.getNameBank_D(),
                    myParent.getIBAN_D(), myParent.getIBAN_R(),
                    myParent.getBIC_R(),myParent.getBIC_D(),
                    myParent.getValita_D(),myParent.getValita_R());
            int newIdContragent  = myParent.getContragentDB().getMaxId();
            myParent.getContragentDB().updateIDProductContragent(myParent.getId(),newIdContragent,1);
            JOptionPane.showMessageDialog(this, "\u0423\u0441\u043F\u0435\u0448\u043D\u0430 \u043F\u0440\u043E\u043C\u044F\u043D\u0430");
            myParent.refreshTable();
            jButton3.doClick();
        }
        
        
        // zatvarq se aeContragen
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jTextFieldNMKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldNMKeyPressed
// TODO add your handling code here:
        // pri natiskane na F7 6te se izvikva aContragent, za izbor na naseleno mqsto ot bazata danni
        
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()) {
            if(jTextFieldNM.getText()==null) {
                java.sql.ResultSet r1 = myParent.getContragentDB().getTablesAddressName(null);
                java.sql.Connection c1 = myParent.getContragentDB().getConn();
                showAddressContragent setNM = new showAddressContragent(myframe,true,r1,c1);
            } else {
                java.sql.ResultSet r1 = myParent.getContragentDB().getTablesAddressName(jTextFieldNM.getText());
                java.sql.Connection c1 = myParent.getContragentDB().getConn();
                showAddressContragent setNM = new showAddressContragent(myframe,true,r1,c1);
            }
            // repaintComp();
            if((myParent.getID_NM()!=-1)) {
                String adres = myParent.getContragentDB().getAddressName(myParent.getID_NM());
                jTextFieldNM.setText(adres);
            }
        }
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jTextFieldNM.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldNMKeyPressed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButtonOneRowM;
    private javax.swing.JButton jButtonOneRowP;
    private javax.swing.JButton jButtonToBegin;
    private javax.swing.JButton jButtonToEnd;
    private javax.swing.JComboBox jComboBoxValutaD;
    private javax.swing.JComboBox jComboBoxValutaR;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
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
    private javax.swing.JTextField jTextFieldAddress;
    private javax.swing.JTextField jTextFieldBIC_D;
    private javax.swing.JTextField jTextFieldBIC_R;
    private javax.swing.JTextField jTextFieldBulstat;
    private javax.swing.JTextField jTextFieldCod;
    private javax.swing.JTextField jTextFieldDanNomer;
    private javax.swing.JTextField jTextFieldEmail;
    private javax.swing.JTextField jTextFieldFax;
    private javax.swing.JTextField jTextFieldIBAN_D;
    private javax.swing.JTextField jTextFieldIBAN_R;
    private javax.swing.JTextField jTextFieldMOL;
    private javax.swing.JTextField jTextFieldNM;
    private javax.swing.JTextField jTextFieldName;
    private javax.swing.JTextField jTextFieldNameBank_D;
    private javax.swing.JTextField jTextFieldNameBank_R;
    private javax.swing.JTextField jTextFieldOSO;
    private javax.swing.JTextField jTextFieldTel;
    private javax.swing.JTextField jTextFieldWeb;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private FrmContragent myParent;
    private imakante.com.vcomponents.iInternalFrame myframe;
    boolean isNew; // za opredelqne dali zapisa e 4isto nov, t.e dali ne sy6testva b bazata
    //---------------END My Variables
//---------------START MyFunction
    private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 255, 255), null));
    }
    
    
    
    private void getNavigatiionState() //OK
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
    private void repaintComp() // ok
    {
        if(!isNew) {
            jTextFieldAddress.setText(myParent.getAddress());
            jTextFieldBulstat.setText(myParent.getBulstat());
            
            jTextFieldCod.setText(String.valueOf(myParent.getCod()));
            jTextFieldDanNomer.setText(myParent.getDanNomer());
            jTextFieldEmail.setText(myParent.getEmail());
            jTextFieldFax.setText(myParent.getFax());
            jTextFieldName.setText(myParent.getName());
            jTextFieldTel.setText(myParent.getTel());
            jTextFieldWeb.setText(myParent.getWeb());
            
            jTextFieldBIC_D.setText(myParent.getBIC_D());
            jTextFieldBIC_R.setText(myParent.getBIC_R());
            
            jTextFieldIBAN_D.setText(myParent.getIBAN_D());
            jTextFieldIBAN_R.setText(myParent.getIBAN_R());
            
            jTextFieldNameBank_D.setText(myParent.getNameBank_D());
            jTextFieldNameBank_R.setText(myParent.getNameBank_R());
            
            jComboBoxValutaD.setSelectedItem((String)myParent.getValita_D());
            jComboBoxValutaR.setSelectedItem((String)myParent.getValita_R());
            
        }
        if(isNew) {
            int maxcode =  myParent.getContragentDB().getMaxCod();
            if(maxcode!=-1) {
                jTextFieldCod.setText(String.valueOf(maxcode+1));
            }
        }
        
        if((myParent.getID_NM()!=-1)) {
            String adres = myParent.getContragentDB().getAddressName(myParent.getID_NM());
            jTextFieldNM.setText(adres);
        }
        if(myParent.getID_MOL()!=-1) {
            String namMOL = myParent.getContragentDB().getNameWithID(myParent.getID_MOL(),true);
            jTextFieldMOL.setText(namMOL);
        }
        if (myParent.getID_OSO()!=-1) {
            String namOSO = myParent.getContragentDB().getNameWithID(myParent.getID_OSO(),false);
            jTextFieldOSO.setText(namOSO);
        }
    }
    
}// end class

class InputIntegerVerifier extends InputVerifier {
    public boolean verify(JComponent input) {
        byte UpRange = 57;
        byte DownRange = 48;
        boolean checkSimbol=false;
        JTextField tf = (JTextField) input;
        int lenth = tf.getText().length();
        byte ch[] = new byte[lenth];
        tf.getText().getBytes();
        for(int i=0;i < lenth; i++) {
            if((ch[i] <= UpRange)&&(ch[i] >=DownRange)) {
                checkSimbol = true;
            } else checkSimbol= false;
        }
        return checkSimbol;
    }
    
    
}// end calss InputIntegerVerifier*/
