package imakante.com;

import ZoeloeSoft.projects.JFontChooser.JFontChooser;
import com.lowagie.text.Font;
import com.lowagie.text.pdf.TextField;
import imakante.sales.aeDocumentFacade;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.*;
import javax.swing.JTable;
import javax.swing.JTree;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.engine.JasperReport;
import java.io.*; 
import org.jdom.*; 
import org.jdom.input.*; 
import org.jdom.output.*;
import javax.swing.tree.*;
import java.awt.GraphicsEnvironment;
import javax.swing.AbstractListModel;

public class simpleReport extends javax.swing.JFrame {
  
    private final int IN =1; 
    private final int OUT=2; 
    private HashMap storeCalssType = new HashMap();
    private int docType;
    private HashMap inputFiltrs;
    private net.sf.jasperreports.engine.JasperPrint jasperPrint ;
    private net.sf.jasperreports.view.JRViewer jrv;
    private java.sql.Connection conn;
    private Document doc;
    private Element root;
    private JTree jTreeSetup=null;
    private DefaultMutableTreeNode top = new DefaultMutableTreeNode("Настройки");
    private  imakante.com.CustomTable table;
    private  String nameColumnsBG[] = {"id_df", "in_contragent_df", "Код на контрагента1", "Булстат1", "Данъчен номер1",
    "Име на контрагента1", "Адрес1", "МОЛ1","Телефон на контрагента1", "out_contragent_df",
    "Код на контрагента2", "Булстат2", "Данъчен номер2", "Име на контрагента2", "Адрес2",
    "МОЛ2","Телефон на контрагента2", "in_obekt_df", "Име на обекта1", "Адрес на обекта1",
    "Код на обекта1","out_obekt_df", "Име на обекта2", "Адрес на обекта2", "Код на обекта2",
    "Тип на документа", "Номер на документа", "Състояние", "Склад","Общо",
    "ДДС", "ПотребителIndex","Потребител", "Потребител-последна редакцияIndex", "Потребител-последна редакция",
    "Дата на документа", "time_edition_df", "distributor_df", "Код на дистрибутор", "delivere_df",
    "Код на доставчик","faktura_connection_df", "zaiavka_connection_df", "Вид плащанеIndex", "Вид плащане",
    "paying_order_df", "Дата на доставяне", "Дата на плащане", "Коментар", "flag_finish_df",
    "id_rep", "level_df","Склад (към)"};
    
/* private  String nameColumnsBG[] = {"id_df", "in_contragent_df", "\u041a\u043e\u0434 \u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u04301", "\u0411\u0443\u043b\u0441\u0442\u0430\u04421", "\u0414\u0430\u043d\u044a\u0447\u0435\u043d \u043d\u043e\u043c\u0435\u04401", "\u0418\u043c\u0435 \u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u04301",
   "\u0410\u0434\u0440\u0435\u04411", "\u041c\u041e\u041b1","\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u04301", "out_contragent_df",
 "\u041a\u043e\u0434 \u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u04302", "\u0411\u0443\u043b\u0441\u0442\u0430\u04422", "\u0414\u0430\u043d\u044a\u0447\u0435\u043d \u043d\u043e\u043c\u0435\u04402", "\u0418\u043c\u0435 \u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u04302", "\u0410\u0434\u0440\u0435\u04412", "\u041c\u041e\u041b2","\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u04302", "in_obekt_df", "\u0418\u043c\u0435 \u043d\u0430 \u043e\u0431\u0435\u043a\u0442\u04301", "\u0410\u0434\u0440\u0435\u0441 \u043d\u0430 \u043e\u0431\u0435\u043a\u0442\u04301", "\u041a\u043e\u0434 \u043d\u0430 \u043e\u0431\u0435\u043a\u0442\u04301",
 "out_obekt_df", "\u0418\u043c\u0435 \u043d\u0430 \u043e\u0431\u0435\u043a\u0442\u04302", "\u0410\u0434\u0440\u0435\u0441 \u043d\u0430 \u043e\u0431\u0435\u043a\u0442\u04302", "\u041a\u043e\u0434 \u043d\u0430 \u043e\u0431\u0435\u043a\u0442\u04302", "\u0422\u0438\u043f \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430", "\u041d\u043e\u043c\u0435\u0440 \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430", "\u0421\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435", "\u0421\u043a\u043b\u0430\u0434", "\u041e\u0431\u0449\u043e", "\u0414\u0414\u0421",
 "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043bIndex","\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b", "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b-\u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430 \u0440\u0435\u0434\u0430\u043a\u0446\u0438\u044fIndex","\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b-\u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430 \u0440\u0435\u0434\u0430\u043a\u0446\u0438\u044f", "\u0414\u0430\u0442\u0430 \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430", "time_edition_df", "distributor_df", "\u041a\u043e\u0434 \u043d\u0430 \u0434\u0438\u0441\u0442\u0440\u0438\u0431\u0443\u0442\u043e\u0440", "delivere_df", "\u041a\u043e\u0434 \u043d\u0430 \u0434\u043e\u0441\u0442\u0430\u0432\u0447\u0438\u043a",
 "faktura_connection_df", "zaiavka_connection_df", "\u0412\u0438\u0434 \u043f\u043b\u0430\u0449\u0430\u043d\u0435Index","\u0412\u0438\u0434 \u043f\u043b\u0430\u0449\u0430\u043d\u0435", "paying_order_df", "\u0414\u0430\u0442\u0430 \u043d\u0430 \u0434\u043e\u0441\u0442\u0430\u0432\u044f\u043d\u0435", "\u0414\u0430\u0442\u0430 \u043d\u0430 \u043f\u043b\u0430\u0449\u0430\u043d\u0435", "\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440",
"flag_finish_df", "id_rep", "level_df","\u0421\u043a\u043b\u0430\u0434 (\u043a\u044a\u043c)"};*/

