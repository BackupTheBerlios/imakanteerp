
package nom;

public class aeProductPrice extends imakante.com.vcomponents.iDialog {
    
    public aeProductPrice(imakante.com.vcomponents.iInternalFrame frame, boolean modal,int id_price, boolean isnew) {
        super(frame, modal);
        this.myParent =(FrmProduct) frame;
        this.id_price = id_price;
        this.isNew = isnew;
        initComponents();
        if(!isNew) getDataByID();
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        splitMoney = myParent.getCountriesT().getMoney();
        for(int i=0;i<splitMoney.length;i++) {
            jComboBoxValuta.addItem(new String(splitMoney[i]));
        }
        if(selectComboBoxItem != 0) {
            selectComboBoxItem = getNewComboBoxIndex(selectComboBoxItem);
            jComboBoxValuta.setSelectedIndex(selectComboBoxItem);
        }
        this.setTitle("\u0414\u043E\u0441\u0442\u0430\u0432\u043D\u0430 \u0438 \u0446\u0435\u043D\u043E\u0432\u0430 \u043B\u0438\u0441\u0442\u0430");
        jTextDostPrice.requestFocus();
        try {
            stDDS =  Integer.parseInt(myParent.getProductFee()[0]);
        } catch(Exception x1) { stDDS = 20; }
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jTextField1 = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextDostPrice = new javax.swing.JTextField();
        jTextFieldPrice1 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldPrice2 = new javax.swing.JTextField();
        jTextFieldPrice3 = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jTextFieldProcent1 = new javax.swing.JTextField();
        jTextFieldProcent2 = new javax.swing.JTextField();
        jTextFieldProcent3 = new javax.swing.JTextField();
        jComboBoxValuta = new javax.swing.JComboBox();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jTextFieldValue = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        jTextDostPriceWithDDS = new javax.swing.JTextField();
        jLabel19 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jTextFieldPrice1WithDDS = new javax.swing.JTextField();
        jTextFieldPrice2WithDDS = new javax.swing.JTextField();
        jTextFieldPrice3WithDDS = new javax.swing.JTextField();

        jTextField1.setText("jTextField1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f \u043d\u0430 \u0446\u0435\u043d\u0438");
        jPanel1.setPreferredSize(new java.awt.Dimension(600, 33));
        jButtonSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButtonSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSaveActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonSave);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonClose);

        getContentPane().add(jPanel1, java.awt.BorderLayout.SOUTH);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setMinimumSize(new java.awt.Dimension(400, 250));
        jPanel2.setPreferredSize(new java.awt.Dimension(320, 250));
        jLabel1.setText("\u0414\u043e\u0441\u0442\u0430\u0432\u043d\u0430 \u0446\u0435\u043d\u0430:");

        jLabel2.setText("\u0426\u0435\u043d\u0430 1:");

        jLabel3.setText("\u0426\u0435\u043d\u0430 2:");

        jTextDostPrice.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextDostPrice.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextDostPrice.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextDostPrice.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextDostPriceFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextDostPriceFocusLost(evt);
            }
        });
        jTextDostPrice.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextDostPriceKeyPressed(evt);
            }
        });

        jTextFieldPrice1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPrice1.setEnabled(false);
        jTextFieldPrice1.setNextFocusableComponent(jTextFieldPrice2);
        jTextFieldPrice1.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPrice1.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPrice1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice1FocusLost(evt);
            }
        });
        jTextFieldPrice1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice1KeyPressed(evt);
            }
        });

        jLabel4.setText("\u0426\u0435\u043d\u0430 3:");

        jTextFieldPrice2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPrice2.setEnabled(false);
        jTextFieldPrice2.setNextFocusableComponent(jTextFieldPrice3);
        jTextFieldPrice2.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPrice2.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPrice2FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice2FocusLost(evt);
            }
        });
        jTextFieldPrice2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice2KeyPressed(evt);
            }
        });

        jTextFieldPrice3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPrice3.setEnabled(false);
        jTextFieldPrice3.setNextFocusableComponent(jButtonSave);
        jTextFieldPrice3.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPrice3.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPrice3FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice3FocusLost(evt);
            }
        });
        jTextFieldPrice3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice3KeyPressed(evt);
            }
        });

        jLabel5.setText("\u0438\u043b\u0438");

        jLabel6.setText("\u0438\u043b\u0438");

        jLabel7.setText("\u0438\u043b\u0438");

        jTextFieldProcent1.setToolTipText("\u041f\u0440\u043e\u0446\u0435\u043d\u0442 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u043e\u0442 \u0434\u043e\u0441\u0442\u0430\u0432\u043d\u0430\u0442\u0430 \u0446\u0435\u043d\u0430");
        jTextFieldProcent1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldProcent1.setEnabled(false);
        jTextFieldProcent1.setNextFocusableComponent(jTextFieldProcent2);
        jTextFieldProcent1.setPreferredSize(new java.awt.Dimension(50, 20));
        jTextFieldProcent1.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldProcent1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldProcent1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldProcent1FocusLost(evt);
            }
        });
        jTextFieldProcent1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldProcent1KeyPressed(evt);
            }
        });

        jTextFieldProcent2.setToolTipText("\u041f\u0440\u043e\u0446\u0435\u043d\u0442 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u043e\u0442 \u0434\u043e\u0441\u0442\u0430\u0432\u043d\u0430\u0442\u0430 \u0446\u0435\u043d\u0430");
        jTextFieldProcent2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldProcent2.setEnabled(false);
        jTextFieldProcent2.setNextFocusableComponent(jTextFieldProcent3);
        jTextFieldProcent2.setPreferredSize(new java.awt.Dimension(50, 20));
        jTextFieldProcent1.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldProcent2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldProcent2FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldProcent2FocusLost(evt);
            }
        });
        jTextFieldProcent2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldProcent2KeyPressed(evt);
            }
        });

        jTextFieldProcent3.setToolTipText("\u041f\u0440\u043e\u0446\u0435\u043d\u0442 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u043e\u0442 \u0434\u043e\u0441\u0442\u0430\u0432\u043d\u0430\u0442\u0430 \u0446\u0435\u043d\u0430");
        jTextFieldProcent3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldProcent3.setEnabled(false);
        jTextFieldProcent3.setNextFocusableComponent(jButtonSave);
        jTextFieldProcent3.setPreferredSize(new java.awt.Dimension(50, 20));
        jTextFieldProcent1.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldProcent3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldProcent3FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldProcent3FocusLost(evt);
            }
        });
        jTextFieldProcent3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldProcent3KeyPressed(evt);
            }
        });

        jComboBoxValuta.setEnabled(false);
        jComboBoxValuta.setPreferredSize(new java.awt.Dimension(70, 20));

        jLabel8.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jLabel9.setText("\u041a\u0443\u0440\u0441:");

        jLabel10.setText("%");

        jLabel11.setText("%");

        jLabel12.setText("%");

        jTextFieldValue.setEditable(false);
        jTextFieldValue.setText("1");
        jTextFieldValue.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldValue.setNextFocusableComponent(jButtonSave);
        jTextFieldValue.setPreferredSize(new java.awt.Dimension(100, 20));
        jTextFieldValue.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldValueFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldValueFocusLost(evt);
            }
        });
        jTextFieldValue.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldValueKeyPressed(evt);
            }
        });
        jTextFieldValue.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jTextFieldValueMousePressed(evt);
            }
        });

        jLabel13.setFont(new java.awt.Font("Tahoma", 0, 14));
        jLabel13.setForeground(new java.awt.Color(204, 0, 51));
        jLabel13.setText("\u0426\u0435\u043d\u0438 \u0431\u0435\u0437 \u0414\u0414\u0421 \u0438 \u0442\u0430\u043a\u0441\u0438");

        jLabel17.setFont(new java.awt.Font("Tahoma", 0, 14));
        jLabel17.setText("\u0426\u0435\u043d\u0438 \u0441 \u0414\u0414\u0421");

        jLabel18.setText("\u0438\u043b\u0438");

        jTextDostPriceWithDDS.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextDostPriceWithDDS.setNextFocusableComponent(jTextFieldPrice1WithDDS);
        jTextDostPriceWithDDS.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextDostPriceWithDDS.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextDostPriceWithDDSFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextDostPriceWithDDSFocusLost(evt);
            }
        });
        jTextDostPriceWithDDS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextDostPriceWithDDSKeyPressed(evt);
            }
        });

        jLabel19.setText("\u0438\u043b\u0438");

        jLabel20.setText("\u0438\u043b\u0438");

        jLabel21.setText("\u0438\u043b\u0438");

        jTextFieldPrice1WithDDS.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPrice1WithDDS.setEnabled(false);
        jTextFieldPrice1WithDDS.setNextFocusableComponent(jTextFieldPrice2WithDDS);
        jTextFieldPrice1WithDDS.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice1WithDDS.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPrice1WithDDSFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice1WithDDSFocusLost(evt);
            }
        });
        jTextFieldPrice1WithDDS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice1WithDDSKeyPressed(evt);
            }
        });

        jTextFieldPrice2WithDDS.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPrice2WithDDS.setEnabled(false);
        jTextFieldPrice2WithDDS.setNextFocusableComponent(jTextFieldPrice3WithDDS);
        jTextFieldPrice2WithDDS.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice2WithDDS.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPrice2WithDDSFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice2WithDDSFocusLost(evt);
            }
        });
        jTextFieldPrice2WithDDS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice2WithDDSKeyPressed(evt);
            }
        });

        jTextFieldPrice3WithDDS.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPrice3WithDDS.setEnabled(false);
        jTextFieldPrice3WithDDS.setNextFocusableComponent(jButtonSave);
        jTextFieldPrice3WithDDS.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice3WithDDS.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPrice3WithDDSFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice3WithDDSFocusLost(evt);
            }
        });
        jTextFieldPrice3WithDDS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice3WithDDSKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                                .add(83, 83, 83)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                    .add(jLabel8)
                                    .add(jLabel4))
                                .add(10, 10, 10)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                                    .add(jPanel2Layout.createSequentialGroup()
                                        .add(jTextFieldPrice3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                        .add(36, 36, 36)
                                        .add(jLabel7))
                                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                                        .add(jComboBoxValuta, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .add(jLabel9)
                                        .add(12, 12, 12)))
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(jPanel2Layout.createSequentialGroup()
                                        .add(31, 31, 31)
                                        .add(jTextFieldProcent3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                        .add(jLabel10)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 21, Short.MAX_VALUE)
                                        .add(jLabel21))
                                    .add(jPanel2Layout.createSequentialGroup()
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                        .add(jTextFieldValue, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                                .add(84, 84, 84)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                                        .add(jLabel3)
                                        .add(10, 10, 10)
                                        .add(jTextFieldPrice2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                        .add(36, 36, 36)
                                        .add(jLabel6)
                                        .add(31, 31, 31)
                                        .add(jTextFieldProcent2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                        .add(jLabel12)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .add(jLabel20))
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                                        .add(jLabel2)
                                        .add(10, 10, 10)
                                        .add(jTextFieldPrice1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                        .add(36, 36, 36)
                                        .add(jLabel5)
                                        .add(31, 31, 31)
                                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                            .add(jLabel18)
                                            .add(jPanel2Layout.createSequentialGroup()
                                                .add(jTextFieldProcent1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                                .add(jLabel11)
                                                .add(21, 21, 21)
                                                .add(jLabel19)))))))
                        .add(21, 21, 21))
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(43, 43, 43)
                        .add(jLabel1)
                        .add(10, 10, 10)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTextDostPrice, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jLabel13))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 146, Short.MAX_VALUE)))
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                        .add(jTextFieldPrice3WithDDS)
                        .add(jTextFieldPrice2WithDDS)
                        .add(jTextDostPriceWithDDS, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 92, Short.MAX_VALUE)
                        .add(jTextFieldPrice1WithDDS))
                    .add(jLabel17))
                .add(65, 65, 65))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel13)
                    .add(jLabel17, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(35, 35, 35)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel1))
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jTextDostPrice, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel18))
                    .add(jTextDostPriceWithDDS, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(10, 10, 10)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel2))
                    .add(jTextFieldPrice1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel5))
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jTextFieldProcent1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel11)
                        .add(jLabel19)
                        .add(jTextFieldPrice1WithDDS, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(10, 10, 10)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel3))
                    .add(jTextFieldPrice2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel6))
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jTextFieldProcent2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel12)
                        .add(jLabel20)
                        .add(jTextFieldPrice2WithDDS, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(10, 10, 10)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel4))
                    .add(jTextFieldPrice3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel7))
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jTextFieldProcent3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel10)
                        .add(jLabel21)
                        .add(jTextFieldPrice3WithDDS, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(35, 35, 35)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel8)
                    .add(jComboBoxValuta, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel9)
                    .add(jTextFieldValue, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(86, 86, 86))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextFieldValueFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldValueFocusLost
fLost(jTextFieldValue);
    }//GEN-LAST:event_jTextFieldValueFocusLost

    private void jTextFieldValueFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldValueFocusGained
fGain(jTextFieldValue);
    }//GEN-LAST:event_jTextFieldValueFocusGained

    private void jTextFieldPrice3WithDDSFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice3WithDDSFocusGained
fGain(jTextFieldPrice3);
    }//GEN-LAST:event_jTextFieldPrice3WithDDSFocusGained

    private void jTextFieldProcent3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent3FocusGained
fGain(jTextFieldProcent3);
    }//GEN-LAST:event_jTextFieldProcent3FocusGained

    private void jTextFieldPrice3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice3FocusGained
fGain(jTextFieldPrice3);
    }//GEN-LAST:event_jTextFieldPrice3FocusGained

    private void jTextFieldPrice2WithDDSFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice2WithDDSFocusGained
fGain(jTextFieldPrice2);
    }//GEN-LAST:event_jTextFieldPrice2WithDDSFocusGained

    private void jTextFieldProcent2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent2FocusGained
fGain(jTextFieldProcent2);
    }//GEN-LAST:event_jTextFieldProcent2FocusGained

    private void jTextFieldPrice2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice2FocusGained
fGain(jTextFieldPrice2);
    }//GEN-LAST:event_jTextFieldPrice2FocusGained

    private void jTextFieldPrice1WithDDSFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice1WithDDSFocusGained
