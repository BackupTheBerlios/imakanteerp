/*
 * aeGroup.java
 *
 * Created on �������, 2005, �������� 13, 19:31
 */

package nom;

/**
 *
 * @author  admin
 */
public class aeGroup extends imakante.com.vcomponents.iDialog 
{
    
    /** Creates new form aeGroup */
    public aeGroup(imakante.com.vcomponents.iInternalFrame frame, boolean modal,int selectComboBoxItem)
    {
        
        super(frame, modal);
        this.myParent =(nom.FrmGroup) frame;
            
        initComponents();
       
        getNavigatiionState();
        jButtonUndo.setEnabled(false);
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        splitNamesOfAnLevel = myParent.getCountriesT().getAnLevelName();
        for(int i=0;i<splitNamesOfAnLevel.length;i++)
        {
            jComboAnLevel.addItem(new String(splitNamesOfAnLevel[i]));
        }
        this.selectComboBoxItem = selectComboBoxItem;
        if(selectComboBoxItem != 0)
          {
             jComboAnLevel.setSelectedIndex(selectComboBoxItem);
          }
        
        repaintComp();
        
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

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

        jPanel2.setLayout(new java.awt.GridBagLayout());

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(400, 300));
        jLabel1.setText("\u041a\u043e\u0434:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 10, 5, 5);
        jPanel2.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u0418\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel2.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0410\u043d.\u043d\u0438\u0432\u0430??:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 10, 5, 5);
        jPanel2.add(jLabel3, gridBagConstraints);

        jTextCod.setPreferredSize(new java.awt.Dimension(45, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 10, 5, 5);
        jPanel2.add(jTextCod, gridBagConstraints);

        jTextName.setPreferredSize(new java.awt.Dimension(150, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 10, 5, 5);
        jPanel2.add(jTextName, gridBagConstraints);

        jComboAnLevel.setPreferredSize(new java.awt.Dimension(150, 22));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 10, 5, 5);
        jPanel2.add(jComboAnLevel, gridBagConstraints);

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder("\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jPanel3.setPreferredSize(new java.awt.Dimension(230, 70));
        jButtonToBegin.setText("<<");
        jButtonToBegin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToBeginActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonToBegin);

        jButtonOneRowM.setText("<");
        jButtonOneRowM.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowMActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonOneRowM);

        jButtonOneRowP.setText(">");
        jButtonOneRowP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowPActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonOneRowP);

        jButtonToEnd.setText(">>");
        jButtonToEnd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToEndActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonToEnd);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.insets = new java.awt.Insets(40, 20, 5, 5);
        jPanel2.add(jPanel3, gridBagConstraints);

        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonUndoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUndoActionPerformed
// TODO add your handling code here:
        myParent.setNames(oldName);
        myParent.setCod(oldCod);
        myParent.setAnID(oldAnLevel);
        repaintComp();
        jButtonUndo.setEnabled(false);
    }//GEN-LAST:event_jButtonUndoActionPerformed

    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
// TODO add your handling code here:
        
        oldName = myParent.getNames(); //    \
        oldCod = myParent.getCod();    //     > za vyztanovqvane na staritestoinosti
        oldAnLevel = myParent.getAnID();//   /
        myParent.setCod(jTextCod.getText());
        myParent.setNames(jTextName.getText());
 // da se dobavi za ComboBox       !!!!!!
        myParent.setAnID(jComboAnLevel.getSelectedIndex());
        myParent.getCountriesT().updateRow(myParent.getId(),myParent.getNom(),
                                          myParent.getCod(),myParent.getNames(),myParent.getAnID());
        myParent.refreshTable();
        
        jTextCod.setText("");
        jTextName.setText("");
        
        jButtonUndo.setEnabled(true);
        
        
    }//GEN-LAST:event_jButtonSaveActionPerformed

    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed

    private void jButtonOneRowPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowPActionPerformed
// TODO add your handling code here:
       myParent.mOneRowPlus();
        if(myParent.isAtEnd())
        {
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
// TODO add your handling code here:  OK
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
// TODO add your handling code here:
         myParent.mOneRowMinus();
        if(myParent.isAtBegining())
        {
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
// TODO add your handling code here:
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
    
    /**
     * @param args the command line arguments
     */
  /*  public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                //new aeGroup(new javax.swing.JFrame(), true).setVisible(true);
            }
        });
    }*/
    
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
    private String oldCod = "";
 //---------------END My Variables
//---------------START MyFunction 
 
private void getNavigatiionState() //OK
    {
    if(myParent.isAtBegining())
    {
        jButtonToBegin.setEnabled(false);
        jButtonOneRowM.setEnabled(false);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
    }
    if(myParent.isAtEnd())
    {
        jButtonToEnd.setEnabled(false);
        jButtonOneRowP.setEnabled(false);
         jButtonToEnd.repaint();
        jButtonOneRowP.repaint();
    }
     
}
private void repaintComp() //OK ---> !!!da se dovyr6i za ComboBox
{
    jTextCod.setText(myParent.getCod());
    jTextName.setText(myParent.getNames());
    //jTextCod.repaint();
   // jTextName.repaint();
    jComboAnLevel.setSelectedIndex(myParent.getAnID());
    
}
}// end class