    private String nameColumnsEN[] ={"id_df","in_contragent_df","contr_in_code_contragent","contr_in_bul_n_contragent","contr_in_dan_n_contragent",
    "contr_in_name_n_contragent","contr_in_address_n_contragent","p_contr_in_name_ls_n_person","contr_in_tel_contragent","out_contragent_df",
    "contr_out_code_contragent","contr_out_bul_n_contragent","contr_out_dan_n_contragent","contr_out_name_n_contragent","ontr_out_address_n_contragent",
    "p_contr_out_name_ls_n_person","contr_out_tel_contragent","in_obekt_df","obkt_in_name_n_obekt","obkt_in_address_n_obekt",
    "obkt_in_code_n_obekt","out_obekt_df","obkt_out_name_n_obekt","obkt_out_address_n_obekt","obkt_out_code_n_obekt",
    "type_df","number_df","condition_df","out_store_df", "total_df",
    "dds_df","user_df","name_um","user_last_df","um_usr_last_name_um", "date_edition_df",
    "time_edition_df","distributor_df","dist","delivere_df","deliv",
    "faktura_connection_df","zaiavka_connection_df","description_pay_df","name_kp","paying_order_df",
    "date_deliver_df","date_pay_df","comments_df", "flag_finish_df","id_rep",
    "level_df","in_store_df"};
        
    
   private  textField colHr[];
   private  textField colDa[];
   private int pageWidth = 530;  //  v pixels
   private String defaultFiletoSave = "tmpSimpleReport.jrxml";
    // zapazvane na izbraniq font za Header
    private String headerFont[] = {"SanSerif","italic","10"};
    
    /** Creates new form simpleReport */
    public simpleReport(HashMap inputfilters,int doctype,java.sql.Connection con, imakante.com.CustomTable t,String path) 
    {
        docType = doctype;
        inputFiltrs = inputfilters;
        conn = con;
        table = t;
        initComponents();
        readJasperXML(path+"simplereport.jrxml");
        readClassTypeFromXML();
        customComponetInit();
        createjTreeForSetup();
        listenerForJtreeSetup();
        buildColumns();
        setTitleXML("test");
        setColumnNamesXML(colHr);
        setDetailsXML(colDa);
        saveToFileXML(path+defaultFiletoSave);
      //  selectDocument(docType);
        System.out.println("nameColumnBG="+nameColumnsBG.length);
        System.out.println("nameColumnEN="+nameColumnsEN.length); 
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jDialogSetup = new javax.swing.JDialog();
        jScrollSetup = new javax.swing.JScrollPane();
        jScrollData = new javax.swing.JScrollPane();
        jPanelDataFont = new javax.swing.JPanel();
        jButton2 = new javax.swing.JButton();
        jPanelDataBorder = new javax.swing.JPanel();
        jButton3 = new javax.swing.JButton();
        jPanelHedarFont = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jListHeaderFontStyle = new javax.swing.JList();
        jScrollPane1 = new javax.swing.JScrollPane();
        jListHeaderFontName = new javax.swing.JList();
        jScrollPane3 = new javax.swing.JScrollPane();
        jListHeaderFontSize = new javax.swing.JList();
        jButton4 = new javax.swing.JButton();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel1 = new javax.swing.JLabel();
        jLabelHeaderStatus = new javax.swing.JLabel();
        jPanelHedarBorder = new javax.swing.JPanel();
        jPanelTitleFont = new javax.swing.JPanel();
        jPanelControl = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jPanelData = new javax.swing.JPanel();

        jDialogSetup.getContentPane().setLayout(new javax.swing.BoxLayout(jDialogSetup.getContentPane(), javax.swing.BoxLayout.X_AXIS));

        jDialogSetup.setModal(true);
        jDialogSetup.setResizable(false);
        jScrollSetup.setBackground(new java.awt.Color(255, 255, 255));
        jScrollSetup.setMinimumSize(new java.awt.Dimension(150, 500));
        jScrollSetup.setPreferredSize(new java.awt.Dimension(150, 500));
        jDialogSetup.getContentPane().add(jScrollSetup);

        jScrollData.setMinimumSize(new java.awt.Dimension(350, 500));
        jScrollData.setPreferredSize(new java.awt.Dimension(350, 500));
        jDialogSetup.getContentPane().add(jScrollData);

        jPanelDataFont.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelDataFont.setPreferredSize(new java.awt.Dimension(350, 450));
        jButton2.setText("Font");

        org.jdesktop.layout.GroupLayout jPanelDataFontLayout = new org.jdesktop.layout.GroupLayout(jPanelDataFont);
        jPanelDataFont.setLayout(jPanelDataFontLayout);
        jPanelDataFontLayout.setHorizontalGroup(
            jPanelDataFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataFontLayout.createSequentialGroup()
                .add(98, 98, 98)
                .add(jButton2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 126, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(126, Short.MAX_VALUE))
        );
        jPanelDataFontLayout.setVerticalGroup(
            jPanelDataFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelDataFontLayout.createSequentialGroup()
                .addContainerGap(375, Short.MAX_VALUE)
                .add(jButton2)
                .add(52, 52, 52))
        );
        jPanelDataBorder.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelDataBorder.setPreferredSize(new java.awt.Dimension(350, 450));
        jButton3.setText("Border");

