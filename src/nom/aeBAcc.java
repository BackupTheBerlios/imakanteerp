
package nom;

public class aeBAcc extends imakante.com.vcomponents.iDialog {
    
    public aeBAcc(imakante.com.vcomponents.iInternalFrame frame, boolean modal) {
        super(frame, modal);
        this.myParent = (nom.FrmBankAccounts) frame;
        initComponents();
        getNavigationState();
        jButtonUndo.setEnabled(false);
        initCombo();
        initTypeAccountCombo();
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        repaintComp();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jLabel1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonUndo = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jLabel3 = new javax.swing.JLabel();
        jComboG = new javax.swing.JComboBox();
        jLabel6 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jComboT = new javax.swing.JComboBox();
        jLabel8 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        jTextField7 = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();

        jLabel1.setText("jLabel1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u0431\u0430\u043d\u043a\u043e\u0432\u0430 \u0441\u043c\u0435\u0442\u043a\u0430");
        setResizable(false);
        jPanel1.setPreferredSize(new java.awt.Dimension(263, 33));
        jButtonSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
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

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
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

        jLabel2.setText("\u041a\u043e\u0434:");

        jLabel4.setText("\u0418\u043c\u0435:");

        jLabel5.setText("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440:");

        jTextField1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
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

        jTextField3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
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
        jTextArea1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextArea1KeyPressed(evt);
            }
        });

        jScrollPane1.setViewportView(jTextArea1);

        jLabel3.setText("\u0413\u0440\u0443\u043f\u0430:");

        jComboG.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboG.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jComboGFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jComboGFocusLost(evt);
            }
        });
        jComboG.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboGKeyPressed(evt);
            }
        });

        jLabel6.setText("\u0421\u043c\u0435\u0442\u043a\u0430 (IBAN):");

        jTextField2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
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

        jLabel7.setText("\u0412\u0438\u0434:");

        jComboT.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboT.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jComboTFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jComboTFocusLost(evt);
            }
        });

        jLabel8.setText("\u0410\u0434\u0440\u0435\u0441:");

        jTextField4.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
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

        jLabel9.setText("\u0411\u0430\u043d\u043a\u043e\u0432 \u043a\u043e\u0434 (BIC):");

        jTextField5.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField5.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField5FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField5FocusLost(evt);
            }
        });
        jTextField5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField5KeyPressed(evt);
            }
        });

        jLabel10.setText("\u041a\u043e\u0434 \u0432\u0430\u043b\u0443\u0442\u0430:");

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

        jLabel11.setText("\u041a\u043b\u043e\u043d:");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(66, 66, 66)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jLabel3)
                            .add(jLabel4)
                            .add(jLabel2))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTextField3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 395, Short.MAX_VALUE)
                            .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                .add(org.jdesktop.layout.GroupLayout.LEADING, jTextField1)
                                .add(org.jdesktop.layout.GroupLayout.LEADING, jComboG, 0, 211, Short.MAX_VALUE))))
                    .add(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(37, 37, 37)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                    .add(jLabel5)
                                    .add(jLabel7))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(jComboT, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 204, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 395, Short.MAX_VALUE)))
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(jPanel2Layout.createSequentialGroup()
                                        .add(27, 27, 27)
                                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                            .add(jLabel8)
                                            .add(jLabel10)))
                                    .add(jLabel9))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(jTextField6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 395, Short.MAX_VALUE)
                                    .add(jTextField4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 395, Short.MAX_VALUE)
                                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 209, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(14, 14, 14)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                    .add(jLabel6)
                                    .add(jLabel11))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(jTextField7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 395, Short.MAX_VALUE)
                                    .add(jTextField2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 395, Short.MAX_VALUE)))))
                    .add(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 489, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jComboG, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel2))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel4))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel11))
                .add(5, 5, 5)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel6))
                .add(8, 8, 8)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel9))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel10))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel8))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jComboT, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel7))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel5))
                .add(17, 17, 17)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 84, Short.MAX_VALUE)
                .add(21, 21, 21))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-521)/2, (screenSize.height-491)/2, 521, 491);
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField7FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusGained
        fGain(jTextField7);
        jTextField7.selectAll();
    }//GEN-LAST:event_jTextField7FocusGained

    private void jTextField7FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusLost
        fLost(jTextField7);
    }//GEN-LAST:event_jTextField7FocusLost

    private void jTextField7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField7KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField7.transferFocus(); }
    }//GEN-LAST:event_jTextField7KeyPressed
    
    private void jTextArea1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextArea1FocusLost
        fLost(jTextArea1);
    }//GEN-LAST:event_jTextArea1FocusLost
    
    private void jComboTFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboTFocusLost
        fLost(jComboT);
    }//GEN-LAST:event_jComboTFocusLost
    
    private void jComboTFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboTFocusGained
        fGain(jComboT);
    }//GEN-LAST:event_jComboTFocusGained
    
    private void jTextField4FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusLost
        fLost(jTextField4);
    }//GEN-LAST:event_jTextField4FocusLost
    
    private void jTextField6FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusLost
        fLost(jTextField6);
    }//GEN-LAST:event_jTextField6FocusLost
    
    private void jTextField5FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusLost
        fLost(jTextField5);
    }//GEN-LAST:event_jTextField5FocusLost
    
    private void jTextField2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusLost
        fLost(jTextField2);
    }//GEN-LAST:event_jTextField2FocusLost
    
    private void jTextField3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusLost
        fLost(jTextField3);
    }//GEN-LAST:event_jTextField3FocusLost
    
    private void jComboGFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboGFocusLost
        fLost(jComboG);
    }//GEN-LAST:event_jComboGFocusLost
    
    private void jComboGFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboGFocusGained
        fGain(jComboG);
    }//GEN-LAST:event_jComboGFocusGained
    
    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        fGain(jTextField1);
        jTextField1.selectAll();
    }//GEN-LAST:event_jTextField1FocusGained
    
    private void jTextField3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusGained
        fGain(jTextField3);
        jTextField3.selectAll();
    }//GEN-LAST:event_jTextField3FocusGained
    
    private void jTextField2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusGained
        fGain(jTextField2);
        jTextField2.selectAll();
    }//GEN-LAST:event_jTextField2FocusGained
    
    private void jTextField5FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusGained
        fGain(jTextField5);
        jTextField5.selectAll();
    }//GEN-LAST:event_jTextField5FocusGained
    
    private void jTextField6FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusGained
        fGain(jTextField6);
        jTextField6.selectAll();
    }//GEN-LAST:event_jTextField6FocusGained
    
    private void jTextField4FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusGained
        fGain(jTextField4);
        jTextField4.selectAll();
    }//GEN-LAST:event_jTextField4FocusGained
    
    private void jTextArea1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextArea1FocusGained
        fGain(jTextArea1);
        jTextArea1.selectAll();
    }//GEN-LAST:event_jTextArea1FocusGained
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField4.transferFocus(); }
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField6.transferFocus(); }
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jTextField5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField5KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField5.transferFocus(); }
    }//GEN-LAST:event_jTextField5KeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField2.transferFocus(); }
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jTextArea1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextArea1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSave.doClick(); saveRecord(); }
    }//GEN-LAST:event_jTextArea1KeyPressed
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        fLost(jTextField1);
    }//GEN-LAST:event_jTextField1FocusLost
    
    private void jButtonCloseKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonCloseKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonClose.doClick(); }
    }//GEN-LAST:event_jButtonCloseKeyPressed
    
    private void jButtonUndoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonUndoKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonUndo.doClick(); }
    }//GEN-LAST:event_jButtonUndoKeyPressed
    
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
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField3.transferFocus(); }
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jComboGKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboGKeyPressed
        
    }//GEN-LAST:event_jComboGKeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField1.transferFocus(); }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jButtonUndoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUndoActionPerformed
        undoCorr();
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
    private javax.swing.JComboBox jComboG;
    private javax.swing.JComboBox jComboT;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
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
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private nom.FrmBankAccounts myParent;
    private int oldIDG = 1;
    private int oldCod = 0;
    private String oldName = "";
    private String oldBranch = "";
    private String oldBAccount = "";
    private String oldBIC = "";
    private String oldVidval = "";
    private String oldAddress = "";
    private String oldComment =  "";
    private String namesG[];
    private String namesT[];
    private int selectComboBoxItem;
    private int selectComboTItem;
    
    //---------------END My Variables
    
    //---------------START My Methods
    
    //SAVE
    private void saveRecord() {
        oldCod = myParent.getCod();
        oldName = myParent.getNames();
        oldBranch = myParent.getBranch();
        oldComment = myParent.getComment();
        try {
            myParent.setCod(Integer.parseInt(jTextField1.getText()));
        } catch (NumberFormatException nfex) { nfex.printStackTrace(); }
        myParent.setIDG(myParent.getInternalObject().getIndexConnOfId()[jComboG.getSelectedIndex()]);
        myParent.setNames(jTextField3.getText());
        myParent.setBranch(jTextField7.getText());
        myParent.setBankAccount(jTextField2.getText());
        myParent.setBIC(jTextField5.getText());
        myParent.setVidval(jTextField6.getText());
        myParent.setAddress(jTextField4.getText());
        myParent.setTypeBankAccount(myParent.getInternalObject().getIndexOfTypes()[jComboT.getSelectedIndex()]);
        myParent.setComment(jTextArea1.getText());
        myParent.getInternalObject().updateRow(myParent.getId(), myParent.getIDG(), myParent.getCod(), myParent.getNames(), 
                myParent.getBranch(), myParent.getBankAccount(), myParent.getBIC(), myParent.getVidval(),
                myParent.getAddress(), myParent.getTypeBankAccount(), myParent.getComment());
        myParent.refreshTable();
        myParent.getTable().changeSelection(myParent.getRow(), 2, false, false);
        jButtonUndo.setEnabled(true);
    }
    
    //UNDO
    private void undoCorr() {
        myParent.setIDG(oldIDG);
        myParent.setCod(oldCod);
        myParent.setNames(oldName);
        myParent.setBranch(oldBranch);
        myParent.setBankAccount(oldBAccount);
        myParent.setBIC(oldBIC);
        myParent.setVidval(oldVidval);
        myParent.setAddress(oldAddress);
        myParent.setComment(oldComment);
        repaintComp();
        jButtonUndo.setEnabled(false);
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
        jComboG.setSelectedIndex(getNewComboBoxIndex(myParent.getIDG()));
        jTextField1.setText("" + myParent.getCod());
        jTextField3.setText(myParent.getNames());
        jTextField7.setText(myParent.getBranch());
        jTextField2.setText(myParent.getBankAccount());
        jTextField5.setText(myParent.getBIC());
        jTextField6.setText(myParent.getVidval());
        jTextField4.setText(myParent.getAddress());
        jComboT.setSelectedIndex(getNewTypeAccComboIndex(myParent.getTypeBankAccount()));
        jTextArea1.setText(myParent.getComment());
    }
    
    private void initCombo() {
        namesG = myParent.getInternalObject().getBankAccountGroup();
        for(int i = 0; i < namesG.length; i++) {
            jComboG.addItem(new String(namesG[i]));
        }
        if(selectComboBoxItem != 0) {
            selectComboBoxItem = getNewComboBoxIndex(selectComboBoxItem);
            jComboG.setSelectedIndex(selectComboBoxItem);
        }
    }
    
    private int getNewComboBoxIndex(int oldindex) {
        int newindex = 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexConnOfId().length; i++) {
            if(myParent.getInternalObject().getIndexConnOfId()[i] == oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
    private void initTypeAccountCombo() {
        namesT = myParent.getInternalObject().getTypeBankAccounts();
        for(int i = 0; i < namesT.length; i++) {
            jComboT.addItem(new String(namesT[i]));
        }
        if(selectComboTItem != 0) {
            selectComboTItem = getNewTypeAccComboIndex(selectComboTItem);
            jComboT.setSelectedIndex(selectComboTItem);
        }
    }
    
    private int getNewTypeAccComboIndex(int originalTAIndex) {
        int newIndex = 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexOfTypes().length; i++) {
            if(myParent.getInternalObject().getIndexOfTypes()[i] == originalTAIndex) {
                newIndex = i;
                break;
            }
        }
        return newIndex;
    }
    
    private void fGain(javax.swing.JComponent jtf) {
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, 
                new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf) {
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, 
                new java.awt.Color(255, 255, 255), null));
    }
    
}// end class
