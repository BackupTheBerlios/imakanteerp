
package imakante.sales;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.table.DefaultTableModel;


public class FrmImpExpSKL extends javax.swing.JInternalFrame {
    
    public FrmImpExpSKL() {
        initComponents();
        prepareC();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.setViewportView(table);
        jButton1 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));

        jButton1.setText("\u0417\u0430\u0440\u0435\u0434\u0438 \u0424\u0430\u0439\u043b");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel1.setText("\u0418\u043c\u0435 \u043d\u0430 \u0437\u0430\u0440\u0435\u0434\u0435\u043d\u0438\u044f \u0444\u0430\u0439\u043b:");

        jLabel2.setForeground(new java.awt.Color(255, 0, 0));
        jLabel2.setText("\u043d\u044f\u043c\u0430 \u0437\u0430\u0440\u0435\u0434\u0435\u043d");

        jButton2.setText("\u0422\u0440\u0430\u043d\u0441\u0444\u0435\u0440");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("\u041f\u0440\u0435\u0433\u043b\u0435\u0434");

        jButton4.setText("\u0417\u0430\u043f\u0430\u0437\u0438");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 660, Short.MAX_VALUE)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jButton3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jButton2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jButton1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jLabel1)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel2))
                    .add(jButton4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 99, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(499, 499, 499))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 305, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton1)
                    .add(jLabel1)
                    .add(jLabel2))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton2)
                    .add(jButton4))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButton3)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jButton5.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 676, Short.MAX_VALUE)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap(591, Short.MAX_VALUE)
                .add(jButton5)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jButton5)
                .addContainerGap())
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        writeFile();
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        proccessF();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        openFile_Dialog();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    private java.sql.Connection connection;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    private String QString = "SELECT n_contragent.name_n_contragent, n_contragent.bul_n_contragent FROM n_contragent WHERE n_contragent.dan_n_contragent LIKE ";
    
    //FILE related
    private java.io.File file;
    private javax.swing.JFileChooser jfc;
    private java.io.InputStreamReader isr;
    private java.io.BufferedReader in;
    
    //TABLE related
    private  MyTableModel model = new MyTableModel();
    private javax.swing.JTable table = new javax.swing.JTable(model);
    //VAT RELATED
    private final String etiket = "ETIKET.TXT";
    private final String pokupki = "POKUPKI.TXT";
    private final String prodajbi = "PRODAGBI.TXT";
    
    private final String  in_l = "115594691";
    private final int int_in = 10;
    private final String name_b = "Инсайд 3";
    private final int int_name_b = 50;
    private final String name_acc  = "Йорданка Брънкова";
    private final int int_name_acc = 50;
    private final String tel = "032/99999999";
    private final int int_tel = 25;
    private final String zzd = "23/01/2001";
    private final int int_zzd = 10;
    private final String pzd = "  /  /    ";
    private final int  int_pzd = 10;
    private final String otp = "200602";
    
    private java.util.Date data;
    
    
    private String fullString(String inString, int in_int, boolean reverce){
        String str = "";
        int f = 0;
        
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
            
            while (str != null) {
                
                str = in.readLine();
                if(str != null){
                    System.out.println("Stringa e s daljina = "+str.length());
                    dann = str.substring(0,10);
                    nomst = str.substring(10, 14);
                    nomd = str.substring(14,20);
                    vid = str.substring(20,22);
                    nomfak = str.substring(22,32);
                    data_d = str.substring(32,42);
                    dan_kli = str.substring(42,52);
                    ime = str.substring(52,103);
                    viddei = str.substring(103, 237);
                    
                    
                    ((MyTableModel)table.getModel()).insertRow(model.getRowCount(), new Object[]{"0","0","0","0","0","0","0","0","0","0"});
                    this.table.setValueAt(row +1,row,0);
                    this.table.setValueAt(dann,row,1);
                    this.table.setValueAt(nomst,row,2);
                    this.table.setValueAt(nomd,row,3);
                    this.table.setValueAt(vid,row,4);
                    this.table.setValueAt(nomfak,row,5);
                    this.table.setValueAt(data_d,row,6);
                    this.table.setValueAt(dan_kli,row,7);
                    this.table.setValueAt(ime,row,8);
                    
                    
                    try {
                        
                        rs = stm.executeQuery(QString + dan_kli);
                        while(rs.next()){
                            this.table.setValueAt(rs.getString("bul_n_contragent"),row,9);
                            this.table.setValueAt(rs.getString("name_n_contragent"),row,10);
                        }
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                    this.table.setValueAt(viddei,row,11);
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
//        String l_etiket = "";
//        String pathFiles = "";
//        try {
//            
//            l_etiket = l_etiket + fullString(in_l,10, true);
//            l_etiket = l_etiket + fullString(name_b,50, true);
//            l_etiket = l_etiket + fullString(name_acc,50, true);
//            l_etiket = l_etiket + fullString(tel,25,true);
//            
//            l_etiket = l_etiket + zzd + pzd +  otp + "\n";
//            System.out.println(l_etiket);
//            String to = pathFiles+etiket;
//            BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/rabotna2/ETIKET.TXT"),"Cp866"));
//            out.write(l_etiket);
//            
//            out.close();
//        }catch (UnsupportedEncodingException e) {
//            e.printStackTrace();
//        } catch (IOException e) { e.printStackTrace();
//        }
//        
        String Line="";
        
        
//
        try {
            
            BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/rabotna2/prodagbi.txt"),"Cp866"));
            int j = 0;
            int k = table.getRowCount();
            while(j<k){
                
                Line ="";
                Line = Line + fullString(in_l,10,true); //bul
                Line= Line + (String)table.getValueAt(j,2).toString();
                if(j<k-1){
                    Line = Line + fullZeroString((String)table.getValueAt(j,0).toString(),7, false); //
                    Line = Line +"04";                                                    //vid operatsia
                    Line  = Line + (String)table.getValueAt(j,5);                         // nomer faktura
                    Line = Line + table.getValueAt(j,6);                                  //data
                    Line = Line +  fullString((String)table.getValueAt(j,9),9, false)+ " "; // IN
                    Line = Line + fullString((String)table.getValueAt(j,8), 50,true) + " "; //ime na firmata SKL1
                }
                if(j==k-1){
                    Line = Line + "9999999";
                    Line = Line +"  ";
                    Line  = Line + (String)table.getValueAt(j,5);
                    Line = Line + table.getValueAt(j,6);
                    Line = Line + "          ";
                    Line = Line + fullString((String)table.getValueAt(j,8), 50,true) + " "; //ime na firmata SKL1
                }
                Line = Line + (String)table.getValueAt(j,11);
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
    
}