        org.jdesktop.layout.GroupLayout jPanelDataBorderLayout = new org.jdesktop.layout.GroupLayout(jPanelDataBorder);
        jPanelDataBorder.setLayout(jPanelDataBorderLayout);
        jPanelDataBorderLayout.setHorizontalGroup(
            jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataBorderLayout.createSequentialGroup()
                .add(126, 126, 126)
                .add(jButton3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 88, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(136, Short.MAX_VALUE))
        );
        jPanelDataBorderLayout.setVerticalGroup(
            jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataBorderLayout.createSequentialGroup()
                .add(392, 392, 392)
                .add(jButton3)
                .addContainerGap(35, Short.MAX_VALUE))
        );
        jPanelHedarFont.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelHedarFont.setPreferredSize(new java.awt.Dimension(350, 450));
        jListHeaderFontStyle.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "plain", "bold", "italic", "bold + italic" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane2.setViewportView(jListHeaderFontStyle);

        jScrollPane1.setViewportView(jListHeaderFontName);

        jListHeaderFontSize.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "8", "10", "12", "14", "16", "18", "20", "22" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane3.setViewportView(jListHeaderFontSize);

        jButton4.setText("OK");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jLabel1.setText("\u0422\u0435\u043a\u0443\u0449\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438:");

        jLabelHeaderStatus.setFont(new java.awt.Font("Tahoma", 0, 12));
        jLabelHeaderStatus.setText("jLabel2");

        org.jdesktop.layout.GroupLayout jPanelHedarFontLayout = new org.jdesktop.layout.GroupLayout(jPanelHedarFont);
        jPanelHedarFont.setLayout(jPanelHedarFontLayout);
        jPanelHedarFontLayout.setHorizontalGroup(
            jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelHedarFontLayout.createSequentialGroup()
                .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jPanelHedarFontLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(jButton4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 88, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanelHedarFontLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 202, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(10, 10, 10)
                        .add(jScrollPane2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(17, 17, 17)
                        .add(jScrollPane3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 32, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(20, Short.MAX_VALUE))
            .add(jPanelHedarFontLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jSeparator1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 340, Short.MAX_VALUE)
                    .add(jPanelHedarFontLayout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jLabelHeaderStatus)
                            .add(jLabel1))
                        .add(231, 231, 231))))
        );
        jPanelHedarFontLayout.setVerticalGroup(
            jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelHedarFontLayout.createSequentialGroup()
                .add(32, 32, 32)
                .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jScrollPane2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 185, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jScrollPane3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 185, Short.MAX_VALUE)
                    .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 185, Short.MAX_VALUE))
                .add(34, 34, 34)
                .add(jButton4)
                .add(25, 25, 25)
                .add(jSeparator1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel1)
                .add(18, 18, 18)
                .add(jLabelHeaderStatus)
                .add(89, 89, 89))
        );
        org.jdesktop.layout.GroupLayout jPanelHedarBorderLayout = new org.jdesktop.layout.GroupLayout(jPanelHedarBorder);
        jPanelHedarBorder.setLayout(jPanelHedarBorderLayout);
        jPanelHedarBorderLayout.setHorizontalGroup(
            jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 100, Short.MAX_VALUE)
        );
        jPanelHedarBorderLayout.setVerticalGroup(
            jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 100, Short.MAX_VALUE)
        );
        org.jdesktop.layout.GroupLayout jPanelTitleFontLayout = new org.jdesktop.layout.GroupLayout(jPanelTitleFont);
        jPanelTitleFont.setLayout(jPanelTitleFontLayout);
        jPanelTitleFontLayout.setHorizontalGroup(
            jPanelTitleFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 205, Short.MAX_VALUE)
        );
        jPanelTitleFontLayout.setVerticalGroup(
            jPanelTitleFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 136, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setResizable(false);
        jPanelControl.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 5, 15));

        jPanelControl.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanelControl.setMinimumSize(new java.awt.Dimension(600, 50));
        jPanelControl.setPreferredSize(new java.awt.Dimension(600, 50));
        jButton1.setText("\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanelControl.add(jButton1);

        getContentPane().add(jPanelControl, java.awt.BorderLayout.CENTER);

        jPanelData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanelData.setMinimumSize(new java.awt.Dimension(650, 400));
        jPanelData.setPreferredSize(new java.awt.Dimension(600, 400));
        org.jdesktop.layout.GroupLayout jPanelDataLayout = new org.jdesktop.layout.GroupLayout(jPanelData);
        jPanelData.setLayout(jPanelDataLayout);
        jPanelDataLayout.setHorizontalGroup(
            jPanelDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 646, Short.MAX_VALUE)
        );
        jPanelDataLayout.setVerticalGroup(
            jPanelDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 396, Short.MAX_VALUE)
        );
        getContentPane().add(jPanelData, java.awt.BorderLayout.NORTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
// TODO add your handling code here:
        
       headerFont[0] = (String)jListHeaderFontName.getSelectedValue(); 
       headerFont[1] = (String)jListHeaderFontStyle.getSelectedValue(); 
       headerFont[2] = (String)jListHeaderFontSize.getSelectedValue();  
       jLabelHeaderStatus.setText(headerFont[0]+", "+headerFont[1]+", "+headerFont[2]);
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
        jDialogSetup.setSize(500,500);
        jDialogSetup.setVisible(true);
        
    }//GEN-LAST:event_jButton1ActionPerformed
    
  
  /*  public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new simpleReport(null,1,null,null).setVisible(true);
              
            }
        });
    }
    */
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JDialog jDialogSetup;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabelHeaderStatus;
    private javax.swing.JList jListHeaderFontName;
    private javax.swing.JList jListHeaderFontSize;
    private javax.swing.JList jListHeaderFontStyle;
    private javax.swing.JPanel jPanelControl;
    private javax.swing.JPanel jPanelData;
    private javax.swing.JPanel jPanelDataBorder;
    private javax.swing.JPanel jPanelDataFont;
    private javax.swing.JPanel jPanelHedarBorder;
    private javax.swing.JPanel jPanelHedarFont;
    private javax.swing.JPanel jPanelTitleFont;
    private javax.swing.JScrollPane jScrollData;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollSetup;
    private javax.swing.JSeparator jSeparator1;
    // End of variables declaration//GEN-END:variables


 
 private void selectDocument(int doctype)
 {
     try
     {
     switch(doctype)
     {
         case aeDocumentFacade.BRAK:
         {
             String pathRep = imakante.com.NewMain.getPathrep()+"simpleReportBrak.jasper";
             System.out.println("Path="+pathRep);
             jasperPrint = JasperFillManager.fillReport(new java.io.FileInputStream(new java.io.File(pathRep)),
                    inputFiltrs, conn);
             jrv = new net.sf.jasperreports.view.JRViewer(jasperPrint);
            
             break;
         }
         case aeDocumentFacade.FAKTURA_DANACHNA:
         {
             break;
         }
         case aeDocumentFacade.FAKTURA_OPROSTENA:
         {
             break;
         }
         case aeDocumentFacade.NAREZDANE_ZA_PREHVYRQNE:
         {
              break;
         }
         case aeDocumentFacade.OFERTA:
         {
              break;
         }
         case aeDocumentFacade.PREDAVATELNA_RAZPISKA:
         {
             break;
         }
         case aeDocumentFacade.PRIEMATELNA_RAZPISKA:
         {
             break;
         }
         case aeDocumentFacade.PROFORMA_FAKTURA:
         {
             break;
         }
         case aeDocumentFacade.PROTOKOL_LIPSA:
         {
             break;
         }
         case  aeDocumentFacade.RAZPISKA_ZA_VRYSHTANE:
         {
             break;
         }
     }// end switch
     
     }
     catch(Exception er){};
     jPanelData.add(jrv);
     jPanelData.repaint();
 }
 
 
 class textField {
    
    private String textFieldExpression_text;
    
    private int reportElement_X; 
    
    private int reportElement_Y; 
    
    private int reportElement_width; 
    
    private int reportElement_height;
    
    private String box_topBorder;
    private String box_topBorderColor;
    private String box_leftBorder;
    private String box_leftBorderColor;
    private String box_rightBorder;
    private String box_rightBorderColor;
    private String box_bottomBorder;
    private String box_bottomBorderColor;
    
    private int textElement_font_size;
    private String textElement_font_fontName;
    private boolean textElement_font_italic;
    private boolean textElement_font_boild;
    
    private String classType;
    private String textFieldParameterExpression;
    
    
   
    
    private String horizontalAligment;
    
    private String verticalAligment;
    
   
    public  textField(String text)   
    {
      textFieldExpression_text=new String(text);  
      
      textElement_font_fontName = "SansSerif";
      textElement_font_italic = false;
      textElement_font_boild = false;
      textElement_font_size = 10;
      
      box_topBorder  = "None";
      box_topBorderColor= "#000000";
      box_leftBorder= "None";
      box_leftBorderColor= "#000000";
      box_rightBorder= "None";
      box_rightBorderColor= "#000000";
      box_bottomBorder= "None";
      box_bottomBorderColor= "#000000";
      
      horizontalAligment = "Center";
    
          verticalAligment = "Top"; 
      
      
      
    }
    public textField(String text,int posX,int posY,int width,int height)
    {
       textFieldExpression_text=new String(text);  
       reportElement_width = width;
       reportElement_height = height;
       reportElement_X = posX;
       reportElement_Y = posY;
       
      textElement_font_fontName = "SansSerif";
      textElement_font_italic = false;
      textElement_font_boild = false;
      textElement_font_size = 10;
      
      box_topBorder  = "None";
      box_topBorderColor= "#000000";
      box_leftBorder= "None";
      box_leftBorderColor= "#000000";
      box_rightBorder= "None";
      box_rightBorderColor= "#000000";
      box_bottomBorder= "None";
      box_bottomBorderColor= "#000000";
      horizontalAligment = "Center";
      verticalAligment = "Top";   
    }
 public void setTextElement_font_size(byte size)   
 {
      textElement_font_size = size;
 }
 
 public void setTextElement_font_fontName(String in) 
 {
     textElement_font_fontName = in;  
 }
 
 public void setTextElement_font_italic(boolean in) 
 {
     textElement_font_italic = in;
 }
 
 public void setTextElement_font_boild(boolean in) 
 {
     textElement_font_boild = in;
 }
 
 public void setBox_topBorder(String in) 
 {
     box_topBorder = in;
 }

 public void setBox_bottomBorder(String in)
 {
     box_bottomBorder = in;
 }

 public void setBox_rightBorder(String  in)
 {
    box_rightBorder = in;
 }
 
 public void setBox_leftBorder(String in)
 {
    box_leftBorder = in;
 }
  
 public int getTextElement_font_size()   
 {
       return textElement_font_size;
 }
 
 public String getTextElement_font_fontName() 
 {
     return textElement_font_fontName;  
 }
 
 public Boolean getTextElement_font_italic() 
 {
     return textElement_font_italic ;
 }
 
 public boolean getTextElement_font_boild() 
 {
     return textElement_font_boild;
 }

 public String getBox_topBorder()
 {
     if(box_topBorder!=null)
        return box_topBorder ;
     box_topBorder="None";
     return box_topBorder ;
 }
 
 public String getBox_bottomBorder()
 {
     if(box_bottomBorder!=null)
     return box_bottomBorder;
     box_bottomBorder="None";
     return box_bottomBorder;
 }
 
 public String getBox_rightBorder()
 {
     if(box_rightBorder!=null)
    return box_rightBorder;
     box_rightBorder = "None";
    return box_rightBorder;
 }
 
 public String  getBox_leftBorder()
 {
     if(box_leftBorder!=null)
    return box_leftBorder;
     box_leftBorder="None";
     return box_leftBorder;
 }
 public String getTextFieldExpression_text()
 {
     return textFieldExpression_text;
 }

 public int getWidth()
 {
     return reportElement_width;
 }
 public int getHeight()
 {
     return reportElement_height;
 }
 public void setHeight(int h)
 {
     reportElement_height = h;
 }
 public void setWidth(int w)
 {
     reportElement_width=w;
 }

 public void setPosirionX(int x)
 {
    reportElement_X=x; 
 }

 public void setPositionY(int y)
 {
     reportElement_Y=y;
 }
 
 public int getPositionY()
 {
     return reportElement_Y;
 }
 
 public int getPositionX()
 {
     return reportElement_X;
 }
 

 public void setHorizontalAligment(String h_al)
 {
     horizontalAligment= h_al;
 }
 public void setVerticalAligment(String v_al)
 {
     verticalAligment=v_al;
 }
 public String getVerticalAligment()
 {
     return verticalAligment;
 }
 public String getHorizontalAligment()
 {
     return  horizontalAligment;
 }
 
public void setFieldParameterExpression(String in)
{
    textFieldParameterExpression = in;
}
public String getFieldParameterExpression()
{
    return textFieldParameterExpression;
}
public void setClassType(String in)
{
    classType = in;
}
public String getClassType()
{
    return classType;
}
public String toString()
{
    String return_value=null;
    
   return_value=textFieldExpression_text;
    
    return return_value;
}
}// end textFilend
 
 public Element readJasperXML(String jrxmpName)
 {
     SAXBuilder builder = new SAXBuilder("org.apache.xerces.parsers.SAXParser");
     try {
         doc = builder.build(jrxmpName);
     } catch(IOException ioex) {} catch(org.jdom.JDOMException jex){};
     
     root = doc.getRootElement();
     
   return root;  
    
 }
  
 public boolean setTitleXML(String title) 
 {
     boolean return_value = false;
     Element title_root = root.getChild("title");
     Element band = title_root.getChild("band");
     List elements = band.getChildren();
     Iterator it = elements.iterator();
     while(it.hasNext())
      {
         Element el = (Element) it.next();
         if(el.getName().equals("staticText"))
         {
            Element text = el.getChild("text");
            text.setText(title);
            return_value = true;
            
         }
     }
   return return_value;  
 }
 public void setColumnNamesXML(textField[] col)
 {
     Element title_root = root.getChild("columnHeader");
     Element band = title_root.getChild("band");
     
    for(int i=0; i<col.length;i++)
    {
         Element stText = new Element("staticText");
         Element repElement = new Element("reportElement");
         repElement.setAttribute("mode","Transparent");
         repElement.setAttribute("x",String.valueOf(col[i].getPositionX()));
         repElement.setAttribute("y",String.valueOf(col[i].getPositionY()));
         repElement.setAttribute("width",String.valueOf(col[i].getWidth()));
         repElement.setAttribute("height",String.valueOf(col[i].getHeight()));
         repElement.setAttribute("forecolor","#000000");
         repElement.setAttribute("backcolor","#FFFFFF");
         repElement.setAttribute("key","element-90");

         Element box = new Element("box");
         box.setAttribute("topBorder",col[i].getBox_topBorder());
         box.setAttribute("topBorderColor","#000000");
         box.setAttribute("leftBorder",col[i].getBox_leftBorder());
         box.setAttribute("leftBorderColor","#000000");
         box.setAttribute("rightBorder",col[i].getBox_rightBorder());
         box.setAttribute("rightBorderColor","#000000");
         box.setAttribute("bottomBorder",col[i].getBox_bottomBorder());
         box.setAttribute("bottomBorderColor","#000000");
        
         Element textElement = new Element("textElement");
         textElement.setAttribute("textAlignment",col[i].getHorizontalAligment());
         textElement.setAttribute("verticalAlignment",col[i].getVerticalAligment());
         textElement.setAttribute("rotation","None");
         textElement.setAttribute("lineSpacing","Single");
         
         Element font = new Element("font");
         font.setAttribute("fontName",col[i].getTextElement_font_fontName());         
         font.setAttribute("pdfFontName","Times-Roman");         
         font.setAttribute("size",String.valueOf(col[i].getTextElement_font_size()));
         font.setAttribute("isBold",String.valueOf(col[i].getTextElement_font_boild()));
         font.setAttribute("isItalic",String.valueOf(col[i].getTextElement_font_italic()));
         font.setAttribute("isUnderline","false");
         font.setAttribute("isPdfEmbedded","false");
         font.setAttribute("pdfEncoding","Cp1251");
         font.setAttribute("isStrikeThrough","false");
         
         Element text = new Element("text");
         text.setText(col[i].getTextFieldExpression_text());
         
         stText.addContent(repElement);
         stText.addContent(box);
         textElement.addContent(font);
         stText.addContent(textElement);
         stText.addContent(text);
         band.addContent(stText);
         
    }
     
     
 }
 public void setDetailsXML(textField[] col)
 {
     Element title_root = root.getChild("detail");
     Element band = title_root.getChild("band");
     
    for(int i=0; i<col.length;i++)
    {
         Element txField = new Element("textField");
         txField.setAttribute("isStretchWithOverflow","true");
         txField.setAttribute("pattern","");
         txField.setAttribute("isBlankWhenNull","true");
         txField.setAttribute("evaluationTime","Now");
         txField.setAttribute("hyperlinkType","None");
         txField.setAttribute("hyperlinkTarget","Self");
         
         Element repElement = new Element("reportElement");
         repElement.setAttribute("mode","Transparent");
         repElement.setAttribute("x",String.valueOf(col[i].getPositionX()));
         repElement.setAttribute("y",String.valueOf(col[i].getPositionY()));
         repElement.setAttribute("width",String.valueOf(col[i].getWidth()));
         repElement.setAttribute("height",String.valueOf(col[i].getHeight()));
         repElement.setAttribute("forecolor","#000000");
         repElement.setAttribute("backcolor","#FFFFFF");
         repElement.setAttribute("key","textField");

         Element box = new Element("box");
         box.setAttribute("topBorder",col[i].getBox_topBorder());
         box.setAttribute("topBorderColor","#000000");
         box.setAttribute("leftBorder",col[i].getBox_leftBorder());
         box.setAttribute("leftBorderColor","#000000");
         box.setAttribute("rightBorder",col[i].getBox_rightBorder());
         box.setAttribute("rightBorderColor","#000000");
         box.setAttribute("bottomBorder",col[i].getBox_bottomBorder());
         box.setAttribute("bottomBorderColor","#000000");
        
         Element textElement = new Element("textElement");
         textElement.setAttribute("textAlignment",col[i].getHorizontalAligment());
         textElement.setAttribute("verticalAlignment",col[i].getVerticalAligment());
         textElement.setAttribute("rotation","None");
         textElement.setAttribute("lineSpacing","Single");
         
         Element font = new Element("font");
         font.setAttribute("fontName",col[i].getTextElement_font_fontName());         
         font.setAttribute("pdfFontName","Times-Roman");         
         font.setAttribute("size",String.valueOf(col[i].getTextElement_font_size()));
         font.setAttribute("isBold",String.valueOf(col[i].getTextElement_font_boild()));
         font.setAttribute("isItalic",String.valueOf(col[i].getTextElement_font_italic()));
         font.setAttribute("isUnderline","false");
         font.setAttribute("isPdfEmbedded","false");
         font.setAttribute("pdfEncoding","Cp1251");
         font.setAttribute("isStrikeThrough","false");
         
         Element textFieldExpression = new Element("textFieldExpression");
         textFieldExpression.setAttribute("class",col[i].getClassType());
         textFieldExpression.setText(col[i].getFieldParameterExpression());
         
         txField.addContent(repElement);
         txField.addContent(box);
         textElement.addContent(font);
         txField.addContent(textElement);
         txField.addContent(textFieldExpression);
         band.addContent(txField);
         
    }
     
     
 }
