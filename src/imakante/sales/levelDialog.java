
package imakante.sales;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

public class levelDialog extends javax.swing.JDialog {
    
    /** Creates new form levelDialog */
    public levelDialog(imakante.sales.sales_main parent, boolean modal, int ModuleCode, LinkedHashMap area) {
        super(parent, modal);
        frame = parent;
        modul = ModuleCode;
        hash = new LinkedHashMap(area);
        initComponents();
        constructComboNames();
        writeH();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jComboBox1 = new javax.swing.JComboBox();
        jPasswordField1 = new javax.swing.JPasswordField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setLocationByPlatform(true);
        jLabel1.setText("\u041d\u0418\u0412\u041e:");

        jLabel2.setText("\u041f\u0410\u0420\u041e\u041b\u0410:");

        jTextField1.setInputVerifier(new imakante.com.InputIntegerVerifier(3));
        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jLabel3.setText("\u041a\u041e\u0427\u0410\u041d:");

        jComboBox1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboBox1KeyPressed(evt);
            }
        });

        jPasswordField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jPasswordField1KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(16, 16, 16)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel1)
                    .add(jLabel3)
                    .add(jLabel2))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jPasswordField1)
                    .add(jComboBox1, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 129, Short.MAX_VALUE))
                .add(34, 34, 34))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jPasswordField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(13, Short.MAX_VALUE))
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jPasswordField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPasswordField1KeyPressed
        if ( evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            if (checkPass()){
                outLevel = getLevel();
                outIndex = getKey();
            }else{
                outLevel = 1;
                outIndex = getKey();
            }
            close();
        }
        if ( evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE){
            this.dispose();
            
        }
    }//GEN-LAST:event_jPasswordField1KeyPressed
    
    private void jComboBox1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBox1KeyPressed
        if ( evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jComboBox1.transferFocus(); }
    }//GEN-LAST:event_jComboBox1KeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if ( evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jTextField1.transferFocus(); }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        
    }//GEN-LAST:event_jTextField1ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
    private imakante.sales.sales_main frame;
    private LinkedHashMap hash;
    private int modul= 0;
    private String namesCombo[];
    private int selectComboBoxItem;
    private int i= 0;
    
    private int outLevel = 1;
    private int outIndex = 1;
    
    private ArrayList in;
    
    private void writeH(){
        
        System.out.println(new ArrayList(hash.entrySet()));
    }
    
    private void constructComboNames(){
        in = new ArrayList(hash.keySet());
        for (Iterator it =hash.keySet().iterator(); it.hasNext(); ) {
            Object key = it.next();
            in.add(key);
            Object value = hash.get(key);
            jComboBox1.addItem(value);
            
        }
        
    }
    
    private int getLevel(){
        int level = 1;
        try {
            level = Integer.parseInt(this.jTextField1.getText());
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        return level;
    }
    
    private int getKey(){
        int d = 1;
        d = (Integer)in.get(jComboBox1.getSelectedIndex());
        return d;
        
    }
    private boolean checkPass(){
        String pss = new String(this.jPasswordField1.getPassword());
        if(pss.equals(imakante.com.NewMain.getPassword())){
            return true;
        }else{return false;}
    }
    
    //opisanie na formite koito she badat kontrolirani
    
    private void close(){
        if (modul==1){frame.loadImport();}
        if (modul==701){frame.loadKassss(getLevel(), getKey());
        System.out.println("701");}
        if (modul==702){frame.loadCasaOut(getLevel(), getKey());
        System.out.println("702");}    
         
        
        this.dispose();
    }
}