fGain(jTextFieldPrice1);
    }//GEN-LAST:event_jTextFieldPrice1WithDDSFocusGained

    private void jTextFieldProcent1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent1FocusGained
fGain(jTextFieldProcent1);
    }//GEN-LAST:event_jTextFieldProcent1FocusGained

    private void jTextFieldPrice1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice1FocusGained
fGain(jTextFieldPrice1);
    }//GEN-LAST:event_jTextFieldPrice1FocusGained

    private void jTextDostPriceWithDDSFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextDostPriceWithDDSFocusGained
fGain(jTextDostPriceWithDDS);
    }//GEN-LAST:event_jTextDostPriceWithDDSFocusGained

    private void jTextDostPriceFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextDostPriceFocusLost
fLost(jTextDostPrice);
    }//GEN-LAST:event_jTextDostPriceFocusLost

    private void jTextDostPriceFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextDostPriceFocusGained
fGain(jTextDostPrice);
    }//GEN-LAST:event_jTextDostPriceFocusGained
    
    private void jTextFieldPrice3WithDDSFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice3WithDDSFocusLost
fLost(jTextFieldPrice3WithDDS);
     /*    try {
                p0dds = Double.parseDouble(jTextDostPriceWithDDS.getText());
                p3dds = Double.parseDouble(jTextFieldPrice3WithDDS.getText());
                if (p3dds >= p0dds )
                {
                    p3 = p3dds/(1+stDDS/100);
                    p0 = p0dds/(1+stDDS/100);
                    p_p3 = (100 * (p3-p0)) / p0;
      
                }
                else showMessage();
      
                jTextFieldProcent3.setText( doubleRoundToString(3,p_p3));
                jTextFieldPrice3WithDDS.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice3.setText(doubleRoundToString(6,p3));
                jTextFieldPrice3WithDDS.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice3WithDDS.setBackground(new java.awt.Color(255, 204, 204));
          }*/
    }//GEN-LAST:event_jTextFieldPrice3WithDDSFocusLost
    
    private void jTextFieldPrice2WithDDSFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice2WithDDSFocusLost
