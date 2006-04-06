
package imakante.sales;

public class aeCaseOpReport extends imakante.com.vcomponents.iDialog {
    
    public aeCaseOpReport(imakante.com.vcomponents.iInternalFrame parent, boolean modal, java.sql.Connection conn,
            java.util.HashMap hm, String jasperFile) {
        super(parent, modal, jasperFile);
        this.myParent = parent;
        this.conn = conn;
        this.hm = hm;
        this.jasperFile = jasperFile;
        initComponents();
        try {
            setJReport();
        } catch (java.io.FileNotFoundException fnfex) { fnfex.printStackTrace(); }
        this.jPanel1.add(jrv);
        System.out.println(" krai ot jasper dialog");
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u041e\u0442\u0447\u0435\u0442 \u0437\u0430 \u043a\u0430\u0441\u043e\u0432\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f");
        setLocationByPlatform(true);
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Printer.png")));
        jButton1.setText("\u041f\u0435\u0447\u0430\u0442");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton2);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 906, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 906, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 375, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        setBounds(10, 10, 740, 440);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        printJReport();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void printJReport() {
        
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iInternalFrame myParent;
    private net.sf.jasperreports.engine.JasperReport jr;
    private net.sf.jasperreports.engine.JasperPrint jp;
    private net.sf.jasperreports.view.JRViewer jrv;
    private String jasperFile = null;
    private java.util.HashMap hm = null;
    private java.sql.Connection conn = null;
    
    private void setJReport() throws java.io.FileNotFoundException {
        try {
            jp = net.sf.jasperreports.engine.JasperFillManager.fillReport(
                    new java.io.FileInputStream(new java.io.File(getClass().getResource(jasperFile).toURI())), hm, conn);
            jrv = new net.sf.jasperreports.view.JRViewer(jp);
            
        } catch (java.io.FileNotFoundException fnfex) { fnfex.printStackTrace();
        } catch (java.net.URISyntaxException urisex) { urisex.printStackTrace();
        } catch (net.sf.jasperreports.engine.JRException jrex) { jrex.printStackTrace(); }
    }
}