public boolean saveToFileXML(String filename) 
{
    boolean return_value= false;
    try
       {
            
          FileOutputStream f1  = new FileOutputStream(filename);
          Writer out = new BufferedWriter(new OutputStreamWriter(f1,"UTF-8"));
          XMLOutputter outXML = new XMLOutputter(); 
          outXML.output(root,out);
          out.flush();
          out.close();
          return_value = true;
       }
       catch(Exception ex){System.out.println("ERRORR"); return_value = false;};
   return return_value;
}

private void createjTreeForSetup()
{
 DefaultMutableTreeNode category = null;
 DefaultMutableTreeNode setUpComponent = null;

// add zaglavie
category = new DefaultMutableTreeNode("Заглавие");
setUpComponent = new DefaultMutableTreeNode("Шрифт");
category.add(setUpComponent);
top.add(category);


// add column heder
category = new DefaultMutableTreeNode("Имена на колони");
setUpComponent = new DefaultMutableTreeNode("Шрифт");
category.add(setUpComponent);
setUpComponent = new DefaultMutableTreeNode("Бордер");
category.add(setUpComponent);
top.add(category);

// add column data
category = new DefaultMutableTreeNode("Данни на колоните");
setUpComponent = new DefaultMutableTreeNode("Шрифт");
category.add(setUpComponent);
setUpComponent = new DefaultMutableTreeNode("Бордер");
category.add(setUpComponent);
top.add(category);



jTreeSetup = new JTree(top); 
jScrollSetup.setViewportView(jTreeSetup);  



}
private void listenerForJtreeSetup()
{
  /*  jTreeSetup.addMouseListener(new MouseListener() {
        public void mouseClicked(MouseEvent e) 
        {
            if(e.getClickCount()==2)
            {
                jTreeSetup.get
                
                
                
                
                
            }
        }
        public void mouseEntered(MouseEvent e)
        {
        }
        public void mouseExited(MouseEvent e)
        {
        }
        public void mousePressed(MouseEvent e)
        {
        }
        public void mouseReleased(MouseEvent e)
        {
        }
    });
          */  
           
   jTreeSetup.addTreeSelectionListener(new TreeSelectionListener() {
     public void valueChanged(TreeSelectionEvent e) 
       {
         DefaultMutableTreeNode node = (DefaultMutableTreeNode)
                           jTreeSetup.getLastSelectedPathComponent();
         if(node == null) return;
         
         String userNode = (String)node.getUserObject();
         
         if(node.isLeaf())
         {
             if(userNode.equals("Шрифт"))
             {
                DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) node.getParent();
                String parentName = (String) parentNode.getUserObject();
                if(parentName.equals("Заглавие")) {
                    
                
                }
                if(parentName.equals("Имена на колони")) {
                   jLabelHeaderStatus.setText(headerFont[0]+", "+headerFont[1]+", "+headerFont[2]) ;
                   jScrollData.setViewportView(jPanelHedarFont);
                   jScrollData.repaint(); 
                }
                if(parentName.equals("Данни на колоните")) {
                   jScrollData.setViewportView(jPanelDataFont);
                   jScrollData.repaint();
                }
             }
             if(userNode.equals("Бордер"))
             {
                DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) node.getParent();
                String parentName = (String) parentNode.getUserObject();
                if(parentName.equals("Имена на колони")) {
                    
                }
                if(parentName.equals("Данни на колоните")) {
                   jScrollData.setViewportView(jPanelDataBorder);
                   jScrollData.repaint(); 
                }
             } 
             
             
         }
         
         System.out.println("JTREE JTREE");
         System.out.println(e.getPath().toString());
       }
});       
          
}
class myListModel extends AbstractListModel
{
  private String[] strings = null;
  
