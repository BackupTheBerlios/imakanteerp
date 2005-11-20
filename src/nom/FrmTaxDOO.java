
package nom;

import imakante.com.vcomponents.iInternalFrame;
import java.awt.event.WindowListener;

public class FrmTaxDOO extends iInternalFrame implements WindowListener {
    
    public FrmTaxDOO(String title, imakante.com.vcomponents.iFrame frame, int period, int pmonth, int pyear) {
        super("");
        myframe = frame;
        this.period = period;
        this.pmonth = pmonth;
        this.pyear = pyear;
        prepareConn();
        initComponents();
        setLablePeriod();
        this.setResizable(false);
        this.setClosable(true);
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabelYear = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabelMonth = new javax.swing.JLabel();
        jLabelLBrM = new javax.swing.JLabel();
        jLabelBrRDNI = new javax.swing.JLabel();
        jbCalendar = new javax.swing.JButton();
        jPanel5 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jtfPens1RabBefore = new javax.swing.JTextField();
        jtfPens1SlBefore = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jtfOZMRabBefore = new javax.swing.JTextField();
        jtfOZMSlBefore = new javax.swing.JTextField();
        jtfBezrabRabBefore = new javax.swing.JTextField();
        jtfUPFRabBefore = new javax.swing.JTextField();
        jtfUPFSlBefore = new javax.swing.JTextField();
        jtfGVRSBefore = new javax.swing.JTextField();
        jtfPens2RabAfter = new javax.swing.JTextField();
        jtfPens2SlAfter = new javax.swing.JTextField();
        jtfOZMRabAfter = new javax.swing.JTextField();
        jtfOZMSlAfter = new javax.swing.JTextField();
        jtfBezrabRabAfter = new javax.swing.JTextField();
        jtfUPFRabAfter = new javax.swing.JTextField();
        jtfUPFSlAfter = new javax.swing.JTextField();
        jtfGVRSAfter = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jtfKTU = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jtfMinZapl = new javax.swing.JTextField();
        jtfMaxOsP = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel4.setLayout(new java.awt.GridBagLayout());

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder("\u041f\u0435\u0440\u0438\u043e\u0434"));
        jLabel1.setText("\u0413\u043e\u0434\u0438\u043d\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabel1, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabelYear, gridBagConstraints);

        jLabel2.setText("\u041c\u0435\u0441\u0435\u0446");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabel2, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabelMonth, gridBagConstraints);

        jLabelLBrM.setText("\u0411\u0440\u043e\u0439 \u0440\u0430\u0431. \u0434\u043d\u0438  \u0432 \u043c\u0435\u0441\u0435\u0446\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabelLBrM, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabelBrRDNI, gridBagConstraints);

        jbCalendar.setText("\u041a\u0430\u043b\u0435\u043d\u0434\u0430\u0440");
        jbCalendar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbCalendarActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jbCalendar, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        jPanel1.add(jPanel4, gridBagConstraints);

        jPanel5.setLayout(new java.awt.GridBagLayout());

        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder("\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"));
        jLabel4.setForeground(new java.awt.Color(0, 102, 204));
        jLabel4.setText("\u0417\u0430 \u0440\u043e\u0434\u0435\u043d\u0438 \u043f\u0440\u0435\u0434\u0438 1.01.1960");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(15, 5, 5, 10);
        jPanel5.add(jLabel4, gridBagConstraints);

        jLabel5.setForeground(new java.awt.Color(0, 102, 204));
        jLabel5.setText("\u0417\u0430 \u0440\u043e\u0434\u0435\u043d\u0438 \u0441\u043b\u0435\u0434 31.12.1959");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(15, 5, 5, 5);
        jPanel5.add(jLabel5, gridBagConstraints);

