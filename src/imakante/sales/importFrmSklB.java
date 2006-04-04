
package imakante.sales;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.table.DefaultTableModel;
import net.sf.jasperreports.engine.data.JRTableModelDataSource;

public class importFrmSklB extends javax.swing.JInternalFrame {
    
    /** Creates new form importFrmSklB */
    public importFrmSklB() {
        
        initComponents();
        prepareC();
        
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.setViewportView(table);
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jButton4 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jButton5 = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jPanel4 = new javax.swing.JPanel();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setTitle("\u0418\u043c\u043f\u043e\u0440\u0442 \u0421\u041a\u041b");
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 575, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 177, Short.MAX_VALUE)
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jButton1.setText("\u0418\u0437\u0431\u0435\u0440\u0438 \u0424\u0430\u0439\u043b");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel1.setText("\u041a\u043e\u0447\u0430\u043d");

        jButton4.setText("\u041f\u0440\u0435\u043e\u0431\u0440\u0430\u0437\u0443\u0432\u0430\u043d\u0435");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jLabel2.setText("\u0438\u0437\u0431\u0440\u0430\u043d \u0444\u0430\u0439\u043b");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel3.setForeground(new java.awt.Color(255, 0, 0));

        jButton5.setText("\u0415\u043a\u0441\u043f\u043e\u0440\u0442");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jLabel4.setText("\u041a\u043e\u0434\u0438\u0440\u0430\u043d\u0435");

