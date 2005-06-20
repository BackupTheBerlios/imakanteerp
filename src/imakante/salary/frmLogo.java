/*
 * frmLogo.java
 *
 * Created on Четвъвтък, 2005, Юни 16, 8:58
 */

package imakante.salary;
import javax.swing.SwingUtilities;

/**
 *
 * @author  user
 */
public class frmLogo extends javax.swing.JFrame implements Runnable {
    
 
    public void run() {
        
        initComponents();
        this.setLocation(((java.awt.Toolkit.getDefaultToolkit().getScreenSize().width - (this.getSize().width)))/2,
                ((java.awt.Toolkit.getDefaultToolkit().getScreenSize().height - (this.getSize().height)))/2);
        this.setVisible(true);
    }

    public void dispose() {

        super.dispose();
    }
   
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        panel1 = new java.awt.Panel();
        jLabel1 = new javax.swing.JLabel();
        panel2 = new java.awt.Panel();
        jProgressBar1 = new javax.swing.JProgressBar();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setFont(new java.awt.Font("Tahoma", 0, 10));
        setResizable(false);
        panel1.setLayout(new java.awt.BorderLayout());

        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\imakante\\imakante_l2.jpg"));
        panel1.add(jLabel1, java.awt.BorderLayout.CENTER);

        getContentPane().add(panel1, java.awt.BorderLayout.CENTER);

        panel2.setLayout(new java.awt.BorderLayout());

        panel2.add(jProgressBar1, java.awt.BorderLayout.CENTER);

        getContentPane().add(panel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
   
   
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JProgressBar jProgressBar1;
    private java.awt.Panel panel1;
    private java.awt.Panel panel2;
    // End of variables declaration//GEN-END:variables
    
}
