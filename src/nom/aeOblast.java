
package nom;

public class aeOblast extends imakante.com.vcomponents.iDialog {
    
    public aeOblast(imakante.com.vcomponents.iInternalFrame frame, boolean modal, int selectComboBoxItem) {
        
        super(frame, modal);
        this.myParent = (FrmOblast) frame;
        
        initComponents();
        
        getNavigatiionState();
        jButtonUndo.setEnabled(false);
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        splitNamesOfCountry = myParent.getCountriesT().getCountryName();
        for(int i = 0; i < splitNamesOfCountry.length; i++) {
            jComboCountry.addItem(new String(splitNamesOfCountry[i]));
        }
        if(selectComboBoxItem != 0) {
            selectComboBoxItem = getNewComboBoxIndex(selectComboBoxItem);
            jComboCountry.setSelectedIndex(selectComboBoxItem);
        }
        repaintComp();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonUndo = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextName = new javax.swing.JTextField();
        jComboCountry = new javax.swing.JComboBox();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0414\u0430\u043d\u043d\u0438 \u043d\u0430 \u043e\u0431\u043b\u0430\u0441\u0442");
        jPanel1.setPreferredSize(new java.awt.Dimension(263, 33));
        jButtonSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButtonSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSaveActionPerformed(evt);
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
        jLabel2.setText("\u0414\u044a\u0440\u0436\u0430\u0432\u0430:");

        jLabel3.setText("\u041e\u0431\u043b\u0430\u0441\u0442:");

        jTextName.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextNameKeyPressed(evt);
            }
        });

        jComboCountry.setPreferredSize(new java.awt.Dimension(150, 22));

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jPanel3.setMinimumSize(new java.awt.Dimension(225, 70));
        jPanel3.setPreferredSize(new java.awt.Dimension(230, 70));
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
                .add(68, 68, 68)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .add(jLabel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jComboCountry, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jTextName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .add(71, 71, 71))
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 322, Short.MAX_VALUE)
                .add(12, 12, 12))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(20, 20, 20)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3)
                    .add(jTextName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jComboCountry, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 33, Short.MAX_VALUE)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 85, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(23, 23, 23))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-350)/2, (screenSize.height-250)/2, 350, 250);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextNameKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSave.doClick(); saveRecord(); }
    }//GEN-LAST:event_jTextNameKeyPressed
    
    private void jButtonUndoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUndoActionPerformed
        myParent.setNames(oldName);
        myParent.setIDCountry(oldIDCountry);
        repaintComp();
        jButtonUndo.setEnabled(false);
    }//GEN-LAST:event_jButtonUndoActionPerformed
//???   ?? proverka za vhoda na dannite , trqbva da sa samo cifri v momenta e izpylneno s class imacante.com.InputIntegerVerifier
    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
        saveRecord();
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
    private javax.swing.JComboBox jComboCountry;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextField jTextName;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private nom.FrmOblast myParent;
    private String splitNamesOfCountry[];
    private int selectComboBoxItem;
    private byte oldIDCountry;
    private String oldName = "";
    private int oldPostCode = 0;
    //---------------END My Variables
//---------------START MyFunction
    
    private void saveRecord() {
        oldName = myParent.getNames(); //               \
        //                                               > za vyztanovqvane na starite stoinosti
        oldIDCountry = myParent.getIDCountry();//       /
        myParent.setNames(jTextName.getText());
// ustanovqvame countryID 4rez masiva za vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata
        byte newByte;
        int tmpInt = myParent.getCountriesT().getIndexConnOfId()[jComboCountry.getSelectedIndex()];
        newByte = new Integer(tmpInt).byteValue();
        myParent.setIDCountry(newByte);
        myParent.getCountriesT().updateRow(myParent.getId(), myParent.getNames(), myParent.getIDCountry());
        myParent.refreshTable();
        myParent.getTable().changeSelection(myParent.getRow(), 2, false, false);
        jButtonUndo.setEnabled(true);
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
    private void repaintComp() //OK
    {
        
        jTextName.setText(myParent.getNames());
        //jTextCod.repaint();
        // jTextName.repaint();
        jComboCountry.setSelectedIndex(getNewComboBoxIndex(myParent.getIDCountry()));
        
    }
    private int getNewComboBoxIndex(int oldindex) //OK
    {
        int newindex= 0;
        for(int i = 0; i < myParent.getCountriesT().getIndexConnOfId().length; i++) {
            if(myParent.getCountriesT().getIndexConnOfId()[i]==oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
}// end class
