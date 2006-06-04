
package nom;

import imakante.com.vcomponents.iInternalFrame;
import javax.swing.JOptionPane;
import java.math.*;
public class aeProductPriceFee extends imakante.com.vcomponents.iDialog 
{
    
    /** Creates new form aeProductPriceFee */
    public aeProductPriceFee(imakante.com.vcomponents.iInternalFrame frame, boolean modal,int id_fee, boolean isnew)
    {
        
        super(frame, modal);
        this.myParent =(FrmProduct) frame;
        this.id_fee = id_fee;
        this.isNew = isnew;
        initComponents();
        if(!isNew) getAllFee();
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        this.setTitle("\u0422\u0430\u043A\u0441\u0438");
        jTextFieldDDS.requestFocus();
        
    }
   
   
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jTextField1 = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextFieldDDS = new javax.swing.JTextField();
        jTextFieldAkcizi = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldOther = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();

        jTextField1.setText("jTextField1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u0434\u0430\u043d\u044a\u0446\u0438 \u0438 \u0442\u0430\u043a\u0441\u0438.");
        jPanel1.setPreferredSize(new java.awt.Dimension(250, 33));
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
        jPanel2.setPreferredSize(new java.awt.Dimension(320, 200));
        jLabel1.setText("\u0414\u0414\u0421:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel2.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u0410\u043a\u0446\u0438\u0437\u0438:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel2.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0414\u0440\u0443\u0433\u0438:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel2.add(jLabel3, gridBagConstraints);

        jTextFieldDDS.setText("20.00");
        jTextFieldDDS.setNextFocusableComponent(jTextFieldAkcizi);
        jTextFieldDDS.setPreferredSize(new java.awt.Dimension(20, 20));
        jTextFieldDDS.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldDDS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDDSKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jPanel2.add(jTextFieldDDS, gridBagConstraints);

        jTextFieldAkcizi.setText("0");
        jTextFieldAkcizi.setNextFocusableComponent(jTextFieldOther);
        jTextFieldAkcizi.setPreferredSize(new java.awt.Dimension(20, 20));
        jTextFieldAkcizi.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldAkcizi.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldAkciziKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel2.add(jTextFieldAkcizi, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 5);
        jPanel2.add(jLabel4, gridBagConstraints);

        jTextFieldOther.setText("0");
        jTextFieldOther.setNextFocusableComponent(jButtonSave);
        jTextFieldOther.setPreferredSize(new java.awt.Dimension(20, 20));
        jTextFieldOther.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldOther.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldOtherKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel2.add(jTextFieldOther, gridBagConstraints);

        jLabel5.setText("\u0412 \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0438:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 20);
        jPanel2.add(jLabel5, gridBagConstraints);

        jLabel6.setText("%");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel2.add(jLabel6, gridBagConstraints);

        jLabel7.setText("%");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.SOUTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel2.add(jLabel7, gridBagConstraints);

        jLabel8.setText("%");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel2.add(jLabel8, gridBagConstraints);

        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonSaveKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonSaveKeyPressed
if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jButtonSave.doClick();
        }
    }//GEN-LAST:event_jButtonSaveKeyPressed

    private void jTextFieldOtherKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldOtherKeyPressed
if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jTextFieldOther.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldOtherKeyPressed

    private void jTextFieldAkciziKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldAkciziKeyPressed
if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jTextFieldAkcizi.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldAkciziKeyPressed

    private void jTextFieldDDSKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDDSKeyPressed
if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jTextFieldDDS.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldDDSKeyPressed

    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
// TODO add your handling code here:
      try
      {
         dds = Double.parseDouble(jTextFieldDDS.getText());
      //   dds = doubleRound(6,dds);
         akcizi = Double.parseDouble(jTextFieldAkcizi.getText());
      //   akcizi = doubleRound(6,akcizi);
         other = Double.parseDouble(jTextFieldOther.getText());
      //   otther = doubleRound(6,other);
         if(isNew)
           {
             //myParent.setId_PF(myParent.getCountriesT().setProductFee(dds,akcizi,other));
             myParent.setProductFee(dds,akcizi,other);
             jButtonClose.doClick();
           }
       else
           {
             // myParent.getCountriesT().updateProductFee(id_fee,dds,akcizi,other);
              myParent.setProductFee(dds,akcizi,other);
              jButtonClose.doClick();
           }
      }
      catch(Exception e)
      {
          showMessage();
          
      }
      
    
        
    }//GEN-LAST:event_jButtonSaveActionPerformed

    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    /**
     * @param args the command line arguments
     */
  /*  public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                //new aeProductPriceFee(new javax.swing.JFrame(), true).setVisible(true);
            }
        });
    }*/
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonSave;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextFieldAkcizi;
    private javax.swing.JTextField jTextFieldDDS;
    private javax.swing.JTextField jTextFieldOther;
    // End of variables declaration//GEN-END:variables
 //--------------- My Variables
    private nom.FrmProduct myParent;
    private int id_fee;
    private double dds,akcizi,other;
    private boolean isNew = false;
 //---------------END My Variables
//---------------START MyFunction 
 

private void getAllFee()
{
    String fee[];
    if(id_fee>0)
    {
     fee = myParent.getCountriesT().getProdictFee(id_fee);
    }
    else
    {
        fee = myParent.getProductFee();
    }
    jTextFieldDDS.setText(fee[0]);
    jTextFieldAkcizi.setText(fee[1]);
    jTextFieldOther.setText(fee[2]);
    
}
private void showMessage()
{
     JOptionPane.showMessageDialog(this,"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043a\u043e\u0440\u0435\u043a\u043d\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435");
}
 private double doubleRound(int digit, double indouble)
{
    String newDouble = new String();
    double r = indouble;
    BigDecimal bd = new BigDecimal(r);
    bd = bd.setScale(digit,BigDecimal.ROUND_HALF_UP);
    r = bd.doubleValue();
    return r;
}
}// end class
