
package imakante.sales;

public class aeExchangeRate extends imakante.com.vcomponents.iDialog {
    
    public aeExchangeRate(imakante.com.vcomponents.iInternalFrame parent, boolean modal) {
        super(parent, modal);
        this.myParent = (imakante.sales.FrmExchangeRate) parent;
        initComponents();
        getNavigationState();
        jbUndo.setEnabled(false);
        initCombo();
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        repaintComp();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpData = new javax.swing.JPanel();
        jpMovement = new javax.swing.JPanel();
        jbFirst = new javax.swing.JButton();
        jbPrevious = new javax.swing.JButton();
        jbNext = new javax.swing.JButton();
        jbLast = new javax.swing.JButton();
        jlDate = new javax.swing.JLabel();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jlCurrency = new javax.swing.JLabel();
        jcbCurrency = new javax.swing.JComboBox();
        jlRate = new javax.swing.JLabel();
        jtfRate = new javax.swing.JTextField();
        jpControls = new javax.swing.JPanel();
        jbSave = new javax.swing.JButton();
        jbUndo = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0412\u0430\u043b\u0443\u0442\u0435\u043d \u043a\u0443\u0440\u0441");
        jpData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpMovement.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jbFirst.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation First 2.png")));
        jbFirst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbFirstActionPerformed(evt);
            }
        });
        jbFirst.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbFirstKeyPressed(evt);
            }
        });

        jpMovement.add(jbFirst);

        jbPrevious.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Left 2.png")));
        jbPrevious.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPreviousActionPerformed(evt);
            }
        });
        jbPrevious.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbPreviousKeyPressed(evt);
            }
        });

        jpMovement.add(jbPrevious);

        jbNext.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Right 2.png")));
        jbNext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNextActionPerformed(evt);
            }
        });
        jbNext.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbNextKeyPressed(evt);
            }
        });

        jpMovement.add(jbNext);

        jbLast.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Navigation Last 2.png")));
        jbLast.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbLastActionPerformed(evt);
            }
        });
        jbLast.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbLastKeyPressed(evt);
            }
        });

        jpMovement.add(jbLast);

        jlDate.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jlDate.setText("\u0414\u0430\u0442\u0430:");

        jlCurrency.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jlCurrency.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jcbCurrency.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jcbCurrencyFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jcbCurrencyFocusLost(evt);
            }
        });

        jlRate.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jlRate.setText("\u041a\u0443\u0440\u0441:");

        jtfRate.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jtfRate.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfRateFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfRateFocusLost(evt);
            }
        });
        jtfRate.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfRateKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jpDataLayout = new org.jdesktop.layout.GroupLayout(jpData);
        jpData.setLayout(jpDataLayout);
        jpDataLayout.setHorizontalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jpDataLayout.createSequentialGroup()
                .addContainerGap()
                .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(11, Short.MAX_VALUE))
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                .addContainerGap(46, Short.MAX_VALUE)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jlRate)
                    .add(jlCurrency)
                    .add(jlDate))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jcbCurrency, 0, 194, Short.MAX_VALUE)
                    .add(jtfRate))
                .add(42, 42, 42))
        );

        jpDataLayout.linkSize(new java.awt.Component[] {jlCurrency, jlDate, jlRate}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        jpDataLayout.setVerticalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jpDataLayout.createSequentialGroup()
                .add(29, 29, 29)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jlDate)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(20, 20, 20)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlCurrency)
                    .add(jcbCurrency, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(22, 22, 22)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jlRate)
                    .add(jtfRate, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(21, 21, 21)
                .add(jpMovement, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        getContentPane().add(jpData, java.awt.BorderLayout.CENTER);

        jbSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jbSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbSaveActionPerformed(evt);
            }
        });
        jbSave.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbSaveKeyPressed(evt);
            }
        });

        jpControls.add(jbSave);

        jbUndo.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jbUndo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbUndoActionPerformed(evt);
            }
        });
        jbUndo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbUndoKeyPressed(evt);
            }
        });

        jpControls.add(jbUndo);

        jbClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jbClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbCloseActionPerformed(evt);
            }
        });
        jbClose.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbCloseKeyPressed(evt);
            }
        });

        jpControls.add(jbClose);

        getContentPane().add(jpControls, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jtfRateFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfRateFocusGained
        fGain(jtfRate);
    }//GEN-LAST:event_jtfRateFocusGained

    private void jcbCurrencyFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jcbCurrencyFocusLost
        fLost(jcbCurrency);
    }//GEN-LAST:event_jcbCurrencyFocusLost

    private void jcbCurrencyFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jcbCurrencyFocusGained
        fGain(jcbCurrency);
    }//GEN-LAST:event_jcbCurrencyFocusGained
            
    private void jtfRateFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfRateFocusLost
