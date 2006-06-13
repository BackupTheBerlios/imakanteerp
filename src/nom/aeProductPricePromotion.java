
package nom;

import imakante.com.vcomponents.iInternalFrame;
import javax.swing.JOptionPane;
import java.util.Date;
import java.math.*;
public class aeProductPricePromotion extends imakante.com.vcomponents.iDialog {
    
    /** Creates new form aeProductPricePromotion */
    public aeProductPricePromotion(imakante.com.vcomponents.iInternalFrame frame, boolean modal,int id_price, boolean isnew) {
        
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
        try {
            stDDS =  Integer.parseInt(myParent.getProductFee()[0]);
        } catch(Exception x1) {
            stDDS = 20;
        }
        jTextFieldPromoPrice.requestFocus();
        this.setTitle("\u041F\u0440\u043E\u043C\u043E\u0446\u0438\u043E\u043D\u0430\u043B\u043D\u0430 \u0446\u0435\u043D\u0430");
        
        
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
        jTextFieldPromoPrice = new javax.swing.JTextField();
        jXDatePickerStart = new org.jdesktop.swingx.JXDatePicker();
        jXDatePickerStop = new org.jdesktop.swingx.JXDatePicker();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextFieldPromoPriceDDS = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();

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

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setMinimumSize(new java.awt.Dimension(414, 200));
        jPanel2.setPreferredSize(new java.awt.Dimension(370, 200));
        jLabel1.setText("\u041f\u0440\u043e\u043c\u043e\u0446\u0438\u043e\u043d\u0430\u043b\u043d\u0430 \u0446\u0435\u043d\u0430:");

        jLabel2.setText("\u041e\u0442 \u0434\u0430\u0442\u0430:");

        jLabel3.setText("\u0414\u043e \u0434\u0430\u0442\u0430:");

        jTextFieldPromoPrice.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPromoPrice.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextFieldPromoPrice.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPromoPrice.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPromoPrice.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPromoPriceFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPromoPriceFocusLost(evt);
            }
        });
        jTextFieldPromoPrice.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPromoPriceKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextFieldPromoPriceKeyReleased(evt);
            }
        });

        jLabel4.setText("\u0431\u0435\u0437 \u0414\u0414\u0421");

        jLabel5.setText("\u0441 \u0414\u0414\u0421");

        jTextFieldPromoPriceDDS.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextFieldPromoPriceDDS.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextFieldPromoPriceDDS.setNextFocusableComponent(jButtonSave);
        jTextFieldPromoPriceDDS.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPromoPriceDDS.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldPromoPriceDDSFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPromoPriceDDSFocusLost(evt);
            }
        });
        jTextFieldPromoPriceDDS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPromoPriceDDSKeyPressed(evt);
            }
        });

        jLabel6.setText("\u0438\u043b\u0438");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(162, 162, 162)
                        .add(jLabel4)
                        .add(66, 66, 66)
                        .add(jLabel5))
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(37, 37, 37)
                        .add(jLabel1)
                        .add(10, 10, 10)
                        .add(jTextFieldPromoPrice, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel6)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jTextFieldPromoPriceDDS, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(101, 101, 101)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jLabel3)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(jXDatePickerStop, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                                .add(jLabel2)
                                .add(37, 37, 37)
                                .add(jXDatePickerStart, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))))
                .add(142, 142, 142))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(60, 60, 60)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel4)
                    .add(jLabel5))
                .add(15, 15, 15)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel1))
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(jTextFieldPromoPrice, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jLabel6)
                        .add(jTextFieldPromoPriceDDS, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(15, 15, 15)
                        .add(jLabel2))
                    .add(jPanel2Layout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jXDatePickerStart, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(9, 9, 9)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel3)
                    .add(jXDatePickerStop, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(5, 5, 5))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextFieldPromoPriceDDSFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceDDSFocusLost
        fLost(jTextFieldPromoPriceDDS);
    }//GEN-LAST:event_jTextFieldPromoPriceDDSFocusLost
    
    private void jTextFieldPromoPriceDDSFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceDDSFocusGained
        fGain(jTextFieldPromoPriceDDS);
    }//GEN-LAST:event_jTextFieldPromoPriceDDSFocusGained
    
    private void jTextFieldPromoPriceFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceFocusLost
        fLost(jTextFieldPromoPrice);
    }//GEN-LAST:event_jTextFieldPromoPriceFocusLost
    
    private void jTextFieldPromoPriceFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceFocusGained
        fGain(jTextFieldPromoPrice);
    }//GEN-LAST:event_jTextFieldPromoPriceFocusGained
    
    private void jTextFieldPromoPriceDDSKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceDDSKeyPressed
// TODO add your handling code here:
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            double p0dds = Double.parseDouble(jTextFieldPromoPriceDDS.getText());
            double p0 =p0dds/(1+stDDS/100);
            
            jTextFieldPromoPrice.setText(doubleRoundToString(6,p0));
            
            jTextFieldPromoPriceDDS.transferFocus();
        }
    }//GEN-LAST:event_jTextFieldPromoPriceDDSKeyPressed
    
    private void jTextFieldPromoPriceKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceKeyPressed
        
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            double  p0 = Double.parseDouble(jTextFieldPromoPrice.getText());
            double  p0dds = (p0*stDDS/100)+p0;
            jTextFieldPromoPriceDDS.setText(doubleRoundToString(3,p0dds));
            
            this.jButtonSave.requestFocus();
        }
    }//GEN-LAST:event_jTextFieldPromoPriceKeyPressed
    
    private void jTextFieldPromoPriceKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPromoPriceKeyReleased
// TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldPromoPriceKeyReleased
    
    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
// TODO add your handling code here:
        try {
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
            if(isNew) {
                //myParent.setId_PPP(myParent.getCountriesT().setProductPromotionPrice(promo,dateStart,dateStop));
                myParent.setProductPromotionPrice(promo,newDateStart,newDateStop);
                jButtonClose.doClick();
            } else {
                // myParent.getCountriesT().updateProductPromotionPrice(myParent.getId_PPP(),promo,dateStart,dateStop);
                myParent.setProductPromotionPrice(promo,newDateStart,newDateStop);
                jButtonClose.doClick();
            }
        } catch(Exception e) {
            
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
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextFieldPromoPrice;
    private javax.swing.JTextField jTextFieldPromoPriceDDS;
    private org.jdesktop.swingx.JXDatePicker jXDatePickerStart;
    private org.jdesktop.swingx.JXDatePicker jXDatePickerStop;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private nom.FrmProduct myParent;
    private int id_price;
    private double promo;
    private String dateStart, dateStop;
    private double stDDS=20;
    private boolean isNew = false;
    //---------------END My Variables
//---------------START MyFunction
    
    
    private void getPrices() {
        String prices[];
        if(id_price>0 && !myParent.isTypedPromoPrice) {
            prices = myParent.getCountriesT().getProductPromotionPrice(id_price);
        } else {
            prices = myParent.getProductPromotionPrice();
        }
        jTextFieldPromoPrice.setText(prices[0]);
        double p = Double.parseDouble(prices[0]);
        double dds_ = Double.parseDouble(myParent.getProductFee()[0]);
        double pdds = (p*dds_/100)+p;
        jTextFieldPromoPriceDDS.setText(doubleRoundToString(6,pdds));
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
    private void showMessage() {
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
                    if(d_ch[0]==45 || d_ch[0]==46 || d_ch[0]==47 ) {
                        d_ch[0] = '0';
                        newDate =String.valueOf(d_ch);
                        newIn = in.substring(0,length-1);
                        newIn += newDate;
                        newLength = newIn.length();
                    }
                    newDate +="/";
                    
                    String m_newDate =newIn.substring(newLength-5,newLength-3);
                    char m_ch[] = m_newDate.toCharArray();
                    
                    if(m_ch[0]==45 || m_ch[0]==46 || m_ch[0]==47 ) {
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
    private String doubleRoundToString(int digit, double indouble) {
        String newDouble = new String();
        double r = indouble;
        BigDecimal bd = new BigDecimal(r);
        bd = bd.setScale(digit,BigDecimal.ROUND_HALF_UP);
        r = bd.doubleValue();
        return newDouble.valueOf(r);
    }
    private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 255, 255), null));
    }
    
    
}// end class