fLost(jTextFieldPrice2WithDDS);
// TODO add your handling code here:
      /*      try {
                p0dds = Double.parseDouble(jTextDostPriceWithDDS.getText());
                p2dds = Double.parseDouble(jTextFieldPrice2WithDDS.getText());
                if (p2dds >= p0dds )
                {
                    p2 = p2dds/(1+stDDS/100);
                    p0 = p0dds/(1+stDDS/100);
                    p_p2 = (100 * (p2-p0)) / p0;
       
                }
                else showMessage();
       
                jTextFieldProcent2.setText( doubleRoundToString(3,p_p2));
                jTextFieldPrice2WithDDS.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice2.setText(doubleRoundToString(6,p2));
                jTextFieldPrice2WithDDS.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice2WithDDS.setBackground(new java.awt.Color(255, 204, 204));
          }*/
    }//GEN-LAST:event_jTextFieldPrice2WithDDSFocusLost
    
    private void jTextFieldPrice3WithDDSKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice3WithDDSKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0dds = Double.parseDouble(jTextDostPriceWithDDS.getText());
                p3dds = Double.parseDouble(jTextFieldPrice3WithDDS.getText());
                if (p3dds >= p0dds ) {
                    p3 = p3dds/(1+stDDS/100);
                    p0 = p0dds/(1+stDDS/100);
                    p_p3 = (100 * (p3-p0)) / p0;
                    
                } else showMessage();
                
                jTextFieldProcent3.setText( doubleRoundToString(3,p_p3));
                jTextFieldPrice3WithDDS.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice3.setText(doubleRoundToString(6,p3));
                jTextFieldPrice3WithDDS.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice3WithDDS.setBackground(new java.awt.Color(255, 204, 204));
            }
        }
    }//GEN-LAST:event_jTextFieldPrice3WithDDSKeyPressed
    
    private void jTextFieldPrice2WithDDSKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice2WithDDSKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0dds = Double.parseDouble(jTextDostPriceWithDDS.getText());
                p2dds = Double.parseDouble(jTextFieldPrice2WithDDS.getText());
                if (p2dds >= p0dds ) {
                    p2 = p2dds/(1+stDDS/100);
                    p0 = p0dds/(1+stDDS/100);
                    p_p2 = (100 * (p2-p0)) / p0;
                    
                } else showMessage();
                
                jTextFieldProcent2.setText( doubleRoundToString(3,p_p2));
                jTextFieldPrice2WithDDS.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice2.setText(doubleRoundToString(6,p2));
                jTextFieldPrice2WithDDS.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice2WithDDS.setBackground(new java.awt.Color(255, 204, 204));
            }
        }
    }//GEN-LAST:event_jTextFieldPrice2WithDDSKeyPressed
    
    private void jTextFieldPrice1WithDDSFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice1WithDDSFocusLost