//        jtfRate.setInputVerifier(new imakante.com.InputDoubleVerifier());
    }//GEN-LAST:event_jtfRateFocusLost
    
    private void jtfRateKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfRateKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbSave.doClick(); }
    }//GEN-LAST:event_jtfRateKeyPressed
    
    private void jbFirstKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbFirstKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbFirst.doClick(); }
    }//GEN-LAST:event_jbFirstKeyPressed
    
    private void jbPreviousKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbPreviousKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbPrevious.doClick(); }
    }//GEN-LAST:event_jbPreviousKeyPressed
    
    private void jbNextKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbNextKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbNext.doClick(); }
    }//GEN-LAST:event_jbNextKeyPressed
    
    private void jbLastKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbLastKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbLast.doClick(); }
    }//GEN-LAST:event_jbLastKeyPressed
    
    private void jbSaveKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbSaveKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbSave.doClick(); }
    }//GEN-LAST:event_jbSaveKeyPressed
    
    private void jbUndoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbUndoKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbUndo.doClick(); }
    }//GEN-LAST:event_jbUndoKeyPressed
    
    private void jbCloseKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbCloseKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbClose.doClick(); }
    }//GEN-LAST:event_jbCloseKeyPressed
    
    private void jbFirstActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbFirstActionPerformed
        gotoFirst();
    }//GEN-LAST:event_jbFirstActionPerformed
    
    private void jbPreviousActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPreviousActionPerformed
        gotoPrev();
    }//GEN-LAST:event_jbPreviousActionPerformed
    
    private void jbNextActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbNextActionPerformed
        gotoNext();
    }//GEN-LAST:event_jbNextActionPerformed
    
    private void jbLastActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbLastActionPerformed
        gotoLast();
    }//GEN-LAST:event_jbLastActionPerformed
    
    private void jbSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbSaveActionPerformed
        saveRecord();
    }//GEN-LAST:event_jbSaveActionPerformed
    
    private void jbUndoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbUndoActionPerformed
        undoCorr();
    }//GEN-LAST:event_jbUndoActionPerformed
    
    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbCloseActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbFirst;
    private javax.swing.JButton jbLast;
    private javax.swing.JButton jbNext;
    private javax.swing.JButton jbPrevious;
    private javax.swing.JButton jbSave;
    private javax.swing.JButton jbUndo;
    private javax.swing.JComboBox jcbCurrency;
    private javax.swing.JLabel jlCurrency;
    private javax.swing.JLabel jlDate;
    private javax.swing.JLabel jlRate;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpData;
    private javax.swing.JPanel jpMovement;
    private javax.swing.JTextField jtfRate;
    // End of variables declaration//GEN-END:variables
    
    private imakante.sales.FrmExchangeRate myParent;
    private String oldDate = "";
    private int oldIDCurrency = 1;
    private Double oldRate = 0.00;
    private String Currencies[];
    private int selectComboBoxItem;
    
    private void saveRecord() {
        oldDate = myParent.getDate();
        oldRate = myParent.getRateValue();
//        try {
//            myParent.setDate(imakante.com.dateManipulation.convertDate(jtfDate.getText()));
//        } catch (NumberFormatException nfex) {
//            nfex.printStackTrace();
//        }
        myParent.setIDCurrency(myParent.getInternalObject().getIndexConnOfId()[jcbCurrency.getSelectedIndex()]);
        myParent.setRateValue(Double.parseDouble(jtfRate.getText()));
        myParent.getInternalObject().updateRow(myParent.getId(), myParent.getDate(), myParent.getIDCurrency(), myParent.getRateValue());
        myParent.refreshTable();
        myParent.getTable().changeSelection(myParent.getRow(),2,false,false);
        jbUndo.setEnabled(true);
    }
    
    private void undoCorr() {
        myParent.setDate(oldDate);
        myParent.setIDCurrency(oldIDCurrency);
        myParent.setRateValue(oldRate);
        repaintComp();
        jbUndo.setEnabled(false);
    }
    
    private void getNavigationState() {
        if(myParent.isAtBegining()) {
            jbFirst.setEnabled(false);
            jbPrevious.setEnabled(false);
            jbFirst.repaint();
            jbPrevious.repaint();
        }
        if(myParent.isAtEnd()) {
            jbLast.setEnabled(false);
            jbNext.setEnabled(false);
            jbLast.repaint();
            jbNext.repaint();
        }
    }
    
    private void gotoFirst() {
        myParent.mTableBegining();
        jbFirst.setEnabled(false);
        jbPrevious.setEnabled(false);
        jbFirst.repaint();
        jbPrevious.repaint();
        jbLast.setEnabled(true);
        jbNext.setEnabled(true);
        jbLast.repaint();
        jbNext.repaint();
        repaintComp();
    }
    
    private void gotoPrev() {
        myParent.mOneRowMinus();
        if(myParent.isAtBegining()) {
            jbFirst.setEnabled(false);
            jbPrevious.setEnabled(false);
            jbFirst.repaint();
            jbPrevious.repaint();
        }
        jbLast.setEnabled(true);
        jbNext.setEnabled(true);
        jbLast.repaint();
        jbNext.repaint();
        repaintComp();
    }
    
    private void gotoNext() {
        myParent.mOneRowPlus();
        if(myParent.isAtEnd()) {
            jbLast.setEnabled(false);
            jbNext.setEnabled(false);
            jbLast.repaint();
            jbNext.repaint();
        }
        jbFirst.setEnabled(true);
        jbPrevious.setEnabled(true);
        jbFirst.repaint();
        jbPrevious.repaint();
        repaintComp();
        
    }
    
    private void gotoLast() {
        myParent.mTableEnd();
        jbLast.setEnabled(false);
        jbNext.setEnabled(false);
        jbLast.repaint();
        jbNext.repaint();
        jbFirst.setEnabled(true);
        jbPrevious.setEnabled(true);
        jbFirst.repaint();
        jbPrevious.repaint();
        repaintComp();
    }
    
    private void repaintComp() {
//        jtfDate.setText("" + myParent.getDate());
        jcbCurrency.setSelectedIndex(getNewComboBoxIndex(myParent.getIDCurrency()));
        jtfRate.setText(myParent.getRateValue().toString());
    }
    
    private void initCombo() {
        Currencies = myParent.getInternalObject().getCurrencies();
        for(int i = 0; i < Currencies.length; i++) {
            jcbCurrency.addItem(new String(Currencies[i]));
        }
        if(selectComboBoxItem != 0) {
            selectComboBoxItem = getNewComboBoxIndex(selectComboBoxItem);
            jcbCurrency.setSelectedIndex(selectComboBoxItem);
        }
    }
    
    private int getNewComboBoxIndex(int oldindex) {
        int newindex= 0;
        for(int i = 0; i < myParent.getInternalObject().getIndexConnOfId().length; i++) {
            if(myParent.getInternalObject().getIndexConnOfId()[i] == oldindex) {
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
    
}
