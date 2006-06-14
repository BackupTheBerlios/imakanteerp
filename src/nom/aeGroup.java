
package nom;

public class aeGroup extends imakante.com.vcomponents.iDialog {
    
    public aeGroup(imakante.com.vcomponents.iInternalFrame frame, boolean modal, int selectComboBoxItem) {
        super(frame, modal);
        this.myParent = (FrmGroup) frame;
        initComponents();
        getNavigatiionState();
        jButtonUndo.setEnabled(false);
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        splitNamesOfAnLevel = myParent.getInternalObject().getAnLevelName();
        for(int i=0; i<splitNamesOfAnLevel.length; i++) {
            jComboAnLevel.addItem(new String(splitNamesOfAnLevel[i]));
        }
        if(selectComboBoxItem != 0) {
            selectComboBoxItem = getNewComboBoxIndex(selectComboBoxItem);
            jComboAnLevel.setSelectedIndex(selectComboBoxItem);
        }
        repaintComp();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonUndo = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextCod = new javax.swing.JTextField();
        jTextName = new javax.swing.JTextField();
        jComboAnLevel = new javax.swing.JComboBox();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
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

        jPanel1.add(jButtonUndo);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonClose);

        getContentPane().add(jPanel1, java.awt.BorderLayout.SOUTH);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(400, 300));
        jLabel1.setText("\u041a\u043e\u0434:");

        jLabel2.setText("\u0418\u043c\u0435:");

        jLabel3.setText("\u0410\u043d.\u043d\u0438\u0432\u0430:");

        jTextCod.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextCod.setPreferredSize(new java.awt.Dimension(45, 20));
        jTextCod.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextCod.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextCodFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextCodFocusLost(evt);
            }
        });
        jTextCod.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextCodKeyPressed(evt);
            }
        });

        jTextName.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextName.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextNameFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextNameFocusLost(evt);
            }
        });
        jTextName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextNameKeyPressed(evt);
            }
        });

        jComboAnLevel.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jComboAnLevel.setPreferredSize(new java.awt.Dimension(150, 22));
        jComboAnLevel.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jComboAnLevelFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jComboAnLevelFocusLost(evt);
            }
        });
        jComboAnLevel.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboAnLevelKeyPressed(evt);
            }
        });

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jPanel3.setPreferredSize(new java.awt.Dimension(290, 70));
        jButtonToBegin.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation First 2.png")));
        jButtonToBegin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToBeginActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonToBegin);

        jButtonOneRowM.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Left 2.png")));
        jButtonOneRowM.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowMActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonOneRowM);

        jButtonOneRowP.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Right 2.png")));
        jButtonOneRowP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowPActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonOneRowP);

        jButtonToEnd.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Last 2.png")));
        jButtonToEnd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToEndActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonToEnd);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jLabel1)
                            .add(jLabel2)
                            .add(jLabel3))
                        .add(9, 9, 9)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTextCod, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 108, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jComboAnLevel, 0, 288, Short.MAX_VALUE)
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jTextName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 288, Short.MAX_VALUE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED))))
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 340, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1)
                    .add(jTextCod, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(16, 16, 16)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jTextName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(18, 18, 18)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3)
                    .add(jComboAnLevel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(22, 22, 22)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 77, Short.MAX_VALUE)
                .add(19, 19, 19))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-374)/2, (screenSize.height-284)/2, 374, 284);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButtonSaveKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonSaveKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jButtonSave.doClick();
        }
    }//GEN-LAST:event_jButtonSaveKeyPressed
    
    private void jComboAnLevelKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboAnLevelKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jButtonSave.requestFocus();
        }
    }//GEN-LAST:event_jComboAnLevelKeyPressed
    
    private void jComboAnLevelFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboAnLevelFocusLost
        fLost(jComboAnLevel);
    }//GEN-LAST:event_jComboAnLevelFocusLost
    
    private void jComboAnLevelFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jComboAnLevelFocusGained
        fGain(jComboAnLevel);
    }//GEN-LAST:event_jComboAnLevelFocusGained
    
    private void jTextNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextNameKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextName.transferFocus();
        }
    }//GEN-LAST:event_jTextNameKeyPressed
    
    private void jTextNameFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextNameFocusLost
        fLost(jTextName);
    }//GEN-LAST:event_jTextNameFocusLost
    
    private void jTextNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextNameFocusGained
        fGain(jTextName);
    }//GEN-LAST:event_jTextNameFocusGained
    
    private void jTextCodKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextCodKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            jTextCod.transferFocus();
        }
    }//GEN-LAST:event_jTextCodKeyPressed
    
    private void jTextCodFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextCodFocusLost
        fLost(jTextCod);
    }//GEN-LAST:event_jTextCodFocusLost
    
    private void jTextCodFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextCodFocusGained
        fGain(jTextCod);
    }//GEN-LAST:event_jTextCodFocusGained
    
    private void jButtonUndoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUndoActionPerformed
        myParent.setNames(oldName);
        myParent.setCode(oldCode);
        myParent.setAnID(oldAnLevel);
        repaintComp();
        jButtonUndo.setEnabled(false);
    }//GEN-LAST:event_jButtonUndoActionPerformed
    
    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
        oldName = myParent.getNames(); //    \
        oldCode = myParent.getCode();    //     > za vyztanovqvane na starite stoinosti
        oldAnLevel = myParent.getAnID();//   /
        myParent.setCode(Integer.parseInt(jTextCod.getText()));
        myParent.setNames(jTextName.getText());
// ustanovqvame AnID 4rez masiva za vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata
        myParent.setAnID(myParent.getInternalObject().getIndexConnOfId() [jComboAnLevel.getSelectedIndex()]);
        myParent.getInternalObject().updateRow(myParent.getId(), myParent.getNom(),
                myParent.getCode(), myParent.getNames(), myParent.getAnID());
        myParent.refreshTable();
        myParent.getTable().changeSelection(myParent.getRow(), 2, false, false);
        jButtonUndo.setEnabled(true);
    }//GEN-LAST:event_jButtonSaveActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
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
    private javax.swing.JComboBox jComboAnLevel;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextField jTextCod;
    private javax.swing.JTextField jTextName;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private nom.FrmGroup myParent;
    private String splitNamesOfAnLevel[];
    private int selectComboBoxItem;
    private int oldAnLevel;
    private String oldName = "";
    private int oldCode = 0;
    //---------------END My Variables
    
    //---------------START MyFunction
    private void getNavigatiionState() {
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
        jTextCod.setText("" + myParent.getCode());
        jTextName.setText(myParent.getNames());
        //jTextCod.repaint();
        // jTextName.repaint();
        jComboAnLevel.setSelectedIndex(getNewComboBoxIndex(myParent.getAnID()));
        
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
    private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 255, 255), null));
    }
}// end class