  public myListModel(String[] in)
  {
      strings = in;
  }
  public myListModel()
  {
      strings =null;
  }
  public void setElement(String in)
  {
      String tmp[];
      if(strings==null)
      {
        tmp =new String[1];  
        tmp[0]=in;
      }
      else
      {
       tmp =new String[strings.length+1]; 
       for(int i=0;i<strings.length;i++) {
           tmp[i] = strings[i];
       }
       tmp[strings.length] = in;
      }
    
      
      
     
     // moze da se slozi funkciq za sortirane;
      
     strings = tmp; 
      
  }
  public int getSize() { return strings.length; }
  public Object getElementAt(int i) { return strings[i]; }
        
}

   
private void customComponetInit()
{
   java.awt.Font fonts[]; 
   GraphicsEnvironment ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
   fonts = ge.getAllFonts();
   myListModel listHeaderFontName = new myListModel();
   jListHeaderFontName.setModel(listHeaderFontName);
  
   for(int i=0 ; i < fonts.length;i++)
   {
       listHeaderFontName.setElement(fonts[i].getFontName());
      
   }
   
    
}


private void buildColumns()
{
 int colCount = getColCountWithoutHides(docType);
 int index=0;
 System.out.println("colCount = "+ colCount);
 colHr = new textField[colCount];
 colDa = new textField[colCount];
 String colNameBG;
  String columnClass;
 int colWidth = pageWidth/colCount;
 
 for(int i=0;i< table.getColumnCount(); i++) 
 {
     colNameBG = table.getColumnName(i);
     columnClass = (String) storeCalssType.get(colNameBG);
    
     if(!checkForHideColumn(colNameBG,docType)) 
     {
        
       /*  if(i>46)
         {
             for(int j=0;j<index;j++)
             {
                 System.out.print(colHr[j].getTextFieldExpression_text()+", ");
             }
             
             System.out.println("");
         }*/
         
         
         
         colHr[index] = new textField(colNameBG);
         if(index==0)
         colHr[index].setPosirionX(1);
         else 
         {
             int oldPos = colHr[(index-1)].getPositionX();
             oldPos += colWidth;
             colHr[index].setPosirionX(oldPos);
         }
         colHr[index].setPositionY(0);
         colHr[index].setWidth(colWidth);
         colHr[index].setHeight(15);
         //================================================================================
         colDa[index] = new textField(nameColumnsEN[getNameColumnsEN(colNameBG)]);
         colDa[index].setFieldParameterExpression(getNameColumnsENASField(getNameColumnsEN(colNameBG)));
         columnClass = (String) storeCalssType.get(nameColumnsEN[getNameColumnsEN(colNameBG)]);
         colDa[index].setClassType(columnClass);
         
         if(index==0)
             colDa[index].setPosirionX(1);
         else colDa[index].setPosirionX(colDa[index-1].getPositionX()+colWidth);
         colDa[index].setPositionY(0);
         colDa[index].setWidth(colWidth);
         colDa[index].setHeight(15);
         index++;
         
     }
     
 }
}

