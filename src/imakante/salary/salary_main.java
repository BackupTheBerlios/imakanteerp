
package imakante.salary;

public class salary_main extends javax.swing.JFrame {
    
    /** Creates new form salary_main */
    public salary_main() {
        initComponents();
    }
    

    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        
        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
                layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                .add(0, 400, Short.MAX_VALUE)
                );
        layout.setVerticalGroup(
                layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                .add(0, 300, Short.MAX_VALUE)
                );
        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    


    // Variables declaration - do not modify//GEN-BEGIN:variables
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
