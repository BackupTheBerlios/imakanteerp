
package imakante.sales;

import java.util.ArrayList;
import java.util.List;

public class reportFrmSalesN extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public reportFrmSalesN(String title, imakante.com.vcomponents.iFrame parentFrame, int levelx) {
        super(title);
        myFrame = parentFrame;
        this.levelx = levelx;
        prepareConn();
        prepareStm();
        initComponents();
        this.jLabel25.setText("" + this.levelx);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jCBFak = new javax.swing.JCheckBox();
        jCBRazp = new javax.swing.JCheckBox();
        jRadioButton1 = new javax.swing.JRadioButton();
        jRadioButton2 = new javax.swing.JRadioButton();
        jRadioButton3 = new javax.swing.JRadioButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jCBData = new javax.swing.JCheckBox();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jXDatePicker2 = new org.jdesktop.swingx.JXDatePicker();
        jPanel3 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jCBStorage = new javax.swing.JCheckBox();
        jPanel4 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jTextField6 = new javax.swing.JTextField();
        jCBClient = new javax.swing.JCheckBox();
        jPanel5 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jTextField7 = new javax.swing.JTextField();
        jTextField8 = new javax.swing.JTextField();
        jCBStock = new javax.swing.JCheckBox();
        jPanel6 = new javax.swing.JPanel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jTextField9 = new javax.swing.JTextField();
        jTextField10 = new javax.swing.JTextField();
        jCBDost = new javax.swing.JCheckBox();
        jPanel7 = new javax.swing.JPanel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        jTextField11 = new javax.swing.JTextField();
        jTextField12 = new javax.swing.JTextField();
        jCBDistr = new javax.swing.JCheckBox();
        jPanel8 = new javax.swing.JPanel();
        jLabel19 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jTextField13 = new javax.swing.JTextField();
        jTextField14 = new javax.swing.JTextField();
        jCBOperator = new javax.swing.JCheckBox();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel9 = new javax.swing.JPanel();
        jLabel22 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        jTextField15 = new javax.swing.JTextField();
        jTextField16 = new javax.swing.JTextField();
        jCBSpeditor = new javax.swing.JCheckBox();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jLabel25 = new javax.swing.JLabel();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u0437\u0430 \u0418\u0437\u0434\u0430\u0434\u0435\u043d\u0438 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041f\u0440\u043e\u0434\u0430\u0436\u0431\u0438"));
        jCBFak.setSelected(true);
        jCBFak.setText("\u0424\u0430\u043a\u0442\u0443\u0440\u0438");
        jCBFak.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBFak.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBFak.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBFakKeyPressed(evt);
            }
        });

        jCBRazp.setSelected(true);
        jCBRazp.setText("\u0421\u0442\u043e\u043a\u043e\u0432\u0438 \u0440\u0430\u0437\u043f\u0438\u0441\u043a\u0438");
        jCBRazp.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBRazp.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBRazp.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBRazpKeyPressed(evt);
            }
        });

        jRadioButton1.setText("\u0421\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u043a\u0430 \u0441\u0442\u043e\u043a\u0438");
        jRadioButton1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jRadioButton1.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jRadioButton2.setText("\u0421\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u043a\u0430 \u043f\u0430\u0440\u0442\u0438\u0434\u0438");
        jRadioButton2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jRadioButton2.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jRadioButton3.setText("\u0421\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u043a\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        jRadioButton3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jRadioButton3.setMargin(new java.awt.Insets(0, 0, 0, 0));

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jCBFak)
                .add(26, 26, 26)
                .add(jCBRazp)
                .add(24, 24, 24)
                .add(jRadioButton1)
                .add(14, 14, 14)
                .add(jRadioButton2)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jRadioButton3)
                .addContainerGap(11, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jCBFak)
                    .add(jCBRazp)
                    .add(jRadioButton1)
                    .add(jRadioButton2)
                    .add(jRadioButton3)))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel1.setText("\u0414\u0410\u0422\u0410");

        jLabel2.setText("\u043e\u0442:");

        jLabel3.setText("\u0434\u043e:");

        jCBData.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCBData.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBData.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBData.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBDataKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(55, 55, 55)
                .add(jLabel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 75, Short.MAX_VALUE)
                .add(21, 21, 21)
                .add(jLabel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 19, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(26, 26, 26)
                .add(jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 18, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(16, 16, 16)
                .add(jCBData, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                .add(78, 78, 78))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jCBData)
                    .add(jLabel3)
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel2)
                        .add(jLabel1))
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel4.setText("\u0421\u041a\u041b\u0410\u0414");

        jLabel5.setText("\u043e\u0442:");

        jLabel6.setText("\u0434\u043e:");

        jTextField3.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField3.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField3FocusGained(evt);
            }
        });
        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        jTextField4.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField4.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField4.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField4FocusGained(evt);
            }
        });
        jTextField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField4KeyPressed(evt);
            }
        });

        jCBStorage.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCBStorage.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBStorage.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBStorage.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBStorageKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 118, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCBStorage, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(81, 81, 81))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel4)
                    .add(jLabel5)
                    .add(jLabel6)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCBStorage))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel7.setText("\u041a\u041b\u0418\u0415\u041d\u0422");

        jLabel8.setText("\u043e\u0442:");

        jLabel9.setText("\u0434\u043e:");

        jTextField5.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField5.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField5.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField5FocusGained(evt);
            }
        });
        jTextField5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField5KeyPressed(evt);
            }
        });

        jTextField6.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField6.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField6.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField6FocusGained(evt);
            }
        });
        jTextField6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField6KeyPressed(evt);
            }
        });

        jCBClient.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCBClient.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBClient.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBClient.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBClientKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 118, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCBClient, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(81, 81, 81))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel7)
                    .add(jLabel8)
                    .add(jLabel9)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCBClient))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jPanel5.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel10.setText("\u0421\u0422\u041e\u041a\u0410");

        jLabel11.setText("\u043e\u0442:");

        jLabel12.setText("\u0434\u043e:");

        jTextField7.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField7.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField7.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField7FocusGained(evt);
            }
        });
        jTextField7.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField7KeyPressed(evt);
            }
        });

        jTextField8.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField8.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField8.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField8FocusGained(evt);
            }
        });
        jTextField8.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField8KeyPressed(evt);
            }
        });

        jCBStock.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCBStock.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBStock.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBStock.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBStockKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel10, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 118, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel12, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCBStock, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(81, 81, 81))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel10)
                    .add(jLabel11)
                    .add(jLabel12)
                    .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCBStock))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jPanel6.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel13.setText("\u0414\u041e\u0421\u0422\u0410\u0412\u0427\u0418\u041a");

        jLabel14.setText("\u043e\u0442:");

        jLabel15.setText("\u0434\u043e:");

        jTextField9.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField9.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField9.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField9FocusGained(evt);
            }
        });
        jTextField9.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField9KeyPressed(evt);
            }
        });

        jTextField10.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField10.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField10.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField10FocusGained(evt);
            }
        });
        jTextField10.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField10KeyPressed(evt);
            }
        });

        jCBDost.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCBDost.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBDost.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBDost.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBDostKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel6Layout = new org.jdesktop.layout.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel13, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel14, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 118, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel15, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField10, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCBDost, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(81, 81, 81))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel13)
                    .add(jLabel14)
                    .add(jLabel15)
                    .add(jTextField9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCBDost))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jPanel7.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel16.setText("\u0414\u0418\u0421\u0422\u0420\u0418\u0411\u0423\u0422\u041e\u0420");

        jLabel17.setText("\u043e\u0442:");

        jLabel18.setText("\u0434\u043e:");

        jTextField11.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField11.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField11.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField11FocusGained(evt);
            }
        });
        jTextField11.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField11KeyPressed(evt);
            }
        });

        jTextField12.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField12.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField12.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField12FocusGained(evt);
            }
        });
        jTextField12.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField12KeyPressed(evt);
            }
        });

        jCBDistr.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCBDistr.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBDistr.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBDistr.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBDistrKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel7Layout = new org.jdesktop.layout.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel16, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel17, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel18, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField12, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCBDistr, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(81, 81, 81))
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel16)
                    .add(jLabel17)
                    .add(jLabel18)
                    .add(jTextField11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCBDistr))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel8.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel19.setText("\u041e\u041f\u0415\u0420\u0410\u0422\u041e\u0420");

        jLabel20.setText("\u043e\u0442:");

        jLabel21.setText("\u0434\u043e:");

        jTextField13.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField13.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField13.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField13FocusGained(evt);
            }
        });
        jTextField13.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField13KeyPressed(evt);
            }
        });

        jTextField14.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField14.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField14.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField14FocusGained(evt);
            }
        });
        jTextField14.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField14KeyPressed(evt);
            }
        });

        jCBOperator.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCBOperator.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBOperator.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBOperator.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBOperatorKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel8Layout = new org.jdesktop.layout.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel19, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel20, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField13, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 118, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel21, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField14, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCBOperator, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(81, 81, 81))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel19)
                    .add(jLabel20)
                    .add(jLabel21)
                    .add(jTextField13, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCBOperator))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jButton1.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u0439");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("\u041e\u0442\u043a\u0430\u0437");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel9.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel22.setText("\u0421\u041f\u0415\u0414\u0418\u0422\u041e\u0420");

        jLabel23.setText("\u043e\u0442:");

        jLabel24.setText("\u0434\u043e:");

        jTextField15.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField15.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField15.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField15FocusGained(evt);
            }
        });
        jTextField15.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField15KeyPressed(evt);
            }
        });

        jTextField16.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField16.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField16.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField16FocusGained(evt);
            }
        });
        jTextField16.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField16KeyPressed(evt);
            }
        });

        jCBSpeditor.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCBSpeditor.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCBSpeditor.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCBSpeditor.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCBSpeditorKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel9Layout = new org.jdesktop.layout.GroupLayout(jPanel9);
        jPanel9.setLayout(jPanel9Layout);
        jPanel9Layout.setHorizontalGroup(
            jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel9Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel22, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 72, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel23, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField15, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 118, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel24, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField16, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCBSpeditor, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(81, 81, 81))
        );
        jPanel9Layout.setVerticalGroup(
            jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel22)
                    .add(jLabel23)
                    .add(jLabel24)
                    .add(jTextField15, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField16, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCBSpeditor))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jButton3.setText("\u0417\u0430\u043f\u0430\u0437\u0438 \u0441\u043f\u0440\u0430\u0432\u043a\u0430");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setText("\u0420\u0435\u0434\u0430\u043a\u0442\u043e\u0440 \u043d\u0430 \u0441\u043f\u0440\u0430\u0432\u043a\u0438");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .addContainerGap()
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jLabel25)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .add(layout.createSequentialGroup()
                        .add(200, 200, 200)
                        .add(jButton1)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton3)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton4)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jButton2)))
                .addContainerGap())
        );

        layout.linkSize(new java.awt.Component[] {jButton1, jButton2}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton1)
                    .add(jButton3)
                    .add(jButton4)
                    .add(jButton2))
                .add(32, 32, 32)
                .add(jLabel25)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        setBounds(100, 50, 673, 575);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jCBFakKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBFakKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBFak.transferFocus(); }
    }//GEN-LAST:event_jCBFakKeyPressed
    
    private void jCBRazpKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBRazpKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBRazp.transferFocus(); }
    }//GEN-LAST:event_jCBRazpKeyPressed
    
    private void jCBSpeditorKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBSpeditorKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBSpeditor.transferFocus(); }
    }//GEN-LAST:event_jCBSpeditorKeyPressed
    
    private void jCBOperatorKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBOperatorKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBOperator.transferFocus(); }
    }//GEN-LAST:event_jCBOperatorKeyPressed
    
    private void jCBDistrKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBDistrKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBDistr.transferFocus(); }
    }//GEN-LAST:event_jCBDistrKeyPressed
    
    private void jCBDostKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBDostKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBDost.transferFocus(); }
    }//GEN-LAST:event_jCBDostKeyPressed
    
    private void jCBStockKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBStockKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBStock.transferFocus(); }
    }//GEN-LAST:event_jCBStockKeyPressed
    
    private void jCBClientKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBClientKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBClient.transferFocus(); }
    }//GEN-LAST:event_jCBClientKeyPressed
    
    private void jCBStorageKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBStorageKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBStorage.transferFocus(); }
    }//GEN-LAST:event_jCBStorageKeyPressed
    
    private void jCBDataKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCBDataKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCBData.transferFocus(); }
    }//GEN-LAST:event_jCBDataKeyPressed
    
    private void jTextField16KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField16KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField16.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField16.getText().equals("")) {
                jTextField16.setText("999999999");
                jTextField16.transferFocus();
            } else jTextField16.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField16();
    }//GEN-LAST:event_jTextField16KeyPressed
    
    private void jTextField16FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField16FocusGained
        jTextField16.selectAll();
    }//GEN-LAST:event_jTextField16FocusGained
    
    private void jTextField15KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField15KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField15.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField15.getText().equals("")) {
                jTextField15.setText("1");
                jTextField15.transferFocus();
            } else jTextField15.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField15();
    }//GEN-LAST:event_jTextField15KeyPressed
    
    private void jTextField15FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField15FocusGained
        jTextField15.selectAll();
    }//GEN-LAST:event_jTextField15FocusGained
    
    private void jTextField3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusGained
        jTextField3.selectAll();
    }//GEN-LAST:event_jTextField3FocusGained
    
    private void jTextField4FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusGained
        jTextField4.selectAll();
    }//GEN-LAST:event_jTextField4FocusGained
    
    private void jTextField5FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusGained
        jTextField5.selectAll();
    }//GEN-LAST:event_jTextField5FocusGained
    
    private void jTextField6FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusGained
        jTextField6.selectAll();
    }//GEN-LAST:event_jTextField6FocusGained
    
    private void jTextField7FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusGained
        jTextField7.selectAll();
    }//GEN-LAST:event_jTextField7FocusGained
    
    private void jTextField8FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField8FocusGained
        jTextField8.selectAll();
    }//GEN-LAST:event_jTextField8FocusGained
    
    private void jTextField9FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField9FocusGained
        jTextField9.selectAll();
    }//GEN-LAST:event_jTextField9FocusGained
    
    private void jTextField10FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField10FocusGained
        jTextField10.selectAll();
    }//GEN-LAST:event_jTextField10FocusGained
    
    private void jTextField11FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField11FocusGained
        jTextField11.selectAll();
    }//GEN-LAST:event_jTextField11FocusGained
    
    private void jTextField12FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField12FocusGained
        jTextField12.selectAll();
    }//GEN-LAST:event_jTextField12FocusGained
    
    private void jTextField13FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField13FocusGained
        jTextField13.selectAll();
    }//GEN-LAST:event_jTextField13FocusGained
    
    private void jTextField14FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField14FocusGained
        jTextField14.selectAll();
    }//GEN-LAST:event_jTextField14FocusGained
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField3.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField3.getText().equals("")) {
                jTextField3.setText("1");
                jTextField3.transferFocus();
            } else jTextField3.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField3();
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField4.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField4.getText().equals("")) {
                jTextField4.setText("999999999");
                jTextField4.transferFocus();
            } else jTextField4.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField4();
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jTextField5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField5KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField5.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField5.getText().equals("")) {
                jTextField5.setText("1");
                jTextField5.transferFocus();
            } else jTextField5.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField5();
    }//GEN-LAST:event_jTextField5KeyPressed
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField6.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField6.getText().equals("")) {
                jTextField6.setText("999999999");
                jTextField6.transferFocus();
            } else jTextField6.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField6();
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jTextField7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField7KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField7.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField7.getText().equals("")) {
                jTextField7.setText("1");
                jTextField7.transferFocus();
            } else jTextField7.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField7();
    }//GEN-LAST:event_jTextField7KeyPressed
    
    private void jTextField8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField8KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField8.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField8.getText().equals("")) {
                jTextField8.setText("999999999");
                jTextField8.transferFocus();
            } else jTextField8.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField8();
    }//GEN-LAST:event_jTextField8KeyPressed
    
    private void jTextField9KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField9KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField9.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField9.getText().equals("")) {
                jTextField9.setText("1");
                jTextField9.transferFocus();
            } else jTextField9.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField9();
    }//GEN-LAST:event_jTextField9KeyPressed
    
    private void jTextField10KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField10KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField10.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField10.getText().equals("")) {
                jTextField10.setText("999999999");
                jTextField10.transferFocus();
            } else jTextField10.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField10();
    }//GEN-LAST:event_jTextField10KeyPressed
    
    private void jTextField11KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField11KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField11.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField11.getText().equals("")) {
                jTextField11.setText("1");
                jTextField11.transferFocus();
            } else jTextField11.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField11();
    }//GEN-LAST:event_jTextField11KeyPressed
    
    private void jTextField12KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField12KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField12.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField12.getText().equals("")) {
                jTextField12.setText("999999999");
                jTextField12.transferFocus();
            } else jTextField12.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField12();
    }//GEN-LAST:event_jTextField12KeyPressed
    
    private void jTextField13KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField13KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField13.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField13.getText().equals("")) {
                jTextField13.setText("1");
                jTextField13.transferFocus();
            } else jTextField13.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField13();
    }//GEN-LAST:event_jTextField13KeyPressed
    
    private void jTextField14KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField14KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField14.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField14.getText().equals("")) {
                jTextField14.setText("999999999");
                jTextField14.transferFocus();
            } else jTextField14.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField14();
    }//GEN-LAST:event_jTextField14KeyPressed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        fillBlanck();
        processReport();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JCheckBox jCBClient;
    private javax.swing.JCheckBox jCBData;
    private javax.swing.JCheckBox jCBDistr;
    private javax.swing.JCheckBox jCBDost;
    private javax.swing.JCheckBox jCBFak;
    private javax.swing.JCheckBox jCBOperator;
    private javax.swing.JCheckBox jCBRazp;
    private javax.swing.JCheckBox jCBSpeditor;
    private javax.swing.JCheckBox jCBStock;
    private javax.swing.JCheckBox jCBStorage;
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
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JRadioButton jRadioButton1;
    private javax.swing.JRadioButton jRadioButton2;
    private javax.swing.JRadioButton jRadioButton3;
    private javax.swing.JTextField jTextField10;
    private javax.swing.JTextField jTextField11;
    private javax.swing.JTextField jTextField12;
    private javax.swing.JTextField jTextField13;
    private javax.swing.JTextField jTextField14;
    private javax.swing.JTextField jTextField15;
    private javax.swing.JTextField jTextField16;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JTextField jTextField9;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker2;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iFrame myFrame;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    private int levelx = 3;
    private  int intTransfer;
    private  int CompNumber = 0;
    
    private String[] Names = { "\u041a\u041e\u0414", "\u0418\u041c\u0415" };
    private String[] NamesQ = { "con" };
    java.text.SimpleDateFormat formatterG = new java.text.SimpleDateFormat("yyyy-MM-dd");
    
    private String strStore = "SELECT rep_documents.code_store, rep_documents.name_store " +
            "FROM rep_documents WHERE rep_documents.code_store LIKE '%";
    private String strClient = "SELECT rep_documents.code_client, rep_documents.name_client " +
            "FROM rep_documents WHERE rep_documents.code_client LIKE '%";
    private String strProduct = "SELECT rep_documents.code_product, rep_documents.name_product " +
            "FROM rep_documents WHERE rep_documents.code_product LIKE '%";
    private String strSupplier = "SELECT rep_documents.code_dostavchik, rep_documents.name_dostavchik " +
            "FROM rep_documents WHERE rep_documents.code_dostavchik LIKE '%";
    private String strDistributor = "SELECT rep_documents.code_distributor, rep_documents.name_distributor " +
            "FROM rep_documents WHERE rep_documents.code_distributor LIKE '%";
    private String strOperator = "SELECT rep_documents.code_operator, name_operator " +
            "FROM rep_documents WHERE rep_documents.code_operator LIKE '%";
    private String strSpeditor = "SELECT rep_documents.code_speditor, rep_documents.name_speditor " +
            "FROM rep_documents WHERE rep_documents.code_speditor LIKE '%";
    private String qu = "SELECT ";
    private String reportFile = "/imakante/sales/jasper/repDox.jasper";
    private java.util.HashMap hm = null;
    private int nubColums = 0;
    private List namesQ = new ArrayList();
    
    public void windowOpened(java.awt.event.WindowEvent e) {
    }
    public void windowClosing(java.awt.event.WindowEvent e) {
    }
    public void windowClosed(java.awt.event.WindowEvent e) {
    }
    public void windowIconified(java.awt.event.WindowEvent e) {
    }
    public void windowDeiconified(java.awt.event.WindowEvent e) {
    }
    public void windowActivated(java.awt.event.WindowEvent e) {
    }
    public void windowDeactivated(java.awt.event.WindowEvent e) {
    }
    
    private void prepareConn() {
        try{
            conn =  myFrame.getConn();
            if(conn == null) System.out.println("conn problem");
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void prepareStm() {
        try {
            stm = conn.createStatement();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    private void initTable(String str , String[] names) {
        try {
            rs = stm.executeQuery(str);
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        try {
            model = new imakante.com.CustomTableModel(getConn(), rs, names);
            table = new imakante.com.CustomTable(model);
        } catch(Exception e) { e.printStackTrace(); }
        try {
            table.setEditingRow(0);
        } catch(Exception ex) { ex.printStackTrace(); }
    }
    
    private void constructDialod(String str, int rCompNumber, String[] names) {
        this.CompNumber = rCompNumber;
        initTable(str, names);
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table, "\u0418\u0437\u0431\u043e\u0440", "");
        td.setVisible(true);
    }
    
    private void fillBlanck() {
        if(jTextField3.getText() == "") jTextField3.setText("1");
        if(jTextField4.getText() == "") jTextField4.setText("999999999");
        if(jTextField5.getText() == "") jTextField5.setText("1");
        if(jTextField6.getText() == "") jTextField6.setText("999999999");
        if(jTextField7.getText() == "") jTextField7.setText("1");
        if(jTextField8.getText() == "") jTextField8.setText("999999999");
        if(jTextField9.getText() == "") jTextField9.setText("1");
        if(jTextField10.getText() == "") jTextField10.setText("999999999");
        if(jTextField11.getText() == "") jTextField11.setText("1");
        if(jTextField12.getText() == "") jTextField12.setText("999999999");
        if(jTextField13.getText() == "") jTextField13.setText("1");
        if(jTextField14.getText() == "") jTextField14.setText("999999999");
        if(jTextField15.getText() == "") jTextField15.setText("1");
        if(jTextField16.getText() == "") jTextField16.setText("999999999");
    }
    
    private void processReport() {
        String newString=qu;
        namesQ.add("con ");
        
        
        newString = newString + " DISTINCT CONCAT(rep_documents.level ";
        this.nubColums = nubColums + 1;
        if (this.jCBStorage.isSelected()==false){
            newString = newString + ",rep_documents.code_n_storage ";
            
        }
        if (this.jCBClient.isSelected()==false){
            newString = newString + ",rep_documents.code_contragent ";
            namesQ.add("Код контрагент");
        }
        if (this.jCBStock.isSelected()==false){
            newString = newString + ",rep_documents.code_pm ";
            
        }
        if (this.jRadioButton1.isSelected()){
            newString = newString + ",rep_documents.parcel_pc ";
            
        }
        if (this.jRadioButton3.isSelected()){
            newString = newString + ",rep_documents.number_df ";
            
        }
        newString = newString + ") AS con ";
        
        if (this.jCBStorage.isSelected()==false){
            newString = newString
                    + ",rep_documents.code_n_storage ";
            namesQ.add("Код склад");
            this.nubColums = nubColums + 1;
        }
        
        if (this.jCBClient.isSelected()==false){
            
            newString = newString
                    +  ",rep_documents.code_client "
                    + ",rep_documents.name_client ";
            namesQ.add("Код контрагент");
            this.nubColums = nubColums + 1;
            namesQ.add("Име контрагент");
            this.nubColums = nubColums + 1;
        }
        
        if (this.jCBStock.isSelected()==false){
            
            newString = newString
                    + ",rep_documents.code_pm "
                    + ",rep_documents.name_pm ";
            
            namesQ.add("Код продукт");
            this.nubColums = nubColums + 1;
            namesQ.add("Име продукт");
            this.nubColums = nubColums + 1;
            
            if(this.jRadioButton1.isSelected()){
                newString = newString
                        + ",rep_documents.parcel_pc ";
                
                namesQ.add("Код партида");
                this.nubColums = nubColums + 1;
            }
        }
        newString = newString
                + ",SUM(rep_documents.quant_nal), "
               
                + "SUM(rep_documents.TSENA0), "
                + "SUM(rep_documents.TSENA1), "
                + "SUM(rep_documents.TSENA2), "
                + "SUM(rep_documents.TSENA3) "
                + " FROM "
                + " `rep_documents` ";
        namesQ.add("количество");
        namesQ.add("Стойност по дост.");
        namesQ.add("Стойност по листа 1");
        namesQ.add("Стойност по листа 2");
        namesQ.add("Стойност по листа 3");
        this.nubColums = nubColums + 7;
        try {
            newString = newString + " WHERE `rep_documents`.`code_contragent` BETWEEN '" +
                    (Integer.parseInt(this.jTextField5.getText())-1) + "' AND '" + (Integer.parseInt(this.jTextField6.getText())+1) +
                    "' AND " + " `rep_documents`.`code_pm` BETWEEN '" + (Integer.parseInt(this.jTextField3.getText())-1) +
                    "' AND '" + (Integer.parseInt(this.jTextField4.getText())+1) + "' AND " + " `rep_documents`.`code_n_storage` BETWEEN '" +
                     "' ";
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        if(levelx==3){
            newString = newString + " AND rep_documents.level = 0";
        }
        if(levelx==2){
            newString = newString + " AND rep_documents.level = 1";
        }
        if(levelx==1){
            newString = newString + " AND rep_documents.level IN(0,1)";
        }
        newString = newString + " GROUP BY con ORDER BY rep_documents.code_pm ASC";
        
        String[] Names = (String[]) namesQ.toArray(new String[this.nubColums]);
        //Create Dialog with print
        System.out.println(newString);
        
        if(this.jCheckBox1.isSelected() && this.jCheckBox4.isSelected()){
            
        }
        if(this.jCheckBox2.isSelected() && this.jCheckBox4.isSelected()){
            fileName="/imakante/sales/jasper/nal_simp_01.jasper";
        }
        if(this.jCheckBox3.isSelected() && this.jCheckBox4.isSelected()){
            
        }
        if(this.jCheckBox1.isSelected() && this.jCheckBox4.isSelected()==false){
            
        }
        if(this.jCheckBox2.isSelected() && this.jCheckBox4.isSelected()==false){
            
        }
        if(this.jCheckBox3.isSelected() && this.jCheckBox4.isSelected()==false){
            
        }
        try{
            initTable(newString, Names);
            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table,
                    myframe.getConn(), constructHash(), fileName, "\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u043d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442", "");
            td.setVisible(true);
        } catch (Exception  ex){
            ex.printStackTrace();
            constructDialod(newString, 0, Names);
            System.out.println("Ne moga da nameria faila  ");
        }
    }
    
    private void processField3() {
        String newString = strStore + this.jTextField3.getText() + "%'";
        constructDialod(newString, 3, Names);
    }
    
    private void processField4() {
        if(this.jTextField3.getText() == "") this.jTextField3.setText("0");
        String newString = strStore + this.jTextField4.getText() + "%' AND rep_documents.code_store >= " + this.jTextField3.getText() + ";";
        constructDialod(newString, 4, Names);
    }
    
    private void processField5() {
        String newString = strClient + this.jTextField5.getText() + "%'";
        constructDialod(newString, 5, Names);
    }
    
    private void processField6() {
        if(this.jTextField5.getText() == "") this.jTextField5.setText("0");
        String newString = strClient + this.jTextField6.getText() + "%' AND rep_documents.code_client >= " + this.jTextField5.getText() + ";";
        constructDialod(newString, 6, Names);
    }
    
    private void processField7() {
        String newString = strProduct + this.jTextField7.getText() + "%'";
        constructDialod(newString, 7, Names);
    }
    
    private void processField8() {
        if(this.jTextField7.getText() == "") this.jTextField7.setText("0");
        String newString = strProduct + this.jTextField8.getText() + "%' AND rep_documents.code_product >= " + this.jTextField7.getText() + ";";
        constructDialod(newString, 8, Names);
    }
    
    private void processField9() {
        String newString = strSupplier + this.jTextField9.getText() + "%'";
        constructDialod(newString, 9, Names);
    }
    
    private void processField10() {
        if(this.jTextField9.getText() == "") this.jTextField9.setText("0");
        String newString = strSupplier + this.jTextField10.getText() + "%' AND rep_documents.code_dostavchik >= " + this.jTextField9.getText() + ";";
        constructDialod(newString, 10, Names);
    }
    
    private void processField11() {
        String newString = strDistributor + this.jTextField11.getText() + "%'";
        constructDialod(newString, 11, Names);
    }
    
    private void processField12() {
        if(this.jTextField11.getText() == "") this.jTextField11.setText("0");
        String newString = strDistributor + this.jTextField12.getText() + "%' AND rep_documents.code_distributor >= " + this.jTextField11.getText() + ";";
        constructDialod(newString, 12, Names);
    }
    
    private void processField13() {
        String newString = strOperator + this.jTextField13.getText() + "%'";
        constructDialod(newString, 13, Names);
    }
    
    private void processField14() {
        if(this.jTextField13.getText() == "") this.jTextField13.setText("0");
        String newString = strOperator + this.jTextField14.getText() + "%' AND rep_documents.code_operator >= " + this.jTextField13.getText() + ";";
        constructDialod(newString, 14, Names);
    }
    
    private void processField15() {
        String newString = strSpeditor + this.jTextField15.getText() + "%'";
        constructDialod(newString, 15, Names);
    }
    
    private void processField16() {
        if(this.jTextField15.getText() == "") this.jTextField15.setText("0");
        String newString = strSpeditor + this.jTextField16.getText() + "%' AND rep_documents.code_speditor >= " + this.jTextField15.getText() + ";";
        constructDialod(newString, 16, Names);
    }
    
    public String[] getNames() {
        return Names;
    }
    
    public void setNames(String[] Names) {
        this.Names = Names;
    }
    
    public int getIntTransfer() {
        return intTransfer;
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
}