private int getColCountWithoutHides(int doctype)
{
  int maxCount = table.getColumnCount();
  
  maxCount -=18;   // FrmDocumentFacade.hideCommonColumns ()
  
    switch(doctype)
    {
        case aeDocumentFacade.FAKTURI:
        {
           // skrivane na koloni  na kontragent s index "1" nakraq
         //   maxCount-=8 --------- 8
        //    maxCount-=3; ------------- 3
        //    maxCount-=3; ------------- 3
        //    maxCount-=3; --------------- 3
                       
         //   HideColumns(getColumnIndex("Склад (към)")); -----------1
          
            maxCount -=18;  
            break;
        }
        case aeDocumentFacade.FAKTURA_DANACHNA:
        {
           // skrivane na koloni  na kontragent s index "1" nakraq
          //  maxCount-=8 ------ 8
         //   maxCount-=3; ----------- 3
         //   maxCount-=3;----------- 3
        //    maxCount-=3; ---------- 3
                       
         //   HideColumns(getColumnIndex("Склад (към)")); ---1
          
            maxCount -=17;   
            break;
        }
        case aeDocumentFacade.FAKTURA_OPROSTENA:
        {
            // skrivane na koloni  na kontragent s index "1" nakraq
            //   maxCount-=8 ------- 8
            //   maxCount-=3; ------------ 3
            //   maxCount-=3; ----------- 3
            //    maxCount-=3; 
            
            //    HideColumns(getColumnIndex("Склад (към)"));

            maxCount -=18;   
            break;
        }
        case aeDocumentFacade.NAREZDANE_ZA_PREHVYRQNE:
        {
          // skrivane na koloni  na kontragent s index "1" nakraq
          //  maxCount-=8 -------- 8
          // skrivane na koloni  na kontragent s index "2" nakraq
          // maxCount-=8  ------ 8 
           
          //  maxCount-=3; ---------- 3
          //  maxCount-=3; ----------3
          //  maxCount-=3;-----------3
            
            
           //  HideColumns(getColumnIndex("Вид плащане")); ----1
          //  HideColumns(getColumnIndex("ДДС")); ------------1
          //   HideColumns(getColumnIndex("Общо"));------------1
          //   HideColumns(getColumnIndex("Дата на плащане"));-1
             
           
           maxCount -=29;  
            break;
        }
        case aeDocumentFacade.KONSGNACIONEN_PROTOKOL:
        {
           // skrivane na koloni  na kontragent s index "1" nakraq
           maxCount-=8;
           // skrivane na koloni  na kontragent s index "1" nakraq
           maxCount-=3;
           
           maxCount-=3;
           maxCount-=1;
         
             
            break;
        }
        case aeDocumentFacade.PREDAVATELNA_RAZPISKA:
        {
            break;
        }
        case aeDocumentFacade.PRIEMATELNA_RAZPISKA:
        {
           
            maxCount-=8 ;
            maxCount-=3;
            maxCount-=3;
            maxCount-=1;
            
            break;
        }
       case aeDocumentFacade.RAZPISKA_ZA_VRYSHTANE:
        {
           
           maxCount-=8 ;
           maxCount-=3;
           maxCount-=3;
           maxCount-=1;
            
            break;
        }
       case aeDocumentFacade.OFERTA :
        {
           maxCount-=8 ;
           maxCount-=3;
           maxCount-=3;
           maxCount-=3;
            
           maxCount-=1;   
                
         break;
        } 
       case aeDocumentFacade.BRAK :
       {
         maxCount-=8 ;
         maxCount-=8 ;
         maxCount-=3;
         maxCount-=3;
         maxCount-=1;  
        
                
          break;
        }
        case aeDocumentFacade.PROTOKOL_LIPSA :
       {
           maxCount-=8 ;
           maxCount-=8;
           maxCount-=3;
           maxCount-=3;
           maxCount-=3;      
                
          break;
        }
        case aeDocumentFacade.STOKOVA_RAZPISKA:
        {

           maxCount-=8 ;
           maxCount-=3;
           maxCount-=1;
            
            break;
        }
        case aeDocumentFacade.PROFORMA_FAKTURA:
        {
          // skrivane na koloni  na kontragent s index "1" nakraq
            maxCount-=8;
            
            maxCount-=3;
            maxCount-=3;
            maxCount-=3;
            
            maxCount-=1;
           
          break;  
        }
        
    }
    
    
 return maxCount;   
}

