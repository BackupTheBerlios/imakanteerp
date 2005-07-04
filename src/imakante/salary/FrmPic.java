
package imakante.salary;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class FrmPic extends javax.swing.JInternalFrame implements java.awt.event.WindowListener{
    
    
    public FrmPic(java.sql.Connection con) {
        super("Снимки",true,true,true,true);
        dbInternal= con;
        initStRs();
        initModelTable();
        initComponents();
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(jTable);
        jPanel3 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jButton8 = new javax.swing.JButton();
        jButton9 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel3.setLayout(new java.awt.GridBagLayout());

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jPanel4.setLayout(new java.awt.BorderLayout());

        jPanel4.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jPanel4.add(jLabel1, java.awt.BorderLayout.CENTER);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 150;
        gridBagConstraints.ipady = 200;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 20, 20);
        jPanel3.add(jPanel4, gridBagConstraints);

        jButton8.setText("\u041e\u0442\u0432\u043e\u0440\u0438");
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 100;
        jPanel3.add(jButton8, gridBagConstraints);

        jButton9.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 100;
        jPanel3.add(jButton9, gridBagConstraints);

        getContentPane().add(jPanel3, java.awt.BorderLayout.WEST);

        jButton1.setText("\u0417\u0410\u041f\u0410\u0417\u0418");
        jPanel2.add(jButton1);

        jButton2.setText("\u041f\u041e\u041a\u0410\u0416\u0418");
        jPanel2.add(jButton2);

        jButton3.setText("\u0418\u0417\u0425\u041e\u0414");
        jPanel2.add(jButton3);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        javax.swing.JFrame frame = new JFrame();
        javax.swing.JFileChooser chooser = new JFileChooser();
        chooser.addChoosableFileFilter(new jpegFilter());
        chooser.showOpenDialog(frame);
        
        java.io.File file = chooser.getSelectedFile();
        try{
            image = ImageIO.read(file);
            
            
        } catch(java.io.IOException ioex){}
        icon = new ImageIcon();
        icon.setImage(image);
        jLabel1.setIcon(icon);
        jLabel1.repaint();
        jPanel4.revalidate();
        jPanel4.repaint();
        
        
    }//GEN-LAST:event_jButton8ActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    public javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    public javax.swing.JPanel jPanel4;
    public static javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    javax.swing.JFrame frame;
    javax.swing.JFileChooser chooser;
    java.awt.Image image;
    public java.sql.Blob bimage;
    protected javax.swing.ImageIcon   icon;
    public java.io.InputStream input;
    public java.io.ByteArrayOutputStream output;
    public static final String strSQL = "SELECT id, nomer, first, second, family, egn FROM ls_main ORDER BY Id ASC";
    public static final String Names[] = {"","Номер", "Собствено", "Презиме","Фамилия","ЕГН"};
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stCus;
    public static java.sql.ResultSet rsCus;
    
    protected void UnloadWindow(){
        try {
            rsCus.close();
            stCus.close();
        } catch(java.sql.SQLException e) {
            JOptionPane.showMessageDialog(null,"Грешка ИЛС-С03Р  Възникнал проблем при затваряне на ресурси.\n","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
        this.dispose();
        
    }
    public static void initStRs(){
        try {
            stCus = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                    java.sql.ResultSet.CONCUR_READ_ONLY);
            rsCus = stCus.executeQuery(strSQL);
        } catch (java.sql.SQLException e) {JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);}
        
    }
    public static void initModelTable(){
        model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
        jTable = new imakante.com.CustomTable(model);
    }
    public static void reloadRecord() {
        try{
            rsCus.close();
            stCus.close();
            initStRs();
            jScrollPane1.getViewport().remove(jTable);
            initModelTable();
            jScrollPane1.getViewport().add(jTable);
            jScrollPane1.repaint();
            
        } catch (Exception e){}
    }
    
    public void getImageDB(){
        try{
            if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                rsCus = dbInternal.createStatement().executeQuery("SELECT pic From ls_pic where id_rabotnik = " + row );
                // if record found process blob
                if (rsCus.next()) {
                    // get blob
                    bimage = rsCus.getBlob("pic");
                    // setup the streams to process blob
                    java.io.InputStream input = bimage.getBinaryStream();
                   // output = new ByteArrayOutputStream();
                    // set read buffer size
                    byte[] rb = new byte[1024];
                    int ch = 0;
                    // process blob
                    while ((ch=input.read(rb)) != -1) {
                        output.write(rb, 0, ch);
                    }
                    // transfer to byte buffer
                    byte[] b = output.toByteArray();
                    input.close();
                    output.close();
                    // load final buffer to image icon
                    icon = new ImageIcon(b);
                }
                
            }
        } catch (Exception sqlE) {
            if (sqlE.getMessage() != null) {
                System.out.println(sqlE.getMessage());
            } else {
                JOptionPane.showMessageDialog(null,"Моля изберете запис.","Не е избран запис",
                        JOptionPane.INFORMATION_MESSAGE);
            }
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
    class jpegFilter extends javax.swing.filechooser.FileFilter {
        public boolean accept(java.io.File file) {
            String filename = file.getName();
            return filename.endsWith(".jpg");
        }
        public String getDescription() {
            return "*.jpg";
        }
    }
}
