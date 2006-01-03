
package imakante.salary;

public class salary_main extends javax.swing.JFrame {
    
    public salary_main() {
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jmbSalary = new javax.swing.JMenuBar();
        jmOperations = new javax.swing.JMenu();
        jmiStaff = new javax.swing.JMenuItem();
        jsStaff2Exit = new javax.swing.JSeparator();
        jmiExit = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        jmOperations.setText("\u041e\u043f\u0435\u0440\u0430\u0446\u0438\u0438");
        jmiStaff.setText("\u0421\u043f\u0438\u0441\u044a\u043a \u043d\u0430 \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b\u0438\u0442\u0435");
        jmiStaff.setActionCommand("stafflist");
        jmOperations.add(jmiStaff);

        jmOperations.add(jsStaff2Exit);

        jmiExit.setText("\u0418\u0417\u0425\u041e\u0414");
        jmiExit.setActionCommand("exit");
        jmiExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jmiExitActionPerformed(evt);
            }
        });

        jmOperations.add(jmiExit);

        jmbSalary.add(jmOperations);

        setJMenuBar(jmbSalary);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 279, Short.MAX_VALUE)
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jmiExitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jmiExitActionPerformed
        this.dispose();     // neobhodimo e pyrwo da se zatworqt resursite!!!!
    }//GEN-LAST:event_jmiExitActionPerformed
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenu jmOperations;
    private javax.swing.JMenuBar jmbSalary;
    private javax.swing.JMenuItem jmiExit;
    private javax.swing.JMenuItem jmiStaff;
    private javax.swing.JSeparator jsStaff2Exit;
    // End of variables declaration//GEN-END:variables
 
    private static int pMonth;
    private static int pYear;
    private static int idPeriod;

    public static int getPMonth() {
        return pMonth;
    }

    public static void setPMonth(int aPMonth) {
        pMonth = aPMonth;
    }

    public static int getPYear() {
        return pYear;
    }

    public static void setPYear(int aPYear) {
        pYear = aPYear;
    }

    public static int getIdPeriod() {
        return idPeriod;
    }

    public static void setIdPeriod(int aIdPeriod) {
        idPeriod = aIdPeriod;
    }
    
}
