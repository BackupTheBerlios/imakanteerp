/*
 *0.FrmProduct.java
 *
 * 1.contragentDB - cannection to SQL server;
 * 2.aeContragent - edit/insert/search element of table;
 * 3.showAddressContragent - select address (City,province, post code);
 * 4.showNameOfMOL_OSO - select names (first name, surname last name);
 */

package nom;

import java.awt.event.WindowListener;
import java.awt.print.PrinterException;
import java.sql.*;
import imakante.com.*;
import imakante.com.vcomponents.*;
import javax.print.PrintException;
import javax.swing.*;
import java.text.MessageFormat;
import javax.swing.table.TableColumn;
import javax.swing.table.*;
import java.awt.Component;
import java.awt.Color;
import java.awt.Dimension;

public class FrmProduct extends imakante.com.vcomponents.iInternalFrame implements WindowListener {
    
    public FrmProduct(String title, int flag, imakante.com.vcomponents.iFrame frame, int group) //  TEST
    {
        super(title);
        myframe = frame;
        setGroup(group);
        prepareConn();     // zapazva connection
        this.flag_pm = flag; //  za da rabotim samo s opredeleni zapisi ima6ti syotvetniq fag
        constructProductDB(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
        fr.addWindowListener(this);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        jTextFieldCode = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jTextFieldName = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldNameSyotv = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextFieldKysoName = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldFacturnoName = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jTextFieldCod1 = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextFieldCod2 = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jTextFieldBarkod = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jTextFieldExperList = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jButtonNew = new javax.swing.JButton();
        jButtonEdit = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButtonPrint = new javax.swing.JButton();
        jButtonPrintReport = new javax.swing.JButton();
        jButtonDelete = new javax.swing.JButton();
        jButtonRefresh = new javax.swing.JButton();
        jButtonDeleteAll = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        addInternalFrameListener(new javax.swing.event.InternalFrameListener() {
            public void internalFrameActivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosed(javax.swing.event.InternalFrameEvent evt) {
                formInternalFrameClosed(evt);
            }
            public void internalFrameClosing(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeactivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeiconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameIconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameOpened(javax.swing.event.InternalFrameEvent evt) {
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 1133, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jPanel1, java.awt.BorderLayout.NORTH);

        jPanel2.setLayout(new java.awt.BorderLayout());

        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        jPanel2.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(801, 60));
        jLabel9.setText("\u041a\u043e\u0434:");
        jPanel4.add(jLabel9);

        jTextFieldCode.setPreferredSize(new java.awt.Dimension(50, 20));
        jPanel4.add(jTextFieldCode);

        jLabel1.setText("\u0418\u043c\u0435:");
        jPanel4.add(jLabel1);

        jTextFieldName.setPreferredSize(new java.awt.Dimension(200, 20));
        jPanel4.add(jTextFieldName);

        jLabel2.setText("\u0418\u043c\u0435 \u043d\u0430 \u0441\u044a\u043e\u0442\u0432.:");
        jPanel4.add(jLabel2);

        jTextFieldNameSyotv.setPreferredSize(new java.awt.Dimension(170, 20));
        jPanel4.add(jTextFieldNameSyotv);

        jLabel3.setText("\u041a\u044a\u0441\u043e \u0438\u043c\u0435");
        jPanel4.add(jLabel3);

        jTextFieldKysoName.setPreferredSize(new java.awt.Dimension(100, 20));
        jPanel4.add(jTextFieldKysoName);

        jLabel4.setText("\u0424\u0430\u043a\u0442\u0443\u0440\u043d\u043e \u0438\u043c\u0435:");
        jPanel4.add(jLabel4);

        jTextFieldFacturnoName.setPreferredSize(new java.awt.Dimension(100, 20));
        jPanel4.add(jTextFieldFacturnoName);

        jLabel5.setText("\u041a\u043e\u0434 1:");
        jPanel4.add(jLabel5);

        jTextFieldCod1.setPreferredSize(new java.awt.Dimension(50, 20));
        jPanel4.add(jTextFieldCod1);

        jLabel6.setText("\u041a\u043e\u0434 2:");
        jPanel4.add(jLabel6);

        jTextFieldCod2.setPreferredSize(new java.awt.Dimension(50, 20));
        jPanel4.add(jTextFieldCod2);

        jLabel7.setText("\u0411\u0430\u0440\u043a\u0434:");
        jPanel4.add(jLabel7);

        jTextFieldBarkod.setPreferredSize(new java.awt.Dimension(100, 20));
        jTextFieldBarkod.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jPanel4.add(jTextFieldBarkod);

        jLabel8.setText("\u0415\u043a\u0441\u043f\u0435\u0440\u0442\u0435\u043d \u043b\u0438\u0441\u0442:");
        jPanel4.add(jLabel8);

        jTextFieldExperList.setPreferredSize(new java.awt.Dimension(150, 20));
        jPanel4.add(jTextFieldExperList);

        jButton1.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton1);

        jPanel2.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setPreferredSize(new java.awt.Dimension(801, 37));
        jButtonNew.setText("\u041d\u043e\u0432 \u043f\u0440\u043e\u0434\u0443\u043a\u0442");
        jButtonNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonNewActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonNew);

        jButtonEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f \u043d\u0430 \u043f\u0440\u043e\u0434\u0443\u043a\u0442");
        jButtonEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonEditActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonEdit);

        jButton2.setText("\u041d\u043e\u0432\u0430 \u043f\u0430\u0440\u0442\u0438\u0434\u0430");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton2);