fLost(jTextFieldPrice1WithDDS);
// TODO add your handling code here:
        
    /*       try {
                p0dds = Double.parseDouble(jTextDostPriceWithDDS.getText());
                p1dds = Double.parseDouble(jTextFieldPrice1WithDDS.getText());
                if (p1dds >= p0dds )
                {
                    p1 = p1dds/(1+stDDS/100);
                    p0 = p0dds/(1+stDDS/100);
                    p_p1 = (100 * (p1-p0)) / p0;
     
                }
                else showMessage();
     
                jTextFieldProcent1.setText( doubleRoundToString(3,p_p1));
                jTextFieldPrice1WithDDS.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice1.setText(doubleRoundToString(6,p1));
                jTextFieldPrice1WithDDS.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice1WithDDS.setBackground(new java.awt.Color(255, 204, 204));
          }
     */
    }//GEN-LAST:event_jTextFieldPrice1WithDDSFocusLost
    
    private void jTextFieldPrice1WithDDSKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice1WithDDSKeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0dds = Double.parseDouble(jTextDostPriceWithDDS.getText());
                p1dds = Double.parseDouble(jTextFieldPrice1WithDDS.getText());
                if (p1dds >= p0dds ) {
                    p1 = p1dds/(1+stDDS/100);
                    p0 = p0dds/(1+stDDS/100);
                    p_p1 = (100 * (p1-p0)) / p0;
                    
                } else showMessage();
                
                jTextFieldProcent1.setText( doubleRoundToString(3,p_p1));
                jTextFieldPrice1WithDDS.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice1.setText(doubleRoundToString(6,p1));
                this.jTextFieldProcent1.requestFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice1WithDDS.setBackground(new java.awt.Color(255, 204, 204));
            }
        }
    }//GEN-LAST:event_jTextFieldPrice1WithDDSKeyPressed
    
    private void jTextDostPriceWithDDSFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextDostPriceWithDDSFocusLost
fLost(jTextDostPriceWithDDS);
    /*     if(jTextDostPriceWithDDS.getText().length()>0) {
            jTextFieldPrice1.setEnabled(true);
            jTextFieldPrice2.setEnabled(true);
            jTextFieldPrice3.setEnabled(true);
            jTextFieldProcent3.setEnabled(true);
            jTextFieldProcent2.setEnabled(true);
            jTextFieldProcent1.setEnabled(true);
     
            jTextFieldPrice1WithDDS.setEditable(true);
            jTextFieldPrice2WithDDS.setEditable(true);
            jTextFieldPrice3WithDDS.setEditable(true);
            p0dds = Double.parseDouble(jTextDostPriceWithDDS.getText());
            p0 =p0dds/(1+stDDS/100);
            jTextDostPrice.setText(doubleRoundToString(6,p0));
     
     
     
        }*/
    }//GEN-LAST:event_jTextDostPriceWithDDSFocusLost
    
    private void jTextDostPriceWithDDSKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextDostPriceWithDDSKeyPressed
// TODO add your handling code here:
        if(jTextDostPriceWithDDS.getText().length()>0) {
            jTextFieldPrice1.setEnabled(true);
            jTextFieldPrice2.setEnabled(true);
            jTextFieldPrice3.setEnabled(true);
            jTextFieldProcent3.setEnabled(true);
            jTextFieldProcent2.setEnabled(true);
            jTextFieldProcent1.setEnabled(true);
            
            jTextFieldPrice1WithDDS.setEnabled(true);
            jTextFieldPrice2WithDDS.setEnabled(true);
            jTextFieldPrice3WithDDS.setEnabled(true);
            p0dds = Double.parseDouble(jTextDostPriceWithDDS.getText());
            if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
                p0 =p0dds/(1+stDDS/100);
                
                jTextDostPrice.setText(doubleRoundToString(6,p0));
                
                jTextDostPriceWithDDS.transferFocus();
            }
        }
    }//GEN-LAST:event_jTextDostPriceWithDDSKeyPressed
    
    private void jTextFieldValueKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldValueKeyPressed
// TODO add your handling code here:
        String curs[] = null;
        try {
            java.sql.ResultSet r1 = myParent.getCountriesT().getShowConteinCurs();
            shContein= new showConteinCurs(myParent,true,r1,myParent.getCountriesT().getConn());
            id_curs = myParent.getTMPINT();
            curs = myParent.getCountriesT().getCurs(id_curs);
            jTextFieldValue.setText(curs[2]);
            selectComboBoxItem = Integer.parseInt(curs[1]);
            
            myParent.setTMPINT(0);
            jTextFieldValue.transferFocus();
        } catch(Exception e) {
            showMessage();
        }
    }//GEN-LAST:event_jTextFieldValueKeyPressed
    
    private void jTextFieldValueMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldValueMousePressed
        
        String curs[] = null;
        try {
            java.sql.ResultSet r1 = myParent.getCountriesT().getShowConteinCurs();
            shContein= new showConteinCurs(myParent,true,r1,myParent.getCountriesT().getConn());
            id_curs = myParent.getTMPINT();
            curs = myParent.getCountriesT().getCurs(id_curs);
            jTextFieldValue.setText(curs[2]);
            selectComboBoxItem = Integer.parseInt(curs[1]);
            
            myParent.setTMPINT(0);
            jTextFieldValue.transferFocus();
        } catch(Exception e) {
            showMessage();
        }
        
    }//GEN-LAST:event_jTextFieldValueMousePressed
    
    private void jTextFieldProcent3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent3FocusLost
