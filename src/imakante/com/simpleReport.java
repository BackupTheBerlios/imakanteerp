package imakante.com;


import com.lowagie.text.Font;
import com.lowagie.text.pdf.TextField;
import imakante.sales.aeDocumentFacade;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;
import javax.swing.DefaultCellEditor;
import javax.swing.JCheckBox;
import javax.swing.JTable;
import javax.swing.JTree;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperPrintManager;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.engine.JasperReport;
import java.io.*; 
import net.sf.jasperreports.view.JasperViewer;
import org.jdom.*; 
import org.jdom.input.*; 
import org.jdom.output.*;
import javax.swing.tree.*;
import java.awt.GraphicsEnvironment;
import javax.swing.AbstractListModel;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.DefaultTableCellRenderer;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRTableModelDataSource;

public class simpleReport extends javax.swing.JFrame {
  
    private  Thread t;
    private boolean isFinishAll = false;
    private HashMap storeCalssType = new HashMap();
    private HashMap viewColumnsBGEN;
    private String blankJasperFile;
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
        
   private String path; 
   private String title;
   private  textField colHr[];
   private  textField colDa[];
   private int pageWidth = 530;  //  v pixels
   private String defaultFiletoSave = "tmp";
    // zapazvane na izbraniq font za Header
    private String headerFont[] = {"SanSerif","italic","10"};
    private String titleFont[] = {"SanSerif","italic","10"};
    private String dataFont[] = {"SanSerif","italic","10"};
    private String A4Page[] ={"Portrait","595","842"};
    private String columnRemove[];
    private String headerTextH="Center";
    private String headerTextV="Top"; 
    private String dataTextH = "Left";
    private String dataTextV = "Top";
    private  printF pprintF;
    private String pathWithFileToSaveForPrintDos;
    
