
package nom;

public class aeMoney extends imakante.com.vcomponents.iDialog
{
    
    /** Creates new form aeGroup */
    public aeMoney(imakante.com.vcomponents.iInternalFrame frame, boolean modal,int selectComboBoxItem)
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
        
        if(selectComboBoxItem != 0)
{
            
            selectComboBoxItem = getNewComboBoxIndex(selectComboBoxItem);
            
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
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();

        jLabel1.setText("jLabel1");

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

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(400, 300));
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

        jLabel2.setText("\u041a\u043e\u0434:");

        jLabel3.setText("\u041a\u043e\u0434 \u043b\u0430\u0442\u0438\u043d\u0438\u0446\u0430:");

        jLabel4.setText("\u0418\u043c\u0435:");

        jLabel5.setText("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440:");

        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        jScrollPane1.setViewportView(jTextArea1);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 362, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jLabel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 75, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jLabel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 75, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jLabel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 75, Short.MAX_VALUE)
                            .add(jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                                .add(org.jdesktop.layout.GroupLayout.TRAILING, jTextField3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 283, Short.MAX_VALUE)
                                .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, jTextField2)
                                    .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 80, Short.MAX_VALUE)))
                            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 283, Short.MAX_VALUE))))
                .addContainerGap(13, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel4)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel5)
                    .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
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
        oldCod = myParent.getCod();    //     > za vyztanovqvane na starite stoinosti
        oldAnLevel = myParent.getAnID();//   /
        myParent.setCod(jTextCod.getText());
        myParent.setNames(jTextName.getText());
// ustanovqvame AnID 4rez masiva za vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata
        myParent.setAnID(myParent.getCountriesT().getIndexConnOfId()[jComboAnLevel.getSelectedIndex()]);
        myParent.getCountriesT().updateRow(myParent.getId(),myParent.getNom(),
                myParent.getCod(),myParent.getNames(),myParent.getAnID());
        myParent.refreshTable();
        
        
        myParent.getTable().changeSelection(myParent.getRow(),2,false,false);
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
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
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
    private void repaintComp() //OK
    {
        jTextCod.setText(myParent.getCod());
        jTextName.setText(myParent.getNames());
        //jTextCod.repaint();
        // jTextName.repaint();
        jComboAnLevel.setSelectedIndex(getNewComboBoxIndex(myParent.getAnID()));
        
    }
    private int getNewComboBoxIndex(int oldindex) //OK
    {
        int newindex= 0;
        for(int i = 0; i < myParent.getCountriesT().getIndexConnOfId().length; i++)
{
            if(myParent.getCountriesT().getIndexConnOfId()[i]==oldindex)
{
                newindex = i;
                break;
            }
        }
        return newindex;
    }
}// end class
