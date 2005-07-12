
package imakante.salary;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.PreparedStatement;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;


public class FrmPic extends javax.swing.JInternalFrame implements java.awt.event.WindowListener{
    
    
    public FrmPic(java.sql.Connection con) {
        super("\u0421\u041d\u0418\u041c\u041a\u0418",true,true,true,true);
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
        jPanel4.setLayout(null);

        jPanel4.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jPanel4.setMaximumSize(new java.awt.Dimension(151, 200));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setAutoscrolls(true);
        jLabel1.setMaximumSize(new java.awt.Dimension(150, 200));
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel1MouseClicked(evt);
            }
        });

        jPanel4.add(jLabel1);
        jLabel1.setBounds(2, 2, 150, 200);

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
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel3.add(jButton8, gridBagConstraints);

        jButton9.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel3.add(jButton9, gridBagConstraints);

        getContentPane().add(jPanel3, java.awt.BorderLayout.WEST);

        jButton1.setText("\u0417\u0410\u041f\u0410\u0417\u0418");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u041f\u041e\u041a\u0410\u0416\u0418");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton2);

        jButton3.setText("\u0418\u0417\u0425\u041e\u0414");
        jPanel2.add(jButton3);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        setImage_to_DB();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jLabel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseClicked
        
    }//GEN-LAST:event_jLabel1MouseClicked
    
    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton9ActionPerformed
        jLabel1.setIcon(null);
        jLabel1.repaint();
    }//GEN-LAST:event_jButton9ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        getImageDB();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        openImage_Dialog();
        
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
    public static final String Names[] = {"","\u041d\u043e\u043c\u0435\u0440", "\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043e",
            "\u041f\u0440\u0435\u0437\u0438\u043c\u0435","\u0424\u0430\u043c\u0438\u043b\u0438\u044f","\u0415\u0413\u041d"};
            public static imakante.com.CustomTableModel model;
            public static imakante.com.CustomTable jTable;
            public static java.sql.Connection dbInternal;
            public static java.sql.Statement stCus;
            public static java.sql.PreparedStatement ps;
            public static java.io.File file;
            public static java.sql.ResultSet rsCus;
            public static  ByteArrayInputStream inStream;
            public static InputStream streamedJpg;
            public byte[] b;
            public int fileLength;
            
            protected void UnloadWindow(){
                try{
                    rsCus.close();
                }catch(java.sql.SQLException sq){}
                try{
                    stCus.close();
                }catch(java.sql.SQLException sq){}
                this.dispose();
                
            }
            
            public void openImage_Dialog(){
                javax.swing.JFrame frame = new JFrame();
                javax.swing.JFileChooser chooser = new JFileChooser();
                chooser.addChoosableFileFilter(new jpegFilter());
                chooser.showOpenDialog(frame);
                
                file = chooser.getSelectedFile();
                try{
                    image = ImageIO.read(file);
                    image = image.getScaledInstance(150, 200, 1);
                    
                } catch(java.io.IOException ioex){}
                
                icon = new ImageIcon();
                icon.setImage(image);
                
                jLabel1.setIcon(icon);
                jLabel1.setSize(151, 201);
                jLabel1.repaint();
                
            }
            
            public static void initStRs(){
                try {
                    stCus = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                            java.sql.ResultSet.CONCUR_READ_ONLY);
                    rsCus = stCus.executeQuery(strSQL);
                } catch (java.sql.SQLException e) {}
                
            }
            
            public static void initModelTable(){
                model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
                jTable = new imakante.com.CustomTable(model);
                try{
                    rsCus.close();
                }catch(java.sql.SQLException sq){}
                try{
                    stCus.close();
                }catch(java.sql.SQLException sq){}
            }
            
            public static void reloadRecord() {
                try{
                    rsCus.close();
                }catch(java.sql.SQLException sq){}
                try{
                    stCus.close();
                }catch(java.sql.SQLException sq){}
                
                try{
                    initStRs();
                    jScrollPane1.getViewport().remove(jTable);
                    initModelTable();
                    jScrollPane1.getViewport().add(jTable);
                    jScrollPane1.repaint();
                    
                } catch (Exception e){}
            }
            
            
            public void setImage_to_DB(){
                
                if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                    int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                    try{
                        System.out.println("row  " + row);
                        PreparedStatement ps = dbInternal.prepareStatement("UPDATE ls_pic SET  pic = ? WHERE id_rabotnik = " + row );
                        try{
                            
                            fileLength = (int)file.length();
                            System.out.println("fail lenth " + fileLength);
                            InputStream streamedJpg = new FileInputStream(file);
                            
                        }catch(java.io.IOException iox){System.out.println("Problem pri faila");}
                        System.out.println("fail lenth " + fileLength);
                        ps.setBinaryStream(1,streamedJpg,fileLength);
                        
                        ps.executeUpdate();
                    }catch(java.sql.SQLException sqle){System.out.println("Problem pri sql");
                    sqle.printStackTrace();}
                    
                    
                }
            }
            
            public void getImageDB(){
                if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                    int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                    try{
                        rsCus = dbInternal.createStatement().executeQuery("SELECT pic From ls_pic where id_rabotnik = " + row );
                        if (rsCus.next()) {
                            // get blob
                            bimage = rsCus.getBlob("pic");
                            // setup the streams to process blob
                            java.io.InputStream input = bimage.getBinaryStream();
                            output = new ByteArrayOutputStream();
                            // set read buffer size
                            byte[] rb = new byte[102400];
                            int ch = 0;
                            try{
                                while ((ch=input.read(rb)) != -1) {
                                    output.write(rb, 0, ch);
                                }
                                // transfer to byte buffer
                                byte[] b = output.toByteArray();
                                input.close();
                                output.close();
                            }catch(java.io.IOException iox){}
                            rsCus.close();
                            
                            // load final buffer to image icon
                            icon = new ImageIcon(b);
                            jLabel1.setIcon(icon);
                            jLabel1.repaint();
                        }} catch(java.sql.SQLException sqle){}
                    
                    
                    
                    
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