    /** Creates new form simpleReport */
    public simpleReport(HashMap inputfilters,java.sql.Connection con, imakante.com.CustomTable t,String path,String title,HashMap viewColumnsBGEN,String blankJasperFile) 
    {
        this.blankJasperFile = blankJasperFile;
        this.viewColumnsBGEN = viewColumnsBGEN;
        defaultFiletoSave += blankJasperFile;
        inputFiltrs = inputfilters;
        conn = con;
        table = t;
        this.path = path;
        this.title = title;
        initComponents();
        
        int state = this.getExtendedState();
        state |= this.ICONIFIED;
        this.setExtendedState(state);
            
        customComponetInit();
        createjTreeForSetup();
    
        listenerForJtreeSetup();
   /*     //==================
        buildColumns();
        setTitleXML(title);
        setColumnNamesXML(colHr);
        setDetailsXML(colDa);
        saveToFileXML(path+defaultFiletoSave);*/
        //=================
      //  selectDocument(docType);
        System.out.println("nameColumnBG="+nameColumnsBG.length);
        System.out.println("nameColumnEN="+nameColumnsEN.length); 
       
        engine();
        
       
        
       
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        
       
        jDialogProgresBar.setUndecorated(true);
        jDialogProgresBar.setSize(350,150);
        x = (((dim.width)-(jDialogProgresBar.getSize().width))/2);
        y = (((dim.height)-(jDialogProgresBar.getSize().height))/2);
        jDialogProgresBar.setLocation(x,y);
        jDialogProgresBar.setVisible(true);
        jButton8.setEnabled(false);
        startBuild();
        
       //  viewSimpleReport(path+defaultFiletoSave,path);
         
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jDialogSetup = new javax.swing.JDialog();
        jScrollSetup = new javax.swing.JScrollPane();
        jScrollData = new javax.swing.JScrollPane();
        jPanelDataFont = new javax.swing.JPanel();
        jButton6 = new javax.swing.JButton();
        jScrollPane5 = new javax.swing.JScrollPane();
        jListDataFontName = new javax.swing.JList();
        jScrollPane6 = new javax.swing.JScrollPane();
        jListDataFontStyle = new javax.swing.JList();
        jScrollPane7 = new javax.swing.JScrollPane();
        jListDataFontSize = new javax.swing.JList();
        jSeparator5 = new javax.swing.JSeparator();
        jLabelDataStatus = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jPanelDataBorder = new javax.swing.JPanel();
        jSeparator4 = new javax.swing.JSeparator();
        jComboDataLeftBorder = new javax.swing.JComboBox();
        jComboDataBottomBorder = new javax.swing.JComboBox();
        jPanel4 = new javax.swing.JPanel();
        jComboDataRightBorder = new javax.swing.JComboBox();
        jButtonDataBorder = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        jLabelDataBottom = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabelDataLeft = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabelDataRight = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabelDataTop = new javax.swing.JLabel();
        jComboDataTopBorder = new javax.swing.JComboBox();
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
        jComboHeadarBottomBorder = new javax.swing.JComboBox();
        jComboHeaderRightBorder = new javax.swing.JComboBox();
        jComboHeaderLeftBorder = new javax.swing.JComboBox();
        jSeparator2 = new javax.swing.JSeparator();
        jButtonHeaderBorder = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabelHeaderLeft = new javax.swing.JLabel();
        jLabelHeaderBottom = new javax.swing.JLabel();
        jLabelHeaderRight = new javax.swing.JLabel();
        jLabelHeaderTop = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jComboHeaderTopBorder = new javax.swing.JComboBox();
        jPanelTitleFont = new javax.swing.JPanel();
        jButton7 = new javax.swing.JButton();
        jScrollPane8 = new javax.swing.JScrollPane();
        jListTitleFontName = new javax.swing.JList();
        jScrollPane9 = new javax.swing.JScrollPane();
        jListTitleFontStyle = new javax.swing.JList();
        jScrollPane10 = new javax.swing.JScrollPane();
        jListTitleFontSize = new javax.swing.JList();
        jSeparator6 = new javax.swing.JSeparator();
        jLabelTitleStatus = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jDialogProgresBar = new javax.swing.JDialog();
        jPanel2 = new javax.swing.JPanel();
        jButton5 = new javax.swing.JButton();
        jSeparator3 = new javax.swing.JSeparator();
        jProgressBar1 = new javax.swing.JProgressBar();
        jPanelHeaderColumnNames = new javax.swing.JPanel();
        jScrollPane4 = new javax.swing.JScrollPane();
        jTableHeaderColName = new javax.swing.JTable();
        jPanel6 = new javax.swing.JPanel();
        jSlider1 = new javax.swing.JSlider();
        jLabel15 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        jLabelTreeOstatyk = new javax.swing.JLabel();
        jPanelPageSetup = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        jRadioLandscape = new javax.swing.JRadioButton();
        jRadioPortrait = new javax.swing.JRadioButton();
        jComboBox1 = new javax.swing.JComboBox();
        jPanelHedarText = new javax.swing.JPanel();
        jScrollPane11 = new javax.swing.JScrollPane();
        jListHedarText = new javax.swing.JList();
        jLabel13 = new javax.swing.JLabel();
        jSeparator8 = new javax.swing.JSeparator();
        jButton3 = new javax.swing.JButton();
        jLabelHedarTextH = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jPanelDataText = new javax.swing.JPanel();
        jScrollPane12 = new javax.swing.JScrollPane();
        jListDataText = new javax.swing.JList();
        jLabel12 = new javax.swing.JLabel();
        jSeparator7 = new javax.swing.JSeparator();
        jButton2 = new javax.swing.JButton();
        jLabel14 = new javax.swing.JLabel();
        jLabelDataTextH = new javax.swing.JLabel();
        jFileChSaveDos = new javax.swing.JFileChooser();
        jPanelControl = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jPanelData = new javax.swing.JPanel();

        jDialogSetup.getContentPane().setLayout(new javax.swing.BoxLayout(jDialogSetup.getContentPane(), javax.swing.BoxLayout.X_AXIS));

        jDialogSetup.setModal(true);
        jDialogSetup.setResizable(false);
        jDialogSetup.addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowDeactivated(java.awt.event.WindowEvent evt) {
                jDialogSetupWindowDeactivated(evt);
            }
        });

        jScrollSetup.setBackground(new java.awt.Color(255, 255, 255));
        jScrollSetup.setMinimumSize(new java.awt.Dimension(150, 500));
        jScrollSetup.setPreferredSize(new java.awt.Dimension(150, 500));
        jDialogSetup.getContentPane().add(jScrollSetup);

        jScrollData.setMinimumSize(new java.awt.Dimension(380, 500));
        jScrollData.setPreferredSize(new java.awt.Dimension(380, 500));
        jDialogSetup.getContentPane().add(jScrollData);

        jPanelDataFont.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelDataFont.setPreferredSize(new java.awt.Dimension(350, 450));
        jButton6.setText("OK");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jScrollPane5.setViewportView(jListDataFontName);

        jListDataFontStyle.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "plain", "bold", "italic", "bold + italic" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane6.setViewportView(jListDataFontStyle);

        jListDataFontSize.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "8", "10", "12", "14", "16", "18", "20", "22" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane7.setViewportView(jListDataFontSize);

        jLabelDataStatus.setFont(new java.awt.Font("Tahoma", 0, 12));
        jLabelDataStatus.setText("jLabel2");

        jLabel10.setText("\u0422\u0435\u043a\u0443\u0449\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438:");

        org.jdesktop.layout.GroupLayout jPanelDataFontLayout = new org.jdesktop.layout.GroupLayout(jPanelDataFont);
        jPanelDataFont.setLayout(jPanelDataFontLayout);
        jPanelDataFontLayout.setHorizontalGroup(
            jPanelDataFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataFontLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelDataFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelDataFontLayout.createSequentialGroup()
                        .add(jScrollPane5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 202, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jScrollPane6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jScrollPane7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 32, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(35, 35, 35))
                    .add(jPanelDataFontLayout.createSequentialGroup()
                        .add(jPanelDataFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(jPanelDataFontLayout.createSequentialGroup()
                                .add(jLabel10)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(jButton6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 96, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jSeparator5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 305, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap(35, Short.MAX_VALUE))
                    .add(jPanelDataFontLayout.createSequentialGroup()
                        .add(jLabelDataStatus)
                        .addContainerGap(302, Short.MAX_VALUE))))
        );
        jPanelDataFontLayout.setVerticalGroup(
            jPanelDataFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataFontLayout.createSequentialGroup()
                .add(24, 24, 24)
                .add(jPanelDataFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jScrollPane6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 184, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jScrollPane5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 184, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jScrollPane7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 184, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jSeparator5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelDataFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jButton6)
                    .add(jLabel10))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabelDataStatus)
                .addContainerGap(176, Short.MAX_VALUE))
        );
        jPanelDataBorder.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelDataBorder.setPreferredSize(new java.awt.Dimension(350, 450));

        jComboDataLeftBorder.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "None", "Thin", "1Point", "2Point", "3Point", "4Point", "Dotted" }));

        jComboDataBottomBorder.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "None", "Thin", "1Point", "2Point", "3Point", "4Point", "Dotted" }));

        jPanel4.setBackground(new java.awt.Color(255, 255, 255));
        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 92, Short.MAX_VALUE)
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 78, Short.MAX_VALUE)
        );

        jComboDataRightBorder.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "None", "Thin", "1Point", "2Point", "3Point", "4Point", "Dotted" }));

        jButtonDataBorder.setText("OK");
        jButtonDataBorder.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDataBorderActionPerformed(evt);
            }
        });

        jLabel6.setText("\u0414\u043e\u043b\u0435\u043d \u0440\u044a\u0431:");

        jLabelDataBottom.setText("None");

        jLabel7.setText("\u041b\u044f\u0432 \u0440\u044a\u0431:");

        jLabelDataLeft.setText("None");

        jLabel8.setText("\u0414\u044f\u0441\u0435\u043d \u0440\u044a\u0431:");

        jLabelDataRight.setText("None");

        jLabel9.setText("\u0413\u043e\u0440\u0435\u043d \u0440\u044a\u0431:");

        jLabelDataTop.setText("None");

        jComboDataTopBorder.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "None", "Thin", "1Piont", "2Piont", "3Piont", "4Piont", "Dotted" }));

        org.jdesktop.layout.GroupLayout jPanelDataBorderLayout = new org.jdesktop.layout.GroupLayout(jPanelDataBorder);
        jPanelDataBorder.setLayout(jPanelDataBorderLayout);
        jPanelDataBorderLayout.setHorizontalGroup(
            jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataBorderLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelDataBorderLayout.createSequentialGroup()
                        .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanelDataBorderLayout.createSequentialGroup()
                                .add(jLabel7)
                                .add(13, 13, 13))
                            .add(jLabel6)
                            .add(jPanelDataBorderLayout.createSequentialGroup()
                                .add(jLabel8)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(jPanelDataBorderLayout.createSequentialGroup()
                                .add(jLabel9)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jLabelDataLeft)
                            .add(jLabelDataBottom)
                            .add(jLabelDataTop)
                            .add(jLabelDataRight)))
                    .add(jPanelDataBorderLayout.createSequentialGroup()
                        .add(jComboDataLeftBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 98, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jComboDataBottomBorder, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jComboDataTopBorder, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .add(6, 6, 6)
                        .add(jComboDataRightBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 96, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(38, Short.MAX_VALUE))
            .add(jPanelDataBorderLayout.createSequentialGroup()
                .addContainerGap()
                .add(jSeparator4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 342, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelDataBorderLayout.createSequentialGroup()
                .addContainerGap(254, Short.MAX_VALUE)
                .add(jButtonDataBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 72, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(24, 24, 24))
        );
        jPanelDataBorderLayout.setVerticalGroup(
            jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataBorderLayout.createSequentialGroup()
                .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelDataBorderLayout.createSequentialGroup()
                        .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanelDataBorderLayout.createSequentialGroup()
                                .add(51, 51, 51)
                                .add(jComboDataTopBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(jPanelDataBorderLayout.createSequentialGroup()
                                .add(110, 110, 110)
                                .add(jComboDataLeftBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jComboDataBottomBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanelDataBorderLayout.createSequentialGroup()
                        .add(107, 107, 107)
                        .add(jComboDataRightBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(18, 18, 18)
                .add(jSeparator4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 4, Short.MAX_VALUE)
                .add(6, 6, 6)
                .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelDataBorderLayout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButtonDataBorder))
                    .add(jPanelDataBorderLayout.createSequentialGroup()
                        .add(65, 65, 65)
                        .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel7)
                            .add(jLabelDataLeft))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel6)
                            .add(jLabelDataBottom))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel8)
                            .add(jLabelDataRight))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelDataBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel9)
                            .add(jLabelDataTop))))
                .add(94, 94, 94))
        );
        jPanelHedarFont.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelHedarFont.setPreferredSize(new java.awt.Dimension(350, 450));
        jScrollPane2.setPreferredSize(new java.awt.Dimension(60, 200));
        jListHeaderFontStyle.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "plain", "bold", "italic", "bold + italic" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane2.setViewportView(jListHeaderFontStyle);

        jScrollPane1.setViewportView(jListHeaderFontName);

        jScrollPane3.setPreferredSize(new java.awt.Dimension(30, 200));
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
                .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelHedarFontLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jSeparator1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 302, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelHedarFontLayout.createSequentialGroup()
                                .add(jLabel1)
                                .add(110, 110, 110)
                                .add(jButton4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 93, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(jPanelHedarFontLayout.createSequentialGroup()
                                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 195, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jScrollPane2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 11, Short.MAX_VALUE)
                                .add(jScrollPane3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))
                    .add(jPanelHedarFontLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(jLabelHeaderStatus)))
                .addContainerGap(38, Short.MAX_VALUE))
        );
        jPanelHedarFontLayout.setVerticalGroup(
            jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelHedarFontLayout.createSequentialGroup()
                .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jPanelHedarFontLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(jScrollPane3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanelHedarFontLayout.createSequentialGroup()
                        .add(20, 20, 20)
                        .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 209, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jScrollPane2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 209, Short.MAX_VALUE))))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jSeparator1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelHedarFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jButton4)
                    .add(jLabel1))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabelHeaderStatus)
                .add(155, 155, 155))
        );
        jPanelHedarBorder.setMinimumSize(new java.awt.Dimension(370, 450));
        jComboHeadarBottomBorder.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "None", "Thin", "1Point", "2Point", "3Point", "4Point", "Dotted" }));

        jComboHeaderRightBorder.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "None", "Thin", "1Point", "2Point", "3Point", "4Point", "Dotted" }));

        jComboHeaderLeftBorder.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "None", "Thin", "1Point", "2Point", "3Point", "4Point", "Dotted" }));

        jButtonHeaderBorder.setText("OK");
        jButtonHeaderBorder.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonHeaderBorderActionPerformed(evt);
            }
        });

        jLabel2.setText("\u041b\u044f\u0432 \u0440\u044a\u0431:");

        jLabel3.setText("\u0414\u043e\u043b\u0435\u043d \u0440\u044a\u0431:");

        jLabel4.setText("\u0414\u044f\u0441\u0435\u043d \u0440\u044a\u0431:");

        jLabel5.setText("\u0413\u043e\u0440\u0435\u043d \u0440\u044a\u0431:");

        jLabelHeaderLeft.setText("None");

        jLabelHeaderBottom.setText("None");

        jLabelHeaderRight.setText("None");

        jLabelHeaderTop.setText("None");

        jPanel3.setBackground(new java.awt.Color(255, 255, 255));
        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 96, Short.MAX_VALUE)
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 79, Short.MAX_VALUE)
        );

        jComboHeaderTopBorder.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "None", "Thin", "1Piont", "2Piont", "3Piont", "4Piont", "Dotted" }));

        org.jdesktop.layout.GroupLayout jPanelHedarBorderLayout = new org.jdesktop.layout.GroupLayout(jPanelHedarBorder);
        jPanelHedarBorder.setLayout(jPanelHedarBorderLayout);
        jPanelHedarBorderLayout.setHorizontalGroup(
            jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelHedarBorderLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelHedarBorderLayout.createSequentialGroup()
                        .add(jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanelHedarBorderLayout.createSequentialGroup()
                                .add(jLabel3)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(jLabelHeaderBottom))
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanelHedarBorderLayout.createSequentialGroup()
                                .add(jLabel2)
                                .add(14, 14, 14)
                                .add(jLabelHeaderLeft)))
                        .addContainerGap(271, Short.MAX_VALUE))
                    .add(jPanelHedarBorderLayout.createSequentialGroup()
                        .add(jLabel4)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabelHeaderRight))
                    .add(jPanelHedarBorderLayout.createSequentialGroup()
                        .add(jLabel5)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabelHeaderTop))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelHedarBorderLayout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jComboHeaderLeftBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 98, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jComboHeadarBottomBorder, 0, 100, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jComboHeaderTopBorder, 0, 100, Short.MAX_VALUE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jComboHeaderRightBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 106, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(44, 44, 44))
                    .add(jPanelHedarBorderLayout.createSequentialGroup()
                        .add(jSeparator2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 316, Short.MAX_VALUE)
                        .add(44, 44, 44))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelHedarBorderLayout.createSequentialGroup()
                        .add(jButtonHeaderBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 98, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(48, 48, 48))))
        );
        jPanelHedarBorderLayout.setVerticalGroup(
            jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelHedarBorderLayout.createSequentialGroup()
                .add(jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jPanelHedarBorderLayout.createSequentialGroup()
                        .add(50, 50, 50)
                        .add(jComboHeaderTopBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jComboHeadarBottomBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelHedarBorderLayout.createSequentialGroup()
                        .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jComboHeaderLeftBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(61, 61, 61))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelHedarBorderLayout.createSequentialGroup()
                        .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jComboHeaderRightBorder, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(66, 66, 66)))
                .add(10, 10, 10)
                .add(jSeparator2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButtonHeaderBorder)
                .add(14, 14, 14)
                .add(jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jLabelHeaderLeft))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3)
                    .add(jLabelHeaderBottom))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel4)
                    .add(jLabelHeaderRight))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanelHedarBorderLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel5)
                    .add(jLabelHeaderTop))
                .addContainerGap(124, Short.MAX_VALUE))
        );
        jPanelTitleFont.setMinimumSize(new java.awt.Dimension(360, 450));
        jButton7.setText("OK");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        jScrollPane8.setViewportView(jListTitleFontName);

        jListTitleFontStyle.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "plain", "bold", "italic", "bold + italic" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane9.setViewportView(jListTitleFontStyle);

        jListTitleFontSize.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "8", "10", "12", "14", "16", "18", "20", "22" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane10.setViewportView(jListTitleFontSize);

        jLabelTitleStatus.setFont(new java.awt.Font("Tahoma", 0, 12));
        jLabelTitleStatus.setText("jLabel2");

        jLabel11.setText("\u0422\u0435\u043a\u0443\u0449\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438:");

        org.jdesktop.layout.GroupLayout jPanelTitleFontLayout = new org.jdesktop.layout.GroupLayout(jPanelTitleFont);
        jPanelTitleFont.setLayout(jPanelTitleFontLayout);
        jPanelTitleFontLayout.setHorizontalGroup(
            jPanelTitleFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelTitleFontLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelTitleFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelTitleFontLayout.createSequentialGroup()
                        .add(jPanelTitleFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jScrollPane8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 202, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jPanelTitleFontLayout.createSequentialGroup()
                                .add(208, 208, 208)
                                .add(jScrollPane9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jScrollPane10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 32, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jSeparator6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 305, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap(45, Short.MAX_VALUE))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelTitleFontLayout.createSequentialGroup()
                        .add(jLabel11)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 112, Short.MAX_VALUE)
                        .add(jButton7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 88, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(51, 51, 51))
                    .add(jPanelTitleFontLayout.createSequentialGroup()
                        .add(jLabelTitleStatus)
                        .addContainerGap(312, Short.MAX_VALUE))))
        );
        jPanelTitleFontLayout.setVerticalGroup(
            jPanelTitleFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelTitleFontLayout.createSequentialGroup()
                .add(21, 21, 21)
                .add(jPanelTitleFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jScrollPane8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 184, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jScrollPane9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 184, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jScrollPane10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 184, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(26, 26, 26)
                .add(jSeparator6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(0, 0, 0)
                .add(jPanelTitleFontLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel11)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jButton7))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabelTitleStatus)
                .addContainerGap(165, Short.MAX_VALUE))
        );
        jDialogProgresBar.setResizable(false);
        jPanel2.setLayout(new java.awt.GridBagLayout());

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setMinimumSize(new java.awt.Dimension(300, 100));
        jPanel2.setPreferredSize(new java.awt.Dimension(300, 100));
        jButton5.setText("\u041e\u0442\u043a\u0430\u0437");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 10, 10);
        jPanel2.add(jButton5, gridBagConstraints);

        jSeparator3.setMinimumSize(new java.awt.Dimension(350, 1));
        jSeparator3.setPreferredSize(new java.awt.Dimension(350, 10));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(5, 1, 5, 1);
        jPanel2.add(jSeparator3, gridBagConstraints);

        jProgressBar1.setMinimumSize(new java.awt.Dimension(320, 30));
        jProgressBar1.setPreferredSize(new java.awt.Dimension(320, 30));
        jProgressBar1.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jProgressBar1StateChanged(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
        jPanel2.add(jProgressBar1, gridBagConstraints);

        jDialogProgresBar.getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanelHeaderColumnNames.setLayout(new java.awt.BorderLayout());

        jPanelHeaderColumnNames.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanelHeaderColumnNames.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelHeaderColumnNames.setPreferredSize(new java.awt.Dimension(350, 450));
        jScrollPane4.setPreferredSize(new java.awt.Dimension(200, 200));
        jTableHeaderColName.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Име на колоната", "Печатане на колона ?", "Ширина на колона"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.Boolean.class, java.lang.Integer.class
            };
            boolean[] canEdit = new boolean [] {
                false, true, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTableHeaderColName.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_OFF);
        jScrollPane4.setViewportView(jTableHeaderColName);

        jPanelHeaderColumnNames.add(jScrollPane4, java.awt.BorderLayout.CENTER);

        jPanel6.setLayout(new java.awt.GridBagLayout());

        jPanel6.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel6.setMinimumSize(new java.awt.Dimension(100, 50));
        jPanel6.setPreferredSize(new java.awt.Dimension(100, 50));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        jPanel6.add(jSlider1, gridBagConstraints);

        jLabel15.setText("\u041c\u0438\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        jPanel6.add(jLabel15, gridBagConstraints);

        jLabel17.setText("\u041c\u0430\u043a\u0441.");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        jPanel6.add(jLabel17, gridBagConstraints);

        jLabel18.setText("\u041e\u0441\u0442\u0430\u0442\u044a\u043a:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(0, 20, 0, 0);
        jPanel6.add(jLabel18, gridBagConstraints);

        jLabelTreeOstatyk.setText("jLabel19");
        jPanel6.add(jLabelTreeOstatyk, new java.awt.GridBagConstraints());

        jPanelHeaderColumnNames.add(jPanel6, java.awt.BorderLayout.SOUTH);

        jPanelPageSetup.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelPageSetup.setPreferredSize(new java.awt.Dimension(350, 450));
        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, new java.awt.Color(0, 0, 0)));
        jPanel1.setMinimumSize(new java.awt.Dimension(100, 50));
        jPanel1.setPreferredSize(new java.awt.Dimension(100, 50));
        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 96, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 46, Short.MAX_VALUE)
        );

        jPanel5.setBackground(new java.awt.Color(255, 255, 255));
        jPanel5.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, new java.awt.Color(0, 0, 0)));
        jPanel5.setMinimumSize(new java.awt.Dimension(50, 100));
        jPanel5.setPreferredSize(new java.awt.Dimension(50, 100));
        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 54, Short.MAX_VALUE)
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 82, Short.MAX_VALUE)
        );

        jRadioLandscape.setText("Landscape");
        jRadioLandscape.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jRadioLandscape.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jRadioLandscape.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioLandscapeActionPerformed(evt);
            }
        });

        jRadioPortrait.setText("Portrait");
        jRadioPortrait.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jRadioPortrait.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jRadioPortrait.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioPortraitActionPerformed(evt);
            }
        });

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "A4" }));

        org.jdesktop.layout.GroupLayout jPanelPageSetupLayout = new org.jdesktop.layout.GroupLayout(jPanelPageSetup);
        jPanelPageSetup.setLayout(jPanelPageSetupLayout);
        jPanelPageSetupLayout.setHorizontalGroup(
            jPanelPageSetupLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelPageSetupLayout.createSequentialGroup()
                .add(36, 36, 36)
                .add(jPanelPageSetupLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jComboBox1, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanelPageSetupLayout.createSequentialGroup()
                        .add(jRadioPortrait)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jRadioLandscape))
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanelPageSetupLayout.createSequentialGroup()
                        .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(60, 60, 60)
                        .add(jPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 58, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(96, Short.MAX_VALUE))
        );
        jPanelPageSetupLayout.setVerticalGroup(
            jPanelPageSetupLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelPageSetupLayout.createSequentialGroup()
                .add(40, 40, 40)
                .add(jPanelPageSetupLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 86, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(17, 17, 17)
                .add(jPanelPageSetupLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jRadioPortrait)
                    .add(jRadioLandscape))
                .add(47, 47, 47)
                .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(223, Short.MAX_VALUE))
        );
        jPanelHedarText.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelHedarText.setPreferredSize(new java.awt.Dimension(350, 450));
        jListHedarText.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "\u041b\u044f\u0432\u043e", "\u0426\u0435\u043d\u0442\u044a\u0440", "\u0414\u044f\u0441\u043d\u043e" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane11.setViewportView(jListHedarText);

        jLabel13.setText("\u0425\u043e\u0440\u0438\u0437\u043e\u043d\u0442\u0430\u043b\u043d\u043e \u0440\u0430\u0437\u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435:");

        jButton3.setText("OK");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jLabelHedarTextH.setText("jLabel15");

        jLabel16.setText("\u0422\u0435\u043a\u0443\u0449\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430:");

        org.jdesktop.layout.GroupLayout jPanelHedarTextLayout = new org.jdesktop.layout.GroupLayout(jPanelHedarText);
        jPanelHedarText.setLayout(jPanelHedarTextLayout);
        jPanelHedarTextLayout.setHorizontalGroup(
            jPanelHedarTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelHedarTextLayout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel13)
                .add(56, 56, 56)
                .add(jScrollPane11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 71, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(62, Short.MAX_VALUE))
            .add(jPanelHedarTextLayout.createSequentialGroup()
                .addContainerGap()
                .add(jSeparator8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 303, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(37, Short.MAX_VALUE))
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelHedarTextLayout.createSequentialGroup()
                .addContainerGap(217, Short.MAX_VALUE)
                .add(jButton3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 77, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(56, 56, 56))
            .add(jPanelHedarTextLayout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel16)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabelHedarTextH)
                .addContainerGap(195, Short.MAX_VALUE))
        );
        jPanelHedarTextLayout.setVerticalGroup(
            jPanelHedarTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelHedarTextLayout.createSequentialGroup()
                .add(jPanelHedarTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelHedarTextLayout.createSequentialGroup()
                        .add(24, 24, 24)
                        .add(jLabel13))
                    .add(jPanelHedarTextLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(jScrollPane11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 101, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(98, 98, 98)
                .add(jSeparator8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jPanelHedarTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelHedarTextLayout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton3))
                    .add(jPanelHedarTextLayout.createSequentialGroup()
                        .add(56, 56, 56)
                        .add(jPanelHedarTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel16)
                            .add(jLabelHedarTextH))))
                .addContainerGap(160, Short.MAX_VALUE))
        );
        jPanelDataText.setMinimumSize(new java.awt.Dimension(350, 450));
        jPanelDataText.setPreferredSize(new java.awt.Dimension(350, 450));
        jListDataText.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "\u041b\u044f\u0432\u043e", "\u0426\u0435\u043d\u0442\u044a\u0440", "\u0414\u044f\u0441\u043d\u043e" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane12.setViewportView(jListDataText);

        jLabel12.setText("\u0425\u043e\u0440\u0438\u0437\u043e\u043d\u0442\u0430\u043b\u043d\u043e \u0440\u0430\u0437\u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435:");

        jButton2.setText("\u041e\u041a");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel14.setText("\u0422\u0435\u043a\u0443\u0449\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430:");

        jLabelDataTextH.setText("jLabel15");

        org.jdesktop.layout.GroupLayout jPanelDataTextLayout = new org.jdesktop.layout.GroupLayout(jPanelDataText);
        jPanelDataText.setLayout(jPanelDataTextLayout);
        jPanelDataTextLayout.setHorizontalGroup(
            jPanelDataTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataTextLayout.createSequentialGroup()
                .addContainerGap()
                .add(jPanelDataTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelDataTextLayout.createSequentialGroup()
                        .add(jSeparator7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 316, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap())
                    .add(jPanelDataTextLayout.createSequentialGroup()
                        .add(jLabel12)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 61, Short.MAX_VALUE)
                        .add(jScrollPane12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 68, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(60, 60, 60))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanelDataTextLayout.createSequentialGroup()
                        .add(jButton2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 75, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(47, 47, 47))
                    .add(jPanelDataTextLayout.createSequentialGroup()
                        .add(jLabel14)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabelDataTextH)
                        .addContainerGap(195, Short.MAX_VALUE))))
        );
        jPanelDataTextLayout.setVerticalGroup(
            jPanelDataTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanelDataTextLayout.createSequentialGroup()
                .add(jPanelDataTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanelDataTextLayout.createSequentialGroup()
                        .add(22, 22, 22)
                        .add(jLabel12))
                    .add(jPanelDataTextLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(jScrollPane12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 102, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(96, 96, 96)
                .add(jSeparator7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButton2)
                .add(39, 39, 39)
                .add(jPanelDataTextLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel14)
                    .add(jLabelDataTextH))
                .addContainerGap(149, Short.MAX_VALUE))
        );
        jFileChSaveDos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jFileChSaveDosActionPerformed(evt);
            }
        });

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setResizable(false);
        jPanelControl.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanelControl.setMaximumSize(new java.awt.Dimension(750, 40));
        jPanelControl.setMinimumSize(new java.awt.Dimension(750, 40));
        jPanelControl.setPreferredSize(new java.awt.Dimension(750, 40));
        jButton1.setText("\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanelControl.add(jButton1);

        jButton8.setText("\u0437\u0430 DOS \u043f\u0435\u0447\u0430\u0442");
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        jPanelControl.add(jButton8);

        getContentPane().add(jPanelControl, java.awt.BorderLayout.CENTER);

        jPanelData.setLayout(new java.awt.BorderLayout());

        jPanelData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanelData.setMaximumSize(new java.awt.Dimension(750, 500));
        jPanelData.setMinimumSize(new java.awt.Dimension(750, 500));
        jPanelData.setPreferredSize(new java.awt.Dimension(750, 500));
        getContentPane().add(jPanelData, java.awt.BorderLayout.NORTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jFileChSaveDosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jFileChSaveDosActionPerformed
// TODO add your handling code here:
        
    }//GEN-LAST:event_jFileChSaveDosActionPerformed

    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
// TODO add your handling code here:
        setUPFileChooser();
        jFileChSaveDos.showSaveDialog(this);
        String fileForDos = jFileChSaveDos.getSelectedFile().getName();
        System.out.println(fileForDos);
        pathWithFileToSaveForPrintDos = jFileChSaveDos.getSelectedFile().getAbsolutePath();
        System.out.println(pathWithFileToSaveForPrintDos);
        Thread tr=null;
        if((colDa!=null) && (colHr!=null))
        {
             tr = new Thread(new Runnable() {
                public void run()
                {
                  
                  pprintF = new  printF(colHr, colDa, title, pathWithFileToSaveForPrintDos, conn, root, inputFiltrs);
    
                }
            });
            
        }
        
      tr.start();
        
    }//GEN-LAST:event_jButton8ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