fLost(jTextFieldProcent3);
        /*  try {
       
            p_p3 = Double.parseDouble(jTextFieldProcent3.getText());
            p3 = (p_p3/100)*p0 + p0;
            jTextFieldPrice3.setText( doubleRoundToString(6,p3));
            jTextFieldProcent3.setBackground(new java.awt.Color(255, 255, 255));
            p3dds = (p3*stDDS/100)+p3;
            jTextFieldPrice3WithDDS.setText(doubleRoundToString(6,p3dds));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            jTextFieldProcent3.setBackground(new java.awt.Color(255, 204, 204));
            showMessage();
        }
       */
    }//GEN-LAST:event_jTextFieldProcent3FocusLost
    
    private void jTextFieldProcent3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldProcent3KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p_p3 = Double.parseDouble(jTextFieldProcent3.getText());
                p3 = (p_p3/100)*p0 + p0;
                jTextFieldPrice3.setText( doubleRoundToString(6,p3));
                jTextFieldProcent3.setBackground(new java.awt.Color(255, 255, 255));
                p3dds = (p3*stDDS/100)+p3;
                jTextFieldPrice3WithDDS.setText(doubleRoundToString(6,p3dds));
                this.jTextFieldValue.requestFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldProcent3.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldProcent3KeyPressed
    
    private void jTextFieldPrice3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice3FocusLost
fLost(jTextFieldPrice3);
        /*    try {
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p3 = Double.parseDouble(jTextFieldPrice3.getText());
            if(p3>=p0)
            {
                p_p3 = (100 * (p3-p0)) / p0;
                p3dds = (p3*stDDS/100)+p3;
            }
            else showMessage();
            jTextFieldProcent3.setText( doubleRoundToString(3,p_p3));
            jTextFieldPrice3.setBackground(new java.awt.Color(255, 255, 255));
            jTextFieldPrice3WithDDS.setText(doubleRoundToString(6,p3dds));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            showMessage();
            jTextFieldPrice3.setBackground(new java.awt.Color(255, 204, 204));
        }
     
     */
    }//GEN-LAST:event_jTextFieldPrice3FocusLost
    
    private void jTextFieldPrice3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice3KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p3 = Double.parseDouble(jTextFieldPrice3.getText());
                if (p3 >= p0) {
                    p_p3 = (100 * (p3-p0)) / p0;
                    
                    p3dds = (p3*stDDS/100)+p3;
                } else showMessage();
                jTextFieldProcent3.setText( doubleRoundToString(3,p_p3));
                jTextFieldPrice3.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice3WithDDS.setText(doubleRoundToString(6,p3dds));
                jTextFieldPrice3.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice3.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldPrice3KeyPressed
    
    private void jTextFieldProcent2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldProcent2KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p_p2 = Double.parseDouble(jTextFieldProcent2.getText());
                p2 = (p_p2/100)*p0 + p0;
                jTextFieldPrice2.setText( doubleRoundToString(6,p2));
                jTextFieldPrice2.setBackground(new java.awt.Color(255, 255, 255));
                p2dds = (p2*stDDS/100)+p2;
                jTextFieldPrice2WithDDS.setText(doubleRoundToString(6,p2dds));
                jTextFieldProcent3.requestFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice2.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldProcent2KeyPressed
    
    private void jTextFieldProcent2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent2FocusLost
fLost(jTextFieldProcent2);
// TODO add your handling code here:
    /*    try {
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p_p2 = Double.parseDouble(jTextFieldProcent2.getText());
            p2 = (p_p2/100)*p0 + p0;
            jTextFieldPrice2.setText( doubleRoundToString(6,p2));
            jTextFieldProcent2.setBackground(new java.awt.Color(255, 255, 255));
            p2dds = (p2*stDDS/100)+p2;
            jTextFieldPrice2WithDDS.setText(doubleRoundToString(6,p2dds));
        } catch(Exception e) {
            showMessage();
            jTextFieldProcent2.setBackground(new java.awt.Color(255, 204, 204));
        }*/
    }//GEN-LAST:event_jTextFieldProcent2FocusLost
    
    
    private void jTextFieldPrice2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice2FocusLost
