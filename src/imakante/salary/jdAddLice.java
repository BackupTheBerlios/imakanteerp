/*
 * jdAddLice.java
 *
 * Created on Четвъвтък, 2005, Юли 21, 18:46
 */

package imakante.salary;

/**
 *
 * @author  jp
 */
public class jdAddLice extends javax.swing.JDialog {
    
    public jdAddLice(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jtpDataInput = new javax.swing.JTabbedPane();
        jpPerson = new javax.swing.JPanel();
        jlNumber = new javax.swing.JLabel();
        jtfNumber = new javax.swing.JTextField();
        jlIDCard = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jTextField5 = new javax.swing.JTextField();
        jTextField6 = new javax.swing.JTextField();
        jTextField7 = new javax.swing.JTextField();
        jTextField8 = new javax.swing.JTextField();
        jcbGender = new javax.swing.JComboBox();
        jpPicture = new javax.swing.JPanel();
        jlPic = new javax.swing.JLabel();
        jpWhereabouts = new javax.swing.JPanel();
        jpWorker = new javax.swing.JPanel();
        jpButtons = new javax.swing.JPanel();
        jbAdd = new javax.swing.JButton();
        jbChange = new javax.swing.JButton();
        jbQuit = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jpPerson.setLayout(new java.awt.GridBagLayout());

        jlNumber.setText("\u2116");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        jpPerson.add(jlNumber, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        jpPerson.add(jtfNumber, gridBagConstraints);

        jlIDCard.setText("\u2116 \u043d\u0430 \u041b\u041a");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 0;
        jpPerson.add(jlIDCard, gridBagConstraints);

        jLabel3.setText("\u0418\u0437\u0434\u0430\u0434\u0435\u043d\u0430 \u043d\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 7;
        gridBagConstraints.gridy = 0;
        jpPerson.add(jLabel3, gridBagConstraints);

        jLabel4.setText("\u0418\u043c\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        jpPerson.add(jLabel4, gridBagConstraints);

        jLabel5.setText("\u041f\u0440\u0435\u0437\u0438\u043c\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 3;
        jpPerson.add(jLabel5, gridBagConstraints);

        jLabel6.setText("\u0424\u0430\u043c\u0438\u043b\u0438\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 7;
        gridBagConstraints.gridy = 3;
        jpPerson.add(jLabel6, gridBagConstraints);

        jLabel7.setText("\u0415\u0413\u041d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        jpPerson.add(jLabel7, gridBagConstraints);

        jLabel8.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u0440\u0430\u0436\u0434\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 6;
        jpPerson.add(jLabel8, gridBagConstraints);

        jLabel9.setText("\u041f\u043e\u043b");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 7;
        gridBagConstraints.gridy = 6;
        jpPerson.add(jLabel9, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 1;
        jpPerson.add(jTextField2, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 7;
        gridBagConstraints.gridy = 1;
        jpPerson.add(jTextField3, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        jpPerson.add(jTextField4, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        jpPerson.add(jTextField5, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        jpPerson.add(jTextField6, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        jpPerson.add(jTextField7, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        jpPerson.add(jTextField8, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 7;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        jpPerson.add(jcbGender, gridBagConstraints);

        jlPic.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlPic.setText("\u0421\u043d\u0438\u043c\u043a\u0430");
        jlPic.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jpPicture.add(jlPic);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 10;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 4;
        gridBagConstraints.gridheight = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.ipadx = 3;
        gridBagConstraints.ipady = 5;
        jpPerson.add(jpPicture, gridBagConstraints);

        jtpDataInput.addTab("tab1", jpPerson);

        jpWhereabouts.setLayout(new java.awt.GridBagLayout());

        jtpDataInput.addTab("tab2", jpWhereabouts);

        jpWorker.setLayout(new java.awt.GridBagLayout());

        jtpDataInput.addTab("tab3", jpWorker);

        getContentPane().add(jtpDataInput, java.awt.BorderLayout.CENTER);

        jbAdd.setText("\u041f\u0440\u0438\u0431\u0430\u0432\u0438");
        jpButtons.add(jbAdd);

        jbChange.setText("\u041f\u0440\u043e\u043c\u0435\u043d\u0438");
        jpButtons.add(jbChange);

        jbQuit.setText("\u041e\u0442\u043a\u0430\u0437");
        jbQuit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbQuitActionPerformed(evt);
            }
        });

        jpButtons.add(jbQuit);

        getContentPane().add(jpButtons, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents

    private void jbQuitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbQuitActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jbQuitActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JButton jbAdd;
    private javax.swing.JButton jbChange;
    private javax.swing.JButton jbQuit;
    private javax.swing.JComboBox jcbGender;
    private javax.swing.JLabel jlIDCard;
    private javax.swing.JLabel jlNumber;
    private javax.swing.JLabel jlPic;
    private javax.swing.JPanel jpButtons;
    private javax.swing.JPanel jpPerson;
    private javax.swing.JPanel jpPicture;
    private javax.swing.JPanel jpWhereabouts;
    private javax.swing.JPanel jpWorker;
    private javax.swing.JTextField jtfNumber;
    private javax.swing.JTabbedPane jtpDataInput;
    // End of variables declaration//GEN-END:variables
    
}