// TODO add your handling code here:
        String tmp  = (String )jListDataText.getSelectedValue();
        jLabelDataTextH.setText(tmp);
        if(tmp.equals("Ляво"))
        {
            tmp = "Left";
        }
         if(tmp.equals("Център"))
        {
            tmp = "Center";
        }
         if(tmp.equals("Дясно"))
        {
            tmp = "Right";
        }
      
       dataTextH = tmp;
        
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
// TODO add your handling code here:
        String tmp = (String)jListHedarText.getSelectedValue();
         jLabelHedarTextH.setText(tmp);
        if(tmp.equals("Ляво"))
        {
            tmp = "Left";
        }
         if(tmp.equals("Център"))
        {
            tmp = "Center";
        }
         if(tmp.equals("Дясно"))
        {
            tmp = "Right";
        }
     
        headerTextH = tmp;
        
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jDialogSetupWindowDeactivated(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_jDialogSetupWindowDeactivated
// add new setup 
   String strTmp="";    
   boolean isOneCol=false;
   columnRemove = null;
  for(int i=0;i<jTableHeaderColName.getRowCount();i++)
  {
      boolean tmp = (Boolean) jTableHeaderColName.getValueAt(i,1);
      if(!tmp)
      {
         strTmp += (String) jTableHeaderColName.getValueAt(i,0) + ":";
         isOneCol = true;
      }
  }

   if(isOneCol)
    columnRemove = strTmp.split(":");
   
   if(jRadioLandscape.isSelected())
   {
       A4Page[0] = "Portrait";
       A4Page[1] = "595";
       A4Page[2] = "842";
       pageWidth = 595;
   }
   if(jRadioPortrait.isSelected())
   {
       A4Page[0] = "Landscape";
       A4Page[1] = "842";
       A4Page[2] = "595"; 
       pageWidth = 842;
   }
   
   
   
   int state = this.getExtendedState();
   state |= this.ICONIFIED;
   this.setExtendedState(state);
   
   jProgressBar1.setValue(0);
   jDialogProgresBar.setVisible(true);
   engine();
   startBuild();

    }//GEN-LAST:event_jDialogSetupWindowDeactivated

    private void jRadioLandscapeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioLandscapeActionPerformed
