
package imakante.sales;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.DecimalFormat;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.table.DefaultTableModel;


public class repVAT extends javax.swing.JInternalFrame {
    
    public repVAT() {
        initComponents();
        prepareC();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButton3 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jCheckBox1 = new javax.swing.JCheckBox();
        jCheckBox2 = new javax.swing.JCheckBox();
        jCheckBox3 = new javax.swing.JCheckBox();
        jCheckBox4 = new javax.swing.JCheckBox();
        jCheckBox5 = new javax.swing.JCheckBox();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jLabel5 = new javax.swing.JLabel();
        jXDatePicker2 = new org.jdesktop.swingx.JXDatePicker();
        jTextField1 = new javax.swing.JTextField();
        jButton5 = new javax.swing.JButton();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel5 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel6 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jPanel7 = new javax.swing.JPanel();
        jScrollPane3 = new javax.swing.JScrollPane();
        jPanel8 = new javax.swing.JPanel();
        jProgressBar1 = new javax.swing.JProgressBar();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "\u0414\u0435\u0439\u0441\u0442\u0432\u0438\u0435"));
        jButton3.setText("\u0417\u0430\u0440\u0435\u0434\u0438 \u0424\u0430\u0439\u043b");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton6.setText("\u0422\u0440\u0430\u043d\u0441\u0444\u0435\u0440");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jButton7.setText("\u0417\u0430\u043f\u0430\u0437\u0438");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        jLabel3.setText("\u0418\u043c\u0435 \u043d\u0430 \u0437\u0430\u0440\u0435\u0434\u0435\u043d\u0438\u044f \u0444\u0430\u0439\u043b:");

        jLabel4.setForeground(new java.awt.Color(255, 0, 0));
        jLabel4.setText("\u043d\u044f\u043c\u0430 \u0437\u0430\u0440\u0435\u0434\u0435\u043d");

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel3Layout.createSequentialGroup()
                        .add(jButton3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 125, Short.MAX_VALUE)
                        .add(14, 14, 14)
                        .add(jButton6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 127, Short.MAX_VALUE))
                    .add(jPanel3Layout.createSequentialGroup()
                        .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jButton7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel4)))
                .add(53, 53, 53))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton3)
                    .add(jButton6))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3)
                    .add(jLabel4))
                .add(15, 15, 15)
                .add(jButton7)
                .addContainerGap(18, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "\u0424\u0430\u0439\u043b\u043e\u0432\u0435"));
        jCheckBox1.setSelected(true);
        jCheckBox1.setText("DEKLAR.TXT");
        jCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox2.setSelected(true);
        jCheckBox2.setText("POKUPKI.TXT");
        jCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox2.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox3.setSelected(true);
        jCheckBox3.setText("PRODAGBI.TXT");
        jCheckBox3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox3.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox4.setText("PRDPAY.TXT");
        jCheckBox4.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox4.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox5.setText("PKPPAY.TXT");
        jCheckBox5.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox5.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jButton1.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u0439");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("\u0417\u0430\u043f\u0438\u0448\u0438");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jCheckBox1)
                    .add(jCheckBox4)
                    .add(jButton1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 129, Short.MAX_VALUE))
                .add(26, 26, 26)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jCheckBox2)
                    .add(jCheckBox3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jCheckBox5)
                    .add(jButton2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .add(77, 77, 77))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jCheckBox1)
                    .add(jCheckBox3))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox2)
                .add(8, 8, 8)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jCheckBox4)
                    .add(jCheckBox5))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton1)
                    .add(jButton2))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"));
        jLabel1.setText("\u041a\u043e\u0447\u0430\u043d:");

        jLabel2.setText("\u0414\u0430\u0442\u0430 \u043e\u0442:");

        jLabel5.setText("\u0434\u043e");

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 217, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(14, 14, 14)
                .add(jLabel2)
                .add(18, 18, 18)
                .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(13, 13, 13)
                .add(jLabel5)
                .add(13, 13, 13)
                .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(30, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1)
                    .add(jLabel2)
                    .add(jLabel5)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jButton5.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jPanel5.setLayout(new java.awt.BorderLayout());

        jPanel5.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jTabbedPane1.addTab("\u041f\u0440\u043e\u0434\u0430\u0436\u0431\u0438", jPanel5);

        jPanel6.setLayout(new java.awt.BorderLayout());

        jPanel6.add(jScrollPane2, java.awt.BorderLayout.CENTER);

        jTabbedPane1.addTab("\u041f\u043e\u043a\u0443\u043f\u043a\u0438", jPanel6);

        jPanel7.setLayout(new java.awt.BorderLayout());

        jPanel7.add(jScrollPane3, java.awt.BorderLayout.CENTER);

        jTabbedPane1.addTab("\u0414\u0435\u043a\u043b\u0430\u0440\u0430\u0446\u0438\u044f", jPanel7);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 684, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                                .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(284, 284, 284)
                        .add(jButton5)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 243, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButton5)
                .add(246, 246, 246))
        );

        org.jdesktop.layout.GroupLayout jPanel8Layout = new org.jdesktop.layout.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .add(jProgressBar1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 708, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .add(jProgressBar1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .add(jPanel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 483, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(74, 74, 74))
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        writeFiles();
// TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        generateTables();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        this.writeFileIns();
    }//GEN-LAST:event_jButton7ActionPerformed
    
    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        this.proccessFi();
    }//GEN-LAST:event_jButton6ActionPerformed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        openFile_Dialog();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        this.dispose();// TODO add your handling code here:
    }//GEN-LAST:event_jButton5ActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JCheckBox jCheckBox2;
    private javax.swing.JCheckBox jCheckBox3;
    private javax.swing.JCheckBox jCheckBox4;
    private javax.swing.JCheckBox jCheckBox5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JProgressBar jProgressBar1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTextField jTextField1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker2;
    // End of variables declaration//GEN-END:variables
    private java.sql.Connection connection;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    private String QString = "SELECT  `ls_sluj`.`dan_nom`, DATE_FORMAT(`rep_vat_s`.`date_edition_df`, '%Y%m') as period_d, '0' as klon, @num := (@num + 1) as row_number,"
            + " '01' as vid, `rep_vat_s`.`number_df`, DATE_FORMAT(`rep_vat_s`.`date_edition_df`, '%d/%m/%Y') as data_dok, dan_n_contragent, name_n_contragent,"
            +" 'продажба' as opis, ROUND(total_df-ROUND(dds_df,2),2) as opv1, ROUND(dds_df,2) as dds1,ROUND(total_df-ROUND(dds_df,2),2) as opv2, ROUND(dds_df,2) as dds2,"
            +" '0.00' as v1,'0.00' as v2,'0.00' as v3,'0.00' as v4,'0.00' as v5,'0.00' as v6,'0.00' as v7,'0.00' as v8,'0.00' as v9,'0.00' as v10,'0.00' as v11,'0.00' as v12,'0.00' as v13"
            +" FROM"
            +" (SELECT @num:=0) r,"
            +" `ls_sluj` ,"
            +" `rep_vat_s` " +
            " WHERE `rep_vat_s`.`number_df` LIKE '";
    
    //FILE related
    private java.io.File file;
    private javax.swing.JFileChooser jfc;
    private java.io.InputStreamReader isr;
    private java.io.BufferedReader in;
    
    //TABLE related
    private  MyTableModel model = new MyTableModel();
    private javax.swing.JTable table = new javax.swing.JTable(model);
    private imakante.com.CustomTable table_prod;
    private imakante.com.CustomTableModel model_prod;
    //VAT RELATED
    //DEKLAR RELATED
    private String in_number = "";
    private String name_firm = "";
    private String dan_period = "200001"; // danachen period
    private String broi_doc_prod ="0.00";
    private String broi_doc_pok = "0";
    private String obsh_razmer_osnova = "0";
    private String nachislen_dds ="0";
    private String osnova20 = "0";
    private String danak20 = "0";
    private String osnovaVOP = "0";
    private String danakVOP = "0";
    private String osnova7 = "0";
    private String danak7 = "0";
    private String osnova0 = "0";
    private String osnova0VOD = "0";
    private String dost0oblagaeimi ="0";
    private String dostoblEl = "0";
    private String dost69 = "0";
    private String osnovaosvdostVOP = "0";
    //pokupki
    private String dostallVOP = "0";
    private String dostVOP = "0";
    private String nachDDSfull = "0";
    private String doVOP = "0";
    private String nachDDSpartial = "0";
    private String YearCorr8 = "0";
    //rezult
    private String  coef75 = "0";
    private String allDanCred = "0";
    private String allDDSoutput = "0";
    private String allDDSinput = "0";
    private String danak50 = "0";
    private String danak50efektivno = "0";
    private String danakVazt45 = "0";
    private String danakVazt4_30 = "0";
    private String danakVazt3_30 = "0";
    
    
    private java.util.Date data;
    
    
    private String fullString(String inString, int in_int, boolean reverce){
        String str = "";
        int f = 0;
        if (inString.equals(null)){
            System.out.println("stringa e null");
            inString = "";
        }
        System.out.println("String lenght" + inString.length());
        
        
        if(reverce){
            if (inString.length()> in_int){
                str = inString.substring(0,in_int);
            }
            
            if (inString.length() < in_int){
                str = inString;
                for (int i = 0; str.length()<in_int; i++){
                    str = str+" ";
                    System.out.print(str);
                }
                
            }
        }if(reverce==false){
            if (inString.length()> in_int){
                str = inString.substring(0,in_int);
            }
            
            if (inString.length() < in_int){
                str = inString;
                for (int i = 0; str.length()<in_int; i++){
                    str = " " + str;
                    System.out.print(str);
                }
            }
            if (inString.length() == in_int){
                str = inString;
            }
        }
        if (inString.length() == in_int){
            str = inString;
        }
        return str;
    }
    private String fullZeroString(String inString, int in_int, boolean reverce){
        String str = "";
        int f = 0;
        
        System.out.println("String lenght" + inString.length());
        if(reverce){ if (inString.length()> in_int){
            str = inString.substring(0,in_int);
        }
        
        if (inString.length() < in_int){
            str = inString;
            for (int i = 0; str.length()<in_int; i++){
                str = str+"0";
                System.out.print(str);
            }
            
        }
        }if(reverce==false){
            if (inString.length()> in_int){
                str = inString.substring(0,in_int);
            }
            
            if (inString.length() < in_int){
                str = inString;
                for (int i = 0; str.length()<in_int; i++){
                    str = "0" + str;
                    System.out.print(str);
                }
            }
        }
        return str;
    }
    private void prepareC(){
        connection = imakante.com.NewMain.getConnection();
        
        try {
            stm = connection.createStatement();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }
    
    
    public void openFile_Dialog(){
        javax.swing.JFrame frame = new JFrame();
        javax.swing.JFileChooser jfc = new JFileChooser();
        jfc.showOpenDialog(frame);
        file = jfc.getSelectedFile();
        this.jLabel2.setText(file.getName());
    }
    private void testFile(){
        
    }
    
    private void makeDeklFile(){
        
    }
    
    private void makePokupFile(){
        
    }
    
    private void makeProdFile(){
        String q = this.QString+this.jTextField1.getText()+"%' AND date_edition_df  BETWEEN '20070101' AND '20070131'; ;";
        System.out.println("string " + q);
        try {
            stm = this.connection.createStatement();
            rs = stm.executeQuery(q);
        } catch (SQLException ex) { ex.printStackTrace(); }
        model_prod = new imakante.com.CustomTableModel(this.connection, rs, null);
        table_prod = new imakante.com.CustomTable(model_prod);
        jScrollPane1.setViewportView(table_prod);
        this.jScrollPane1.revalidate();
        jPanel5.repaint();
        
    }
    
    private void makePayProdFile(){
        
    }
    
    private void makePayPokFile(){
        
        
    }
    
    private void proccessF(){
        try {
            //   BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/install/ETIKET.TXT"),this.jTextField2.getText()));
            in = new BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(file),"Cp866"));
            //   in = new BufferedReader(new FileReader(file));
            String str = "NACHALO";
            String cod="";
            String data ="";
            String NDR = "";
            
            String sum ="";
            String dds ="";
            
            int  row = 0;
            String dann = ""; //danachen nomer
            String nomst=""; // nomer stantsia
            String nomd =""; // nomer dokument
            String vid = ""; //vid dokument
            String nomfak = ""; //nomer na faktura
            String data_d = ""; //nomer na faktura
            String dan_kli =""; //danachen na klienta;
            String ime = ""; //klient ime
            String viddei = ""; //viddeinost
            String ssss = ""; //parite
            while (str != null) {
                
                str = in.readLine();
                if(str != null){
                    System.out.println("Stringa e s daljina = "+str.length());
                    dann = str.substring(0,10);        //1
                    nomst = str.substring(10, 14);     //2
                    nomd = str.substring(14,20);       //3
                    vid = str.substring(20,22);        //4
                    nomfak = str.substring(22,32);     //5
                    data_d = str.substring(32,42);     //6
                    dan_kli = str.substring(42,52);    //7
                    ime = str.substring(52,102);       //8
                    viddei = str.substring(104, 134);  //9
                    ssss = str.substring(134, 237); //10
                    
                    ((MyTableModel)table.getModel()).insertRow(model.getRowCount(), new Object[]{"0","0","0","0","0","0","0","0","0","0"});
                    this.table.setValueAt(row +1,row,0);  //0
                    this.table.setValueAt(dann,row,1);    //1
                    this.table.setValueAt(nomst,row,2);   //2
                    this.table.setValueAt(nomd,row,3);
                    this.table.setValueAt(vid,row,4);
                    this.table.setValueAt(nomfak,row,5);
                    this.table.setValueAt(data_d,row,6);
                    this.table.setValueAt(dan_kli,row,7);
                    this.table.setValueAt(ime,row,8);
                    this.table.setValueAt(viddei,row,9);
                    this.table.setValueAt(ssss, row,10);
                    System.out.println("nomer na red = "+row);
                    
                    row++;
                }
            }
        } catch (IOException e) { e.printStackTrace();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
    }
    private void proccessFi(){
        try {
            //   BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/install/ETIKET.TXT"),this.jTextField2.getText()));
            in = new BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(file),"Cp866"));
            //   in = new BufferedReader(new FileReader(file));
            String str = "NACHALO";
            String cod="";
            String data ="";
            String NDR = "";
            
            String sum ="";
            String dds ="";
            
            int  row = 0;
            String dann = ""; //danachen nomer
            String nomst=""; // nomer stantsia
            String nomd =""; // nomer dokument
            String vid = ""; //vid dokument
            String nomfak = ""; //nomer na faktura
            String data_d = ""; //nomer na faktura
            String dan_kli =""; //danachen na klienta;
            String ime = ""; //klient ime
            String viddei = ""; //viddeinost
            String ssss = ""; //parite
            while (str != null) {
                
                str = in.readLine();
                if(str != null){
                    System.out.println("Stringa e s daljina = "+str.length());
                    dann = str.substring(0,10);        //1
                    nomst = str.substring(10, 14);     //2
                    nomd = str.substring(14,20);       //3
                    vid = str.substring(20,22);        //4
                    nomfak = str.substring(22,32);     //5
                    data_d = str.substring(32,42);     //6
                    dan_kli = str.substring(42,52);    //7
                    ime = str.substring(52,102);       //8
                    viddei = str.substring(103, 134);  //9
                    ssss = str.substring(134, 237); //10
                    
                    ((MyTableModel)table.getModel()).insertRow(model.getRowCount(), new Object[]{"0","0","0","0","0","0","0","0","0","0"});
                    this.table.setValueAt(row +1,row,0);  //0
                    this.table.setValueAt(dann,row,1);    //1
                    this.table.setValueAt(nomst,row,2);   //2
                    this.table.setValueAt(nomd,row,3);
                    this.table.setValueAt(vid,row,4);
                    this.table.setValueAt(nomfak,row,5);
                    this.table.setValueAt(data_d,row,6);
                    this.table.setValueAt(dan_kli,row,7);
                    this.table.setValueAt(ime,row,8);
                    this.table.setValueAt(viddei,row,9);
                    this.table.setValueAt(ssss, row,10);
                    try {
                        
                        stm = connection.createStatement();
                        rs = stm.executeQuery(QString + dan_kli);
                        while(rs.next()){
                            this.table.setValueAt(rs.getString("bul_n_contragent"),row,11);
                        }
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                        this.table.setValueAt("1111111111",row,11);
                    }
                    
                    
                    System.out.println("nomer na red = "+row);
                    
                    row++;
                }
            }
        } catch (IOException e) { e.printStackTrace();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
    }
    private void procc1(){
        try {
            //   BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/install/ETIKET.TXT"),this.jTextField2.getText()));
            in = new BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(file),"Cp866"));
            //   in = new BufferedReader(new FileReader(file));
            String str = "NACHALO";
            String cod="";
            String data ="";
            String NDR = "";
            
            String sum ="";
            String dds ="";
            
            int  row = 0;
            String dann = ""; //danachen nomer
            String nomst=""; // nomer stantsia
            
            
            while (str != null) {
                
                str = in.readLine();
                if(str != null){
                    System.out.println("Stringa e s daljina = "+str.length());
                    dann = str.substring(0,10);        //1
                    nomst = str.substring(14, 237);     //2
                    
                    
                    
                    ((MyTableModel)table.getModel()).insertRow(model.getRowCount(), new Object[]{"0","0","0","0","0","0","0","0","0","0"});
                    this.table.setValueAt(row +1,row,0);
                    this.table.setValueAt(dann,row,1);
                    this.table.setValueAt(nomst,row,2);
                    System.out.println("nomer na red = "+row);
                    
                    row++;
                }
            }
        } catch (IOException e) { e.printStackTrace();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        
    }
    
    public class MyTableModel extends DefaultTableModel {
        private String[] Names =  new String [] {
            "1", "2", "3", "4", "5", "6","7", "8","9","10","11","12"};
        
        public int getColumnCount() {
            return 12;
        }
        public String getColumnName(int col) {
            return Names[col];
        }
        
        
    }
    private void writeFile(){
//
        String Line="";
        try {
            
            BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/rabotna/prodagbi.txt"),"Cp866"));
            int j = 0;
            int k = table.getRowCount();
            while(j<k){
                
                Line ="";
                System.out.println(" bol =  " +(String)table.getValueAt(j,1));
                Line = Line + (String)table.getValueAt(j,1);
                //fullString((String)table.getValueAt(j,1),10,true); bul
                Line= Line + (String)table.getValueAt(j,2).toString();
                if(j<k-1){
                    Line = Line + fullZeroString((String)table.getValueAt(j,0).toString(),7, false); //
                    Line = Line +(String)table.getValueAt(j,4).toString();                                                    //vid operatsia
                    Line  = Line + (String)table.getValueAt(j,5);                         // nomer faktura
                    Line = Line + table.getValueAt(j,6);                                  //data
                    Line = Line +  fullString((String)table.getValueAt(j,7),9, false)+ " "; // IN
                    String namef = (String)table.getValueAt(j,8).toString();
                    Line = Line + fullString(namef,50,true) + " "; //ime na firmata SKL1
                    
                }
                if(j==k-1){
                    Line = Line + "9999999";
                    Line = Line +"  ";
                    Line  = Line + (String)table.getValueAt(j,5);
                    Line = Line + table.getValueAt(j,6);
                    Line = Line + "          ";
                    Line = Line + fullString((String)table.getValueAt(j,8), 50,true) + " "; //ime na firmata SKL1
                }
                
                Line = Line + (String)table.getValueAt(j,9) + " ";
                Line = Line + (String)table.getValueAt(j,10);
                
                System.out.println(Line);
                Line = Line + "\r" + "\n";
                j++;
                out.write(Line);
                
            }
            
            out.close();
        }catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            
        } catch (IOException e) { e.printStackTrace();
        }
        
    }
    
    private void writeF(){
//
        String Line="";
        try {
            
            BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/rabotna/prodagbi.txt"),"Cp866"));
            int j = 0;
            int k = table.getRowCount();
            while(j<k){
                
                Line ="";
                System.out.println(" bol =  " +(String)table.getValueAt(j,1));
                Line = Line + (String)table.getValueAt(j,1) + "     "+(String)table.getValueAt(j,2);
                
                
                System.out.println(Line);
                Line = Line + "\r" + "\n";
                j++;
                out.write(Line);
                
            }
            
            out.close();
        }catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            
        } catch (IOException e) { e.printStackTrace();
        }
        
    }
    private void writeFileIns(){
//
        String Line="";
        try {
            
            BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/rabotna2/prodagbi.txt"),"Cp866"));
            int j = 0;
            int k = table.getRowCount();
            while(j<k){
                
                Line ="";
                
                
                // ?????????????????????
                Line = Line + fullString("",10,true);
//                Line = Line + fullString(in_l,10,true); //bul         kakyw e smisylyt na in_l i kyde da se deklarira??????
                // ?????????????????????
                
                Line= Line + (String)table.getValueAt(j,2).toString();
                if(j<k-1){
                    Line = Line + fullZeroString((String)table.getValueAt(j,0).toString(),7, false); //
                    Line = Line +"04";                                                    //vid operatsia
                    Line  = Line + (String)table.getValueAt(j,5);                         // nomer faktura
                    Line = Line + table.getValueAt(j,6);
                    try {
                        Line = Line +  fullString((String)table.getValueAt(j,11).toString(),9, false)+ " "; // IN
                    } catch (Exception e){
                        e.printStackTrace();
                        Line = Line +  fullString("111111111",9, false)+ " ";
                    } // IN
                    Line = Line + fullString((String)table.getValueAt(j,8).toString(), 50,true) + " "; //ime na firmata SKL1
                    System.out.println((String)table.getValueAt(j,8));
                    
                }
                if(j==k-1){
                    Line = Line + "9999999";
                    Line = Line +"  ";
                    Line  = Line + (String)table.getValueAt(j,5);
                    Line = Line + table.getValueAt(j,6);
                    Line = Line + "          ";
                    Line = Line + fullString((String)table.getValueAt(j,8).toString(), 50,true) + " "; //ime na firmata SKL1
                }
                
                Line = Line + (String)table.getValueAt(j,9);
                Line = Line + (String)table.getValueAt(j,10);
                System.out.println(Line);
                Line = Line + "\r" + "\n";
                j++;
                out.write(Line);
                
            }
            
            out.close();
        }catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            
        } catch (IOException e) { e.printStackTrace();
        }
        
    }
    
    private void generateTables() {
        this.makeProdFile();
    }
    
    private void writeFiles(){
        jProgressBar1.setMinimum(0);
        jProgressBar1.setMaximum(table_prod.getRowCount());
        jProgressBar1.setValue(0);
        Thread t = new Thread(new Runnable() {
            public void run() {
                
                BufferedWriter out;
                int j = 0;
                int k = table_prod.getRowCount();
                String Line = "";
                double sum_prod=0;
                double sum_dds = 0;
                try {
                    out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/rabotna/PRODAGBI.TXT"),"Cp866"));
                    
                    
                    
                    while(j<k){
                        
                        Line ="";
                        
                        Line = Line + fullString((String)table_prod.getValueAt(j,0).toString(),15, true); //1
                        Line = Line + fullString((String)table_prod.getValueAt(j,1).toString(),6, true);  //2
                        Line = Line + fullString((String)table_prod.getValueAt(j,2).toString(),4, false);  //3
                        Line = Line + fullString((String)table_prod.getValueAt(j,3).toString(),15, false); //4
                        Line = Line + fullString((String)table_prod.getValueAt(j,4).toString(),2, true);  //5
                        Line = Line + fullString((String)table_prod.getValueAt(j,5).toString(),20, true); //6
                        Line = Line + fullString((String)table_prod.getValueAt(j,6).toString(),10, true); //7
                        Line = Line + fullString((String)table_prod.getValueAt(j,7).toString(),15, true); //8
                        Line = Line + fullString((String)table_prod.getValueAt(j,8).toString(),50, true); //9
                        Line = Line + fullString((String)table_prod.getValueAt(j,9).toString(),30, true); //10
                        Line = Line + fullString((String)table_prod.getValueAt(j,10).toString(),15, false); //11
                        Line = Line + fullString((String)table_prod.getValueAt(j,11).toString(),15, false); //12
                        Line = Line + fullString((String)table_prod.getValueAt(j,12).toString(),15, false); //13
                        Line = Line + fullString((String)table_prod.getValueAt(j,13).toString(),15, false); //14
                        Line = Line + fullString((String)table_prod.getValueAt(j,14).toString(),15, false); //15
                        Line = Line + fullString((String)table_prod.getValueAt(j,15).toString(),15, false); //16
                        Line = Line + fullString((String)table_prod.getValueAt(j,16).toString(),15, false); //17
                        Line = Line + fullString((String)table_prod.getValueAt(j,17).toString(),15, false); //18
                        Line = Line + fullString((String)table_prod.getValueAt(j,18).toString(),15, false); //19
                        Line = Line + fullString((String)table_prod.getValueAt(j,19).toString(),15, false); //20
                        Line = Line + fullString((String)table_prod.getValueAt(j,20).toString(),15, false); //21
                        Line = Line + fullString((String)table_prod.getValueAt(j,21).toString(),15, false); //22
                        Line = Line + fullString((String)table_prod.getValueAt(j,22).toString(),15, false); //23
                        Line = Line + fullString((String)table_prod.getValueAt(j,23).toString(),15, false); //24
                        Line = Line + fullString((String)table_prod.getValueAt(j,24).toString(),15, false); //25
                        Line = Line + fullString((String)table_prod.getValueAt(j,25).toString(),15, false); //26
                        Line = Line + fullString((String)table_prod.getValueAt(j,26).toString(),15, false); //27
                        sum_prod = sum_prod + Double.parseDouble((String)table_prod.getValueAt(j,10).toString()); //11
                        sum_dds = sum_dds + Double.parseDouble((String)table_prod.getValueAt(j,11).toString()); //11
                        Line = Line + "\r" + "\n";
                        j++;
                        out.write(Line);
                        
                        jProgressBar1.setValue(jProgressBar1.getValue()+1);
                    }
                    out.close();
                } catch(java.io.IOException ex){
                }
                
                //deklar.txt
                try {
                    out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/rabotna/DEKLAR.TXT"),"Cp866"));
                    
                    String dLine ="";
                    dLine = dLine + fullString(imakante.com.NewMain.getParamFirm().getDan(),15,true);
                    dLine = dLine + fullString(imakante.com.NewMain.getParamFirm().getName(),50,true);
                    dLine = dLine + fullString((String)table_prod.getValueAt(0,1).toString(),6, true);
                    dLine = dLine + fullString(imakante.com.NewMain.getParamFirm().getAcc(),50,true);
                    dLine = dLine + fullString(""+j,15,false);
                    dLine = dLine + fullString("0",15,false);
                    String end = (new DecimalFormat("#.00").format(sum_prod));
                    String nd =  end.replace(",",".");
                    dLine = dLine + fullString(nd,15,false);
                    String end1 = (new DecimalFormat("#.00").format(sum_dds));
                    String nd1 =  end1.replace(",",".");
                    dLine = dLine + fullString(nd1,15,false);
                    dLine = dLine + fullString(nd,15,false);
                    dLine = dLine + fullString(nd1,15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false); //pokupki
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",4,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString(nd1,15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString(nd1,15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + fullString("0.00",15,false);
                    dLine = dLine + "\r" + "\n";
                    out.write(dLine);
                    out.close();
                } catch(java.io.IOException ex){
                }
                
                
            }
            
            
            
            
        });
        t.start();
    }
}
