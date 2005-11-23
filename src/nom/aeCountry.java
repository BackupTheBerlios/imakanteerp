
package nom;

import java.awt.event.KeyEvent;
import imakante.com.vcomponents.*;


public class aeCountry extends iDialog{
    
    public aeCountry(imakante.com.vcomponents.iInternalFrame frame, boolean ismodal,int row, int id, int code, String name) {
        super(frame, ismodal);
        this.row = row;
        this.id = id;
        this.code = code;
        this.name =name;
        initComponents();
        getNavigatiionState();
        this.setResizable(false);
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
        jLabel2.setText(""+code);
        jLabel3 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField1.setText(name);
        jPanel4 = new javax.swing.JPanel();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton2.setEnabled(false);
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(new javax.swing.border.TitledBorder(""));
        jLabel1.setText("\u041d\u043e\u043c\u0435\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel1.add(jLabel1, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jPanel1.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0414\u044a\u0440\u0436\u0430\u0432\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 10, 5);
        jPanel1.add(jLabel3, gridBagConstraints);

        jTextField1.setMaximumSize(new java.awt.Dimension(2147483647, 200));
        jTextField1.setPreferredSize(new java.awt.Dimension(160, 19));
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 20);
        jPanel1.add(jTextField1, gridBagConstraints);

        jPanel4.setBorder(new javax.swing.border.TitledBorder("\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f "));
        jButton4.setText("<<");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton4);

        jButton5.setText("<");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton5);

        jButton6.setText(">");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton6);

        jButton7.setText(">>");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton7);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        jPanel1.add(jPanel4, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jButton1.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jButton2StateChanged(evt);
            }
        });

        jPanel2.add(jButton2);

        jButton3.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton3);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        mOneMinus();
    }//GEN-LAST:event_jButton5ActionPerformed
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        goBegin();
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        goEnd();
    }//GEN-LAST:event_jButton7ActionPerformed
    
    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        mOnePlus();
    }//GEN-LAST:event_jButton6ActionPerformed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        closeDialog();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton2StateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jButton2StateChanged
        
    }//GEN-LAST:event_jButton2StateChanged
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        
        if (evt.getKeyCode() != KeyEvent.VK_ENTER){ jButton2.setEnabled(true);}
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){jTextField1.transferFocus(); }
        
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        getOldValue();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        update();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
    
    private nom.FrmCountry myparent;
    private int row = 0;
    private int id = 0;
    private int code =0;
    private String name = "";
    private String newname = "";
    private boolean isEdited = false;
    private boolean atEnd = false;
    private boolean atBegin = false;
    
    private void mOnePlus(){
        nom.FrmCountry.mOneRowPlus();
        if(nom.FrmCountry.isAtEnd()){
            jButtonMaxDisable();
           
        }
         jButtonMinEnable();
        repaintComp();
    }
    
    private void mOneMinus(){
        nom.FrmCountry.mOneRowMinus();
        if(nom.FrmCountry.isAtBegining()){
            jButtonMinDisable();
            
        }
        jButtonMaxEnable();
        repaintComp();
    }
    private void goBegin(){
        nom.FrmCountry.mTableBegining();
        jButtonMinDisable();
        jButtonMaxEnable();
        repaintComp();
    }
    
    private void goEnd(){
        nom.FrmCountry.mTableEnd();
        jButtonMaxDisable();
        jButtonMinEnable();
        repaintComp();
        
    }
    
    private void repaintComp(){
        id = nom.FrmCountry.getId();
        System.out.println(""+id);
        code = nom.FrmCountry.getCode();
        System.out.println(""+code);
        name = nom.FrmCountry.getNameC();
        System.out.println(name);
        jLabel2.setText(""+code); jLabel2.repaint();
        jTextField1.setText(name); jTextField1.repaint();
    }
    
    private void update(){
        
        nom.FrmCountry.updateRow(id, code, jTextField1.getText());
        nom.FrmCountry.refreshTable();
        
    }
    
    private void closeDialog(){
        this.dispose();
    }
    
    private void getOldValue(){
        jTextField1.setText(name);
        
    }
    
    private void jButtonMaxDisable(){
        jButton6.setEnabled(false);
        jButton6.repaint();
        jButton7.setEnabled(false);
        jButton7.repaint();
    }
    
    private void jButtonMaxEnable(){
        jButton6.setEnabled(true);
        jButton6.repaint();
        jButton7.setEnabled(true);
        jButton7.repaint();
    }
    
    private void jButtonMinDisable(){
        jButton4.setEnabled(false);
        jButton4.repaint();
        jButton5.setEnabled(false);
        jButton5.repaint();
    }
    
    private void jButtonMinEnable(){
        jButton4.setEnabled(true);
        jButton4.repaint();
        jButton5.setEnabled(true);
        jButton5.repaint();
    }
    private void getNavigatiionState(){
     if(nom.FrmCountry.isAtBegining()){
            jButtonMinDisable();
            
        }
     if(nom.FrmCountry.isAtEnd()){
            jButtonMaxDisable();
           
        }
    }
}
