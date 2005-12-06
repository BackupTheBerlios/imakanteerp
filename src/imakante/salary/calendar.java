

package imakante.salary;

import javax.swing.JLabel;

public class calendar extends javax.swing.JDialog {
    
    public calendar(javax.swing.JFrame parent, boolean modal) {
        super(parent, modal);
        gap = 3;
        n = 10;
        m = 8;
        initComponents();
        initVizCalendar();
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabelYear = new javax.swing.JLabel();
        jLabelY = new javax.swing.JLabel();
        jLabelMonth = new javax.swing.JLabel();
        jLabelM = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.setFont(new java.awt.Font("Tahoma", 0, 12));
        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel1.setText("\u041f\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel1, gridBagConstraints);

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel2.setText("\u0412\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel2, gridBagConstraints);

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel3.setText("\u0421\u0440");
        jLabel3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel3MouseClicked(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel3, gridBagConstraints);

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel4.setText("\u0427\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel4, gridBagConstraints);

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel5.setText("\u041f\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel5, gridBagConstraints);

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel6.setForeground(new java.awt.Color(255, 0, 0));
        jLabel6.setText("\u0421\u0431");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel6, gridBagConstraints);

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel7.setForeground(new java.awt.Color(255, 0, 0));
        jLabel7.setText("\u041d\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel7, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jLabelYear.setText("\u0413\u043e\u0434\u0438\u043d\u0430      ");
        jPanel2.add(jLabelYear);

        jPanel2.add(jLabelY);

        jLabelMonth.setText("    \u041c\u0435\u0441\u0435\u0446   ");
        jPanel2.add(jLabelMonth);

        jPanel2.add(jLabelM);

        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jButton1.setText("\u0417\u0410\u041f\u0410\u0417\u0418");
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
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jLabel3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel3MouseClicked
        colorL = jLabel3.getForeground();
        if (colorL == blackC){
            jLabel3.setForeground(redC);
            
        }else {
            jLabel3.setForeground(blackC);
        }
        jPanel3.repaint();
    }//GEN-LAST:event_jLabel3MouseClicked
    private void jLabelMouseClicked(java.awt.event.MouseEvent evt) {
        colorL = jLabel3.getForeground();
        if (colorL == blackC){
            jLabel3.setForeground(redC);
            
        }else {
            jLabel3.setForeground(blackC);
        }
        jPanel3.repaint();
    }
    
    java.awt.event.MouseAdapter jLabelClickedAdaptor = new java.awt.event.MouseAdapter(){
        public void mouseClicked(java.awt.event.MouseEvent evt) {
            jLabelMouseClicked(evt);
        }
    };
    
    public void initVizCalendar(){
        jCalendarLabel =  new javax.swing.JLabel[7][8];
        
        for (int i = 1 ; i <6; i++){
            for (int j = 1; j<7 ; j++){
                System.out.println("i "+i+"  j"+j);
                jCalendarLabel[i][j] = new JLabel();
                jCalendarLabel[i][j].setText(""+i*j);
                jCalendarLabel[i][j].addMouseListener(jLabelClickedAdaptor);
                String nameB = jCalendarLabel[i][j].getText().toString();
                // jCalendarLabel[i][j].setActionCommand("nameB");
                if(j == 5 || j == 6){
                    jCalendarLabel[i][j].setForeground(redC);
                }
                java.awt.GridBagConstraints gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.gridx = j;
                gridBagConstraints.gridy = i;
                jPanel1.add(jCalendarLabel[i][j]);
                m++;
            }
        }
    }
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabelM;
    private javax.swing.JLabel jLabelMonth;
    private javax.swing.JLabel jLabelY;
    private javax.swing.JLabel jLabelYear;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    // End of variables declaration//GEN-END:variables
    public java.awt.Color colorL;
    public java.awt.Color blackC = new java.awt.Color(0,0,0);
    public java.awt.Color redC = new java.awt.Color(255,0,0);
    public javax.swing.JLabel  jCalendarLabel[][];
    int m,gap,n;
}
