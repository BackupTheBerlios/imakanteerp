
package nom;

import imakante.com.vcomponents.iInternalFrame;
import javax.swing.JOptionPane;
public class aeProductPricePromotion extends imakante.com.vcomponents.iDialog 
{
    
    /** Creates new form aeProductPricePromotion */
    public aeProductPricePromotion(imakante.com.vcomponents.iInternalFrame frame, boolean modal,int id_price, boolean isnew)
    {
        
        super(frame, modal);
        this.myParent =(FrmProduct) frame;
        this.id_price = id_price;
        this.isNew = isnew;
        initComponents();
        if(!isNew) getPrices();
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        
        
        
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
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
        jTextFieldPromoPrice = new javax.swing.JTextField();
        jTextFieldDataStart = new javax.swing.JTextField();
        jTextFieldDateStop = new javax.swing.JTextField();

        jTextField1.setText("jTextField1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setPreferredSize(new java.awt.Dimension(250, 33));
        jButtonSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButtonSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSaveActionPerformed(evt);
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
        jLabel1.setText("\u041f\u0440\u043e\u043c\u043e\u0446\u0438\u043e\u043d\u0430\u043b\u043d\u0430 \u0446\u0435\u043d\u0430:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel2.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u041e\u0442 \u0434\u0430\u0442\u0430:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel2.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0414\u043e \u0434\u0430\u0442\u0430:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel2.add(jLabel3, gridBagConstraints);

        jTextFieldPromoPrice.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPromoPrice.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPromoPrice.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPromoPriceKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextFieldPromoPriceKeyReleased(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jPanel2.add(jTextFieldPromoPrice, gridBagConstraints);

        jTextFieldDataStart.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldDataStart.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldDataStartFocusLost(evt);
            }
        });
        jTextFieldDataStart.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDataStartKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel2.add(jTextFieldDataStart, gridBagConstraints);

        jTextFieldDateStop.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldDateStop.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldDateStopFocusLost(evt);
            }
        });
        jTextFieldDateStop.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldDateStopKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel2.add(jTextFieldDateStop, gridBagConstraints);

        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextFieldDateStopFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldDateStopFocusLost
// TODO add your handling code here:
        
    }//GEN-LAST:event_jTextFieldDateStopFocusLost

    private void jTextFieldDateStopKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDateStopKeyPressed
// TODO add your handling code here:
       
    }//GEN-LAST:event_jTextFieldDateStopKeyPressed

    private void jTextFieldDataStartFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldDataStartFocusLost
// TODO add your handling code here:
       
        
    }//GEN-LAST:event_jTextFieldDataStartFocusLost

    private void jTextFieldDataStartKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDataStartKeyPressed
// TODO add your handling code here:
       
        
    }//GEN-LAST:event_jTextFieldDataStartKeyPressed

    private void jTextFieldPromoPriceKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceKeyPressed
// TODO add your handling code here:
       
    }//GEN-LAST:event_jTextFieldPromoPriceKeyPressed

    private void jTextFieldPromoPriceKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceKeyReleased
// TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldPromoPriceKeyReleased

    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
// TODO add your handling code here:
        try
        {
            promo = Double.parseDouble(jTextFieldPromoPrice.getText());
            dateStart = jTextFieldDataStart.getText();
            dateStop = jTextFieldDateStop.getText();
            if(isNew)
              {
                 //myParent.setId_PPP(myParent.getCountriesT().setProductPromotionPrice(promo,dateStart,dateStop));
                  myParent.setProductPromotionPrice(promo,dateStart,dateStop);
                  jButtonClose.doClick();
              }
            else
              {
                 // myParent.getCountriesT().updateProductPromotionPrice(myParent.getId_PPP(),promo,dateStart,dateStop);
                   myParent.setProductPromotionPrice(promo,dateStart,dateStop);
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
                //new aeProductPricePromotion(new javax.swing.JFrame(), true).setVisible(true);
            }
        });
    }*/
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonSave;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextFieldDataStart;
    private javax.swing.JTextField jTextFieldDateStop;
    private javax.swing.JTextField jTextFieldPromoPrice;
    // End of variables declaration//GEN-END:variables
 //--------------- My Variables
    private nom.FrmProduct myParent;
    private int id_price;
    private double promo;
    private String dateStart, dateStop;
    
    private boolean isNew = false;
 //---------------END My Variables
//---------------START MyFunction 
 

private void getPrices()
{
    String prices[] = myParent.getCountriesT().getProductPromotionPrice(id_price);
    jTextFieldPromoPrice.setText(prices[0]);
    jTextFieldDataStart.setText(prices[1]);
    jTextFieldDateStop.setText(prices[2]);
    
}
private void showMessage()
{
     JOptionPane.showMessageDialog(this,"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043a\u043e\u0440\u0435\u043a\u043d\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435");
}
}// end class