private boolean checkForHideColumn(String colbg,int doctype)
{
    boolean return_value=false;
    if(colbg.equals("id_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("out_obekt_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("in_obekt_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("distributor_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("delivere_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("time_edition_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("faktura_connection_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("zaiavka_connection_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("flag_finish_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("level_df")) {
        return return_value=true;
        
    }
    
    if(colbg.equals("id_rep")) {
        return return_value=true;
        
    }
    
    if(colbg.equals("paying_order_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("Тип на документа")) {
        return return_value=true;
        
    }
    
    if(colbg.equals("out_contragent_df")) {
        return return_value=true;
        
    }
    if(colbg.equals("in_contragent_df")) {
        return return_value=true;
        
    }
    
    if(colbg.equals("ПотребителIndex")) {
        return return_value=true;
        
    }
    
    if(colbg.equals("Потребител-последна редакцияIndex")) {
        return return_value=true;
        
    }
    
    if(colbg.equals("Вид плащанеIndex")) {
        return return_value=true;
        
    }
        
     switch(doctype)
    {
        case aeDocumentFacade.FAKTURI:
        {
           // skrivane na koloni  na kontragent s index "1" nakraq
            if( DocimentTypeColumns_Contragent(colbg,IN) ||
                    DocimentTypeColumns_Obekt(colbg,IN) ||
                    DocimentTypeColumns_Obekt(colbg,OUT) ||
                    DocimentTypeColumns_DevDistr(colbg) ) {
                return_value=true;
                break;
            }
            
         //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
            
           
          
            
            break;
        }
        case aeDocumentFacade.FAKTURA_DANACHNA:
        {
           // skrivane na koloni  na kontragent s index "1" nakraq
            if(  DocimentTypeColumns_Contragent(colbg,IN) ||
                    DocimentTypeColumns_Obekt(colbg,IN) ||
                    DocimentTypeColumns_Obekt(colbg,OUT) ||
                    DocimentTypeColumns_DevDistr(colbg)) {
                return_value=true;
                break;
            }
                       
           //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
          
            
            break;
        }
        case aeDocumentFacade.FAKTURA_OPROSTENA:
        {
           // skrivane na koloni  na kontragent s index "1" nakraq
            if( DocimentTypeColumns_Contragent(colbg,IN) ||
                    DocimentTypeColumns_Obekt(colbg,IN) ||
                    DocimentTypeColumns_Obekt(colbg,OUT)||
                    DocimentTypeColumns_DevDistr(colbg)) {
                return_value=true;
                break;
            }
                       
            //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
          
            
            break;
        }
        case aeDocumentFacade.NAREZDANE_ZA_PREHVYRQNE:
        {
          
          if( DocimentTypeColumns_Contragent(colbg,IN)||
            DocimentTypeColumns_Contragent(colbg,OUT)||
            DocimentTypeColumns_Obekt(colbg,IN)||
            DocimentTypeColumns_Obekt(colbg,OUT)||
            DocimentTypeColumns_DevDistr(colbg))
          {
             return_value=true; 
               break; 
          }
            
            
            // HideColumns(getColumnIndex("Вид плащане"));
               if(colbg.equals("Вид плащане"))
            {
               return_value=true; 
               break;
            }  
          
           //  HideColumns(getColumnIndex("ДДС"));
            if(colbg.equals("ДДС")) {
              return_value=true;
              break;
            }
            // HideColumns(getColumnIndex("Общо"));
             if(colbg.equals("Общо")) {
              return_value=true;
              break;
            }
             
            // HideColumns(getColumnIndex("Дата на плащане"));
             
           if(colbg.equals("Дата на плащане")) {
              return_value=true;
              break;
           }
             
           
            break;
        }
        case aeDocumentFacade.KONSGNACIONEN_PROTOKOL:
        {
           
           if( DocimentTypeColumns_Contragent(colbg,IN)||
            DocimentTypeColumns_Obekt(colbg,IN)||
            DocimentTypeColumns_DevDistr(colbg))
           {
              return_value=true;
              break; 
           }
           
         //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
          
             
            break;
        }
        case aeDocumentFacade.PREDAVATELNA_RAZPISKA:
        {
            break;
        }
        case aeDocumentFacade.PRIEMATELNA_RAZPISKA:
        {
            // skrivane na koloni  na kontragent s index "2" nakraq
           if(DocimentTypeColumns_Contragent(colbg,OUT)||
           DocimentTypeColumns_Obekt(colbg,IN)||
           DocimentTypeColumns_Obekt(colbg,OUT))
           {
              return_value=true; 
               break; 
           }
                  
            //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
          
            break;
        }
       case aeDocumentFacade.RAZPISKA_ZA_VRYSHTANE:
        {
            // skrivane na koloni  na kontragent s index "2" nakraq
          if(DocimentTypeColumns_Contragent(colbg,OUT)||
           DocimentTypeColumns_Obekt(colbg,IN)||
           DocimentTypeColumns_Obekt(colbg,OUT))
          {
            return_value=true; 
               break;  
          }
                  
            //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
            
            break;
        }
       case aeDocumentFacade.OFERTA :
        {
         if( DocimentTypeColumns_Contragent(colbg,IN)||
          DocimentTypeColumns_Obekt(colbg,IN)||
          DocimentTypeColumns_Obekt(colbg,OUT)||
          DocimentTypeColumns_DevDistr(colbg))
         {
           return_value=true; 
               break;  
         }
            
          //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
              
                
         break;
        } 
       case aeDocumentFacade.BRAK :
       {
        if( DocimentTypeColumns_Contragent(colbg,IN)||
        DocimentTypeColumns_Contragent(colbg,OUT)||
        DocimentTypeColumns_Obekt(colbg,IN)||
        DocimentTypeColumns_Obekt(colbg,OUT)||
        DocimentTypeColumns_DevDistr(colbg))
        {
          return_value=true; 
          break; 
        }
        
                
          break;
        }
        case aeDocumentFacade.PROTOKOL_LIPSA :
       {
          if(DocimentTypeColumns_Contragent(colbg,IN)||
        DocimentTypeColumns_Contragent(colbg,OUT)||
        DocimentTypeColumns_Obekt(colbg,IN)||
        DocimentTypeColumns_Obekt(colbg,OUT)||
        DocimentTypeColumns_DevDistr(colbg))
          {
              return_value=true; 
               break;
          }
                
          break;
        }
        case aeDocumentFacade.STOKOVA_RAZPISKA:
        {
           
          if( DocimentTypeColumns_Contragent(colbg,IN)||
            DocimentTypeColumns_Obekt(colbg,IN))
          {
              return_value=true; 
               break;
          }
           
            
            
             //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
            
            break;
        }
        case aeDocumentFacade.PROFORMA_FAKTURA:
        {
          if(DocimentTypeColumns_Contragent(colbg,IN)||

           DocimentTypeColumns_Obekt(colbg,IN)||
           DocimentTypeColumns_Obekt(colbg,OUT)||
           DocimentTypeColumns_DevDistr(colbg))
          {
              return_value=true; 
               break;
          }
            
              //  HideColumns(getColumnIndex("Склад (към)"));
             if(colbg.equals("Склад (към)"))
            {
               return_value=true; 
               break;
            }  
           
          break;  
        }
        
    }
    
    
    
    
    
    return return_value;
    
}// end  checkForHideColumn

private boolean DocimentTypeColumns_Contragent(String colbg,int in)
{
    boolean return_value=false;
   switch (in)
    {
        case IN:
        {
           if(colbg.equals("Име на контрагента1"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Булстат1"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Данъчен номер1"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Адрес1"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Телефон на контрагента1"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Код на контрагента1"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("МОЛ1"))
            {
               return_value=true; 
               break;
            } 
           break;
        }
        case OUT:
        {
           if(colbg.equals("Име на контрагента2"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Булстат2"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Данъчен номер2"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Адрес2"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Телефон на контрагента2"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("Код на контрагента2"))
            {
               return_value=true; 
               break;
            } 
             if(colbg.equals("МОЛ2"))
            {
               return_value=true; 
               break;
            } 
           break;
        }
    }  
   return return_value;
}

private boolean DocimentTypeColumns_Obekt(String colbg,int in)
{
   boolean return_value=false;
   switch (in)
    {
        case IN:
        {
            if(colbg.equals("Код на обекта1")) {
                return_value=true;
                break;
            }
            if(colbg.equals("Име на обекта1")) {
                return_value=true;
                break;
            }
            if(colbg.equals("Адрес на обекта1")) {
                return_value=true;
                break;
            }

           break;
        }
        case OUT:
        {
            if(colbg.equals("Код на обекта2")) {
                return_value=true;
                break;
            }
            if(colbg.equals("Име на обекта2")) {
                return_value=true;
                break;
            }
            if(colbg.equals("Адрес на обекта2")) {
                return_value=true;
                break;
            } 
           break;
        }
    }  
   return return_value;   
    
    
}

private boolean DocimentTypeColumns_DevDistr(String colbg)
{
  boolean return_value=false;
   if(colbg.equals("Код на дистрибутор")) {
      return_value=true;
      
   }
  if(colbg.equals("Код на доставчик")) {
      return_value=true;
      
  }
  if(colbg.equals("Дата на доставяне")) {
      return_value=true;
      
  }
return return_value;
}


private int getNameColumnsEN(String namebg)
{
    int return_value=-1;
    for(int i=0;i<nameColumnsBG.length;i++)
    {
        if(nameColumnsBG[i].equals(namebg))
        {
            return_value=i;
            break;
        }
    }
    return return_value;
}
private String getNameColumnsENASField(int index)
{
    String return_value="$F{";
    return_value+=nameColumnsEN[index]+"}";
    return return_value;
}
private void readClassTypeFromXML()
{
     List field = root.getChildren();
     Iterator it = field.iterator();
     
     while(it.hasNext())
     {
          Element el = (Element) it.next();
          if(el.getName().equals("field"))
          {
              String nname = el.getAttributeValue("name");
              String cclass = el.getAttributeValue("class");
              if(cclass.equals("java.math.BigDecimal"))cclass = "java.lang.String";
              if(cclass.equals("java.sql.Date")) cclass = "java.lang.String";
              if(cclass.equals("java.math.BigInteger")) cclass = "java.lang.String";
              
              storeCalssType.put(nname,cclass);
          }
     }
     
     
    
}

}// ens sinpleReport
