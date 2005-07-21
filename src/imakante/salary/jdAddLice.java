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
        jtfIDCard = new javax.swing.JTextField();
        jlIDCDate = new javax.swing.JLabel();
        jtfIDCDate = new javax.swing.JTextField();
        jsNums2Names = new javax.swing.JSeparator();
        jlName = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jlMName = new javax.swing.JLabel();
        jtfMName = new javax.swing.JTextField();
        jlFNmae = new javax.swing.JLabel();
        jtfFName = new javax.swing.JTextField();
        jsNames2Birth = new javax.swing.JSeparator();
        jlEGN = new javax.swing.JLabel();
        jtfEGN = new javax.swing.JTextField();
        jlBDate = new javax.swing.JLabel();
        jtfBDate = new javax.swing.JTextField();
        jlGender = new javax.swing.JLabel();
        jcbGender = new javax.swing.JComboBox();
        jpPicture = new javax.swing.JPanel();
        jlPic = new javax.swing.JLabel();
        jpWhereabouts = new javax.swing.JPanel();
        jlArea = new javax.swing.JLabel();
        jtfArea = new javax.swing.JTextField();
        jlPCode = new javax.swing.JLabel();
        jtfPCode = new javax.swing.JTextField();
        jlCity = new javax.swing.JLabel();
        jtfCity = new javax.swing.JTextField();
        jlAddress = new javax.swing.JLabel();
        jtfAddress = new javax.swing.JTextField();
        jsHabitat2Comm = new javax.swing.JSeparator();
        jlPhone = new javax.swing.JLabel();
        jtfPhone = new javax.swing.JTextField();
        jlMobile = new javax.swing.JLabel();
        jtfMobile = new javax.swing.JTextField();
        jlEmail = new javax.swing.JLabel();
        jtfEmail = new javax.swing.JTextField();
        jpWorker = new javax.swing.JPanel();
        jpButtons = new javax.swing.JPanel();
        jbAdd = new javax.swing.JButton();
        jbChange = new javax.swing.JButton();
        jbQuit = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jpPerson.setLayout(new java.awt.GridBagLayout());

        jpPerson.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jlNumber.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlNumber.setText("\u2116");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpPerson.add(jlNumber, gridBagConstraints);

        jtfNumber.setColumns(5);
        jtfNumber.setFont(new java.awt.Font("Tahoma", 0, 11));
        jtfNumber.setMinimumSize(new java.awt.Dimension(10, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jtfNumber, gridBagConstraints);

        jlIDCard.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlIDCard.setText("\u2116 \u043d\u0430 \u041b\u041a");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpPerson.add(jlIDCard, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jtfIDCard, gridBagConstraints);

        jlIDCDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlIDCDate.setText("\u0418\u0437\u0434\u0430\u0434\u0435\u043d\u0430 \u043d\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpPerson.add(jlIDCDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpPerson.add(jtfIDCDate, gridBagConstraints);

        jsNums2Names.setPreferredSize(new java.awt.Dimension(3, 5));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jpPerson.add(jsNums2Names, gridBagConstraints);

        jlName.setText("\u0418\u043c\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jlName, gridBagConstraints);

        jtfName.setColumns(12);
        jtfName.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jtfName, gridBagConstraints);

        jlMName.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlMName.setText("\u041f\u0440\u0435\u0437\u0438\u043c\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jlMName, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jtfMName, gridBagConstraints);

        jlFNmae.setText("\u0424\u0430\u043c\u0438\u043b\u0438\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpPerson.add(jlFNmae, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpPerson.add(jtfFName, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jpPerson.add(jsNames2Birth, gridBagConstraints);

        jlEGN.setText("\u0415\u0413\u041d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jlEGN, gridBagConstraints);

        jtfEGN.setColumns(10);
        jtfEGN.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 10);
        jpPerson.add(jtfEGN, gridBagConstraints);

        jlBDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u0440\u0430\u0436\u0434\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jlBDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 10);
        jpPerson.add(jtfBDate, gridBagConstraints);

        jlGender.setText("\u041f\u043e\u043b");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpPerson.add(jlGender, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jpPerson.add(jcbGender, gridBagConstraints);

        jpPicture.setLayout(new java.awt.GridBagLayout());

        jlPic.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlPic.setText("\u0421\u043d\u0438\u043c\u043a\u0430");
        jlPic.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jpPicture.add(jlPic, new java.awt.GridBagConstraints());

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridheight = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.ipadx = 3;
        gridBagConstraints.ipady = 5;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpPerson.add(jpPicture, gridBagConstraints);

        jtpDataInput.addTab("\u041b\u0438\u0447\u043d\u0438 \u0434\u0430\u043d\u043d\u0438", jpPerson);

        jpWhereabouts.setLayout(new java.awt.GridBagLayout());

        jpWhereabouts.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jlArea.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlArea.setText("\u041e\u0431\u043b\u0430\u0441\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpWhereabouts.add(jlArea, gridBagConstraints);

        jtfArea.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(6, 20, 6, 10);
        jpWhereabouts.add(jtfArea, gridBagConstraints);

        jlPCode.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlPCode.setText("\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWhereabouts.add(jlPCode, gridBagConstraints);

        jtfPCode.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWhereabouts.add(jtfPCode, gridBagConstraints);

        jlCity.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlCity.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpWhereabouts.add(jlCity, gridBagConstraints);

        jtfCity.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpWhereabouts.add(jtfCity, gridBagConstraints);

        jlAddress.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlAddress.setText("\u0410\u0434\u0440\u0435\u0441");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWhereabouts.add(jlAddress, gridBagConstraints);

        jtfAddress.setFont(new java.awt.Font("Tahoma", 0, 11));
        jtfAddress.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtfAddressActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWhereabouts.add(jtfAddress, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jpWhereabouts.add(jsHabitat2Comm, gridBagConstraints);

        jlPhone.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlPhone.setText("\u0414\u043e\u043c\u0430\u0448\u0435\u043d \u0442\u0435\u043b\u0435\u0444\u043e\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpWhereabouts.add(jlPhone, gridBagConstraints);

        jtfPhone.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 10);
        jpWhereabouts.add(jtfPhone, gridBagConstraints);

        jlMobile.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlMobile.setText("\u041c\u043e\u0431\u0438\u043b\u0435\u043d \u0442\u0435\u043b\u0435\u0444\u043e\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWhereabouts.add(jlMobile, gridBagConstraints);

        jtfMobile.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 10);
        jpWhereabouts.add(jtfMobile, gridBagConstraints);

        jlEmail.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlEmail.setText("\u0415\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u0430 \u043f\u043e\u0449\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpWhereabouts.add(jlEmail, gridBagConstraints);

        jtfEmail.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jpWhereabouts.add(jtfEmail, gridBagConstraints);

        jtpDataInput.addTab("\u041c\u0435\u0441\u0442\u043e\u0436\u0438\u0432\u0435\u0435\u043d\u0435 \u0438 \u041a\u043e\u043c\u0443\u043d\u0438\u043a\u0430\u0446\u0438\u044f", jpWhereabouts);

        jpWorker.setLayout(new java.awt.GridBagLayout());

        jpWorker.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jpWorker.setRequestFocusEnabled(false);
        jtpDataInput.addTab("\u0414\u0430\u043d\u043d\u0438 \u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u043a\u0430", jpWorker);

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

    private void jtfAddressActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtfAddressActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfAddressActionPerformed

    private void jbQuitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbQuitActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jbQuitActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbAdd;
    private javax.swing.JButton jbChange;
    private javax.swing.JButton jbQuit;
    private javax.swing.JComboBox jcbGender;
    private javax.swing.JLabel jlAddress;
    private javax.swing.JLabel jlArea;
    private javax.swing.JLabel jlBDate;
    private javax.swing.JLabel jlCity;
    private javax.swing.JLabel jlEGN;
    private javax.swing.JLabel jlEmail;
    private javax.swing.JLabel jlFNmae;
    private javax.swing.JLabel jlGender;
    private javax.swing.JLabel jlIDCDate;
    private javax.swing.JLabel jlIDCard;
    private javax.swing.JLabel jlMName;
    private javax.swing.JLabel jlMobile;
    private javax.swing.JLabel jlName;
    private javax.swing.JLabel jlNumber;
    private javax.swing.JLabel jlPCode;
    private javax.swing.JLabel jlPhone;
    private javax.swing.JLabel jlPic;
    private javax.swing.JPanel jpButtons;
    private javax.swing.JPanel jpPerson;
    private javax.swing.JPanel jpPicture;
    private javax.swing.JPanel jpWhereabouts;
    private javax.swing.JPanel jpWorker;
    private javax.swing.JSeparator jsHabitat2Comm;
    private javax.swing.JSeparator jsNames2Birth;
    private javax.swing.JSeparator jsNums2Names;
    private javax.swing.JTextField jtfAddress;
    private javax.swing.JTextField jtfArea;
    private javax.swing.JTextField jtfBDate;
    private javax.swing.JTextField jtfCity;
    private javax.swing.JTextField jtfEGN;
    private javax.swing.JTextField jtfEmail;
    private javax.swing.JTextField jtfFName;
    private javax.swing.JTextField jtfIDCDate;
    private javax.swing.JTextField jtfIDCard;
    private javax.swing.JTextField jtfMName;
    private javax.swing.JTextField jtfMobile;
    private javax.swing.JTextField jtfName;
    private javax.swing.JTextField jtfNumber;
    private javax.swing.JTextField jtfPCode;
    private javax.swing.JTextField jtfPhone;
    private javax.swing.JTabbedPane jtpDataInput;
    // End of variables declaration//GEN-END:variables
    
}
