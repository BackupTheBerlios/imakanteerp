
package nom;

import imakante.com.vcomponents.iInternalFrame;
import javax.swing.JOptionPane;
import java.util.Date;
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
        jTextFieldPromoPrice.requestFocus();
        this.setTitle("\u041F\u0440\u043E\u043C\u043E\u0446\u0438\u043E\u043D\u0430\u043B\u043D\u0430 \u0446\u0435\u043D\u0430");
        
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
        jXDatePickerStart = new org.jdesktop.swingx.JXDatePicker();
        jXDatePickerStop = new org.jdesktop.swingx.JXDatePicker();

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

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel2.add(jXDatePickerStart, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel2.add(jXDatePickerStop, gridBagConstraints);

        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextFieldPromoPriceKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceKeyPressed
 if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            this.jButtonSave.requestFocus();
        } 
       
    }//GEN-LAST:event_jTextFieldPromoPriceKeyPressed

    private void jTextFieldPromoPriceKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceKeyReleased
// TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldPromoPriceKeyReleased

    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
// TODO add your handling code here:
        try
        {
            promo = Double.parseDouble(jTextFieldPromoPrice.getText());
            imakante.com.dateManipulation newdate = new imakante.com.dateManipulation();
           // dateStart = jTextFieldDataStart.getText();
           // dateStop = jTextFieldDateStop.getText();
            
             dateStart = String.valueOf(jXDatePickerStart.getDate().getDate());
             dateStart += "/" + String.valueOf(jXDatePickerStart.getDate().getMonth()+1); // 
             dateStart += "/" + String.valueOf(jXDatePickerStart.getDate().getYear()+1900);
                    
             dateStop = String.valueOf(jXDatePickerStop.getDate().getDate());
             dateStop += "/" + String.valueOf(jXDatePickerStop.getDate().getMonth()+1); // 
             dateStop += "/" + String.valueOf(jXDatePickerStop.getDate().getYear()+1900);
                           
            
            String newDateStart = newdate.convertDate(dateStart);
            String newDateStop =  newdate.convertDate(dateStop);
            if(isNew)
              {
                 //myParent.setId_PPP(myParent.getCountriesT().setProductPromotionPrice(promo,dateStart,dateStop));
                  myParent.setProductPromotionPrice(promo,newDateStart,newDateStop);
                  jButtonClose.doClick();
              }
            else
              {
                 // myParent.getCountriesT().updateProductPromotionPrice(myParent.getId_PPP(),promo,dateStart,dateStop);
                   myParent.setProductPromotionPrice(promo,newDateStart,newDateStop);
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
    private javax.swing.JTextField jTextFieldPromoPrice;
    private org.jdesktop.swingx.JXDatePicker jXDatePickerStart;
    private org.jdesktop.swingx.JXDatePicker jXDatePickerStop;
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
    String prices[];
    if(id_price>0)
    {
     prices = myParent.getCountriesT().getProductPromotionPrice(id_price);
    }
    else
    {
       prices = myParent.getProductPromotionPrice(); 
    }
    jTextFieldPromoPrice.setText(prices[0]);
  //  jTextFieldDataStart.setText(prices[1]);
  //  jTextFieldDateStop.setText(prices[2]);
    
     String newDate = checkAndConvertSQLFormat(prices[1]);
     int dateInt[] = getDateAsInt(newDate);
     Date date = new Date(dateInt[2]-1900,dateInt[1]-1,dateInt[0]);
     jXDatePickerStart.setDate(date);
     
     newDate = checkAndConvertSQLFormat(prices[2]);
     dateInt = getDateAsInt(newDate);
     date = new Date(dateInt[2]-1900,dateInt[1]-1,dateInt[0]);
     jXDatePickerStop.setDate(date);
    
}
private void showMessage()
{
     JOptionPane.showMessageDialog(this,"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043a\u043e\u0440\u0435\u043a\u043d\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435");
}
  private  int[] getDateAsInt(String in) {
        int date[] = new int[3];
        int lenght = in.length();
        char ch[] = in.toCharArray();
        String day = String.copyValueOf(ch,0,2); //
        int dayInt = Integer.parseInt(day);
        String month = String.copyValueOf(ch,3,2);
        int monthInt = Integer.parseInt(month);
        String year = String.copyValueOf(ch,6,4);
        int yearInt = Integer.parseInt(year);
        date[0]= dayInt;
        date[1]= monthInt;
        date[2]= yearInt;
        return date;
    }
    private  String checkAndConvertSQLFormat(String in) {
        String newDate = in;
        char ch[] = in.toCharArray();
        int length = in.length();
        
        int bufLength=0;
        int  countS = 0;
        for(int i=0; i < length;i++) {
            if(ch[i]==45 || ch[i]==46 || ch[i]==47 ) {
                countS++;
                if(i==4 && countS==1) // SQL format
                {
                    
                    newDate = in.substring(length-2,length);
                    int newLength=length;
                    String newIn=in;
                    char d_ch[] = newDate.toCharArray();
                    if(d_ch[0]==45 || d_ch[0]==46 || d_ch[0]==47 )
                    {
                        d_ch[0] = '0';
                        newDate =String.valueOf(d_ch);
                        newIn = in.substring(0,length-1);
                        newIn += newDate;
                        newLength = newIn.length();
                    }
                    newDate +="/";
                    
                    String m_newDate =newIn.substring(newLength-5,newLength-3);
                    char m_ch[] = m_newDate.toCharArray();
                    
                    if(m_ch[0]==45 || m_ch[0]==46 || m_ch[0]==47 )
                    {
                        m_ch[0] = '0';
                        m_newDate =String.valueOf(m_ch);
                    }
                    newDate +=m_newDate;
                    newDate +="/";
                    newDate +=in.substring(0,4);
                    break;
                }
            }
        }
        
        
        
        return newDate;
    }
}// end class
