
package imakante.sales;

public class aeCaseOp extends imakante.com.vcomponents.iDialog {
    
    public aeCaseOp(imakante.com.vcomponents.iInternalFrame frame, boolean modal) {
        super(frame, modal);
        this.myParent = (imakante.sales.FrmCaseOperation) frame;
        initComponents();
        getNavigationState();
        jButtonUndo.setEnabled(false);
        initComboK();
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
        jLabel5 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jLabel3 = new javax.swing.JLabel();
        jComboK = new javax.swing.JComboBox();
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

        jLabel1.setText("jLabel1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441 \u043d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430 \u041a\u0430\u0441\u0438");
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
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder("\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
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

        jTextField1.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextField1.addFocusListener(new java.awt.event.FocusAdapter() {
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
        jScrollPane1.setViewportView(jTextArea1);

        jLabel3.setText("\u041a\u0430\u0441\u0430:");

        jLabel6.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442:");

        jTextField3.setInputVerifier(new imakante.com.InputDoubleVerifier());

        jLabel4.setText("\u0421\u0443\u043c\u0430:");

        jLabel7.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jLabel8.setText("\u0414\u0430\u0442\u0430:");

        jLabel9.setText("\u0421\u0443\u043c\u0430 \u043e\u0441\u043d. \u0432\u0430\u043b\u0443\u0442\u0430:");

        jTextField4.setBackground(new java.awt.Color(204, 204, 204));
        jTextField4.setEnabled(false);

        jLabel10.setText("\u0418\u0437\u0434\u0430\u043b:");

        jTextField5.setBackground(new java.awt.Color(204, 204, 204));
        jTextField5.setEnabled(false);

        jLabel11.setText("\u0421\u0432\u044a\u0440\u0437\u0430\u043d \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442:");

        jLabel12.setText("\u0412\u0438\u0434 \u043e\u0440\u0434\u0435\u0440:");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 512, Short.MAX_VALUE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jLabel5)
                            .add(jLabel10)
                            .add(jLabel4)
                            .add(jLabel3)
                            .add(jLabel9)
                            .add(jLabel2)
                            .add(jLabel11))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 409, Short.MAX_VALUE)
                            .add(jTextField5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 409, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(jTextField4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 164, Short.MAX_VALUE)
                                    .add(jComboK, 0, 164, Short.MAX_VALUE)
                                    .add(jTextField3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 164, Short.MAX_VALUE)
                                    .add(jTextField6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 164, Short.MAX_VALUE)
                                    .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 164, Short.MAX_VALUE))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                    .add(jPanel2Layout.createSequentialGroup()
                                        .add(7, 7, 7)
                                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                            .add(jLabel8)
                                            .add(jLabel6))
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED))
                                    .add(jLabel12)
                                    .add(jPanel2Layout.createSequentialGroup()
                                        .add(jLabel7)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)))
                                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(jComboM, 0, 170, Short.MAX_VALUE)
                                    .add(jComboD, 0, 170, Short.MAX_VALUE)
                                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 170, Short.MAX_VALUE)
                                    .add(jTextField2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 170, Short.MAX_VALUE))))))
                .add(104, 104, 104))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jLabel6)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jLabel3)
                        .add(jComboK, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel8))
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(4, 4, 4)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel11)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jComboD, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel12))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel4)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jComboM, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel7))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel9)
                    .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel10)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel5)
                    .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(14, 14, 14)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(65, 65, 65))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-638)/2, (screenSize.height-402)/2, 638, 402);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        cfFocus();
    }//GEN-LAST:event_jTextField1FocusLost
    
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
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ cfFocus(); }
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
    
    private void cfFocus() {
        if(cFields()) {
            jTextField1.transferFocus();
        } else {
            jTextField1.requestFocus();
        }
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonOneRowM;
    private javax.swing.JButton jButtonOneRowP;
    private javax.swing.JButton jButtonSave;
    private javax.swing.JButton jButtonToBegin;
    private javax.swing.JButton jButtonToEnd;
    private javax.swing.JButton jButtonUndo;
    private javax.swing.JComboBox jComboD;
    private javax.swing.JComboBox jComboK;
    private javax.swing.JComboBox jComboM;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
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
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private imakante.sales.FrmCaseOperation myParent;
    private int oldIDG = 0;
    private int oldCod = 0;
    private String oldName = "";
    private String oldComment =  "";
    private String namesK[];
    private int selectComboBoxKasa;
    private int selectComboBoxMoney;
    private int selectComboBoxDoc;
    private String[] namesM;

    private String[] namesD;

  
    
    //---------------END My Variables
    
    //---------------START My Methods
    
    //Proverka na poletata
    private boolean cFields() { // V sluchaia samo na edno pole dali e integer
        boolean check  = true;     // v bazata
        int i = 0;
        try {
            i = Integer.parseInt(jTextField1.getText()); // proverka za int
            jTextField1.setBackground(new java.awt.Color(255,255,255));
        } catch (NumberFormatException nfex) {
            check = false;
            jTextField1.setBackground(new java.awt.Color(255,204,204));
            nfex.printStackTrace();
        }
        return check;
    }
    
    //SAVE
    private void saveRecord() {
        if(cFields()){
            oldIDG = myParent.getIDG();
            oldCod = myParent.getCod();
            oldName = myParent.getNames();
            oldComment = myParent.getComment();
            try {
                myParent.setCod(Integer.parseInt(jTextField1.getText()));
            } catch (NumberFormatException nfex) {
                nfex.printStackTrace();
            }
            myParent.setNames(jTextField3.getText());
            myParent.setComment(jTextArea1.getText());
            myParent.setIDG(myParent.getInternalObject().getIndexConnOfId()[jComboK.getSelectedIndex()]);
            myParent.getInternalObject().updateRow(myParent.getId(), myParent.getIDG(),myParent.getCod(),
                    myParent.getNames(), myParent.getComment());
            myParent.refreshTable();
            myParent.getTable().changeSelection(myParent.getRow(),2,false,false);
            jButtonUndo.setEnabled(true);}
    }
    
    //UNDO
    private void undoCorr() {
        myParent.setIDG(oldIDG);
        myParent.setCod(oldCod);
        myParent.setNames(oldName);
        myParent.setComment(oldComment);
        repaintComp();
        jButtonUndo.setEnabled(false);
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
        jTextField1.setText(""+myParent.getCod());
        jTextField3.setText(myParent.getNames());
        jTextArea1.setText(myParent.getComment());
        jComboK.setSelectedIndex(getNewComboBoxIndex(myParent.getIDG()));
    }
    
    private void initComboK() {
        namesK = myParent.getInternalObject().getCasa();
        for(int i=0;i<namesK.length;i++) {
            jComboK.addItem(new String(namesK[i]));
            
        }
        
        if(selectComboBoxKasa != 0) {
            
            selectComboBoxKasa = getNewComboBoxIndex(selectComboBoxKasa);
            
            jComboK.setSelectedIndex(selectComboBoxKasa);
        }
        
    }
    
    private int getNewComboBoxIndex(int oldindex) {
        int newindex= 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexConnOfId().length; i++) {
            if(myParent.getInternalObject().getIndexConnOfId()[i]==oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
   private void initComboM() {
        namesM = myParent.getInternalObject().getMoney();
        for(int i=0;i<namesM.length;i++) {
            jComboM.addItem(new String(namesK[i]));
            
        }
        
        if(selectComboBoxMoney != 0) {
            
            selectComboBoxMoney = getNewComboBoxIndexMoney(selectComboBoxMoney);
            
            jComboM.setSelectedIndex(selectComboBoxMoney);
        }
        
    }
    
    private int getNewComboBoxIndexMoney(int oldindex) {
        int newindex= 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexMoney().length; i++) {
            if(myParent.getInternalObject().getIndexMoney()[i]==oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
     private void initComboD() {
        namesD = myParent.getInternalObject().getDoc();
        for(int i=0;i<namesD.length;i++) {
            jComboD.addItem(new String(namesD[i]));
            
        }
        
        if(selectComboBoxDoc != 0) {
            
            selectComboBoxDoc = getNewComboBoxIndexDoc(selectComboBoxDoc);
            
            jComboM.setSelectedIndex(selectComboBoxDoc);
        }
        
    }
    
    private int getNewComboBoxIndexDoc(int oldindex) {
        int newindex= 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexDoc().length; i++) {
            if(myParent.getInternalObject().getIndexDoc()[i]==oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    
}// end class