        jLabel3.setText("\u0424\u043e\u043d\u0434 \"\u041f\u0435\u043d\u0441\u0438\u0438\" \u0437\u0430 \u0441\u043c\u0435\u0442\u043a\u0430 \u043d\u0430 \u043e\u0441\u0438\u0433\u0443\u0440\u0438\u0442\u0435\u043b\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel3, gridBagConstraints);

        jtfPens1RabBefore.setMaximumSize(new java.awt.Dimension(50, 50));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jPanel5.add(jtfPens1RabBefore, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jPanel5.add(jtfPens1SlBefore, gridBagConstraints);

        jLabel6.setText("\u0424\u043e\u043d\u0434 \"\u041f\u0435\u043d\u0441\u0438\u0438\" \u0437\u0430 \u0441\u043c\u0435\u0442\u043a\u0430 \u043d\u0430 \u043e\u0441\u0438\u0433\u0443\u0440\u0435\u043d\u0438\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel6, gridBagConstraints);

        jLabel9.setText("\u0424\u043e\u043d\u0434 \"\u041e\u0417\u041c\" \u0437\u0430 \u0441\u043c\u0435\u0442\u043a\u0430 \u043d\u0430 \u043e\u0441\u0438\u0433\u0443\u0440\u0438\u0442\u0435\u043b\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel9, gridBagConstraints);

        jLabel10.setText("\u0424\u043e\u043d\u0434 \"\u041e\u0417\u041c\" \u0437\u0430 \u0441\u043c\u0435\u0442\u043a\u0430 \u043d\u0430 \u043e\u0441\u0438\u0433\u0443\u0440\u0435\u043d\u0438\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel10, gridBagConstraints);

        jLabel11.setText("\u0424\u043e\u043d\u0434 \"\u0411\u0435\u0437\u0440\u0430\u0431\u043e\u0442\u0438\u0446\u0430\" \u0437\u0430 \u0441\u043c\u0435\u0442\u043a\u0430 \u043d\u0430 \u043e\u0441\u0438\u0433\u0443\u0440\u0438\u0442\u0435\u043b\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel11, gridBagConstraints);

        jLabel12.setText("\u0417\u0430 \"\u0423\u041f\u0424\" \u0437\u0430 \u0441\u043c\u0435\u0442\u043a\u0430 \u043d\u0430 \u043e\u0441\u0438\u0433\u0443\u0440\u0438\u0442\u0435\u043b\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel12, gridBagConstraints);

        jLabel13.setText("\u0417\u0430 \"\u0423\u041f\u0424\" \u0437\u0430 \u0441\u043c\u0435\u0442\u043a\u0430 \u043d\u0430 \u043e\u0441\u0438\u0433\u0443\u0440\u0435\u043d\u0438\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 10;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel13, gridBagConstraints);

        jLabel14.setText("\u0417\u0430 \u0444\u043e\u043d\u0434 \"\u0413\u0412\u0420\u0421\"");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 11;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel14, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jPanel5.add(jtfOZMRabBefore, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jPanel5.add(jtfOZMSlBefore, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jPanel5.add(jtfBezrabRabBefore, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jPanel5.add(jtfUPFRabBefore, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 10;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.weightx = 50.0;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jPanel5.add(jtfUPFSlBefore, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 11;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.weightx = 50.0;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jPanel5.add(jtfGVRSBefore, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jtfPens2RabAfter, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.ipadx = 50;
        jPanel5.add(jtfPens2SlAfter, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.ipadx = 50;
        jPanel5.add(jtfOZMRabAfter, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.ipadx = 50;
        jPanel5.add(jtfOZMSlAfter, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.ipadx = 50;
        jPanel5.add(jtfBezrabRabAfter, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.ipadx = 50;
        jPanel5.add(jtfUPFRabAfter, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 10;
        gridBagConstraints.ipadx = 50;
        jPanel5.add(jtfUPFSlAfter, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 11;
        gridBagConstraints.ipadx = 50;
        jPanel5.add(jtfGVRSAfter, gridBagConstraints);

        jLabel7.setText("\u041a\u043e\u0435\u0444\u0438\u0446\u0438\u0435\u043d\u0442 \u043d\u0430 \u0422\u0440\u0443\u0434\u043e\u0432\u043e \u0423\u0447\u0430\u0441\u0442\u0438\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jPanel5.add(jLabel7, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jPanel5.add(jtfKTU, gridBagConstraints);

        jLabel8.setText("\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u043d\u0430 \u0437\u0430\u043f\u043b\u0430\u0442\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel8, gridBagConstraints);

        jLabel15.setText("\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u0435\u043d \u043e\u0441\u0438\u0433\u0443\u0440\u0438\u0442\u0435\u043b\u0435\u043d \u043f\u0440\u0430\u0433");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jLabel15, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel5.add(jtfMinZapl, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(4, 4, 4, 4);
        jPanel5.add(jtfMaxOsP, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        jPanel1.add(jPanel5, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jButton2.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jPanel3.add(jButton2);

        jButton3.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jPanel3.add(jButton3);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jbCalendarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCalendarActionPerformed
        showCalendar();
    }//GEN-LAST:event_jbCalendarActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel jLabelBrRDNI;
    private javax.swing.JLabel jLabelLBrM;
    private javax.swing.JLabel jLabelMonth;
    private javax.swing.JLabel jLabelYear;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JButton jbCalendar;
    private javax.swing.JTextField jtfBezrabRabAfter;
    private javax.swing.JTextField jtfBezrabRabBefore;
    private javax.swing.JTextField jtfGVRSAfter;
    private javax.swing.JTextField jtfGVRSBefore;
    private static javax.swing.JTextField jtfKTU;
    private javax.swing.JTextField jtfMaxOsP;
    private javax.swing.JTextField jtfMinZapl;
    private javax.swing.JTextField jtfOZMRabAfter;
    private javax.swing.JTextField jtfOZMRabBefore;
    private javax.swing.JTextField jtfOZMSlAfter;
    private javax.swing.JTextField jtfOZMSlBefore;
    private static javax.swing.JTextField jtfPens1RabBefore;
    private javax.swing.JTextField jtfPens1SlBefore;
    private javax.swing.JTextField jtfPens2RabAfter;
    private javax.swing.JTextField jtfPens2SlAfter;
    private javax.swing.JTextField jtfUPFRabAfter;
    private javax.swing.JTextField jtfUPFRabBefore;
    private javax.swing.JTextField jtfUPFSlAfter;
    private javax.swing.JTextField jtfUPFSlBefore;
    // End of variables declaration//GEN-END:variables
    private static java.sql.Connection conn;
    private static java.sql.ResultSet rs;
    private static  nom.taxDOO taxObject;
    private static imakante.com.CustomTableModel model;
    private static imakante.com.CustomTable table;
    private imakante.com.vcomponents.iFrame myframe;
    private imakante.salary.calendarClass cal;
    private int period, pmonth, pyear;
    private int dni5=22;
    private static double ktu = 0;                 // koeficient na trudowo u4astie
    private static double min_rab_zaplata = 0;     // minimalna rabotna zaplata
    private static double max_os_prag = 0;         // maksimalen osiguritelen prag
    private static double pensii1_sl = 0;          // fond Pensionen ot slujitelq za rodenite predi 1960 g
    private static double pensii1_rb = 0;          // fond Pensionen ot rabotodatelq za rodenite predi 1960 g
    private static double pensii2_sl = 0;          // fond Pensionen ot slujitelq za rodenite sled 1960 g
    private static double pensii2_rb = 0;          // fond Pensionen ot slujitelq za rodenite sled 1960 g
    private static double fozm_sl = 0;             // fond ob6to zabolqwane i mai4instwo ot slujitelq
    private static double fozm_rb = 0;             // fond ob6to zabolqwane i mai4instwo ot rabotodatelq
    private static double fbzr_sl = 0;             // fond Bezrabotica ot slujitelq
    private static double fbzr_rb = 0;             // fond Bezrabotica ot rabotodatelq
    private static double ppf = 0;                 // profesionalen pensionen fond
    private static double upf_sl = 0;              // uniwersalen pensionen fond ot slujitelq
    private static double upf_rb = 0;              // uniwersalen pensionen fond ot rabotodatelq
    private static double fgvrs = 0;               // fond GVRS
    private static double zo_sl = 0;               // zdrawno osigurqwane ot slujitelq
    private static double zo_rb = 0;
    
    private void setLablePeriod(){
        jLabelYear.setText(""+pyear);
        jLabelMonth.setText(""+pmonth);
    }
    
    private void showCalendar(){
        cal = new imakante.salary.calendarClass(myframe,true,conn, pmonth, pyear);
        cal.setVisible(true);
    }
    
    
    
    
    
    
    
    
    
    
    
    private void setConn(java.sql.Connection connection) {
        this.conn = connection;
    }
    
    private void prepareConn(){
        try{
            setConn(myframe.getConn());}catch(Exception e){e.printStackTrace();}
    }
    
    private void constructObject(){
        try{
            taxObject = new nom.taxDOO(conn, period);      
        } catch (Exception e) {e.printStackTrace();}
      
    }
    
    public void updateRow() {
        dni5 = imakante.com.pubMethods.makeInt(jLabelBrRDNI.getText());
        ktu = imakante.com.pubMethods.makeDouble(jtfKTU.getText());
        min_rab_zaplata = 0;
        max_os_prag = 0;
        pensii1_sl = imakante.com.pubMethods.makeDouble(jtfPens1SlBefore.getText());
        pensii1_rb = imakante.com.pubMethods.makeDouble(jtfPens1RabBefore.getText());
        pensii2_sl = imakante.com.pubMethods.makeDouble(jtfPens2SlAfter.getText());
        pensii2_rb = imakante.com.pubMethods.makeDouble(jtfPens2RabAfter.getText());
        fozm_sl = 0;
        fozm_rb = 0;
        fbzr_sl = 0;
        fbzr_rb = 0;
        ppf = 0;
        upf_sl = 0;
        upf_rb = 0;
        fgvrs = 0;
        zo_sl = 0;
        zo_rb = 0;
        
        taxObject.updateRow(period,dni5, ktu, min_rab_zaplata, max_os_prag,
                pensii1_sl, pensii1_rb, pensii2_sl, pensii2_rb, fozm_sl,
                fozm_rb, fbzr_sl, fbzr_rb, ppf, upf_sl,upf_rb, fgvrs,
                zo_sl, zo_rb);
        
    }
    
    
    protected void closeResource(){
        
        try{  rs.close();
        }catch(java.sql.SQLException sqle){}
        rs =null;
    }
    
    
    protected void UnloadWindow(){
        closeResource();
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
}