fLost(jTextFieldPrice2);
        /*      try {
// TODO add your handling code here:
   
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p2 = Double.parseDouble(jTextFieldPrice2.getText());
            if(p2 >= p0)
            {
                p_p2 = (100 * (p2-p0)) / p0;
                p2dds = (p2*stDDS/100)+p2;
            }
            else showMessage();
            jTextFieldProcent2.setText( doubleRoundToString(3,p_p2));
            jTextFieldPrice2.setBackground(new java.awt.Color(255, 255, 255));
            jTextFieldPrice2WithDDS.setText(doubleRoundToString(6,p2dds));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            showMessage();
            jTextFieldPrice2.setBackground(new java.awt.Color(255, 204, 204));
        }
   */
    }//GEN-LAST:event_jTextFieldPrice2FocusLost
    
    private void jTextFieldPrice2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice2KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p2 = Double.parseDouble(jTextFieldPrice2.getText());
                if(p2 > p0) {
                    p_p2 = (100 * (p2-p0)) / p0;
                    
                    p2dds = (p2*stDDS/100)+p2;
                } else showMessage();
                jTextFieldProcent2.setText( doubleRoundToString(3,p_p2));
                jTextFieldPrice2.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice2WithDDS.setText(doubleRoundToString(6,p2dds));
                jTextFieldPrice2.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice2.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldPrice2KeyPressed
    
    
    private void jTextFieldProcent1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldProcent1KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p_p1 = Double.parseDouble(jTextFieldProcent1.getText());
                p1 = (p_p1/100)*p0 + p0;
                jTextFieldPrice1.setText( doubleRoundToString(6,p1));
                jTextFieldProcent1.setBackground(new java.awt.Color(255, 255, 255));
                
                p1dds = (p1*stDDS/100)+p1;
                jTextFieldPrice1WithDDS.setText(doubleRoundToString(6,p1dds));
                jTextFieldProcent2.requestFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldProcent1.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldProcent1KeyPressed
    
    private void jTextFieldProcent1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent1FocusLost
        fLost(jTextFieldProcent1);
        /*   try {
// TODO add your handling code here:
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p_p1 = Double.parseDouble(jTextFieldProcent1.getText());
            p1 =(p_p1/100);
            p1 = p1*p0 + p0;
            jTextFieldPrice1.setText( doubleRoundToString(6,p1));
            jTextFieldProcent1.setBackground(new java.awt.Color(255, 255, 255));
            p1dds = (p1*stDDS/100)+p1;
            jTextFieldPrice1WithDDS.setText(doubleRoundToString(6,p1dds));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            jTextFieldProcent1.setBackground(new java.awt.Color(255, 204, 204));
        }*/
    }//GEN-LAST:event_jTextFieldProcent1FocusLost
    
    private void jTextFieldPrice1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice1FocusLost
        fLost(jTextFieldPrice1);
        /*        try {
 
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p1 = Double.parseDouble(jTextFieldPrice1.getText());
            if(p1 >= p0)
            {
                p_p1 = (100 * (p1-p0)) / p0;
 
                p1dds = (p1*stDDS/100)+p1;
            }
            else showMessage();
 
            jTextFieldProcent1.setText( doubleRoundToString(3,p_p1));
            jTextFieldProcent1.setBackground(new java.awt.Color(255, 255, 255));
            jTextFieldPrice1WithDDS.setText(doubleRoundToString(6,p1dds));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            showMessage();
            jTextFieldPrice1.setBackground(new java.awt.Color(255, 204, 204));
            jTextFieldPrice1.requestFocus();
        }
 */
    }//GEN-LAST:event_jTextFieldPrice1FocusLost
    
    private void jTextFieldPrice1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice1KeyPressed
        if(evt.getKeyCode() == evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p1 = Double.parseDouble(jTextFieldPrice1.getText());
                if (p1 >= p0 ) {
                    p_p1 = (100 * (p1-p0)) / p0;
                    p1dds = (p1*stDDS/100) + p1;
                } else showMessage();
                jTextFieldProcent1.setText( doubleRoundToString(3,p_p1));
                jTextFieldPrice1.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice1WithDDS.setText(doubleRoundToString(6,p1dds));
                jTextFieldPrice1.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice1.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldPrice1KeyPressed
    
    private void jTextDostPriceKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextDostPriceKeyPressed
        if(jTextDostPrice.getText().length()>0) {
            jTextFieldPrice1.setEnabled(true);
            jTextFieldPrice2.setEnabled(true);
            jTextFieldPrice3.setEnabled(true);
            jTextFieldProcent3.setEnabled(true);
            jTextFieldProcent2.setEnabled(true);
            jTextFieldProcent1.setEnabled(true);
            jTextFieldPrice1WithDDS.setEnabled(true);
            jTextFieldPrice2WithDDS.setEnabled(true);
            jTextFieldPrice3WithDDS.setEnabled(true);
            p0 = Double.parseDouble(jTextDostPrice.getText());
            if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
                p0dds = (p0*stDDS/100)+p0;
                jTextDostPriceWithDDS.setText(doubleRoundToString(3,p0dds));
                this.jTextFieldPrice1.requestFocus();
            }
        }
    }//GEN-LAST:event_jTextDostPriceKeyPressed
        
    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
        if(p0==0 && p1==0 && p2==0 && p3==0 && id_curs==0) {
            showMessage();
        } else {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p1 = Double.parseDouble(jTextFieldPrice1.getText());
                p2 = Double.parseDouble(jTextFieldPrice2.getText());
                p3 = Double.parseDouble(jTextFieldPrice3.getText());
            } catch(Exception e) { showMessage(); }
            if(isNew) {
                // myParent.setId_PP(myParent.getCountriesT().setNewPrice(p0,p1,p2,p3,id_curs));
                myParent.setNewPrice(p0,p1,p2,p3,id_curs);
                jButtonClose.doClick();
            } else {
                // myParent.getCountriesT().updateProductPrice(id_price,p0,p1,p2,p3,id_curs);
                myParent.setNewPrice(p0,p1,p2,p3,id_curs);
                jButtonClose.doClick();
            }
        }
    }//GEN-LAST:event_jButtonSaveActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonSave;
    private javax.swing.JComboBox jComboBoxValuta;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextDostPrice;
    private javax.swing.JTextField jTextDostPriceWithDDS;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextFieldPrice1;
    private javax.swing.JTextField jTextFieldPrice1WithDDS;
    private javax.swing.JTextField jTextFieldPrice2;
    private javax.swing.JTextField jTextFieldPrice2WithDDS;
    private javax.swing.JTextField jTextFieldPrice3;
    private javax.swing.JTextField jTextFieldPrice3WithDDS;
    private javax.swing.JTextField jTextFieldProcent1;
    private javax.swing.JTextField jTextFieldProcent2;
    private javax.swing.JTextField jTextFieldProcent3;
    private javax.swing.JTextField jTextFieldValue;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private nom.FrmProduct myParent;
    private int id_price=0, id_curs=1;
    private double p0=0,p1=0,p2=0,p3=0;
    private double p_p1=0,p_p2=0,p_p3=0;
    private double p0dds=0, p1dds=0, p2dds=0, p3dds=0;
    private double stDDS = 20;                 // stoinost na dds v %
    private boolean isNew = false;
    private String splitMoney[] = null;
    private int selectComboBoxItem;
    private showConteinCurs shContein;
    //---------------END My Variables
