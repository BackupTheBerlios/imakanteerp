
package imakante.administrativ;
import javax.swing.JOptionPane;

public class Frm_admin_ls_user_r extends javax.swing.JInternalFrame implements java.awt.event.WindowListener{
    
   
    public Frm_admin_ls_user_r(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame) 
    throws java.sql.SQLException {
        super("Здшиефсшевс", false, true,true, true);
        initComponents();
    }
    
 
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041d\u043e\u0432 \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b");
        jPanel2.add(jButton1);

        jButton2.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jPanel2.add(jButton2);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
     
     protected void UnloadWindow(){
        try {
            rsCus.close();
            stm.close();
        } catch(java.sql.SQLException e) {
            JOptionPane.showMessageDialog(null,"Грешка ИЛС-С03Р  Възникнал проблем при затваряне на ресурси.\n","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
        this.dispose();
        
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
    private javax.swing.JButton jButton2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    java.sql.Connection dbInternal;
    java.sql.Statement stm;
    java.sql.ResultSet rsCus;
    javax.swing.JFrame JFParentFrame;
}
