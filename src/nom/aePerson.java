
package nom;

public class aePerson extends imakante.com.vcomponents.iDialog {
    
    public aePerson(imakante.com.vcomponents.iInternalFrame frame, boolean modal) {
        super(frame, modal);
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpData = new javax.swing.JPanel();
        jpNavigation = new javax.swing.JPanel();
        jbFirst = new javax.swing.JButton();
        jbPrevious = new javax.swing.JButton();
        jbNext = new javax.swing.JButton();
        jbLast = new javax.swing.JButton();
        jlGroup = new javax.swing.JLabel();
        jcbGroups = new javax.swing.JComboBox();
        jlEGN = new javax.swing.JLabel();
        jtfEGN = new javax.swing.JTextField();
        jlNomLK = new javax.swing.JLabel();
        jtfNomLK = new javax.swing.JTextField();
        jlName = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jlComment = new javax.swing.JLabel();
        jspComment = new javax.swing.JScrollPane();
        jtaComment = new javax.swing.JTextArea();
        jpControls = new javax.swing.JPanel();
        jbSave = new javax.swing.JButton();
        jbUndo = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jpData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpNavigation.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jbFirst.setText("<<");
        jbFirst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbFirstActionPerformed(evt);
            }
        });

        jbPrevious.setText("<");
        jbPrevious.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPreviousActionPerformed(evt);
            }
        });

        jbNext.setText(">");
        jbNext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNextActionPerformed(evt);
            }
        });

        jbLast.setText(">>");
        jbLast.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbLastActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jpNavigationLayout = new org.jdesktop.layout.GroupLayout(jpNavigation);
        jpNavigation.setLayout(jpNavigationLayout);
        jpNavigationLayout.setHorizontalGroup(
            jpNavigationLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpNavigationLayout.createSequentialGroup()
                .add(57, 57, 57)
                .add(jbFirst)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jbPrevious)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jbNext)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jbLast)
                .addContainerGap(65, Short.MAX_VALUE))
        );
        jpNavigationLayout.setVerticalGroup(
            jpNavigationLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpNavigationLayout.createSequentialGroup()
                .addContainerGap()
                .add(jpNavigationLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jbNext)
                    .add(jbLast)
                    .add(jbPrevious)
                    .add(jbFirst))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jlGroup.setText("\u0413\u0440\u0443\u043f\u0430:");

        jlEGN.setText("\u0415\u0413\u041d:");

        jlNomLK.setText("\u2116 \u043d\u0430 \u041b\u041a:");

        jlName.setText("\u0418\u043c\u0435:");

        jlComment.setText("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440:");

        jtaComment.setColumns(20);
        jtaComment.setRows(5);
        jspComment.setViewportView(jtaComment);

        org.jdesktop.layout.GroupLayout jpDataLayout = new org.jdesktop.layout.GroupLayout(jpData);
        jpData.setLayout(jpDataLayout);
        jpDataLayout.setHorizontalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                .addContainerGap()
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jlGroup)
                    .add(jlEGN)
                    .add(jlComment)
                    .add(jlNomLK, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 49, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jlName))
                .add(12, 12, 12)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                        .add(jcbGroups, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 242, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(173, 173, 173))
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jtfEGN)
                            .add(jtfNomLK, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 150, Short.MAX_VALUE))
                        .add(265, 265, 265))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jtfName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 340, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jpNavigation)
                            .add(jspComment, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 340, Short.MAX_VALUE))
                        .add(75, 75, 75))))
        );
        jpDataLayout.setVerticalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                .addContainerGap()
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlGroup)
                    .add(jcbGroups, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlEGN)
                    .add(jtfEGN, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jtfNomLK, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jlNomLK, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jtfName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(9, 9, 9)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                        .add(jspComment, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 84, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(26, 26, 26)
                        .add(jpNavigation, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jlComment))
                .add(14, 14, 14))
        );
        getContentPane().add(jpData, java.awt.BorderLayout.CENTER);

        jbSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jbSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbSaveActionPerformed(evt);
            }
        });

        jpControls.add(jbSave);

        jbUndo.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jbUndo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbUndoActionPerformed(evt);
            }
        });

        jpControls.add(jbUndo);

        jbClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jbClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbCloseActionPerformed(evt);
            }
        });

        jpControls.add(jbClose);

        getContentPane().add(jpControls, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
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
        undoChanges();
    }//GEN-LAST:event_jbUndoActionPerformed
    
    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbCloseActionPerformed
    
    private nom.FrmPerson superFrame;
    private int ID = 1;
    private int IDgroup = 0;
    private String EGN = null;
    private String NomLK = null;
    private String Name = null;
    private String Comment = null;
    private String GroupNames[];
    private int selected;
    private boolean isEdited = false;
    private boolean isFirst = false;
    private boolean isLast = false;
    
    private void gotoFirst() {
        nom.FrmPerson.mTableBegining();
        jButtonMinDisable();
        jButtonMaxEnable();
        repaintComp();
    }
    
    private void gotoPrev() {
        nom.FrmPerson.mOneRowMinus();
        if(nom.FrmPerson.isFirst()){
            jButtonMinDisable();
        }
        jButtonMaxEnable();
        repaintComp();
    }
    
    private void gotoNext() {
        nom.FrmPerson.mOneRowPlus();
        if(nom.FrmPerson.isLast()){
            jButtonMaxDisable();
        }
        jButtonMinEnable();
        repaintComp();
    }
    
    private void gotoLast() {
        nom.FrmPerson.mTableEnd();
        jButtonMaxDisable();
        jButtonMinEnable();
        repaintComp();
    }
    
    private void repaintComp() {
        jtfEGN.setText("" + superFrame.getEGN());
        jtfNomLK.setText("" + superFrame.getNomLK());
        jtfName.setText(superFrame.getNames());
        jtaComment.setText(superFrame.getComment());
        jtfEGN.repaint();
        jtfNomLK.repaint();
        jtfName.repaint();
        jtaComment.repaint();
    }
    
    private void jButtonMaxDisable(){
        jbNext.setEnabled(false);
        jbNext.repaint();
        jbLast.setEnabled(false);
        jbLast.repaint();
    }
    
    private void jButtonMaxEnable(){
        jbNext.setEnabled(true);
        jbNext.repaint();
        jbLast.setEnabled(true);
        jbLast.repaint();
    }
    
    private void jButtonMinDisable(){
        jbFirst.setEnabled(false);
        jbFirst.repaint();
        jbPrevious.setEnabled(false);
        jbPrevious.repaint();
    }
    
    private void jButtonMinEnable(){
        jbFirst.setEnabled(true);
        jbFirst.repaint();
        jbPrevious.setEnabled(true);
        jbPrevious.repaint();
    }
    
    private void getNavigatiionState(){
     if(nom.FrmCountry.isAtBegining()){
            jButtonMinDisable();
        }
     if(nom.FrmCountry.isAtEnd()){
            jButtonMaxDisable();
        }
    }
    
    private void saveRecord() {
        if( cFields() ) {
            EGN = superFrame.getEGN();
            NomLK = superFrame.getNomLK();
            Name = superFrame.getNames();
            Comment = superFrame.getComment();
            try {
                superFrame.setEGN(jtfEGN.getText());
            } catch (NumberFormatException nfex) {
                nfex.printStackTrace();
            }
            superFrame.setNomLK(jtfNomLK.getText());
            superFrame.setNames(jtfName.getText());
            superFrame.setComment(jtaComment.getText());
            superFrame.setIDGroup(superFrame.getPersonObject().getIndexConnOfId()[jcbGroups.getSelectedIndex()]);
            superFrame.getPersonObject().updateRow(superFrame.getId(), superFrame.getIDGroup(), superFrame.getEGN(),
                    superFrame.getNomLK(), superFrame.getNames(), superFrame.getComment());
            superFrame.refreshTable();
            superFrame.getTable().changeSelection(superFrame.getRow(),2,false,false);
            jbUndo.setEnabled(true);}
    }
    
    private boolean cFields() {
        boolean check  = true;
        int i = 0;
        try {
            i = Integer.parseInt(jtfEGN.getText()); // proverka za int
            jtfEGN.setBackground(new java.awt.Color(255,255,255));
        } catch (NumberFormatException nfex) {
            check = false;
            jtfEGN.setBackground(new java.awt.Color(255,204,204));
            nfex.printStackTrace();
        }
        return check;
    }
    
    private void undoChanges() {
        superFrame.setIDGroup(IDgroup);
        superFrame.setEGN(EGN);
        superFrame.setNomLK(NomLK);
        superFrame.setNames(Name);
        superFrame.setComment(Comment);
        repaintComp();
        jbUndo.setEnabled(false);
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbFirst;
    private javax.swing.JButton jbLast;
    private javax.swing.JButton jbNext;
    private javax.swing.JButton jbPrevious;
    private javax.swing.JButton jbSave;
    private javax.swing.JButton jbUndo;
    private javax.swing.JComboBox jcbGroups;
    private javax.swing.JLabel jlComment;
    private javax.swing.JLabel jlEGN;
    private javax.swing.JLabel jlGroup;
    private javax.swing.JLabel jlName;
    private javax.swing.JLabel jlNomLK;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpData;
    private javax.swing.JPanel jpNavigation;
    private javax.swing.JScrollPane jspComment;
    private javax.swing.JTextArea jtaComment;
    private javax.swing.JTextField jtfEGN;
    private javax.swing.JTextField jtfName;
    private javax.swing.JTextField jtfNomLK;
    // End of variables declaration//GEN-END:variables
    
}