// TODO add your handling code here:
        
        if(jRadioLandscape.isSelected())
        {
            jRadioPortrait.setSelected(false);
        }
        else
        {
             jRadioPortrait.setSelected(true);
        }
    }//GEN-LAST:event_jRadioLandscapeActionPerformed

    private void jRadioPortraitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioPortraitActionPerformed
// TODO add your handling code here:
        if(jRadioPortrait.isSelected())
        {
            jRadioLandscape.setSelected(false);
        }
        else
        {
            jRadioLandscape.setSelected(true);
        }
        
    }//GEN-LAST:event_jRadioPortraitActionPerformed

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
// TODO add your handling code here:
       titleFont[0] = (String)jListTitleFontName.getSelectedValue(); 
       titleFont[1] = (String)jListTitleFontStyle.getSelectedValue(); 
       titleFont[2] = (String)jListTitleFontSize.getSelectedValue();  
       jLabelDataStatus.setText(titleFont[0]+", "+titleFont[1]+", "+titleFont[2]);  
    }//GEN-LAST:event_jButton7ActionPerformed

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
// TODO add your handling code here:
       dataFont[0] = (String)jListDataFontName.getSelectedValue(); 
       dataFont[1] = (String)jListDataFontStyle.getSelectedValue(); 
       dataFont[2] = (String)jListDataFontSize.getSelectedValue();  
       jLabelDataStatus.setText(dataFont[0]+", "+dataFont[1]+", "+dataFont[2]);
    }//GEN-LAST:event_jButton6ActionPerformed

    private void jButtonDataBorderActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDataBorderActionPerformed
// TODO add your handling code here:
     jLabelDataBottom.setText((String)jComboDataBottomBorder.getSelectedItem());
        jLabelDataLeft.setText((String)jComboDataLeftBorder.getSelectedItem());
        jLabelDataRight.setText((String)jComboDataRightBorder.getSelectedItem());
        jLabelDataTop.setText((String)jComboDataTopBorder.getSelectedItem());    
    }//GEN-LAST:event_jButtonDataBorderActionPerformed

    private void jButtonHeaderBorderActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonHeaderBorderActionPerformed
// TODO add your handling code here:
        jLabelHeaderBottom.setText((String)jComboHeadarBottomBorder.getSelectedItem());
        jLabelHeaderLeft.setText((String)jComboHeaderLeftBorder.getSelectedItem());
        jLabelHeaderRight.setText((String)jComboHeaderRightBorder.getSelectedItem());
        jLabelHeaderTop.setText((String)jComboHeaderTopBorder.getSelectedItem());
        
        
    }//GEN-LAST:event_jButtonHeaderBorderActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
// TODO add your handling code here:
        stopBuild();
        jDialogProgresBar.setVisible(false);
       
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jProgressBar1StateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jProgressBar1StateChanged
// TODO add your handling code here:
       if(jProgressBar1.getValue()==100)
       {
         
          jDialogProgresBar.setVisible(false);
          int state = this.getExtendedState();
          state &= ~this.ICONIFIED;
          this.setExtendedState(state);
       }
        
    }//GEN-LAST:event_jProgressBar1StateChanged

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
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-( jDialogSetup.getSize().width))/2);
        int y = (((dim.height)-( jDialogSetup.getSize().height))/2);
        jDialogSetup.setLocation(x, y);
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
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButtonDataBorder;
    private javax.swing.JButton jButtonHeaderBorder;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JComboBox jComboDataBottomBorder;
    private javax.swing.JComboBox jComboDataLeftBorder;
    private javax.swing.JComboBox jComboDataRightBorder;
    private javax.swing.JComboBox jComboDataTopBorder;
    private javax.swing.JComboBox jComboHeadarBottomBorder;
    private javax.swing.JComboBox jComboHeaderLeftBorder;
    private javax.swing.JComboBox jComboHeaderRightBorder;
    private javax.swing.JComboBox jComboHeaderTopBorder;
    private javax.swing.JDialog jDialogProgresBar;
    private javax.swing.JDialog jDialogSetup;
    private javax.swing.JFileChooser jFileChSaveDos;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel jLabelDataBottom;
    private javax.swing.JLabel jLabelDataLeft;
    private javax.swing.JLabel jLabelDataRight;
    private javax.swing.JLabel jLabelDataStatus;
    private javax.swing.JLabel jLabelDataTextH;
    private javax.swing.JLabel jLabelDataTop;
    private javax.swing.JLabel jLabelHeaderBottom;
    private javax.swing.JLabel jLabelHeaderLeft;
    private javax.swing.JLabel jLabelHeaderRight;
    private javax.swing.JLabel jLabelHeaderStatus;
    private javax.swing.JLabel jLabelHeaderTop;
    private javax.swing.JLabel jLabelHedarTextH;
    private javax.swing.JLabel jLabelTitleStatus;
    private javax.swing.JLabel jLabelTreeOstatyk;
    private javax.swing.JList jListDataFontName;
    private javax.swing.JList jListDataFontSize;
    private javax.swing.JList jListDataFontStyle;
    private javax.swing.JList jListDataText;
    private javax.swing.JList jListHeaderFontName;
    private javax.swing.JList jListHeaderFontSize;
    private javax.swing.JList jListHeaderFontStyle;
    private javax.swing.JList jListHedarText;
    private javax.swing.JList jListTitleFontName;
    private javax.swing.JList jListTitleFontSize;
    private javax.swing.JList jListTitleFontStyle;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanelControl;
    private javax.swing.JPanel jPanelData;
    private javax.swing.JPanel jPanelDataBorder;
    private javax.swing.JPanel jPanelDataFont;
    private javax.swing.JPanel jPanelDataText;
    private javax.swing.JPanel jPanelHeaderColumnNames;
    private javax.swing.JPanel jPanelHedarBorder;
    private javax.swing.JPanel jPanelHedarFont;
    private javax.swing.JPanel jPanelHedarText;
    private javax.swing.JPanel jPanelPageSetup;
    private javax.swing.JPanel jPanelTitleFont;
    private javax.swing.JProgressBar jProgressBar1;
    private javax.swing.JRadioButton jRadioLandscape;
    private javax.swing.JRadioButton jRadioPortrait;
    private javax.swing.JScrollPane jScrollData;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane10;
    private javax.swing.JScrollPane jScrollPane11;
    private javax.swing.JScrollPane jScrollPane12;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JScrollPane jScrollPane6;
    private javax.swing.JScrollPane jScrollPane7;
    private javax.swing.JScrollPane jScrollPane8;
    private javax.swing.JScrollPane jScrollPane9;
    private javax.swing.JScrollPane jScrollSetup;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JSeparator jSeparator4;
    private javax.swing.JSeparator jSeparator5;
    private javax.swing.JSeparator jSeparator6;
    private javax.swing.JSeparator jSeparator7;
    private javax.swing.JSeparator jSeparator8;
    private javax.swing.JSlider jSlider1;
    private javax.swing.JTable jTableHeaderColName;
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
 public void setTextElement_font_size(int size)   
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
      builder.setDTDHandler(null);
   
     try
     {
          doc = builder.build(jrxmpName);
     } catch(IOException ioex) {ioex.printStackTrace();} catch(org.jdom.JDOMException jex){jex.printStackTrace();};
    
     if(doc==null)
     {
        System.out.println("Error can`t read file:"+jrxmpName) ;
        
     }
     else
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
           System.out.println(":"+i);
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

