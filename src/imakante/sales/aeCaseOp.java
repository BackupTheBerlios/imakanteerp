
package imakante.sales;

public class aeCaseOp extends imakante.com.vcomponents.iDialog {
    
    public aeCaseOp(imakante.com.vcomponents.iInternalFrame frame, boolean modal) {
        super(frame, modal);
        this.myParent = (imakante.sales.FrmCaseOperation) frame;
        initComponents();
        getNavigationState();
        jButtonUndo.setEnabled(false);
        initComboCR();          // CR = CashRegister - kasa
        initComboM();
        initComboD();
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        dFields(myParent.isIsNew());
        repaintComp();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jLabel1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonUndo = new javax.swing.JButton();
        jbPrint = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jLabel3 = new javax.swing.JLabel();
        jComboCR = new javax.swing.JComboBox();
        jLabel6 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jComboM = new javax.swing.JComboBox();
        jLabel7 = new javax.swing.JLabel();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jComboD = new javax.swing.JComboBox();
        jLabel15 = new javax.swing.JLabel();
        jTextField7 = new javax.swing.JTextField();

        jLabel1.setText("jLabel1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0418\u0437\u043f\u0438\u0441\u0432\u0430\u043d\u0435 \u043d\u0430 \u041f\u0440\u0438\u0445\u043e\u0434\u0435\u043d \u043a\u0430\u0441\u043e\u0432 \u043e\u0440\u0434\u0435\u0440");
        jPanel1.setPreferredSize(new java.awt.Dimension(263, 33));
        jButtonSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButtonSave.setPreferredSize(new java.awt.Dimension(79, 25));
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

        jButtonUndo.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jButtonUndo.setPreferredSize(new java.awt.Dimension(87, 25));
        jButtonUndo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonUndoActionPerformed(evt);
            }
        });
        jButtonUndo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButtonUndoKeyPressed(evt);
            }
        });

        jPanel1.add(jButtonUndo);

        jbPrint.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Printer.png")));
        jbPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jbPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintActionPerformed(evt);
            }
        });
        jbPrint.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbPrintKeyPressed(evt);
            }
        });

        jPanel1.add(jbPrint);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButtonClose.setPreferredSize(new java.awt.Dimension(77, 25));
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
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jPanel3.setPreferredSize(new java.awt.Dimension(230, 70));
        jButtonToBegin.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation First 2.png")));
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

        jLabel2.setText("\u041d\u043e\u043c\u0435\u0440 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442:");

        jLabel5.setText("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440:");

        jTextField1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField1.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextField1.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextField1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField1FocusLost(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        jTextArea1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextArea1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextArea1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextArea1FocusLost(evt);
            }
        });

        jScrollPane1.setViewportView(jTextArea1);

        jLabel3.setText("\u041a\u0430\u0441\u0430:");

        jComboCR.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboCR.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jComboCRFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jComboCRFocusLost(evt);
            }
        });
        jComboCR.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboCRKeyPressed(evt);
            }
        });

        jLabel6.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442:");

        jTextField2.setBackground(new java.awt.Color(204, 204, 255));
        jTextField2.setToolTipText("F7 \u0432\u0430\u0434\u0438 \u0441\u043f\u0438\u0441\u044a\u043a \u0437\u0430 \u0438\u0437\u0431\u043e\u0440");
        jTextField2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField2.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextField2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField2FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField2FocusLost(evt);
            }
        });
        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        jTextField3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField3.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextField3.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextField3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField3FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField3FocusLost(evt);
            }
        });
        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        jLabel4.setText("\u0421\u0443\u043c\u0430:");

        jComboM.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboM.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jComboMFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jComboMFocusLost(evt);
            }
        });
        jComboM.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboMKeyPressed(evt);
            }
        });

        jLabel7.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jXDatePicker1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jXDatePicker1KeyPressed(evt);
            }
        });

        jLabel8.setText("\u0414\u0430\u0442\u0430:");

        jLabel9.setText("\u0421\u0443\u043c\u0430 \u043e\u0441\u043d. \u0432\u0430\u043b\u0443\u0442\u0430:");

        jTextField4.setBackground(new java.awt.Color(204, 204, 204));
        jTextField4.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        jTextField4.setEnabled(false);
        jTextField4.setInputVerifier(new imakante.com.InputDoubleVerifier());

        jLabel10.setText("\u0418\u0437\u0434\u0430\u043b:");

        jTextField5.setBackground(new java.awt.Color(204, 204, 204));
        jTextField5.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        jTextField5.setEnabled(false);

        jLabel11.setText("\u0421\u0432\u044a\u0440\u0437\u0430\u043d \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442:");

        jTextField6.setBackground(new java.awt.Color(204, 204, 255));
        jTextField6.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField6.setInputVerifier(new imakante.com.InputIntegerVerifier());
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

        jLabel12.setText("\u0412\u0438\u0434 \u043e\u0440\u0434\u0435\u0440:");

        jComboD.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboD.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jComboDFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jComboDFocusLost(evt);
            }
        });
        jComboD.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboDKeyPressed(evt);
            }
        });

        jLabel15.setText("\u041a\u0443\u0440\u0441:");

        jTextField7.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        jTextField7.setEnabled(false);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(29, 29, 29)
                        .add(jLabel2)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 197, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel6)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jTextField2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 200, Short.MAX_VALUE))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                        .add(17, 17, 17)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jLabel4)
                            .add(jLabel11)
                            .add(jLabel3)
                            .add(jLabel5)
                            .add(jLabel10)
                            .add(jLabel9))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTextField5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 469, Short.MAX_VALUE)
                            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 469, Short.MAX_VALUE)
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, jTextField4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 201, Short.MAX_VALUE)
                                    .add(jTextField3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 201, Short.MAX_VALUE)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, jComboCR, 0, 201, Short.MAX_VALUE)
                                    .add(jTextField6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 201, Short.MAX_VALUE))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                    .add(jLabel8)
                                    .add(jLabel15)
                                    .add(jLabel12)
                                    .add(jLabel7))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(jTextField7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 203, Short.MAX_VALUE)
                                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 203, Short.MAX_VALUE)
                                    .add(jComboM, 0, 203, Short.MAX_VALUE)
                                    .add(jComboD, 0, 203, Short.MAX_VALUE)))))
                    .add(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 579, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jLabel6)
                    .add(jTextField2)
                    .add(jTextField1))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel3)
                            .add(jLabel8)
                            .add(jComboCR)))
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(3, 3, 3)))
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(7, 7, 7)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jComboD)
                            .add(jLabel12)))
                    .add(jPanel2Layout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel11)
                            .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel4)
                        .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(org.jdesktop.layout.GroupLayout.BASELINE, jComboM, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 20, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.BASELINE, jLabel7))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel9)
                    .add(jTextField4)
                    .add(jLabel15)
                    .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel10)
                    .add(jTextField5))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel5)
                    .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 82, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 78, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(32, 32, 32))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-611)/2, (screenSize.height-422)/2, 611, 422);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextArea1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextArea1FocusLost
        fLost(jTextArea1);
    }//GEN-LAST:event_jTextArea1FocusLost
    
    private void jComboMFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboMFocusGained
        fGain(jComboM);
    }//GEN-LAST:event_jComboMFocusGained
    
    private void jComboDFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboDFocusLost
        fLost(jComboD);
    }//GEN-LAST:event_jComboDFocusLost
    
    private void jComboDFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboDFocusGained
        fGain(jComboD);
    }//GEN-LAST:event_jComboDFocusGained
    
    private void jTextField6FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusLost
        if (!isFromF7)
            manageKeyEvents(jTextField6);
        fLost(jTextField6);
    }//GEN-LAST:event_jTextField6FocusLost
    
    private void jComboCRFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboCRFocusLost
        fLost(jComboCR);
    }//GEN-LAST:event_jComboCRFocusLost
    
    private void jComboCRFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboCRFocusGained
        fGain(jComboCR);
    }//GEN-LAST:event_jComboCRFocusGained
    
    private void jTextField2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusLost
        if (!isFromF7)
            manageKeyEvents(jTextField2);
        fLost(jTextField2);
    }//GEN-LAST:event_jTextField2FocusLost
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        fLost(jTextField1);
    }//GEN-LAST:event_jTextField1FocusLost
    
    private void jComboMFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboMFocusLost
        fLost(jComboM);
        getExchangeRateFromDB();
    }//GEN-LAST:event_jComboMFocusLost
    
    private void jComboMKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboMKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jComboM.transferFocus(); }
    }//GEN-LAST:event_jComboMKeyPressed
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField3.transferFocus(); }
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jComboDKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboDKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jComboD.transferFocus();}
    }//GEN-LAST:event_jComboDKeyPressed
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER)
            jTextField6.transferFocus();
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) {
            this.isFromF7 = true;
            manageKeyEvents(this.jTextField6);
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField6.setText(""); }
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jXDatePicker1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jXDatePicker1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jXDatePicker1.transferFocus(); }
    }//GEN-LAST:event_jXDatePicker1KeyPressed
    
    private void jComboCRKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboCRKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jComboCR.transferFocus(); }
    }//GEN-LAST:event_jComboCRKeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER)
            jTextField2.transferFocus();
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) {
            this.isFromF7 = true;
            manageKeyEvents(this.jTextField2);
        }
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jTextField3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusLost
        fLost(jTextField3);
        revalidateSums();
    }//GEN-LAST:event_jTextField3FocusLost
    
    private void jbPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintActionPerformed
        loadReport();
    }//GEN-LAST:event_jbPrintActionPerformed
    
    private void jbPrintKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbPrintKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbPrint.doClick();}
    }//GEN-LAST:event_jbPrintKeyPressed
    
    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        fGain(jTextField1);
        jTextField1.selectAll();
    }//GEN-LAST:event_jTextField1FocusGained
    
    private void jTextField2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusGained
        fGain(jTextField2);
        jTextField2.selectAll();
    }//GEN-LAST:event_jTextField2FocusGained
    
    private void jTextField6FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusGained
        fGain(jTextField6);
        jTextField6.selectAll();
    }//GEN-LAST:event_jTextField6FocusGained
    
    private void jTextField3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusGained
        fGain(jTextField3);
        jTextField3.selectAll();
    }//GEN-LAST:event_jTextField3FocusGained
    
    private void jTextArea1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextArea1FocusGained
        fGain(jTextArea1);
        jTextArea1.selectAll();
    }//GEN-LAST:event_jTextArea1FocusGained
    
    private void jButtonCloseKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonCloseKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButtonClose.doClick();}
    }//GEN-LAST:event_jButtonCloseKeyPressed
    
    private void jButtonUndoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonUndoKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButtonUndo.doClick();}
    }//GEN-LAST:event_jButtonUndoKeyPressed
    
    private void jButtonSaveKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonSaveKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButtonSave.doClick();}
    }//GEN-LAST:event_jButtonSaveKeyPressed
    
    private void jButtonToEndKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonToEndKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButtonToEnd.doClick();}
    }//GEN-LAST:event_jButtonToEndKeyPressed
    
    private void jButtonOneRowPKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonOneRowPKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButtonOneRowP.doClick();}
    }//GEN-LAST:event_jButtonOneRowPKeyPressed
    
    private void jButtonOneRowMKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonOneRowMKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButtonOneRowM.doClick();}
    }//GEN-LAST:event_jButtonOneRowMKeyPressed
    
    private void jButtonToBeginKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonToBeginKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jButtonToBegin.doClick();}
    }//GEN-LAST:event_jButtonToBeginKeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jTextField1.transferFocus(); }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jButtonUndoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUndoActionPerformed
        undoCorr(); //vraja predishnite stoinosti
    }//GEN-LAST:event_jButtonUndoActionPerformed
    
    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
        saveRecord();
    }//GEN-LAST:event_jButtonSaveActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    // gotoNext
    private void jButtonOneRowPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowPActionPerformed
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
    // gotoLast
    private void jButtonToEndActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToEndActionPerformed
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
    private javax.swing.JButton jButtonSave;
    private javax.swing.JButton jButtonToBegin;
    private javax.swing.JButton jButtonToEnd;
    private javax.swing.JButton jButtonUndo;
    private javax.swing.JComboBox jComboCR;
    private javax.swing.JComboBox jComboD;
    private javax.swing.JComboBox jComboM;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel2;
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
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private javax.swing.JButton jbPrint;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private imakante.sales.FrmCaseOperation myParent;
    private String jasperFile = "/imakante/sales/jasper/inorder.jasper";
    private java.util.HashMap hm = null;
    private int NumDocument = 0;            // igrae rolqta na Code - getCode() ot dbObject
    private int Contragent = 0;
    private int selectedCashRegister;
    private String Date = "";
    private int RelatedDocument = 0;
    private int selectedDocument;
    private double AmountMoney = 0.00;
    private int selectedCurrency;
    private String Comment =  "";           // getComment() ot dbObject
    private String ContragentName = "";
    private double PrimaryCurrencyValue = 0.00;
    private double ExchangeRate = 0.00;
    private String UserMaster = "";             // getName() ot dbObject
    private String[] namesCR;
    private String[] namesM;
    private String[] namesD;
    java.text.SimpleDateFormat formatterP = new java.text.SimpleDateFormat("dd-MM-yyyy");
    java.text.SimpleDateFormat formatterG = new java.text.SimpleDateFormat("yyyy-MM-dd");
    private static boolean isFromF7 = false;
    
    private int buffCodeC = 0;
    private String buffNameC = "";
    private int idContragent = 0;
    private int codeContragent = 0;
    private String nameContragent = "";
    
    private int buffNumRD = 0;
    private String buffNameRD = "";
    private int idRelatedDocument = 0;
    private int numberRelatedDocument = 0;
    private String nameRelatedDocument = "";
    
    private String contragentsList =
            "SELECT nc.id_contragent, nc.code_contragent, nc.name_n_contragent " +
            "FROM n_contragent nc ";
    
    private String contragentById =
            "SELECT nc.code_contragent, nc.name_n_contragent FROM n_contragent nc " +
            "WHERE nc.id_contragent = ";
    
    private String relatedDocumentsList = 
            "SELECT d.id_df AS id, " +
            "td.name_ntd AS Document, " +
            "d.number_df AS ofNumber, " +
            "d.date_edition_df AS fromDate, " +
            "d.total_df AS Due, " +
            "IFNULL(@LIQ:=(SELECT SUM(sum_os_val_sl_mop) FROM sl_m_operation WHERE id_order_spec = d.id_df), 0) AS Liquidated, " +
            "IFNULL((d.total_df - @LIQ), 0) AS Remainder, " +
            "d.date_pay_df AS Term, " +
            "DATEDIFF(CURRENT_DATE, d.date_pay_df) AS Overdue " +
            "FROM sl_document_facade d " +
            "JOIN n_type_doc td ON td.code_ntd = d.type_df " +
            "WHERE d.out_contragent_df = ";
    
    private String relatedDocumentById = 
            "SELECT d.id_df, td.name_ntd, d.number_df " +
            "FROM sl_document_facade d " +
            "JOIN n_type_doc td ON td.code_ntd = d.type_df " +
            "WHERE d.id_df = ";
    
    //---------------END My Variables
    
    //---------------START My Methods
    
    //SAVE
    private void saveRecord() {
        myParent.setIn_outsl_mop(getIdContragent());
        this.revalidateSums();
        NumDocument = myParent.getCode();
        Contragent = myParent.getContragent_cod();
        selectedCashRegister = myParent.getIn_in_sl_mop();
        Date = myParent.getIn_DATE();
        RelatedDocument = myParent.getIn_id_order_spec();
        selectedDocument = myParent.getIn_id_order_doc();
        AmountMoney = myParent.getIn_sum_sl_mop();
        selectedCurrency = myParent.getIn_id_n_money();
        Comment = myParent.getComment();
        ContragentName = myParent.getContragent_name();
        PrimaryCurrencyValue = myParent.getIn_sum_os_val_sl_mop();
        ExchangeRate = myParent.getIn_exchange_rate();
        UserMaster = myParent.getUser_name();
        
        try {
            myParent.setCode(Integer.parseInt(jTextField1.getText()));
            myParent.setContragent_cod(Integer.parseInt(jTextField2.getText()));
            if(jTextField6.getText().equals(""))
                myParent.setIn_id_order_spec(-1);
            else 
                myParent.setIn_id_order_spec(getIdRelatedDocument());
        } catch (NumberFormatException nfex) { nfex.printStackTrace(); }
        
        myParent.setIn_in_sl_mop(myParent.getInternalObject().getIndexConnOfId()[jComboCR.getSelectedIndex()]);
        myParent.setIn_DATE((String)formatterG.format(this.jXDatePicker1.getDate()));
        myParent.setIn_id_order_doc(myParent.getInternalObject().getIndexDoc()[jComboD.getSelectedIndex()]);
        myParent.setIn_exchange_rate(Double.parseDouble(jTextField7.getText()));
        myParent.setIn_sum_sl_mop(Double.parseDouble(jTextField3.getText()));
        myParent.setIn_id_n_money(myParent.getInternalObject().getIndexMoney()[jComboM.getSelectedIndex()]);
        myParent.setComment(jTextArea1.getText());
        myParent.setIn_sum_os_val_sl_mop(Double.parseDouble(jTextField4.getText()));
        
        myParent.setIn_sum_os_val_sl_mop(Double.parseDouble(jTextField4.getText()));
        myParent.setUser_name(jTextField5.getText());
        
        myParent.getInternalObject().updateRow(
                myParent.getId(),myParent.getCode(),myParent.getIn_in_sl_mop(),
                myParent.getIn_outsl_mop(), myParent.getIn_id_order_spec(), 1,
                myParent.getIn_id_order_doc(), myParent.getIn_DATE(),
                myParent.getIn_id_n_money(), myParent.getIn_exchange_rate(),
                myParent.getIn_sum_sl_mop(), myParent.getIn_sum_os_val_sl_mop(),
                myParent.getIn_id_sdtn(), myParent.getComment()
                );
        
        myParent.refreshTable();
        myParent.getTable().changeSelection(myParent.getRow(), 2, false, false);
        jButtonUndo.setEnabled(true);
    }
    
    //UNDO
    private void undoCorr() {
        myParent.setCode(NumDocument);
        myParent.setContragent_cod(Contragent);
        myParent.setIn_in_sl_mop(selectedCashRegister);
        myParent.setIn_DATE(Date);
        myParent.setIn_id_order_spec(RelatedDocument);
        myParent.setIn_id_order_doc(selectedDocument);
        myParent.setIn_sum_sl_mop(AmountMoney);
        myParent.setIn_id_n_money(selectedCurrency);
        myParent.setComment(Comment);
        myParent.setContragent_name(ContragentName);
        myParent.setIn_sum_os_val_sl_mop(PrimaryCurrencyValue);
        myParent.setIn_exchange_rate(ExchangeRate);
        myParent.setUser_name(UserMaster);
        repaintComp();
        jButtonUndo.setEnabled(false);
    }
    
    // PRINT
    private void loadReport() {
        myParent.loadReport();
    }
    
    private void getNavigationState() {
        jButtonToBegin.setEnabled(true);
        jButtonOneRowM.setEnabled(true);
        jButtonToEnd.setEnabled(true);
        jButtonOneRowP.setEnabled(true);
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
        jTextField1.setText("" + myParent.getCode());
        jTextField2.setText("" + myParent.getContragent_cod());
        jTextField3.setText(""+ myParent.getIn_sum_sl_mop());
        jTextField4.setText(""+ myParent.getIn_sum_os_val_sl_mop());
        jTextField7.setText(""+ myParent.getIn_exchange_rate());
        jTextField5.setText(""+ myParent.getUser_name());
        try {
            this.jXDatePicker1.setDate((java.util.Date)formatterG.parse(myParent.getIn_DATE()));
        } catch (java.text.ParseException ex) { ex.printStackTrace(); }
        jComboCR.setSelectedIndex(getNewCashRegIndex(myParent.getIn_in_sl_mop()));
        jComboM.setSelectedIndex(getNewCurrencyIndex(myParent.getIn_id_n_money()));
        jComboD.setSelectedIndex(getNewDocumentIndex(myParent.getIn_id_order_doc()));
        jTextArea1.setText(myParent.getComment());
    }
    
    private void initComboCR() {
        namesCR = myParent.getInternalObject().getCasa();
        if (namesCR != null) {
            for(int i = 0; i < namesCR.length; i++) {
                jComboCR.addItem(new String(namesCR[i]));
            }
            if(selectedCashRegister != 0) {
                selectedCashRegister = getNewCashRegIndex(selectedCashRegister);
                jComboCR.setSelectedIndex(selectedCashRegister);
            }
        }
        if (namesCR == null) {
            jComboCR.addItem("ERROR!");
            this.jButtonSave.setEnabled(false);
        }
    }
    
    private int getNewCashRegIndex(int oldindex) {
        int newindex = 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexConnOfId().length; i++) {
            if(myParent.getInternalObject().getIndexConnOfId()[i] == oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
    private void initComboM() {
        namesM = myParent.getInternalObject().getMoney();
        if (namesM != null) {
            for(int i = 0; i < namesM.length; i++) {
                jComboM.addItem(new String(namesM[i]));
            }
            if(selectedCurrency != 0) {
                selectedCurrency = getNewCurrencyIndex(selectedCurrency);
                jComboM.setSelectedIndex(selectedCurrency);
            }
        }
        if(namesM == null){
            jComboM.addItem("ERROR!");
            this.jButtonSave.setEnabled(false);
        }
    }
    
    private int getNewCurrencyIndex(int oldindex) {
        int newindex = 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexMoney().length; i++) {
            if(myParent.getInternalObject().getIndexMoney()[i] == oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
    private void initComboD() {
        namesD = myParent.getInternalObject().getDoc();
        if (namesD != null) {
            for(int i = 0; i < namesD.length; i++) {
                jComboD.addItem(new String(namesD[i]));
            }
            if(selectedCurrency != 0) {
                selectedDocument = getNewDocumentIndex(selectedDocument);
                jComboD.setSelectedIndex(selectedDocument);
            }
        }
        if (namesD == null) {
            jComboD.addItem("ERROR!");
            this.jButtonSave.setEnabled(false);
        }
    }
    
    private int getNewDocumentIndex(int oldindex) {
        int newindex = 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexDoc().length; i++) {
            if(myParent.getInternalObject().getIndexDoc()[i] == oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
    private void getContragent() {
        myParent.CompNumber = 100;
        String filter;
        if (obtainInputType(this.jTextField2))
            filter = "WHERE nc.code_contragent LIKE '%";
        else
            filter = "WHERE nc.name_n_contragent LIKE '%";
        String contragents = contragentsList + filter + jTextField2.getText() + "%';";
        java.sql.ResultSet rsC;
        imakante.com.CustomTableModel modelC;
        imakante.com.CustomTable tableC;
        String[] names = { "id", "\u041A\u043E\u0434", "\u0418\u043C\u0435" };
        try {
            rsC = myParent.getStm().executeQuery(contragents);
            modelC = new imakante.com.CustomTableModel(myParent.getConn(), rsC, names);
            tableC = new imakante.com.CustomTable(modelC);
            HideColumns(tableC, getColumnIndex(tableC, "id"));
            tableC.setEditingRow(0);
            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(myParent, true, tableC,
                    "\u0418\u0437\u0431\u043E\u0440 \u043D\u0430 \u041A\u043E\u043D\u0442\u0440\u0430\u0433\u0435\u043D\u0442",
                    "", "\u041A\u043E\u0434");
            td.setVisible(true);
        } catch(java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    protected void getContragentByID(int ID) {
        String contragent = contragentById + ID + ";";
        try {
            java.sql.ResultSet rsC = myParent.getStm().executeQuery(contragent);
            rsC.next();
            setIdContragent(ID);
            setCodeContragent(rsC.getInt("code_contragent"));
            setNameContragent(rsC.getString("name_n_contragent"));
            buffCodeC = getCodeContragent();
            buffNameC = getNameContragent();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        jTextField2.setText("" + getCodeContragent() + " - " + getNameContragent());
    }
    
    private void getRelatedDocument() {
        myParent.CompNumber = 101;
        String relatedDocuments = relatedDocumentsList + getIdContragent() + ";";
        java.sql.ResultSet rsRD;
        imakante.com.CustomTableModel modelRD;
        imakante.com.CustomTable tableRD;
        String[] names = { "id", 
            "\u0414\u043E\u043A\u0443\u043C\u0435\u043D\u0442", 
            "\u041D\u043E\u043C\u0435\u0440",
            "\u041E\u0442 \u0434\u0430\u0442\u0430",
            "\u0414\u044A\u043B\u0436\u0438\u043C\u043E", 
            "\u0418\u0437\u043F\u043B\u0430\u0442\u0435\u043D\u043E",
            "\u041E\u0441\u0442\u0430\u0442\u044A\u043A",
            "\u0421\u0440\u043E\u043A", 
            "\u041F\u0440\u043E\u0441\u0440\u043E\u0447\u0435\u043D\u043E (\u0434\u043D\u0438)" };
        try {
            rsRD = myParent.getStm().executeQuery(relatedDocuments);
            modelRD = new imakante.com.CustomTableModel(myParent.getConn(), rsRD, names);
            tableRD = new imakante.com.CustomTable(modelRD);
            HideColumns(tableRD, getColumnIndex(tableRD, "id"));
            tableRD.setEditingRow(0);
            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(myParent, true, tableRD,
                    "\u0414\u043E\u043A\u0443\u043C\u0435\u043D\u0442\u0438 \u0441\u044A\u0441 " +
                    "\u0437\u0430\u0434\u044A\u043B\u0436\u0435\u043D\u0438\u044F \u043D\u0430 " + getNameContragent().toUpperCase(),
                    "", "\u041D\u043E\u043C\u0435\u0440");
            td.setVisible(true);
        } catch(java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    protected void getRelatedDocumentByID(int ID) {
        String relDoc = relatedDocumentById + ID + ";";
        try {
            java.sql.ResultSet rsRD = myParent.getStm().executeQuery(relDoc);
            rsRD.next();
            setIdRelatedDocument(ID);
            setNameRelatedDocument(rsRD.getString("name_ntd"));
            setNumberRelatedDocument(rsRD.getInt("number_df"));
            buffNameRD = getNameRelatedDocument();
            buffNumRD = getNumberRelatedDocument();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        jTextField6.setText(getNameRelatedDocument() + ": " + getNumberRelatedDocument());
    }
    
    private boolean obtainInputType(javax.swing.JTextField jtf) {
        int i = 0;
        try {
            i = Integer.parseInt(jtf.getText());
        } catch (NumberFormatException ex) { return false; }
        return true;
    }
    
    private void dFields(boolean isNew){
        if(isNew == false || myParent.getLevelPermition() < 2 ) {
            this.jTextField1.setEnabled(false);
            this.jTextField2.setEnabled(false);
            this.jTextField3.setEnabled(false);
            this.jTextField6.setEnabled(false);
            this.jComboCR.setEnabled(false);
            this.jComboD.setEnabled(false);
            this.jComboM.setEnabled(false);
            this.jXDatePicker1.setEnabled(false);
        }
    }
    
    private void revalidateSums(){
        double exch = 1;
        double sum = 1;
        double sumos = 1;
        try {
            exch = Double.parseDouble(this.jTextField7.getText());
        } catch (NumberFormatException ex) { ex.printStackTrace(); }
        try {
            sum = Double.parseDouble(this.jTextField3.getText());
        } catch (NumberFormatException ex) { ex.printStackTrace(); }
        sumos = exch * sum;
        this.jTextField4.setText("" + sumos);
    }
    
    private void getExchangeRateFromDB(){
        int money = this.jComboM.getSelectedIndex() + 1;
        if(money > 1){
            try {
                myParent.setRs(myParent.getStm().executeQuery("SELECT s.value_sl_exchange_rate FROM sl_exchange_rate s " +
                        "WHERE id_sl_exchange_rate = (SELECT MAX(id_sl_exchange_rate) FROM sl_exchange_rate WHERE id_n_money = " + money + " );"));
                while(myParent.getRs().next()){
                    this.jTextField7.setText("" + myParent.getRs().getDouble("value_sl_exchange_rate"));
                    revalidateSums();
                }
            } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        }
        if(money == 1){
            this.jTextField7.setText("1");
            revalidateSums();
        }
    }
    
    private void manageKeyEvents(javax.swing.JTextField jtf) {
        String entry = jtf.getText();
        if (jtf.equals(this.jTextField2)) { // Izbor na KONTRAGENT
            if (this.isFromF7) {
                getContragent();
            } else {
                if (entry.equals("")) {
                    if (this.buffCodeC == 0 || this.buffNameC.equals("")) {

                    } else {
//                        jtf.setText("" + getCodeContragent() + " - " + getNameContragent());
                    }
                } else {
                    if ((buffCodeC > 0 && entry.contains("" + buffCodeC)) || (!buffNameC.equals("") && entry.contains(buffNameC))) {
                        jtf.setText("" + getCodeContragent() + " - " + getNameContragent());
                    } else {
                        getContragent();
                    }
                }
            }
            jTextField2.transferFocus();
        } else if (jtf.equals(this.jTextField6)) {  // Izbor na SWYRZAN DOKUMENT
            if (this.isFromF7) {
                getRelatedDocument();
            } else {
                if (entry.equals("")) {
//                    myParent.setIn_id_order_spec(-1);
                } else {
                    if ((entry.contains(buffNameRD) && entry.contains("" + buffNumRD)) || (!buffNameRD.equals("") && entry.contains(buffNameRD))) {
                        jtf.setText(getNameRelatedDocument() + ": " + getNumberRelatedDocument());
                    } else {
                        getRelatedDocument();
                    }
                }
            }
            jTextField6.transferFocus();
        }
    }
    
    private int getColumnIndex(imakante.com.CustomTable tab, String in) {
        int count = tab.getColumnCount();
        for(int i = 0; i < count; i++) {
            if(tab.getColumnName(i).equals(in))
                return i;
        }
        return 0;
    }
    
    private void HideColumns(imakante.com.CustomTable tab, int col) {
        tab.getColumnModel().getColumn(col).setMaxWidth(0);
        tab.getColumnModel().getColumn(col).setMinWidth(0);
        tab.getTableHeader().getColumnModel().getColumn(col).setMaxWidth(0);
        tab.getTableHeader().getColumnModel().getColumn(col).setMinWidth(0);
    }
    
    private void fGain(javax.swing.JComponent jtf) {
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf) {
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 255, 255), null));
    }
    
    public static void setIsFromF7() {
        isFromF7 = false;
    }

    public int getIdContragent() {
        return idContragent;
    }

    public void setIdContragent(int idContragent) {
        this.idContragent = idContragent;
    }

    public int getCodeContragent() {
        return codeContragent;
    }

    public void setCodeContragent(int codeContragent) {
        this.codeContragent = codeContragent;
    }

    public String getNameContragent() {
        return nameContragent;
    }

    public void setNameContragent(String nameContragent) {
        this.nameContragent = nameContragent;
    }

    public int getIdRelatedDocument() {
        return idRelatedDocument;
    }

    public void setIdRelatedDocument(int idRelatedDocument) {
        this.idRelatedDocument = idRelatedDocument;
    }

    public int getNumberRelatedDocument() {
        return numberRelatedDocument;
    }

    public void setNumberRelatedDocument(int numberRelatedDocument) {
        this.numberRelatedDocument = numberRelatedDocument;
    }

    public String getNameRelatedDocument() {
        return nameRelatedDocument;
    }

    public void setNameRelatedDocument(String nameRelatedDocument) {
        this.nameRelatedDocument = nameRelatedDocument;
    }
    
}// end class
