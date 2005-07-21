
package imakante.salary;

import java.awt.event.KeyEvent;


public class frmAddDlajnost extends javax.swing.JDialog {
    
    
    public frmAddDlajnost(javax.swing.JFrame parent, boolean modal,java.sql.Connection con, int id_t) {
        super(parent, modal);
        JFParentFrame = parent;
        dbInternal = con;
        id = id_t;
        initComponents();
        revalidateTextFields();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setText("\u041d\u043e\u043c\u0435\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(15, 15, 5, 5);
        jPanel1.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u041d\u0430\u0438\u043c\u0435\u043d\u043e\u0432\u0430\u043d\u0438\u0435 \u043d\u0430 \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 15, 5, 5);
        jPanel1.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u041a\u043e\u0434 \u0437\u0430 \u0441\u044a\u043e\u0442\u0432\u0435\u0442\u0441\u0442\u0432\u0438\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 15, 10, 5);
        jPanel1.add(jLabel3, gridBagConstraints);

        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(15, 5, 5, 5);
        jPanel1.add(jTextField1, gridBagConstraints);

        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 250;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 15);
        jPanel1.add(jTextField2, gridBagConstraints);

        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 5);
        jPanel1.add(jTextField3, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u0417\u0430\u043f\u0430\u0437\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jButton1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton1KeyPressed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton2KeyPressed(evt);
            }
        });

        jPanel2.add(jButton2);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        closeResource();
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        insertRecord();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton2.doClick();}
    }//GEN-LAST:event_jButton2KeyPressed
    
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick();}
    }//GEN-LAST:event_jButton1KeyPressed
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField3.transferFocus();}
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField2.transferFocus();}
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField1.transferFocus();}
    }//GEN-LAST:event_jTextField1KeyPressed
    protected void insertRecord(){
        if ( id == 0){
            try{
                stm = dbInternal.createStatement();
                stm.execute("INSERT INTO ls_dlajnosti (nomer, namedlaj, id_ncl) VALUES('"+  jTextField1.getText() + "', '" +jTextField2.getText()+ "','" + jTextField3.getText()+"')");
            }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        }else{
            try{
                stm = dbInternal.createStatement();
                stm.execute("UPDATE ls_dlajnosti SET nomer = '"+  jTextField1.getText() + "', namedlaj = '" +jTextField2.getText()+ "', id_ncl ='" + jTextField3.getText()+"' WHERE id =" +id);
            }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        }
        imakante.salary.FrmDlajnost.repaintTable();
        this.dispose();
        
    }
    
    
    public void revalidateTextFields(){
        
        if (id!=0){
            try{
                System.out.println("id " + id);
                stm = dbInternal.createStatement();
                rs = stm.executeQuery("SELECT * FROM ls_dlajnosti WHERE id = " + id);
                while(rs.next()){
                    jTextField1.setText(rs.getString("nomer"));
                    jTextField2.setText(rs.getString("namedlaj"));
                    jTextField3.setText(rs.getString("id_ncl"));
                }
            }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        }else{
            int nom = imakante.com.pubMethods.getMaxNum("SELECT nomer FROM ls_dlajnosti",dbInternal, "nomer") + 1;
            jTextField1.setText(""+nom);
            
        }
    }
    protected void closeResource(){
        if(rs!=null){ try{  rs.close();
        }catch(java.sql.SQLException sqle){}}
        if(stm!=null){ try{ stm.close();
        }catch(java.sql.SQLException sqle){}}
        
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    public static javax.swing.JTextField jTextField1;
    public static javax.swing.JTextField jTextField2;
    public static javax.swing.JTextField jTextField3;
    // End of variables declaration//GEN-END:variables
    public int id;
    public java.sql.Connection dbInternal;
    public java.sql.Statement stm;
    public java.sql.ResultSet rs;
    public javax.swing.JFrame JFParentFrame;
}