category = new DefaultMutableTreeNode("Страница");
setUpComponent = new DefaultMutableTreeNode("Страница");
category.add(setUpComponent);
top.add(category);
 
 
// add zaglavie
category = new DefaultMutableTreeNode("Заглавие");
setUpComponent = new DefaultMutableTreeNode("Шрифт");
category.add(setUpComponent);
top.add(category);


// add column heder
category = new DefaultMutableTreeNode("Имена на колони");
setUpComponent = new DefaultMutableTreeNode("Колони");
category.add(setUpComponent);
setUpComponent = new DefaultMutableTreeNode("Шрифт");
category.add(setUpComponent);
setUpComponent = new DefaultMutableTreeNode("Бордер");
category.add(setUpComponent);
setUpComponent = new DefaultMutableTreeNode("Текст");
category.add(setUpComponent);
top.add(category);

// add column data
category = new DefaultMutableTreeNode("Данни на колоните");
setUpComponent = new DefaultMutableTreeNode("Шрифт");
category.add(setUpComponent);
setUpComponent = new DefaultMutableTreeNode("Бордер");
category.add(setUpComponent);
setUpComponent = new DefaultMutableTreeNode("Текст");
category.add(setUpComponent);
top.add(category);



jTreeSetup = new JTree(top); 
jScrollSetup.setViewportView(jTreeSetup);  



}
private void listenerForJtreeSetup()
{
  
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
                   jLabelDataStatus.setText(dataFont[0]+", "+dataFont[1]+", "+dataFont[2]) ;
                   jScrollData.setViewportView(jPanelDataFont);
                   jScrollData.repaint();
                }
               if(parentName.equals("Заглавие")) {
                   jLabelTitleStatus.setText(titleFont[0]+", "+titleFont[1]+", "+titleFont[2]) ;
                   jScrollData.setViewportView(jPanelTitleFont);
                   jScrollData.repaint();
                }
             }
             if(userNode.equals("Бордер"))
             {
                DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) node.getParent();
                String parentName = (String) parentNode.getUserObject();
                if(parentName.equals("Имена на колони"))
                {
                  
                   jScrollData.setViewportView(jPanelHedarBorder);
                   jScrollData.repaint();  
                }
                if(parentName.equals("Данни на колоните")) {
                  
                   jScrollData.setViewportView(jPanelDataBorder);
                   jScrollData.repaint(); 
                }
             } 
            if(userNode.equals("Колони")) 
            { 
                 DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) node.getParent();
                 String parentName = (String) parentNode.getUserObject();
                 
                 if(parentName.equals("Имена на колони")) {
                    
                     jScrollData.setViewportView(jPanelHeaderColumnNames);
                     jScrollData.repaint();
                 }
            }
            
            if(userNode.equals("Страница")) 
            { 
                 DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) node.getParent();
                 String parentName = (String) parentNode.getUserObject();
                 
                 if(parentName.equals("Страница")) {
                    
                     jScrollData.setViewportView(jPanelPageSetup);
                     jScrollData.repaint();
                 }
            } 
             if(userNode.equals("Текст")) 
            { 
                 DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) node.getParent();
                 String parentName = (String) parentNode.getUserObject();
                 
                 if(parentName.equals("Имена на колони"))
                {
                  
                   jScrollData.setViewportView(jPanelHedarText);
                   jLabelHedarTextH.setText("Център");
                   jScrollData.repaint();  
                }
                if(parentName.equals("Данни на колоните")) {
                  
                   jScrollData.setViewportView(jPanelDataText);
                   jLabelDataTextH.setText("Ляво");
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
   jListTitleFontName.setModel(listHeaderFontName);
   jListDataFontName.setModel(listHeaderFontName);
   for(int i=0 ; i < fonts.length;i++)
   {
       listHeaderFontName.setElement(fonts[i].getFontName());
       
   }
   
    
}


