
package imakante.salary;
 public class frmPrint extends java.awt.Dialog {
    java.sql.Connection dbInternal;
   
    public frmPrint(java.awt.Frame parent, boolean modal, java.sql.Connection dbCon, String fileName) {
        super(parent, modal);
        dbInternal = dbCon;
        initComponents();
    }
 
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        panel1 = new java.awt.Panel();
        panel2 = new java.awt.Panel();
        button1 = new java.awt.Button();

        setModal(true);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                closeDialog(evt);
            }
        });

        panel1.setBackground(new java.awt.Color(240, 240, 240));
        panel1.setFont(new java.awt.Font("Tahoma", 0, 12));
        add(panel1, java.awt.BorderLayout.CENTER);

        panel2.setBackground(new java.awt.Color(240, 240, 240));
        panel2.setFont(new java.awt.Font("Tahoma", 0, 12));
        button1.setFont(new java.awt.Font("Tahoma", 0, 12));
        button1.setLabel("\u0417\u0410\u0422\u0412\u041e\u0420\u0418");
        panel2.add(button1);

        add(panel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
  
    private void closeDialog(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_closeDialog
        setVisible(false);
        dispose();
    }//GEN-LAST:event_closeDialog
    

    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private java.awt.Button button1;
    private java.awt.Panel panel1;
    private java.awt.Panel panel2;
    // End of variables declaration//GEN-END:variables
    
}
