

package nom;

import javax.swing.JOptionPane;
public class aeContragent extends imakante.com.vcomponents.iDialog {
    
    /** Creates new form aeContragent */
    public aeContragent(imakante.com.vcomponents.iInternalFrame frame, boolean modal, boolean isnew) {
        super(frame, modal);
        this.myframe = frame;
        this.isNew = isnew; // opredelq dali zapisa sy6testwuwa v bazata;
        this.myParent = (nom.FrmContragent) frame;
        initComponents();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
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
        jLabelCod = new javax.swing.JLabel();
        jLabelName = new javax.swing.JLabel();
        jLabelBulstat = new javax.swing.JLabel();
        jLabelDanNomer = new javax.swing.JLabel();
        jLabelAddress = new javax.swing.JLabel();
        jLabelNM = new javax.swing.JLabel();
        jLabelTel = new javax.swing.JLabel();
        jLabelFax = new javax.swing.JLabel();
        jLabelEmail = new javax.swing.JLabel();
        jLabelWeb = new javax.swing.JLabel();
        jLabelMOL = new javax.swing.JLabel();
        jLabelOSO = new javax.swing.JLabel();
        jTextFieldCod = new javax.swing.JTextField();
        jTextFieldName = new javax.swing.JTextField();
        jTextFieldDanNomer = new javax.swing.JTextField();
        jTextFieldBulstat = new javax.swing.JTextField();
        jTextFieldAddress = new javax.swing.JTextField();
        jTextFieldNM = new javax.swing.JTextField();
        jTextFieldTel = new javax.swing.JTextField();
        jTextFieldFax = new javax.swing.JTextField();
        jTextFieldEmail = new javax.swing.JTextField();
        jTextFieldWeb = new javax.swing.JTextField();
        jTextFieldMOL = new javax.swing.JTextField();
        jTextFieldOSO = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(600, 400));
        jLabelCod.setText("\u041a\u043e\u0434:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel1.add(jLabelCod, gridBagConstraints);

        jLabelName.setText("\u0418\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelName, gridBagConstraints);

        jLabelBulstat.setText("\u0411\u0443\u043b\u0441\u0442\u0430\u0442:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelBulstat, gridBagConstraints);

        jLabelDanNomer.setText("\u0414\u0430\u043d.\u2116");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelDanNomer, gridBagConstraints);

        jLabelAddress.setText("\u0410\u0434\u0440\u0435\u0441:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelAddress, gridBagConstraints);

        jLabelNM.setText("\u041d\u0430\u0441.\u043c\u044f\u0441\u0442\u043e:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelNM, gridBagConstraints);

        jLabelTel.setText("\u0422\u0435\u043b.:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelTel, gridBagConstraints);

        jLabelFax.setText("Fax:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelFax, gridBagConstraints);

        jLabelEmail.setText("e-mail:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jLabelEmail, gridBagConstraints);

        jLabelWeb.setText("web page:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelWeb, gridBagConstraints);

        jLabelMOL.setText("\u041c\u041e\u041b:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 10, 5);
        jPanel1.add(jLabelMOL, gridBagConstraints);

        jLabelOSO.setText("\u041e\u0421\u041e:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabelOSO, gridBagConstraints);

        jTextFieldCod.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jPanel1.add(jTextFieldCod, gridBagConstraints);

        jTextFieldName.setPreferredSize(new java.awt.Dimension(170, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldName, gridBagConstraints);

        jTextFieldDanNomer.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldDanNomer, gridBagConstraints);

        jTextFieldBulstat.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextFieldBulstat.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldBulstat, gridBagConstraints);

        jTextFieldAddress.setPreferredSize(new java.awt.Dimension(170, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldAddress, gridBagConstraints);

        jTextFieldNM.setToolTipText("F7  \u0437\u0430 \u0438\u0437\u0431\u043e\u0440 \u043d\u0430 \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
        jTextFieldNM.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldNM.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldNMKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldNM, gridBagConstraints);

        jTextFieldTel.setPreferredSize(new java.awt.Dimension(170, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldTel, gridBagConstraints);

        jTextFieldFax.setPreferredSize(new java.awt.Dimension(170, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldFax, gridBagConstraints);

        jTextFieldEmail.setPreferredSize(new java.awt.Dimension(170, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldEmail, gridBagConstraints);

        jTextFieldWeb.setPreferredSize(new java.awt.Dimension(170, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldWeb, gridBagConstraints);

        jTextFieldMOL.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldMOL.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldMOLKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jTextFieldMOL, gridBagConstraints);

        jTextFieldOSO.setPreferredSize(new java.awt.Dimension(170, 20));
        jTextFieldOSO.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldOSOKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jTextFieldOSO, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(263, 40));
        jButton1.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton3.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton3);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextFieldOSOKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldOSOKeyPressed
// TODO add your handling code here:
         if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode())
       {
        if(jTextFieldOSO.getText()=="")
        {
        java.sql.ResultSet r1 = myParent.getCountriesT().getTablesWithNames("");
        java.sql.Connection c1 = myParent.getCountriesT().getConn();
        showNameOfMOL_OSO setOSO = new showNameOfMOL_OSO(myframe,true,r1,c1,false);
        }
        else
        {
        java.sql.ResultSet r1 = myParent.getCountriesT().getTablesWithNames(jTextFieldOSO.getText());
        java.sql.Connection c1 = myParent.getCountriesT().getConn();
         showNameOfMOL_OSO setOSO = new showNameOfMOL_OSO(myframe,true,r1,c1,false);
        }
        repaintComp();
       }  
    }//GEN-LAST:event_jTextFieldOSOKeyPressed

    private void jTextFieldMOLKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldMOLKeyPressed
// TODO add your handling code here:
       if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode())
       {
        if(jTextFieldMOL.getText()=="")
        {
        java.sql.ResultSet r1 = myParent.getCountriesT().getTablesWithNames("");
        java.sql.Connection c1 = myParent.getCountriesT().getConn();
        showNameOfMOL_OSO setMOL = new showNameOfMOL_OSO(myframe,true,r1,c1,true);
        }
        else
        {
        java.sql.ResultSet r1 = myParent.getCountriesT().getTablesWithNames(jTextFieldMOL.getText());
        java.sql.Connection c1 = myParent.getCountriesT().getConn();
         showNameOfMOL_OSO setMOL = new showNameOfMOL_OSO(myframe,true,r1,c1,true); 
        }
        repaintComp();
       }  
        
    }//GEN-LAST:event_jTextFieldMOLKeyPressed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
        if(isNew) // zapisa NE sy6testvuva v bazata!!
        {
            if((myParent.getID_NM()==-1) | (myParent.getID_MOL()==-1) | (myParent.getID_OSO()==-1))
            {
                // syob6tenie da se vuvede naseleneto mqsto, MOL i OSO;
               JOptionPane.showMessageDialog(this, "\u041c\u043e\u043b\u044f \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e, \u041c\u041e\u041b \u0438 \u041e\u0421\u041e");
               
            }
            else
            {
                myParent.setCod(jTextFieldCod.getText());
                myParent.setName(jTextFieldName.getText());
                myParent.setBulstat(jTextFieldBulstat.getText());
                myParent.setDanNomer(jTextFieldDanNomer.getText());
                myParent.setAddress(jTextFieldAddress.getText());
                myParent.setTel(jTextFieldTel.getText());
                myParent.setFax(jTextFieldFax.getText());
                myParent.setEmail(jTextFieldEmail.getText());
                myParent.setWeb(jTextFieldWeb.getText());
                myParent.getCountriesT().insertRow(myParent.getCod(),myParent.getName(),
                                                  myParent.getBulstat(),myParent.getDanNomer(),
                                                  myParent.getAddress(),myParent.getID_NM(),
                                                  myParent.getTel(),myParent.getFax(),myParent.getEmail(),
                                                  myParent.getWeb(),myParent.getID_MOL(),myParent.getID_OSO());
               
            }
        }
        else  // zapisa  sy6testvuva v bazata!!
        {
                myParent.setCod(jTextFieldCod.getText());
                myParent.setName(jTextFieldName.getText());
                myParent.setBulstat(jTextFieldBulstat.getText());
                myParent.setDanNomer(jTextFieldDanNomer.getText());
                myParent.setAddress(jTextFieldAddress.getText());
                myParent.setTel(jTextFieldTel.getText());
                myParent.setFax(jTextFieldFax.getText());
                myParent.setEmail(jTextFieldEmail.getText());
                myParent.setWeb(jTextFieldWeb.getText());
                
                myParent.getCountriesT().updateRow(myParent.getId(),myParent.getCod(),myParent.getName(),
                                                  myParent.getBulstat(),myParent.getDanNomer(),
                                                  myParent.getAddress(),myParent.getID_NM(),
                                                  myParent.getTel(),myParent.getFax(),myParent.getEmail(),
                                                  myParent.getWeb(),myParent.getID_MOL(),myParent.getID_OSO());
            
        }
      jButton3.doClick();
      myParent.refreshTable();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jTextFieldNMKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldNMKeyPressed
// TODO add your handling code here:
 // pri natiskane na F7 6te se izvikva aContragent, za izbor na naseleno mqsto ot bazata danni
       if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode())
       {
        if(jTextFieldNM.getText()=="")
        {
        java.sql.ResultSet r1 = myParent.getCountriesT().getTablesAddressName("");
        java.sql.Connection c1 = myParent.getCountriesT().getConn();
        showAddressContragent setNM = new showAddressContragent(myframe,true,r1,c1);
        }
        else
        {
        java.sql.ResultSet r1 = myParent.getCountriesT().getTablesAddressName(jTextFieldNM.getText());
        java.sql.Connection c1 = myParent.getCountriesT().getConn();
        showAddressContragent setNM = new showAddressContragent(myframe,true,r1,c1); 
        }
        repaintComp();
       }
    }//GEN-LAST:event_jTextFieldNMKeyPressed
    
    /**
     * @param args the command line arguments
     */
   /* public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new aeContragent(new javax.swing.JFrame(), true).setVisible(true);
            }
        });
    }*/
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabelAddress;
    private javax.swing.JLabel jLabelBulstat;
    private javax.swing.JLabel jLabelCod;
    private javax.swing.JLabel jLabelDanNomer;
    private javax.swing.JLabel jLabelEmail;
    private javax.swing.JLabel jLabelFax;
    private javax.swing.JLabel jLabelMOL;
    private javax.swing.JLabel jLabelNM;
    private javax.swing.JLabel jLabelName;
    private javax.swing.JLabel jLabelOSO;
    private javax.swing.JLabel jLabelTel;
    private javax.swing.JLabel jLabelWeb;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextFieldAddress;
    private javax.swing.JTextField jTextFieldBulstat;
    private javax.swing.JTextField jTextFieldCod;
    private javax.swing.JTextField jTextFieldDanNomer;
    private javax.swing.JTextField jTextFieldEmail;
    private javax.swing.JTextField jTextFieldFax;
    private javax.swing.JTextField jTextFieldMOL;
    private javax.swing.JTextField jTextFieldNM;
    private javax.swing.JTextField jTextFieldName;
    private javax.swing.JTextField jTextFieldOSO;
    private javax.swing.JTextField jTextFieldTel;
    private javax.swing.JTextField jTextFieldWeb;
    // End of variables declaration//GEN-END:variables
 //--------------- My Variables
   private FrmContragent myParent;
   private imakante.com.vcomponents.iInternalFrame myframe;
   boolean isNew; // za opredelqne dali zapisa e 4isto nov, t.e dali ne sy6testva b bazata
 //---------------END My Variables
//---------------START MyFunction 
    
 private void repaintComp() //
{
   if(!isNew)
   {
   jTextFieldAddress.setText(myParent.getAddress());
   jTextFieldBulstat.setText(myParent.getBulstat());
   jTextFieldCod.setText(myParent.getCod());
   jTextFieldDanNomer.setText(myParent.getDanNomer());
   jTextFieldEmail.setText(myParent.getEmail());
   jTextFieldFax.setText(myParent.getFax());
   jTextFieldName.setText(myParent.getName());
   jTextFieldTel.setText(myParent.getTel());
   jTextFieldWeb.setText(myParent.getWeb());
   }
   if((myParent.getID_NM()!=-1))
   {
   String adres = myParent.getCountriesT().getAddressName(myParent.getID_NM());
   jTextFieldNM.setText(adres);
   }
   if(myParent.getID_MOL()!=-1) 
   {
   String namMOL = myParent.getCountriesT().getNameWithID(myParent.getID_MOL(),true);
   jTextFieldMOL.setText(namMOL);
   }
   if (myParent.getID_OSO()!=-1)
   {
   String namOSO = myParent.getCountriesT().getNameWithID(myParent.getID_OSO(),false);
   jTextFieldOSO.setText(namOSO);
   }
} 
 
}// end class