private void buildColumns()
{
 int colCount = getColCountWithoutHides();
 if(columnRemove != null)
 colCount -= columnRemove.length;
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
    
     if(!checkForHideColumn(colNameBG) && !checkForRemoveColumn(colNameBG)) 
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
         colHr[index].setTextElement_font_fontName(headerFont[0]);
         colHr[index].setTextElement_font_size(Integer.parseInt(headerFont[2]));
         if(headerFont[1].equals("italic"))
         {
          colHr[index].setTextElement_font_italic(true);  
         }
         if(headerFont[1].equals("bold"))
         {
           colHr[index].setTextElement_font_boild(true); 
           
         }
         if(headerFont[1].equals("plain"))
         {
             colHr[index].setTextElement_font_italic(false);
            colHr[index].setTextElement_font_boild(false);
         }
         
         if( headerFont[1].startsWith("+",4))
         {
            colHr[index].setTextElement_font_italic(true);
            colHr[index].setTextElement_font_boild(true); 
             
         }
         
         colHr[index].setBox_topBorder(jLabelHeaderTop.getText());
         colHr[index].setBox_bottomBorder(jLabelHeaderBottom.getText());
         colHr[index].setBox_leftBorder(jLabelHeaderLeft.getText());
         colHr[index].setBox_rightBorder(jLabelHeaderRight.getText());
         colHr[index].setVerticalAligment(headerTextV);
         colHr[index].setHorizontalAligment(headerTextH);
         
        
         
 //================================================================================================================
         colDa[index] = new textField((String)viewColumnsBGEN.get(colNameBG));
         
         colDa[index].setFieldParameterExpression(getNameColumnsENASField(getNameColumnsEN(colNameBG)));
         columnClass = (String) storeCalssType.get((String)viewColumnsBGEN.get(colNameBG));
         colDa[index].setClassType(columnClass);
         
         if(index==0)
             colDa[index].setPosirionX(1);
         else colDa[index].setPosirionX(colDa[index-1].getPositionX()+colWidth);
         colDa[index].setPositionY(0);
         colDa[index].setWidth(colWidth);
         colDa[index].setHeight(15);
         colDa[index].setTextElement_font_fontName(dataFont[0]);
         colDa[index].setTextElement_font_size(Integer.parseInt(dataFont[2]));
        
         if(dataFont[1].equals("italic"))
         {
          colDa[index].setTextElement_font_italic(true);  
         }
         if(dataFont[1].equals("bold"))
         {
           colDa[index].setTextElement_font_boild(true); 
           
         }
         if(dataFont[1].equals("plain"))
         {
           colDa[index].setTextElement_font_boild(false); 
            colDa[index].setTextElement_font_italic(false);
         }
         
         if( dataFont[1].startsWith("+",4))
         {
            colDa[index].setTextElement_font_italic(true);
            colDa[index].setTextElement_font_boild(true); 
             
         }
         
         colDa[index].setBox_topBorder(jLabelDataTop.getText());
         colDa[index].setBox_bottomBorder(jLabelDataBottom.getText());
         colDa[index].setBox_leftBorder(jLabelDataLeft.getText());
         colDa[index].setBox_rightBorder(jLabelDataRight.getText());
         colDa[index].setVerticalAligment(dataTextV);
         colDa[index].setHorizontalAligment(dataTextH);
         
         index++;
         
     }
     
 }
}

private int getColCountWithoutHides()
{
  int maxCount =0;
  Set tmp = viewColumnsBGEN.keySet();
  maxCount = tmp.size();
  return maxCount;   
}

private boolean checkForHideColumn(String colbg)
{
    boolean return_value=false;
    String tmpS =(String) viewColumnsBGEN.get(colbg);
    
    //proverqvame dali colonata e v spisaka na kolonite koito mogat da se vizdat v reporta
    if(tmpS == null) return_value=true;
    return return_value;
}