//---------------START MyFunction
    
    
    private void getDataByID() {
        String prices[] = new String[4];
        String curs[] = null;
        if(id_price>0 && !myParent.isTypedPrice) {
            prices = myParent.getCountriesT().getProductPrice(id_price);
        } else {
            prices = myParent.getNewPrice();
        }
        
        jTextDostPrice.setText(prices[0]);
        jTextFieldPrice1.setText(prices[1]);
        jTextFieldPrice2.setText(prices[2]);
        jTextFieldPrice3.setText(prices[3]);
        id_curs = Integer.parseInt(prices[4]);
        curs = myParent.getCountriesT().getCurs(id_curs);
        jTextFieldValue.setText(curs[2]);
        selectComboBoxItem = Integer.parseInt(curs[1]);
        
        jTextFieldPrice1.setEnabled(true);
        jTextFieldPrice2.setEnabled(true);
        jTextFieldPrice3.setEnabled(true);
        jTextFieldProcent1.setEnabled(true);
        jTextFieldProcent2.setEnabled(true);
        jTextFieldProcent3.setEnabled(true);
        
        jTextFieldPrice1WithDDS.setEnabled(true);
        jTextFieldPrice2WithDDS.setEnabled(true);
        jTextFieldPrice3WithDDS.setEnabled(true);
        
        p0 = Double.parseDouble(jTextDostPrice.getText());
        
        p1 = Double.parseDouble(jTextFieldPrice1.getText());
        
        p_p1 = (100 * (p1-p0)) / p0;
        jTextFieldProcent1.setText( doubleRoundToString(3,p_p1));
        
        p2 = Double.parseDouble(jTextFieldPrice2.getText());
        p_p2 = (100 * (p2-p0)) / p0 ;
        
        jTextFieldProcent2.setText( doubleRoundToString(3,p_p2));
        
        p3 = Double.parseDouble(jTextFieldPrice3.getText());
        p_p3 = (100 * (p3-p0)) / p0;
        jTextFieldProcent3.setText( doubleRoundToString(3,p_p3));
        
        p0dds = (p0*stDDS/100)+p0;
        jTextDostPriceWithDDS.setText(doubleRoundToString(6,p0dds));
        
        p1dds = (p1*stDDS/100)+p1;
        jTextFieldPrice1WithDDS.setText(doubleRoundToString(6,p1dds));
        
        p2dds = (p2*stDDS/100)+p2;
        jTextFieldPrice2WithDDS.setText(doubleRoundToString(6,p2dds));
        
        p3dds = (p3*stDDS/100)+p3;
        jTextFieldPrice3WithDDS.setText(doubleRoundToString(6,p3dds));
    }
    
    private void showMessage() {
        javax.swing.JOptionPane.showMessageDialog(this,"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 " +
                "\u043a\u043e\u0440\u0435\u043a\u043d\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435");
    }
    
    private int getNewComboBoxIndex(int oldindex) {
        int newindex= 0;
        for(int i = 0; i < myParent.getCountriesT().getIndexConnOfIdMoney().length; i++) {
            if(myParent.getCountriesT().getIndexConnOfIdMoney()[i]==oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
    private String doubleRoundToString(int digit, double indouble) {
        String newDouble = new String();
        double r = indouble;
        java.math.BigDecimal bd = new java.math.BigDecimal(r);
        bd = bd.setScale(digit, java.math.BigDecimal.ROUND_HALF_UP);
        r = bd.doubleValue();
        return newDouble.valueOf(r);
    }
    
       private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 255, 255), null));
    }
   
}// end class
