
package imakante.sales;

public class aePayingOrdersPP extends imakante.com.vcomponents.iDialog implements java.awt.event.WindowListener {
    
    public aePayingOrdersPP(imakante.com.vcomponents.iInternalFrame frame, boolean modal) {
        super(frame, modal);
        this.myParent = (imakante.sales.FrmPayingOrders) frame;
        this.isNewRecord = true;
        myParent.setIdOrderType(1);
        initComponents();
        getNavigationState();
        initOrderTypesCombo();
        initRAccountsCombo();
        this.setResizable(false);
        this.jTextField8.requestFocus();
        repaintComp();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonPrint = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jComboBox1 = new javax.swing.JComboBox();
        jPanel5 = new javax.swing.JPanel();
        jTextField8 = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jPanel6 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jTextField7 = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jComboBox2 = new javax.swing.JComboBox();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0418\u0437\u043f\u0438\u0441\u0432\u0430\u043d\u0435 \u043d\u0430 \u0412\u043d\u043e\u0441\u043d\u0430 \u0431\u0435\u043b\u0435\u0436\u043a\u0430");
        jPanel1.setPreferredSize(new java.awt.Dimension(263, 33));
        jButtonSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButtonSave.setToolTipText("\u0421\u044a\u0445\u0440\u0430\u043d\u044f\u0432\u0430 \u043d\u0430\u043f\u0440\u0430\u0432\u0435\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u043c\u0435\u043d\u0438");
        jButtonSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSaveActionPerformed(evt);
            }
        });
        jButtonSave.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButtonSaveKeyPressed(evt);
            }
        });

        jPanel1.add(jButtonSave);

        jButtonPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jButtonPrint.setEnabled(false);
        jButtonPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrintActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonPrint);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButtonClose.setToolTipText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f \u0444\u043e\u0440\u043c\u0430\u0442\u0430. \u0412\u0441\u0438\u0447\u043a\u0438 \u043d\u0435\u0441\u044a\u0445\u0440\u0430\u043d\u0435\u043d\u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438 \u043d\u0435 \u0441\u0435 \u0437\u0430\u043f\u0438\u0441\u0432\u0430\u0442.");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });
        jButtonClose.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButtonCloseKeyPressed(evt);
            }
        });

        jPanel1.add(jButtonClose);

        getContentPane().add(jPanel1, java.awt.BorderLayout.SOUTH);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(400, 300));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jPanel3.setPreferredSize(new java.awt.Dimension(230, 70));
        jButtonToBegin.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation First 2.png")));
        jButtonToBegin.setToolTipText("\u041f\u044a\u0440\u0432\u0438 \u0437\u0430\u043f\u0438\u0441 \u0432 \u0441\u043f\u0438\u0441\u044a\u043a\u0430.");
        jButtonToBegin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToBeginActionPerformed(evt);
            }
        });
        jButtonToBegin.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButtonToBeginKeyPressed(evt);
            }
        });

        jPanel3.add(jButtonToBegin);

        jButtonOneRowM.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Left 2.png")));
        jButtonOneRowM.setToolTipText("\u0415\u0434\u0438\u043d \u0437\u0430\u043f\u0438\u0441 \u043d\u0430\u0437\u0430\u0434");
        jButtonOneRowM.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowMActionPerformed(evt);
            }
        });
        jButtonOneRowM.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButtonOneRowMKeyPressed(evt);
            }
        });

        jPanel3.add(jButtonOneRowM);

        jButtonOneRowP.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Right 2.png")));
        jButtonOneRowP.setToolTipText("\u041f\u043e\u0441\u043b\u0435\u0434\u0435\u043d \u0437\u0430\u043f\u0438\u0441 \u0432 \u0441\u043f\u0438\u0441\u044a\u043a\u0430");
        jButtonOneRowP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowPActionPerformed(evt);
            }
        });
        jButtonOneRowP.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButtonOneRowPKeyPressed(evt);
            }
        });

        jPanel3.add(jButtonOneRowP);

        jButtonToEnd.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Last 2.png")));
        jButtonToEnd.setToolTipText("\u0415\u0434\u0438\u043d \u0437\u0430\u043f\u0438\u0441 \u043d\u0430\u043f\u0440\u0435\u0434.");
        jButtonToEnd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToEndActionPerformed(evt);
            }
        });
        jButtonToEnd.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButtonToEndKeyPressed(evt);
            }
        });

        jPanel3.add(jButtonToEnd);

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0411\u0430\u043d\u043a\u043e\u0432\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jComboBox1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboBox1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jComboBox1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jComboBox1FocusLost(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jComboBox1, 0, 306, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(18, Short.MAX_VALUE))
        );

        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041d\u0430\u0440\u0435\u0434\u0438\u0442\u0435\u043b - \u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u043e \u043b\u0438\u0446\u0435", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jTextField8.setBackground(new java.awt.Color(204, 204, 255));
        jTextField8.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jTextField8.setToolTipText("F7 \u0432\u0430\u0434\u0438 \u0441\u043f\u0438\u0441\u044a\u043a \u0437\u0430 \u0438\u0437\u0431\u043e\u0440");
        jTextField8.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField8.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField8FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField8FocusLost(evt);
            }
        });
        jTextField8.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField8KeyPressed(evt);
            }
        });

        jLabel10.setText("\u0418\u043c\u0435:");

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel10)
                .add(17, 17, 17)
                .add(jTextField8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 632, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel5Layout.createSequentialGroup()
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel10)
                    .add(jTextField8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        jPanel6.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jLabel2.setText("\u0418\u043c\u0435 \u043d\u0430 \u0444\u0438\u0440\u043c\u0430\u0442\u0430:");

        jLabel4.setText("\u0421\u043c\u0435\u0442\u043a\u0430 (IBAN):");

        jLabel5.setText("\u0421\u0443\u043c\u0430:");

        jTextField4.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        jTextField4.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField4.setPreferredSize(new java.awt.Dimension(70, 18));
        jTextField4.setInputVerifier(new imakante.com.InputPriceVerifier());
        jTextField4.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField4FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField4FocusLost(evt);
            }
        });
        jTextField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField4KeyPressed(evt);
            }
        });

        jLabel6.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jTextField5.setEditable(false);
        jTextField5.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        jTextField5.setFocusable(false);
        jTextField5.setPreferredSize(new java.awt.Dimension(70, 20));

        jLabel7.setText("\u041e\u0441\u043d\u043e\u0432\u0430\u043d\u0438\u0435:");

        jTextField6.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField6.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField6FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField6FocusLost(evt);
            }
        });
        jTextField6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField6KeyPressed(evt);
            }
        });

        jLabel8.setText("\u041f\u043e\u044f\u0441\u043d\u0435\u043d\u0438\u044f:");

        jTextField7.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField7.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField7FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField7FocusLost(evt);
            }
        });
        jTextField7.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField7KeyPressed(evt);
            }
        });

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 12));
        jLabel9.setText(" ");
        jLabel9.setText(imakante.com.NewMain.getParamFirm().getName().toUpperCase());

        jComboBox2.setToolTipText("\u0420\u0430\u0437\u043f\u043b\u0430\u0449\u0430\u0442\u0435\u043b\u043d\u0438 \u0441\u043c\u0435\u0442\u043a\u0438 \u043d\u0430 \u0444\u0438\u0440\u043c\u0430\u0442\u0430 \u0432 \u043b\u0435\u0432\u0430 \u0438 \u0432\u0430\u043b\u0443\u0442\u0430");
        jComboBox2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));

        org.jdesktop.layout.GroupLayout jPanel6Layout = new org.jdesktop.layout.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel7)
                    .add(jLabel2)
                    .add(jLabel4)
                    .add(jLabel8))
                .add(17, 17, 17)
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel6Layout.createSequentialGroup()
                        .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jComboBox2, 0, 397, Short.MAX_VALUE)
                            .add(jLabel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 397, Short.MAX_VALUE))
                        .add(31, 31, 31)
                        .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                            .add(jLabel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jLabel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 58, Short.MAX_VALUE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(jTextField5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jTextField4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 80, Short.MAX_VALUE)))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jTextField7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 570, Short.MAX_VALUE)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 570, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel5)
                    .add(jLabel9))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel4)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel6)
                    .add(jComboBox2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel7)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(11, 11, 11)
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel8)
                    .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 360, Short.MAX_VALUE))
                    .add(jPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 77, Short.MAX_VALUE)
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(7, 7, 7)
                .add(jPanel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(13, 13, 13))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-736)/2, (screenSize.height-380)/2, 736, 380);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField7KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField7.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField7.setText(""); }
    }//GEN-LAST:event_jTextField7KeyPressed
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField6.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField6.setText(""); }
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField4.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField4.setText(""); }
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        myParent.printOrder();
    }//GEN-LAST:event_jButtonPrintActionPerformed
    
    private void jComboBox1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboBox1FocusLost
        fLost(jComboBox1);
    }//GEN-LAST:event_jComboBox1FocusLost
    
    private void jComboBox1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboBox1FocusGained
        fGain(jComboBox1);
    }//GEN-LAST:event_jComboBox1FocusGained
    
    private void jTextField8FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField8FocusLost
        if (this.isFromF7) ;
        else {
            if (myParent.getIdChosenPerson() > 0) {
                revalidatePerson();
            } else {
                if (jTextField8.getText().equals("")) ;
                else myParent.choosePerson(jTextField8.getText());
            }
        }
        fLost(jTextField8);
    }//GEN-LAST:event_jTextField8FocusLost
    
    private void jTextField4FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusLost
        fLost(jTextField4);
    }//GEN-LAST:event_jTextField4FocusLost
    
    private void jTextField6FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusLost
        fLost(jTextField6);
    }//GEN-LAST:event_jTextField6FocusLost
    
    private void jTextField6FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusGained
        fGain(jTextField6);
    }//GEN-LAST:event_jTextField6FocusGained
    
    private void jTextField7FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusLost
        fLost(jTextField7);
    }//GEN-LAST:event_jTextField7FocusLost
    
    private void jTextField7FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusGained
        fGain(jTextField7);
    }//GEN-LAST:event_jTextField7FocusGained
    
    private void jTextField8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField8KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField8.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) {
            this.isFromF7 = true;
            getPerson();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField8.setText(""); }
    }//GEN-LAST:event_jTextField8KeyPressed
    
    private void jTextField8FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField8FocusGained
        fGain(jTextField8);
    }//GEN-LAST:event_jTextField8FocusGained
    
    private void jTextField4FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusGained
        fGain(jTextField4);
        jTextField4.selectAll();
    }//GEN-LAST:event_jTextField4FocusGained
    
    private void jButtonCloseKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonCloseKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonClose.doClick(); }
    }//GEN-LAST:event_jButtonCloseKeyPressed
    
    private void jButtonSaveKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonSaveKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSave.doClick(); }
    }//GEN-LAST:event_jButtonSaveKeyPressed
    
    private void jButtonToEndKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonToEndKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonToEnd.doClick(); }
    }//GEN-LAST:event_jButtonToEndKeyPressed
    
    private void jButtonOneRowPKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonOneRowPKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonOneRowP.doClick(); }
    }//GEN-LAST:event_jButtonOneRowPKeyPressed
    
    private void jButtonOneRowMKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonOneRowMKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonOneRowM.doClick(); }
    }//GEN-LAST:event_jButtonOneRowMKeyPressed
    
    private void jButtonToBeginKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonToBeginKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonToBegin.doClick(); }
    }//GEN-LAST:event_jButtonToBeginKeyPressed
    
    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
        if (!areThereEmptyFields()) {
            saveRecord();
            this.isNewRecord = false;
            jButtonSave.setEnabled(false);
            jButtonPrint.setEnabled(true);
        } else {
            javax.swing.JOptionPane.showMessageDialog(null, "\u041F\u043E\u043B\u0435\u0442\u0430\u0442\u0430 \u0418\u043C\u0435, \u041A\u043E\u0434, \u0421\u0443\u043C\u0430 \u0438 \u041E\u0441\u043D\u043E\u0432\u0430\u043D\u0438\u0435 \u0441\u0430 \u0437\u0430\u0434\u044A\u043B\u0436\u0438\u0442\u0435\u043B\u043D\u0438! " +
                    "\u041C\u043E\u043B\u044F \u0437\u0430\u0434\u0430\u0439\u0442\u0435 \u0441\u0442\u043E\u0439\u043D\u043E\u0441\u0442 \u0437\u0430 \u0432\u0441\u044F\u043A\u043E \u043E\u0442 \u0442\u044F\u0445!",
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415", javax.swing.JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_jButtonSaveActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        closeForm();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    // gotoNext
    private void jButtonOneRowPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowPActionPerformed
        myParent.mOneRowPlus();
        if(myParent.isAtEnd()) {
            if (isNewRecord) {
                enableAllFieldsIsNew();
                jButtonSave.setEnabled(true);
                jButtonPrint.setEnabled(false);
                jButtonSave.repaint();
                jButtonPrint.repaint();
            }
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
    // gotoLast
    private void jButtonToEndActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToEndActionPerformed
        if (isNewRecord) {
            enableAllFieldsIsNew();
            jButtonSave.setEnabled(true);
            jButtonPrint.setEnabled(false);
        }
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
    // gotoPrev
    private void jButtonOneRowMActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowMActionPerformed
        disableAllFields();
        jButtonSave.setEnabled(false);
        jButtonPrint.setEnabled(true);
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
    // gotoFirst
    private void jButtonToBeginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToBeginActionPerformed
        disableAllFields();
        jButtonSave.setEnabled(false);
        jButtonPrint.setEnabled(true);
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
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonOneRowM;
    private javax.swing.JButton jButtonOneRowP;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonSave;
    private javax.swing.JButton jButtonToBegin;
    private javax.swing.JButton jButtonToEnd;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JComboBox jComboBox2;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
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
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    // End of variables declaration//GEN-END:variables
    
    private imakante.sales.FrmPayingOrders myParent;
    private String[] namesOrderTypes;
    private int selectedOrderType;
    private String[] namesRAccounts;
    private int selectedRAccount;
    private String buffPerson = "";
    private String buffCodeContragent = "";
    private String buffAmount = "";
    private String buffOsnovanie = "";
    private String buffPoiasnenie = "";
    private static boolean isFromF7 = false;
    private boolean isNewRecord = false;
    
    private void saveRecord() {
        try {
            myParent.setAmount(Double.parseDouble(jTextField4.getText()));
        } catch (NumberFormatException nfex) { nfex.printStackTrace(); }
        // Tip platejnoto narejdane = wnosna belejka - 1
        myParent.setIdOrderType(1);
        myParent.setIdBankAccount(myParent.getInternalObject().getOAIndexes()[jComboBox2.getSelectedIndex()]);
        myParent.setIdPerson(myParent.getIdChosenPerson());
        myParent.setIdContragent(0);
        myParent.setOsnovanie(jTextField6.getText());
        myParent.setPoiasnenie(jTextField7.getText());
        // Posledni prowerki na Person i Contragent
        myParent.setValuesFromPersonId(myParent.getIdChosenPerson());
        myParent.setValuesFromBankAccountId(myParent.getIdBankAccount());
        myParent.getInternalObject().updateRow(myParent.getId(),
                1,  // Physical person
                myParent.getIdOrderType(),      // 1 !!!
                myParent.getIdBankAccount(),
                myParent.getIdPerson(),
                myParent.getIdContragent(),     // 0 !!!
                myParent.getAmount(),
                myParent.getOsnovanie(),
                myParent.getPoiasnenie());
        myParent.refreshTable();
        myParent.getTable().changeSelection(myParent.getRow(), 2, false, false);
    }
    
    private boolean areThereEmptyFields() {
        if (jTextField4.getText().equals("") || jTextField4.getText().equals("0.00")) {
            jTextField4.requestFocus();
            return true;
        } else if (jTextField6.getText().equals("")) {
            jTextField6.requestFocus();
            return true;
        } else if (jTextField8.getText().equals("")) {
            jTextField8.requestFocus();
            return true;
        } else return false;
    }
    
    private void getNavigationState() {
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
    
    private void repaintComp() {
//        jComboBox1.setSelectedIndex(getNewOTIndex(myParent.getIdOrderType()));
        jComboBox1.setSelectedIndex(0); // TODO  ??? kak e prawilno???
        jTextField4.setText("" + myParent.getAmount());
        jTextField5.setText(myParent.getChosenCurrency());
        jTextField6.setText(myParent.getOsnovanie());
        jTextField7.setText(myParent.getPoiasnenie());
        jTextField8.setText(myParent.getNamePerson());
    }
    
    private void initOrderTypesCombo() {
        namesOrderTypes = myParent.getInternalObject().getTypesOfOreders();
        jComboBox1.addItem(new String(namesOrderTypes[0]));
        if(getSelectedOrderType() != 0) {
            setSelectedOrderType(getNewOTIndex(getSelectedOrderType()));
        }
    }
    
    private int getNewOTIndex(int oldindex) {
        int newindex = 0;
        for(int i = 0; i < myParent.getInternalObject().getOTIndexes().length; i++) {
            if(myParent.getInternalObject().getOTIndexes()[i] == oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
    private void getPerson() {
        myParent.choosePerson(jTextField8.getText());
    }
    
    private void revalidatePerson() {
        myParent.setValuesFromPersonId(myParent.getIdChosenPerson());
        this.jTextField8.setText(myParent.getNameChosenPerson());
    }
    
    private void initRAccountsCombo() {
        namesRAccounts = myParent.getInternalObject().getOurAccounts(1);    // 1 = wnosna belejka -> razpl. smetki
        for(int i = 0; i < namesRAccounts.length; i++)
            jComboBox2.addItem(new String(namesRAccounts[i]));
        if(getSelectedRAccount() != 0) {
            setSelectedRAccount(getNewRAIndex(getSelectedRAccount()));
        }
    }
    
    private int getNewRAIndex(int oldindex) {
        int newindex = 0;
        for(int i = 0; i < myParent.getInternalObject().getOAIndexes().length; i++) {
            if(myParent.getInternalObject().getOAIndexes()[i] == oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
    private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 255, 255), null));
    }
    
    public void windowOpened(java.awt.event.WindowEvent e) {
    }
    public void windowClosing(java.awt.event.WindowEvent e) {
        closeForm();
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
    
    public int getSelectedOrderType() {
        return selectedOrderType;
    }
    
    public void setSelectedOrderType(int selectedOrderType) {
        this.selectedOrderType = selectedOrderType;
    }
    
    public int getSelectedRAccount() {
        return selectedRAccount;
    }
    
    public void setSelectedRAccount(int selectedRAccount) {
        this.selectedRAccount = selectedRAccount;
    }
    
    public static void setIsFromF7() {
        isFromF7 = false;
    }
    
    public void changeField() {
        jTextField8.setText(myParent.getNameChosenPerson());
        jTextField8.repaint();
        jTextField5.setText(myParent.getChosenCurrency());
        jTextField5.repaint();
    }
    
    private void disableAllFields() {
        fillBuffers();
        jComboBox1.setEnabled(false);
        jTextField4.setEnabled(false);
        jTextField6.setEnabled(false);
        jTextField7.setEnabled(false);
        jTextField8.setEnabled(false);
    }
    
    private void enableAllFieldsIsNew() {
        jComboBox1.setEnabled(true);
        jTextField4.setEnabled(true);
        jTextField6.setEnabled(true);
        jTextField7.setEnabled(true);
        jTextField8.setEnabled(true);
        rememberChoices();
    }
    
    private void fillBuffers() {
        if (jTextField4.getText().equals("") || jTextField4.getText().equals("0.00")) {
            buffAmount = jTextField4.getText();
        } else if (jTextField6.getText().equals("")) {
            buffOsnovanie = jTextField6.getText();
        } else if (jTextField7.getText().equals("")) {
            buffPoiasnenie = jTextField7.getText();
        } else if (jTextField8.getText().equals("")) {
            buffPerson = jTextField8.getText();
        }
    }
    
    private void rememberChoices() {
        jComboBox1.setSelectedIndex(selectedOrderType);
        if (!buffCodeContragent.equals("")) {
            jTextField5.setText(myParent.getChosenCurrency());
        }
        jTextField4.setText(buffAmount);
        jTextField6.setText(buffOsnovanie);
        jTextField7.setText(buffPoiasnenie);
        jTextField8.setText(buffPerson);
    }
    
    private void closeForm() {
        if (this.isNewRecord) {
            myParent.setRow(myParent.getMaxRow());
            myParent.setId((Integer) myParent.getTable().getValueAt(myParent.getRow(), myParent.getColumnIndex("id")));
            myParent.getInternalObject().deleteRow(myParent.getId());
            myParent.resetFields();
        }
        this.dispose();
    }
    
}