private String getNameColumnsEN(String namebg)
{
    String return_value="";
    return_value= (String) viewColumnsBGEN.get(namebg);
    return return_value;
}
private String getNameColumnsENASField(String nameen)
{
    String return_value="$F{";
    return_value+=nameen+"}";
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
private void viewSimpleReport(String filename,String path)
{
    try
    {
  
    
   JasperReport  jasperReport = JasperCompileManager.compileReport(path+defaultFiletoSave);
   jasperPrint = JasperFillManager.fillReport(jasperReport,inputFiltrs,conn);
  
    if(jasperPrint == null) System.out.println("Error viewSimpleReport");
    jrv =null;
    jrv = new net.sf.jasperreports.view.JRViewer(jasperPrint);
    if(jrv == null) System.out.println("Error viewSimpleReport, jrv =null");
    jPanelData.removeAll();
    jPanelData.add(jrv);
    jPanelControl.revalidate();
    jPanelData.repaint();
   
    }
    catch(Exception ds){System.out.println("Error viewSimpleReport");};
 
}
private void initProgresBar()
{
    jProgressBar1.setMinimum(0);
    jProgressBar1.setMaximum(100);
    
}
private void engine()
{
    t = new Thread(new Runnable() {
        public void run() 
        {
           
               readJasperXML(path+blankJasperFile);
          jProgressBar1.setValue(3);
              readClassTypeFromXML();
          jProgressBar1.setValue(jProgressBar1.getValue()+5);
              buildColumns();   
          jProgressBar1.setValue(jProgressBar1.getValue()+10);
              setTitleXML(title);   
          jProgressBar1.setValue(jProgressBar1.getValue()+2);
              setColumnNamesXML(colHr); 
          jProgressBar1.setValue(jProgressBar1.getValue()+25);
               setDetailsXML(colDa);    
          jProgressBar1.setValue(jProgressBar1.getValue()+25);
               setPageXML();
               saveToFileXML(path+defaultFiletoSave); 
          jProgressBar1.setValue(jProgressBar1.getValue()+18);
            viewSimpleReport(path+defaultFiletoSave,path);
            isFinishAll = true;
          jProgressBar1.setValue(jProgressBar1.getValue()+10);
            initColumnForCustomSetup();
           jProgressBar1.setValue(jProgressBar1.getValue()+2);
           jButton8.setEnabled(true);
        }
    });
    
    
}

private void startBuild()
{
    
   t.start();
 
}
private void stopBuild()
{
    t.interrupt();
}
private void initColumnForCustomSetup()
{
    Object ob[] = new Object[3];
  
   if(jTableHeaderColName.getRowCount()<1)
   {
   for(int i=0;i<colHr.length;i++) 
   {
      
       ob[0] = new String(colHr[i].getTextFieldExpression_text());
       ob[1] = new Boolean(true);
       ob[2] = new Integer(colHr[i].getWidth());
       ((DefaultTableModel)jTableHeaderColName.getModel()).addRow(ob);
       
       
   
   }
   }
  
    jTableHeaderColName.getColumnModel().getColumn(0).setMaxWidth(250);
    jTableHeaderColName.getColumnModel().getColumn(0).setMinWidth(250);
    jTableHeaderColName.getColumnModel().getColumn(1).setMaxWidth(100);
    jTableHeaderColName.getColumnModel().getColumn(1).setMinWidth(100);
}
private boolean searchCells(String in)
{
    boolean return_value=false;
    for(int i=0;i<jTableHeaderColName.getRowCount();i++)
    {
        String sstr = (String)jTableHeaderColName.getValueAt(i,0);
        if(sstr.equals(in))
        {
           return_value = true;
           break;
        }
    }
 return return_value;
}
private void setPageXML()
{
   root.setAttribute("orientation",A4Page[0]);
   root.setAttribute("pageWidth",A4Page[1]);
   root.setAttribute("pageHeight",A4Page[2]);
}
private boolean checkForRemoveColumn(String in)
{
    boolean return_value = false;
    if(columnRemove==null)
        return false;
    for(int i=0;i<columnRemove.length;i++)
    {
        if(columnRemove[i].equals(in))
        {
           return_value = true;
           break;
        }
    }
    
    return return_value;
}
private void restartBuild()
{
   
}
private void setUPFileChooser()
{
    jFileChSaveDos.setFileHidingEnabled(false);
    jFileChSaveDos.setFileSelectionMode(javax.swing.JFileChooser.FILES_ONLY);
}
//===================================================================

class printF
{
    private textField colHr[];
    private textField colDa[];
    private String title;
    private String filetosave;
    private java.sql.Connection con;
    private int offsetChar=0;
    private Element root;
    private HashMap inputfilters;
    private Document doc;
    // za izhodniq tekstov fail
    private String dataString="";
    private String space=" ";
   // private double ratioPixelCM=28.346;
    private int ratioPixelCM=28;
    private int  pageWidth=80; // broj simvoli
    private int	 pageHeight=100;
    private int colWidt;
    private   Writer out;
    private FileOutputStream f1;
    
    
    public printF(textField colHr[], textField colDa[], String title,String filetosave,java.sql.Connection con,Element root,HashMap inputfilters)
    {
        this.colDa = colDa;
        this.colHr = colHr;
        this.title = title;
        this.filetosave = filetosave;
        this.con = con;
        this.root = root;
        this.inputfilters = inputfilters;
        init();
    }
 public printF(textField colHr[], textField colDa[], String title,String filetosave,java.sql.Connection con,String jrxmpName,HashMap inputfilters)
    {
        this.colDa = colDa;
        this.colHr = colHr;
        this.title = title;
        this.filetosave = filetosave;
        this.con = con;
        this.inputfilters = inputfilters;
        
 
        SAXBuilder builder = new SAXBuilder("org.apache.xerces.parsers.SAXParser");
        
        try {
            doc = builder.build(jrxmpName);
        } catch(IOException ioex) {ioex.printStackTrace();} catch(org.jdom.JDOMException jex){jex.printStackTrace();};
        
        if(doc==null) {
            System.out.println("Error can`t read file:"+jrxmpName) ;
            
        } else
            root = doc.getRootElement();
        
        init();
    }
 private void init()
 {
     try
     {
   
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery(getSQL());
     // title
     for(int i =0 ;i<((pageWidth/2)-(title.length()/2));i++)
     {
         dataString+=" ";
     }
     
     dataString+=title+"\n";
    
     
     dataString+= "\n";
     dataString+= "\n";
     dataString+= "\n";
     String row="";
     String tmp="";
     // column hedar
     colWidt = pageWidth/colHr.length-1;
     for(int i=0;i<colHr.length;i++)
     {
        
         tmp = colHr[i].getTextFieldExpression_text();
         tmp = tmp.concat("                                                                                      ");
         tmp ="| "+tmp.substring(0,colWidt);
         row += tmp ;
         
     }
     dataString += row+" | ";
     dataString+= "\n";
     System.out.println(dataString);
   // data column  
    
     while(rs.next())
     {
         row="";
         for(int i=0;i<colDa.length;i++)
         {
            
             tmp = String.valueOf(rs.getObject(colDa[i].getTextFieldExpression_text()));
             tmp = tmp.concat("                                                                                      ");
             tmp ="| "+tmp.substring(0,colWidt);
             row += tmp;
            
         }
         dataString+=row+" | "+ "\n";
         
         
     }
     
     
     // da se clozi funkciqta za futtera
   System.out.println(dataString);
     createFile();
    
     }
     catch(Exception ex){ex.printStackTrace();}
     
 }
   
 private String getSQL()
 {
     String return_value="";
     Element queryString = root.getChild("queryString");
     return_value = queryString.getText();
     Set  set = inputfilters.keySet();
     Iterator it = set.iterator();
     return_value = return_value.replace('$','P');
     while(it.hasNext())
     {
         String key = (String) it.next();
         String value = (String) inputfilters.get(key);
         if(value.length()<1)
         {
             value = "''";
         }
         else
         {
             value ="'"+value+"'";
         }
         key = "PP\\x7b"+key+"}";
         return_value=return_value.replaceFirst(key,value);
     }
     System.out.println(return_value);
     return return_value;
 }
 
 private void createFile()
 {
    try
    {
     FileOutputStream f1  = new FileOutputStream(filetosave);
     Writer out = new BufferedWriter(new OutputStreamWriter(f1,"UTF-8")); 
     out.write(dataString);
     out.flush();
     out.close();
    }
    catch(IOException io){io.printStackTrace();};
     
     
 }
    

}

}// ens sinpleReport