        jButton3.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f \u043d\u0430 \u043f\u0430\u0440\u0442\u0438\u0434\u0430");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton3);

        jButtonPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jButtonPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrintActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonPrint);

        jButtonPrintReport.setText("\u041f\u0435\u0447\u0430\u0442 \u0440\u0435\u043f\u043e\u0440\u0442");
        jPanel3.add(jButtonPrintReport);

        jButtonDelete.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButtonDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDeleteActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonDelete);

        jButtonRefresh.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jButtonRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonRefreshActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonRefresh);

        jButtonDeleteAll.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        jPanel3.add(jButtonDeleteAll);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonClose);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // Redakciq na partida:
        if (table.getSelectedRow() != -1) {
            
            setRow(table.getSelectedRow());
            if(getRow()==0){
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }
            setAllVariables();
            
            
            try {
                consigment = new aeConsigment(this, true,false);
                consigment.setVisible(true);
                
            } catch(Exception e) {
                e.printStackTrace();
            }
            
            refreshTable();
        }
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
// Nova partida:
        if (table.getSelectedRow() != -1) {
            
            setRow(table.getSelectedRow());
            if(getRow()==0){
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }
            setAllVariables();
            
            
            try {
                consigment = new aeConsigment(this, true,true);
                consigment.setVisible(true);
                
            } catch(Exception e) {
                e.printStackTrace();
            }
            
            refreshTable();
        }
        
        
        
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void formInternalFrameClosed(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameClosed
     imakante.sales.sales_main.setIsStartFrmProduct(false);   
    }//GEN-LAST:event_formInternalFrameClosed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        try {
            MessageFormat headerFormat = new MessageFormat("Contragent");
            MessageFormat footerFormat = new MessageFormat("Page. "+"- {0} -"+" IMAKANTE' ");
            table.print(JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(PrinterException e) {
            e.printStackTrace();
        }
        
    }//GEN-LAST:event_jButtonPrintActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here: SEARCH
        
        
        
        try {
            
           /* rs = countriesT.searchRecords(getId_PM(),getId_PPP(),getId_PP(),
                                          getId_PF(),getId_Group(),getId_PD(),
                                          getNamePM(),getSNamePM(),getFNamePM(),
                                          getCNamePM(),getMax_POP(),getFlag(),
                                          getExpertSheet(),getBarCod(),getCod1(),
                                          getCod2(),getMinProduct());*/
            
            if(jTextFieldBarkod.getText().length()>0) {
                rs = countriesT.searchRecords(0,0,0,0,0,0,
                        jTextFieldName.getText(),
                        jTextFieldKysoName.getText(),
                        jTextFieldFacturnoName.getText(),
                        jTextFieldNameSyotv.getText(),0.0,getFlag(),
                        jTextFieldExperList.getText(),
                        Integer.parseInt(jTextFieldBarkod.getText()),
                        jTextFieldCod1.getText(),
                        jTextFieldCod2.getText(),0,jTextFieldCode.getText());
            } else {
                rs = countriesT.searchRecords(0,0,0,0,0,0,
                        jTextFieldName.getText(),
                        jTextFieldKysoName.getText(),
                        jTextFieldFacturnoName.getText(),
                        jTextFieldNameSyotv.getText(),0.0,getFlag(),
                        jTextFieldExperList.getText(),
                        0,
                        jTextFieldCod1.getText(),
                        jTextFieldCod2.getText(),0,jTextFieldCode.getText());
            }
            model = new imakante.com.CustomTableModel(conn,rs, columnsNames);
            table = new imakante.com.CustomTable(model);
            // da se napravqt skriti kolona "id"
            jScrollPane1.getViewport().add(table);
            HideColumns(getColumnIndex("id_pm"));
            HideColumns(getColumnIndex("id_pp"));
            HideColumns(getColumnIndex("id_ppp"));
            HideColumns(getColumnIndex("id_pd"));
            HideColumns(getColumnIndex("id_pf"));
            HideColumns(getColumnIndex("m1_pd"));
            HideColumns(getColumnIndex("m2_pd"));
            HideColumns(getColumnIndex("m3_pd"));
            HideColumns(getColumnIndex("v1_pd"));
            HideColumns(getColumnIndex("v2_pd"));
            HideColumns(getColumnIndex("v3_pd"));
            HideColumns(getColumnIndex("flag_pm"));
            HideColumns(getColumnIndex("id_sl_curs"));
            HideColumns(getColumnIndex("id_n_group"));
            jScrollPane1.repaint();
        } catch(Exception e) {
            e.printStackTrace();
        }
        table.requestFocus();
        
        
        
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButtonRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonRefreshActionPerformed
// TODO add your handling code here:
        refreshTable();
    }//GEN-LAST:event_jButtonRefreshActionPerformed
    
    private void jButtonDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDeleteActionPerformed
        delRecord();
    }//GEN-LAST:event_jButtonDeleteActionPerformed
    
    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
