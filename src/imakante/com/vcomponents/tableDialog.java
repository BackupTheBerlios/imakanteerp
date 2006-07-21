
package imakante.com.vcomponents;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.engine.JasperReport;

public class tableDialog extends imakante.com.vcomponents.iDialog {
    
    public tableDialog(imakante.com.vcomponents.iInternalFrame frame, boolean modal, imakante.com.CustomTable table, String Title, String Header, String SearchField ) {
        super(frame, modal, table);
        this.myParent = (imakante.com.vcomponents.iInternalFrame) frame;
        this.InternalTable = table;
        this.interTitle = Title;
        this.searchField = searchField;
        initComponents();
        InternalTable.addKeyListener(new java.awt.event.KeyListener() {
            public void keyPressed(java.awt.event.KeyEvent e) {
                if(java.awt.event.KeyEvent.VK_ENTER == e.getKeyCode()) {
                    transferValue();
                    close();
                }
            }
            public void keyReleased(java.awt.event.KeyEvent e) {
            }
            public void keyTyped(java.awt.event.KeyEvent e) {
            }
        });
        this.setTitle(interTitle);
        System.out.println("From TD");
    }
    
    public tableDialog(imakante.com.vcomponents.iInternalFrame frame, boolean modal, imakante.com.CustomTable table,
            java.sql.Connection conn, java.util.HashMap hm, String filejasper, String Title, String Header ) {
        super(frame, modal, table);
        this.myParent = (imakante.com.vcomponents.iInternalFrame) frame;
        this.InternalTable = table;
        this.conn = conn;
        this.hm = hm;
        this.fileJasper = filejasper;
        
        initComponents();
        InternalTable.addKeyListener(new java.awt.event.KeyListener() {
            public void keyPressed(java.awt.event.KeyEvent e) {
                if(java.awt.event.KeyEvent.VK_ENTER == e.getKeyCode()) {
                    
                }
            }
            public void keyReleased(java.awt.event.KeyEvent e) {
            }
            public void keyTyped(java.awt.event.KeyEvent e) {
            }
        });
        this.jButton2.setText("\u0418\u0437\u0433\u043b\u0435\u0434 \u041f\u0440\u0438\u043d\u0442");
        try {
            prepareJassper();
        } catch (java.io.FileNotFoundException ex) { ex.printStackTrace(); }
        this.setSize(800,600);
    }
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel2 = new javax.swing.JPanel();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setAlwaysOnTop(true);
        setLocationByPlatform(true);
        setModal(true);
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jScrollPane1.setViewportBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(InternalTable);
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jButton2.setText("\u0412\u043c\u044a\u043a\u043d\u0438");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton2);

        jButton3.setText("\u041f\u0435\u0447\u0430\u0442");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton3);

        jButton1.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton1);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        printSimpleTable();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        if (fileJasper == null) {
            transferValue();
            close();
        } else {
            if(tableVizible) {
                showJassper();
            } else {
                showTable();
            }
        }
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    private imakante.com.vcomponents.iInternalFrame myParent;
    private String interTitle;
    private java.sql.Connection conn = null;
    private String fileJasper = null;
    private java.util.HashMap hm = null;
    private String searchField = "";
    private imakante.com.CustomTable InternalTable;
    
    private net.sf.jasperreports.engine.JasperReport jasperReport;
    private net.sf.jasperreports.engine.JasperPrint jasperPrint ;
    private net.sf.jasperreports.view.JRViewer jrv;
    
    private boolean tableVizible = true;
    
    private void transferValue(){
        myParent.setIntTransfer((Integer)InternalTable.getValueAt(InternalTable.getSelectedRow(),getColumnIndex(searchField)));
    }
    
    private void prepareJassper() throws java.io.FileNotFoundException {
        try {
            
            //  jasperPrint = JasperFillManager.fillReport(new java.io.FileInputStream(new java.io.File((getClass().getResource(fileJasper)).toURI())),
            //           hm, conn);
            
            String pathRep = imakante.com.NewMain.getPathrep()+this.fileJasper;
            jasperPrint = JasperFillManager.fillReport(new java.io.FileInputStream(new java.io.File(pathRep)),
                    hm, conn);
            jrv = new net.sf.jasperreports.view.JRViewer(jasperPrint);
        } catch (java.io.FileNotFoundException ex) {
            ex.printStackTrace();
            System.out.println("FileNotFoundException");
            
        } catch (JRException ex) {
            ex.printStackTrace();
            System.out.println("JRException");
        }
        
        
    }
    
    private void showJassper() {
        tableVizible = false;
        this.jPanel1.removeAll();
        this.jPanel1.add(jrv);
        this.jPanel1.revalidate();
        this.jPanel1.repaint();
        this.jButton2.setText("\u0418\u0437\u0433\u043b\u0435\u0434 \u0422\u0430\u0431\u043b\u0438\u0446\u0430");
    }
    
    private void showTable() {
        tableVizible = true;
        this.jPanel1.removeAll();
        this.jPanel1.add(this.jScrollPane1);
        this.jPanel1.revalidate();
        this.jPanel1.repaint();
        this.jButton2.setText("\u0418\u0437\u0433\u043b\u0435\u0434 \u041f\u0440\u0438\u043d\u0442");
        
    }
    
    private int getColumnIndex(String in) {
        int count = InternalTable.getColumnCount();
        for(int i=0; i < count; i++) {
            if(InternalTable.getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    
    private void printSimpleTable(){
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("Casa");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("Page. " + "- {0} -" + " IMAKANTE' ");
            InternalTable.print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }
    
    public void close() {
        this.dispose();
    }
    
}
