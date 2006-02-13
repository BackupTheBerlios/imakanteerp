
package nom;

public class aeDoctype extends imakante.com.vcomponents.iDialog {
    
    public aeDoctype(imakante.com.vcomponents.iInternalFrame parent, boolean modal) {
        super(parent, modal);
        this.DTparent = (nom.FrmDoctype) parent;
        initComponents();
        getNavigationState();
        jbUndo.setEnabled(false);
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
        jlCode = new javax.swing.JLabel();
        jtfCode = new javax.swing.JTextField();
        jlName = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jlPrintName = new javax.swing.JLabel();
        jtfPrintName = new javax.swing.JTextField();
        jpControls = new javax.swing.JPanel();
        jbSave = new javax.swing.JButton();
        jbUndo = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430: \u0422\u0438\u043f\u043e\u0432\u0435 \u0414\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        jpData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpMovement.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
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

        jlCode.setText("\u041a\u043e\u0434:");

        jtfCode.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jtfCode.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfCodeFocusGained(evt);
            }
        });
        jtfCode.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfCodeKeyPressed(evt);
            }
        });

        jlName.setText("\u0418\u043c\u0435:");

        jtfName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfNameFocusGained(evt);
            }
        });

        jlPrintName.setText("\u041f\u0435\u0447\u0430\u0442\u043d\u043e \u0438\u043c\u0435:");

        jtfPrintName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfPrintNameFocusGained(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jpDataLayout = new org.jdesktop.layout.GroupLayout(jpData);
        jpData.setLayout(jpDataLayout);
        jpDataLayout.setHorizontalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jpDataLayout.createSequentialGroup()
                .add(49, 49, 49)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jpDataLayout.createSequentialGroup()
                        .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap())
                    .add(jpDataLayout.createSequentialGroup()
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jlName)
                            .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                .add(jlCode)
                                .add(jlPrintName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                        .add(21, 21, 21)
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jtfName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 216, Short.MAX_VALUE)
                            .add(jtfPrintName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 216, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jtfCode, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 113, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .add(54, 54, 54))))
        );
        jpDataLayout.setVerticalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jpDataLayout.createSequentialGroup()
                .add(23, 23, 23)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlCode)
                    .add(jtfCode, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jtfName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jlName))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlPrintName)
                    .add(jtfPrintName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(25, 25, 25)
                .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(33, 33, 33))
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

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-412)/2, (screenSize.height-267)/2, 412, 267);
    }// </editor-fold>//GEN-END:initComponents

    private void jtfCodeFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfCodeFocusGained
        jtfCode.selectAll();
    }//GEN-LAST:event_jtfCodeFocusGained

    private void jtfNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfNameFocusGained
        jtfName.selectAll();
    }//GEN-LAST:event_jtfNameFocusGained

    private void jtfPrintNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfPrintNameFocusGained
        jtfPrintName.selectAll();
    }//GEN-LAST:event_jtfPrintNameFocusGained
        
    private void jtfCodeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfCodeKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jtfCode.transferFocus(); }
    }//GEN-LAST:event_jtfCodeKeyPressed
    
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
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbFirst;
    private javax.swing.JButton jbLast;
    private javax.swing.JButton jbNext;
    private javax.swing.JButton jbPrevious;
    private javax.swing.JButton jbSave;
    private javax.swing.JButton jbUndo;
    private javax.swing.JLabel jlCode;
    private javax.swing.JLabel jlName;
    private javax.swing.JLabel jlPrintName;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpData;
    private javax.swing.JPanel jpMovement;
    private javax.swing.JTextField jtfCode;
    private javax.swing.JTextField jtfName;
    private javax.swing.JTextField jtfPrintName;
    // End of variables declaration//GEN-END:variables
    
    private nom.FrmDoctype DTparent;
    private int prevCode = 0;
    private String prevName = "";
    private String prevPName = "";
    
    private void saveRecord() {
            prevCode = DTparent.getCode();
            prevName = DTparent.getName();
            prevPName = DTparent.getPName();
            try {
                DTparent.setCode(Integer.parseInt(jtfCode.getText()));
            } catch (NumberFormatException nfex) { nfex.printStackTrace(); }
            DTparent.setName(jtfName.getText());
            DTparent.setPName(jtfPrintName.getText());
            DTparent.getDoctypeObject().updateRow(DTparent.getId(), DTparent.getCode(), DTparent.getName(), DTparent.getPName());
            DTparent.refreshTable();
            DTparent.getTable().changeSelection(DTparent.getRow(), 2, false, false);
            jbUndo.setEnabled(true);
    }
    
    private void undoCorr() {
        DTparent.setCode(prevCode);
        DTparent.setName(prevName);
        DTparent.setPName(prevPName);
        repaintComp();
        jbUndo.setEnabled(false);
    }
    
    private void repaintComp() {
        jtfCode.setText("" + DTparent.getCode());
        jtfName.setText(DTparent.getName());
        jtfPrintName.setText(DTparent.getPName());
        jtfCode.repaint();
        jtfName.repaint();
        jtfPrintName.repaint();
    }
    
    private void getNavigationState() {
        if(DTparent.isFirst()) {
            jbFirst.setEnabled(false);
            jbPrevious.setEnabled(false);
            jbFirst.repaint();
            jbPrevious.repaint();
        }
        if(DTparent.isLast()) {
            jbLast.setEnabled(false);
            jbNext.setEnabled(false);
            jbLast.repaint();
            jbNext.repaint();
        }
    }
    
    private void gotoFirst() {
        DTparent.mTableBegining();
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
        DTparent.mOneRowMinus();
        if(DTparent.isFirst()) {
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
        DTparent.mOneRowPlus();
        if(DTparent.isLast()) {
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
        DTparent.mTableEnd();
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
}