// TODO add your handling code here:
        setId_PF(0);
        setId_PM(0);
        setId_PP(0);
        setId_PPP(0);
        setId_PD(0);
        setNamePM("");
        setFNamePM("");
        setSNamePM("");
        setCNamePM("");
        setBarCod(0);
        setCod1("");
        setCod2("");
        setExpertSheet("");
        setFlag(0);
        setId_Group(0);
        isTypedPrice = false;
        isTypedFee = false;
        isTypedPromoPrice = false;
        
         price0 = 0;
         price1 = 0;
         price2 = 0;
         price3 = 0;
         dds = 20;
         akcizi=0;
         other=0;
         promoprice = 0;
         start = "2006-01-01";
         stop =  "2006-01-01";       
        
        
        
        try {
            dialog = new aeProduct(this, true,true,0);
            dialog.setVisible(true);
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        refreshTable();
        
    }//GEN-LAST:event_jButtonNewActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
// TODO add your handling code here:
        imakante.sales.sales_main.setIsStartFrmProduct(false);
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    private void jButtonEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonEditActionPerformed
// TODO add your handling code here:
        isTypedPrice = false;
        isTypedFee = false;
        isTypedPromoPrice = false;
        if (table.getSelectedRow() != -1) {
            
            setRow(table.getSelectedRow());
            if(getRow()==0){
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }
            setAllVariables();
            
            
            try {
                dialog = new aeProduct(this, true,false,getId_Group());
                dialog.setVisible(true);
                
            } catch(Exception e) {
                e.printStackTrace();
            }
        }else{
            
        }
        
    }//GEN-LAST:event_jButtonEditActionPerformed
    
    /**
     * @param args the command line arguments---------------------------------
     */
  /*  public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
   
               FrmProduct frCN =   new FrmProduct("ttt",0,6);
                fr.add(frCN);
                frCN.setVisible(true);
                fr.setVisible(true);
            }
        });
   
    }*/
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonDelete;
    private javax.swing.JButton jButtonDeleteAll;
    private javax.swing.JButton jButtonEdit;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrintReport;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextFieldBarkod;
    private javax.swing.JTextField jTextFieldCod1;
    private javax.swing.JTextField jTextFieldCod2;
    private javax.swing.JTextField jTextFieldCode;
    private javax.swing.JTextField jTextFieldExperList;
    private javax.swing.JTextField jTextFieldFacturnoName;
    private javax.swing.JTextField jTextFieldKysoName;
    private javax.swing.JTextField jTextFieldName;
    private javax.swing.JTextField jTextFieldNameSyotv;
    // End of variables declaration//GEN-END:variables
