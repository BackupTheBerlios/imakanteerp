

package imakante.salary;

import javax.swing.JOptionPane;


public class frmLock_app_salary extends javax.swing.JDialog implements java.awt.event.WindowListener {
    
    /** Creates new form frmLock_app_salary */
    public frmLock_app_salary(salary_main m, boolean modal) {
        super(m, modal);
        main = m;
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        
        initComponents();
      int x = (((dim.width)-(this.getSize().width))/2);
      int y = (((dim.height)-(this.getSize().height))/2);
       
        this.setLocation(x,y);
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jPasswordField1 = new javax.swing.JPasswordField();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jLabel3.setText("\u041f\u0410\u0420\u041e\u041b\u0410");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
        jPanel1.add(jLabel3, gridBagConstraints);

        jPasswordField1.setFont(new java.awt.Font("Tahoma", 0, 11));
        jPasswordField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jPasswordField1ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
        jPanel1.add(jPasswordField1, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\imakante\\imakante_small.jpg"));
        jPanel2.add(jLabel1);

        jLabel2.setForeground(new java.awt.Color(255, 0, 0));
        jLabel2.setText("\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0435 \u0437\u0430\u043a\u043b\u044e\u0447\u0435\u043d\u0430, \u0437\u0430 \u0434\u0430 \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u0435 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043f\u0430\u0440\u043e\u043b\u0430!!");
        jPanel2.add(jLabel2);

        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jButton1.setText("\u041e\u0422\u041a\u041b\u042e\u0427\u0418");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton1);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        UnloadWindow();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jPasswordField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jPasswordField1ActionPerformed
        
    }//GEN-LAST:event_jPasswordField1ActionPerformed
     protected void UnloadWindow(){
        String passT =  main.getPass();
        String lPass = new String(jPasswordField1.getPassword());
        System.out.println(passT + "  "+ lPass);
        if (passT.equals(lPass)){
            this.dispose();
        }else{  JOptionPane.showMessageDialog(null,"Невярна парола .\n Погледнете дали и включена кирилицата.","ИМАКАНТЕ - Личен Състав",JOptionPane.WARNING_MESSAGE);
        jPasswordField1.requestFocus();
                }
                
                
            }
     public void windowOpened(java.awt.event.WindowEvent e){
            }
            public void windowClosing(java.awt.event.WindowEvent e){
                UnloadWindow();
            }
            public void windowClosed(java.awt.event.WindowEvent e){
            }
            public void windowIconified(java.awt.event.WindowEvent e){
            }
            public void windowDeiconified(java.awt.event.WindowEvent e){
            }
            public void windowActivated(java.awt.event.WindowEvent e){
            }
            public void windowDeactivated(java.awt.event.WindowEvent e){
            }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPasswordField jPasswordField1;
    // End of variables declaration//GEN-END:variables
    public salary_main main = null;
}