        jLabel5.setText("OUT");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jButton1)
                                .add(16, 16, 16)
                                .add(jButton4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 122, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jLabel2)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 280, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 27, Short.MAX_VALUE)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jLabel1)
                            .add(jLabel4)))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                        .add(jButton5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 98, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 308, Short.MAX_VALUE)
                        .add(jLabel5)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jTextField3)
                    .add(jTextField2)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 134, Short.MAX_VALUE)))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton1)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel1)
                    .add(jButton4))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jLabel4)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 16, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel5)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jButton5))
                .addContainerGap(34, Short.MAX_VALUE))
        );

        jButton2.setText("\u0422\u0440\u0430\u043d\u0441\u0444\u0435\u0440 \u043a\u044a\u043c \u0411\u0430\u0437\u0430");

        jButton3.setText("\u0418\u0437\u0447\u0438\u0441\u0442\u0438");

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder("\u0412\u044a\u0437\u043d\u0438\u043a\u043d\u0430\u043b\u0438 \u0433\u0440\u0435\u0448\u043a\u0438"));
        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        jScrollPane2.setViewportView(jTextArea1);

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jScrollPane2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 535, Short.MAX_VALUE)
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(jScrollPane2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 100, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                        .add(jButton3)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton2))
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton2)
                    .add(jButton3))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
            .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        writeFile();
    }//GEN-LAST:event_jButton5ActionPerformed
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        proccessF();
    }//GEN-LAST:event_jButton4ActionPerformed
    
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
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    // End of variables declaration//GEN-END:variables
    // SQL related
    private java.sql.Connection connection;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    private String QString = "SELECT n_contragent.name_n_contragent, n_contragent.bul_n_contragent, n_contragent.id_n_contragent FROM n_contragent WHERE n_contragent.dan_n_contragent = ";
    
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
    
    public static JRTableModelDataSource jtbm;
    
    
    private String fullString(String inString, int in_int, boolean reverce){
        String str = "";
        int f = 0;
        
        System.out.println("String lenght" + inString.length());
        if(reverce){ if (inString.length()> in_int){
            str = inString.substring(0,in_int);
        }
        
        if (inString.length() < in_int){
            str = inString;
            for (int i = 0; str.length()<in_int; i++){
                str = str+" ";
                System.out.print(str);
            }
            
        }
        }else{
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
        this.jLabel3.setText(file.getName());
    }
    
    
    private void proccessF(){
        try {
            
            in = new BufferedReader(new FileReader(file));
            String str = "NACHALO";
            String cod="";
            String data ="";
            String NDR = "";
            String vid = "";
            String sum ="";
            String dds ="";
            int  row = 0;
            
            while (str != null) {
                
                str = in.readLine();
                if(str != null){
                    
                    cod = str.substring(0,10);
                    data = str.substring(11, 21);
                    NDR = str.substring(31,41);
                    vid = str.substring(43,44);
                    sum = str.substring(104,112);
                    dds = str.substring(127,134);
                    
                    if(Integer.parseInt(vid)>0){
                        ((MyTableModel)table.getModel()).insertRow(model.getRowCount(), new Object[]{"0","0","0","0","0","0","0","0"});
                        this.table.setValueAt(row +1,row,0);
                        this.table.setValueAt(cod,row,1);
                        this.table.setValueAt(data,row,2);
                        this.table.setValueAt(NDR,row,3);
                        this.table.setValueAt(vid,row,6);
                        this.table.setValueAt(((Double.parseDouble(sum))/100),row,7);
                        this.table.setValueAt(((Double.parseDouble(dds))/100),row,8);
                      
                        try {
                            
                            rs = stm.executeQuery(QString + NDR);
                            while(rs.next()){
                                this.table.setValueAt(rs.getString("bul_n_contragent"),row,4);
                                this.table.setValueAt(rs.getString("name_n_contragent"),row,5);
                                this.table.setValueAt(rs.getString("id_n_contragent"),row,10);
                                
                                
                            }
                        } catch (SQLException ex) {
                            ex.printStackTrace();
                        }
                        
                        row++;
                    }}
            }
        } catch (IOException e) { e.printStackTrace();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        
        
        
    }
    
    public class MyTableModel extends DefaultTableModel {
        private String[] Names =  new String [] {
            "№", "Номер документ", "Дата", "Данъчен Номер", "ИН", "Фирма","Вид", "Сума","ДДС","ID FIRM"};
        
        public int getColumnCount() {
            return 10;
        }
        public String getColumnName(int col) {
            return Names[col];
        }
        
        
    }
    
    
    private void writeFile(){
        String l_etiket = "";
        String pathFiles = "";
        try {
            if(this.jTextField3.equals("")){
                pathFiles = "a:/";
                System.out.println(pathFiles);
            }
            l_etiket = l_etiket + fullString(in_l,10, true);
            l_etiket = l_etiket + fullString(name_b,50, true);
            l_etiket = l_etiket + fullString(name_acc,50, true);
            l_etiket = l_etiket + fullString(tel,25,true);
            
            l_etiket = l_etiket + zzd + pzd +  otp + "\n";
            System.out.println(l_etiket);
            String to = pathFiles+etiket;
            BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/install/ETIKET.TXT"),this.jTextField2.getText()));
            out.write(l_etiket);
            
            out.close();
        }catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) { e.printStackTrace();
        }
        
        String Line="";
       
//        
//        Line = (String)this.table.getValueAt(0,0).toString();
//        Line = Line +(String)this.table.getValueAt(0,1).toString();
//        Line = Line + (String)this.table.getValueAt(0,2).toString();
//        Line = Line + (String)this.table.getValueAt(0,3).toString();
//        Line = Line + (String)this.table.getValueAt(0,4).toString();
//        Line = Line + (String)this.table.getValueAt(0,5).toString();
//        Line = Line + (String)this.table.getValueAt(0,6).toString();
//        Line = Line + "\n";
//        
        try {
            
            BufferedWriter out = new BufferedWriter(new java.io.OutputStreamWriter(new FileOutputStream("c:/rabotna2/p.txt"),this.jTextField2.getText()));
            int j = 0;
            int k = table.getRowCount();
            while(j<k){
                
                Line ="";
                Line = Line + fullString(in_l,10,true);
                Line = Line + "    ";
                Line = Line + fullString(""+(j+1),7, false);
                Line = Line +"06";
                Line  = Line + fullString((String)table.getValueAt(j,1),10,true);
//                try {
//                    data = (Date)(new SimpleDateFormat("dd.MM.yyyy").parse((String)this.table.getValueAt(j,2).toString()));
//                //  Line = Line +  (Date)(DateFormat.getDateInstance(new SimpleDateFormat("dd/MM/yyyy")).parse((String)this.table.getValueAt(j,2).toString()));
//                   Line = Line + (Date)(new SimpleDateFormat("dd/MM/yyyy").parse(data));
//                } catch (ParseException ex) {
//                    ex.printStackTrace();
//                }
                Line = Line + imakante.com.dateManipulation.parceInvDate((String)this.table.getValueAt(j,2));
//                
                Line = Line + table.getValueAt(j,4);
                Line = Line + fullString((String)table.getValueAt(j,5), 50,true);
                Line = Line + "\n";
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