//--------------- My Variables
    private String nameOfColumns[];
    private int tmpInt =0;
    private int group;
    private  boolean atBegining=false;
    private  boolean atEnd = false;
    public boolean isTypedPrice = false, isTypedFee = false;
    public boolean isTypedPromoPrice = false;
    private int row;
    private  aeProduct dialog;
    private  aeConsigment consigment;
    private int id_pm=1,id_n_group=0,id_ppp=1, id_pp=1,id_pf=1,id_pd=1,flag_pm,id_contragent;              //       \
    private int barcod_pm;
    private int min_pm;                                                   //         >
    private double max_pop_pm;
    private String name_pm, sname_pm, fname_pm, cname_pm, cod1_pm, cod2_pm;            //         /
    private String expertsheet_pm,code_pm ;
    private double price0=0,price1=0,price2=0,price3=0,dds=20,akcizi=0,other=0;
    private int id_curs =1 ; 
    private int id_n_contragent;//        /
    private double promoprice;
    private String start = "2006-01-01",  stop = "2006-01-01";
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private  java.sql.ResultSet rs;
    private productDB countriesT;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    private java.sql.Connection ccc;  // samo za testvaneto
    private  static JFrame fr = new JFrame("test");
    private String User="imakante";  // vremenna promenliva za test
    private String Pass="imakante";  // vremenna promenliva za test
    private String Url = "jdbc:mysql://www.katsarov.net:3307/mida";  // vremenna promenliva za test
    
   /* private String columnsNames[] ={"Код","id_pm","id_n_group","id_ppp","id_pp","id_pf","Име:","Фактурно име:","Късо име:","Име на съответствия:","Код 1:","Код 2:","Баркод:","Отстъпка (в %):",
                                  "Експертен лист:","flag_pm","id_sl_curs","Доставна цена:","Валута:","Стойност в лева"  ,"Цена 1:", "Цена 2:", "Цена 3:","ДДС:","Акцизи:","Др. такси:","id_pd",
                                  "m1_pd","v1_pd","m2_pd","v2_pd","m3_pd","v3_pd","Минимално количество:","Доставна цена с ДДС"};*/
    
    private String columnsNames[] ={"\u041a\u043e\u0434","id_pm","id_n_group","id_ppp","id_pp","id_pf","\u0418\u043c\u0435","\u0424\u0430\u043a\u0442\u0443\u0440\u043d\u043e \u0438\u043c\u0435","\u041a\u044a\u0441\u043e \u0438\u043c\u0435",
    "\u0418\u043c\u0435 \u043d\u0430 \u0441\u044a\u043e\u0442\u0432\u0435\u0442\u0441\u0442\u0432\u0438\u044f","\u041a\u043e\u0434 1","\u041a\u043e\u0434 2",
    "\u0411\u0430\u0440\u043a\u043e\u0434","\u041e\u0442\u0441\u0442\u044a\u043f\u043a\u0430 (\u0432 %)","\u0415\u043a\u0441\u043f\u0435\u0440\u0442\u0435\u043d \u043b\u0438\u0441\u0442","flag_pm","id_sl_curs",
    "\u0414\u043e\u0441\u0442\u0430\u0432\u043d\u0430 \u0446\u0435\u043d\u0430","\u0412\u0430\u043b\u0443\u0442\u0430","\u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u0432 \u043b\u0435\u0432\u0430",
    "\u0426\u0435\u043d\u0430 1","\u0426\u0435\u043d\u0430 2","\u0426\u0435\u043d\u0430 3","\u0414\u0414\u0421","\u0410\u043a\u0446\u0438\u0437\u0438","\u0414\u0440. \u0442\u0430\u043a\u0441\u0438",
    "id_pd","m1_pd","v1_pd","m2_pd","v2_pd","m3_pd","v3_pd","\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u043d\u043e \u043a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e","\u0414\u043E\u0441\u0442\u0430\u0432\u043D\u0430 \u0446\u0435\u043D\u0430 \u0441 \u0414\u0414\u0421"};
//---------------END My Variables
    //---------------START MyFunction
    
    private void prepareConn() //TEST
    {
        // samo za testovate ------------
   /* try
         {
          Class.forName("com.mysql.jdbc.Driver");
    
           ccc = DriverManager.getConnection(Url, User, Pass);
           conn = ccc;
    
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
      //*/
        try {
            setConn(myframe.getConn());
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    private void constructProductDB() // ok
    {
        try {
            
            countriesT = new nom.productDB(conn,flag_pm);
        } catch(Exception e)
        
        {
            e.printStackTrace();
        }
        System.out.println("ot construct object");
    }
    private void initTable() //ok  -- !!ima za dovyr6wane - skrivane na koloni!!
    {
        try {
            countriesT.setFlag(flag_pm);
            rs = countriesT.getTable();
            //columnsNames = null;
            model = new imakante.com.CustomTableModel(conn,rs, columnsNames);
            table = new imakante.com.CustomTable(model);
            
            
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {
            
        }
        HideColumns(getColumnIndex("id_pm"));
        HideColumns(getColumnIndex("id_pp"));
        HideColumns(getColumnIndex("id_ppp"));
        HideColumns(getColumnIndex("id_pd"));
        HideColumns(getColumnIndex("id_pf"));
        HideColumns(getColumnIndex("m1_pd"));
        HideColumns(getColumnIndex("m2_pd"));
        HideColumns(getColumnIndex("m3_pd"));
        HideColumns(getColumnIndex("v1_pd"));
        HideColumns(getColumnIndex("v2_pd"));
        HideColumns(getColumnIndex("v3_pd"));
        HideColumns(getColumnIndex("flag_pm"));
        HideColumns(getColumnIndex("id_sl_curs"));
        HideColumns(getColumnIndex("id_n_group"));
        
    }
    
    public void windowOpened(java.awt.event.WindowEvent e) {
    }
    public void windowClosing(java.awt.event.WindowEvent e) // colose frame`s windows
    {
        imakante.sales.sales_main.setIsStartFrmProduct(false);
        
        this.dispose();
    }
    
    public void windowClosed(java.awt.event.WindowEvent e) {
        System.out.println("windowClosed");
    }
    public void windowIconified(java.awt.event.WindowEvent e) {
    }
    public void windowDeiconified(java.awt.event.WindowEvent e) {
    }
    public void windowActivated(java.awt.event.WindowEvent e) {
    }
    public void windowDeactivated(java.awt.event.WindowEvent e) {
        
    }
    
    public  void setRow(int val) //-
    {
        row = val;
    }
    public int getRow() //-
    {
        return row;
    }
    public  void setAtBegining(boolean aAtBegining)//-
    {
        atBegining = aAtBegining;
    }
    
    public  boolean isAtEnd()//-
    {
        return atEnd;
    }
    public  boolean isAtBegining()//-
    {
        return atBegining;
    }
    public  void setAtEnd(boolean aAtEnd) //-
    {
        atEnd = aAtEnd;
    }
    private int  getMaxRow() //-
    {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
    }
    public void setId_PM(int ID) // ok
    {
        this.id_pm = ID;
    }
    public int getId_PM() // ok
    {
        return id_pm;
    }
    public void setId_PD(int ID) // ok
    {
        this.id_pd = ID;
    }
    public int getId_PD() // ok
    {
        return id_pd;
    }
    public void setId_Group(int ID)  // ok
    {
        this.id_n_group = ID;
    }
    public int getId_Group()  // ok
    {
        return id_n_group;
    }
    public void setId_PP(int ID) // ok
    {
        this.id_pp = ID;
    }
    public int getId_PP()  // ok
    {
        return id_pp;
    }
    public void setId_PPP(int ID) // ok
    {
        this.id_ppp = ID;
    }
    public int getId_PPP() // ok
    {
        return id_ppp;
    }
    public void setId_PF(int ID)  // ok
    {
        this.id_pf = ID;
    }
    public int getId_PF() // ok
    {
        return id_pf;
    }
    public void setCod2(String COD) // ok
    {
        this.cod2_pm = COD;
    }
    public String getCod2()   // ok
    {
        return cod2_pm;
    }
    public void setCod1(String COD)  // ok
    {
        this.cod1_pm = COD;
    }
    public String getCod1()  // ok
    {
        return cod1_pm;
    }
    public void setNamePM(String Name) // ok
    {
        this.name_pm = Name;
    }
    public String getNamePM() // ok
    {
        return name_pm;
    }
    public void setSNamePM(String Name)  // ok
    {
        this.sname_pm = Name;
    }
    public String getSNamePM()  // ok
    {
        return sname_pm;
    }
    public void setFNamePM(String Name) // ok
    {
        this.fname_pm = Name;
    }
    public String getFNamePM()  // ok
    {
        return fname_pm;
    }
    public void setCNamePM(String Name)  // ok
    {
        this.cname_pm = Name;
    }
    public String getCNamePM() // ok
    {
        return cname_pm;
    }
    public void setExpertSheet(String exp) {
        this.expertsheet_pm = exp;
    }
    public String getExpertSheet() {
        return expertsheet_pm;
    }
    public void setBarCod(int bar) {
        this.barcod_pm = bar;
        
    }
    public int getBarCod() {
        return barcod_pm;
    }
    
    public void setFlag(int f) {
        this.flag_pm = f;
        
    }
    public int getFlag() {
        return flag_pm;
    }
    public void setMax_POP(double max) {
        this.max_pop_pm = max;
        
    }
    public double getMax_POP() {
        return max_pop_pm;
    }
    public void setMinProduct(int min) {
        this.min_pm = min;
    }
    public int getMinProduct() {
        return min_pm;
    }
    public void setId_Contragent(int in) {
        this.id_contragent = in;
    }
    public int getId_Contragent() {
        return id_contragent;
    }
    public void setCountriesT(productDB ccc) // ok
    {
        countriesT = ccc;
    }
    public productDB getCountriesT() // ok
    {
        return countriesT;
    }
    public void setCodePM(String exp) {
        this.code_pm = exp;
    }
    public String getCodePM() {
        return code_pm;
    }
    
    protected  void refreshTable() // ok
    {
        jScrollPane1.remove(table);
        rs = countriesT.getTable();
        model = new imakante.com.CustomTableModel(conn, rs, columnsNames);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        HideColumns(getColumnIndex("id_pm"));
        HideColumns(getColumnIndex("id_pp"));
        HideColumns(getColumnIndex("id_ppp"));
        HideColumns(getColumnIndex("id_pd"));
        HideColumns(getColumnIndex("id_pf"));
        HideColumns(getColumnIndex("m1_pd"));
        HideColumns(getColumnIndex("m2_pd"));
        HideColumns(getColumnIndex("m3_pd"));
        HideColumns(getColumnIndex("v1_pd"));
        HideColumns(getColumnIndex("v2_pd"));
        HideColumns(getColumnIndex("v3_pd"));
        HideColumns(getColumnIndex("flag_pm"));
        HideColumns(getColumnIndex("id_sl_curs"));
        HideColumns(getColumnIndex("id_n_group"));
        jScrollPane1.repaint();
        
    }
    public void setAllVariables() // !!!!da se smenat imenata s imena otgovarq6ti na cyrillica
    {
        setId_PM((Integer) table.getValueAt(getRow(), getColumnIndex("id_pm")));
        setId_PF((Integer) table.getValueAt(getRow(), getColumnIndex("id_pf")));
        setId_PP((Integer) table.getValueAt(getRow(), getColumnIndex("id_pp")));
        setId_PPP((Integer) table.getValueAt(getRow(), getColumnIndex("id_ppp")));
        setId_PD((Integer) table.getValueAt(getRow(), getColumnIndex("id_pd")));
        setId_Group((Integer) table.getValueAt(getRow(), getColumnIndex("id_n_group")));
        
        setMax_POP((Double) table.getValueAt(getRow(), getColumnIndex("\u041e\u0442\u0441\u0442\u044a\u043f\u043a\u0430 (\u0432 %)")));
        setBarCod((Integer) table.getValueAt(getRow(), getColumnIndex("\u0411\u0430\u0440\u043a\u043e\u0434")));
        setNamePM((String)table.getValueAt(getRow(),getColumnIndex("\u0418\u043c\u0435")));
        setSNamePM((String)table.getValueAt(getRow(),getColumnIndex("\u041a\u044a\u0441\u043e \u0438\u043c\u0435")));
        setFNamePM((String)table.getValueAt(getRow(),getColumnIndex("\u0424\u0430\u043a\u0442\u0443\u0440\u043d\u043e \u0438\u043c\u0435")));
        setCNamePM((String)table.getValueAt(getRow(),getColumnIndex("\u0418\u043c\u0435 \u043d\u0430 \u0441\u044a\u043e\u0442\u0432\u0435\u0442\u0441\u0442\u0432\u0438\u044f")));
        setExpertSheet((String)table.getValueAt(getRow(),getColumnIndex("\u0415\u043a\u0441\u043f\u0435\u0440\u0442\u0435\u043d \u043b\u0438\u0441\u0442")));
        setCod1((String)table.getValueAt(getRow(),getColumnIndex("\u041a\u043e\u0434 1")));
        setCod2((String)table.getValueAt(getRow(),getColumnIndex("\u041a\u043e\u0434 2")));
        setMinProduct((Integer) table.getValueAt(getRow(), getColumnIndex("\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u043d\u043e \u043a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e")));
        setCodePM(String.valueOf(table.getValueAt(getRow(),getColumnIndex("\u041a\u043e\u0434"))));
        
        
        
    }
    public  void mTableEnd() //-
    {
        setRow(getMaxRow());
        try{
            setAllVariables();
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem - mTableEnd");
        }
        setAtBegining(false);
        setAtEnd(true);
    }
    public void mOneRowPlus() //-
    {
        if(getRow() <= getMaxRow()) {
            
            if(getRow() < getMaxRow()) {
                setRow(getRow()+1);
            }
            setAtBegining(false);
            try {
                setAllVariables();
                
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
                System.out.println("problem - mOneRowPlus");
            }
            if(getRow() == getMaxRow()) {
                setAtEnd(true);
            }
        }
    }
    public  void mOneRowMinus() //-
    {
        if(getRow() >= 0) {
            if(getRow() > 0){
                setRow(getRow() - 1);}
            setAtEnd(false);
            try {
                setAllVariables();
                
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
                System.out.println("problem - mOneRowMinus");
            }
            
        }
        if(getRow() == 0){
            setAtBegining(true);
        }
    }
    public void mTableBegining() //-
    {
        setRow(0);
        try {
            setAllVariables();
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem- mTableBegining");
        }
        setAtBegining(true);
        setAtEnd(false);
        
    }
    public void setConn(java.sql.Connection con) {
        this.conn = con;
    }
    private int getColumnIndex(String in) //test
    {
        int count = table.getColumnCount();
        for(int i=0; i < count; i++) {
            if(table.getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    private void HideColumns(int col) {
        int iColumn = col;
// set column width
        table.getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getColumnModel().getColumn(iColumn).setMinWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
        
    }
    public void setTMPINT(int in) {
        this.tmpInt = in;
    }
    public int getTMPINT() {
        return tmpInt;
    }
    public void setNewPrice(double price0, double price1, double price2, double price3,int id_curs) {
        this.price0 = price0;
        this.price1 = price1;
        this.price2 = price2;
        this.price3 = price3;
        this.id_curs = id_curs;
        this.isTypedPrice = true;
        
    }
   public String[] getNewPrice()
   {
      String newpr[] = new String[5];
       newpr[0] = String.valueOf(price0);
       newpr[1] = String.valueOf(price1);
       newpr[2] = String.valueOf(price2);
       newpr[3] = String.valueOf(price3);
       newpr[4] = String.valueOf(id_curs);
       return newpr;
   }
    public void setProductFee(double dds, double akcizi, double other) {
        this.dds = dds;
        this.akcizi =akcizi;
        this.other = other;
        this.isTypedFee = true;
        
    }
    public String[] getProductFee()
    {
        String ppf[] = new String[3];
        ppf[0] = String.valueOf(dds);
        ppf[1] = String.valueOf(akcizi);
        ppf[2] = String.valueOf(other);
        return ppf;
    }
    public void setProductPromotionPrice(double promoprice, String start, String stop) {
        this.promoprice = promoprice;
        this.start = start;
        this.stop = stop;
        this.isTypedPromoPrice = true;
    }
    public String[] getProductPromotionPrice()
    {
        String newPPP1[] = new String[3];
        newPPP1[0] = String.valueOf(promoprice);
        newPPP1[1] = start;
        newPPP1[2] = stop;
        
        return newPPP1;
    }
    public int saveProductPromotionPriceToDB() {
        
        return getCountriesT().setProductPromotionPrice(promoprice,start,stop);
    }
    public int saveProductFeeToDB() {
        return getCountriesT().setProductFee(dds,akcizi,other);
    }
    public int saveNewPriceToDb() {
        return getCountriesT().setNewPrice(price0,price1,price2,price3,id_curs);
    }
    public void updateProductPromotionPriceToDB() {
        
        getCountriesT().updateProductPromotionPrice(id_ppp,promoprice,start,stop);
    }
    public void updateProductFeeToDB() {
        getCountriesT().updateProductFee(id_pf,dds,akcizi,other);
    }
    public void updateNewPriceToDb() {
        getCountriesT().updateProductPrice(id_pp,price0,price1,price2,price3,id_curs);
    }
    public String getViewPrice() {
        double p0dds = (price0*dds/100)+price0;
        String d = "\u0431\u0435\u0437 \u0414\u0414\u0421, "+p0dds+"\u0441 \u0414\u0414\u0421";
        return String.valueOf(price0)+d;
    }
    
    public String getViewFee() {
        return String.valueOf(dds);
    }
    public String getViewPromoPrice() {
         double prom = (promoprice*dds/100)+promoprice;
        String d = "\u0431\u0435\u0437 \u0414\u0414\u0421, "+prom+"\u0441 \u0414\u0414\u0421";
        return String.valueOf(promoprice)+d;
    }
    public void setGroup(int in) {
        this.group = in;
    }
    public int getGroup() {
        return group;
    }

    private void delRecord() {
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setAllVariables();
            countriesT.deleteRow(getId_PM());
            refreshTable();
        }
    }
    
}// end class
