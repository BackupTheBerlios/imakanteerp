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

public class FrmProduct extends imakante.com.vcomponents.iInternalFrame implements WindowListener
{
    
    /** Creates new form FrmProduct */
    public FrmProduct(String title,imakante.com.vcomponents.iFrame frame, int flag) // // TEST 
    {
        super(title);
        myframe = frame; 
        prepareConn();     // zapazva connection
        this.flag_pm = flag; //  za da rabotim samo s opredeleni zapisi ima6ti syotvetniq fag
        constructGroupDB(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
        fr.addWindowListener(this);
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextFieldCod = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextFieldBulstat = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldDanNomer = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jTextFieldAddress = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextFieldTel = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jTextFieldFax = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jTextFieldEmail = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jTextFieldWeb = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jButtonNew = new javax.swing.JButton();
        jButtonEdit = new javax.swing.JButton();
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
            .add(0, 1057, Short.MAX_VALUE)
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
        jLabel1.setText("\u041a\u043e\u0434:");
        jPanel4.add(jLabel1);

        jTextFieldCod.setPreferredSize(new java.awt.Dimension(45, 20));
        jPanel4.add(jTextFieldCod);

        jLabel2.setText("\u0418\u043c\u0435:");
        jPanel4.add(jLabel2);

        jTextFieldName.setPreferredSize(new java.awt.Dimension(200, 20));
        jPanel4.add(jTextFieldName);

        jLabel3.setText("\u0411\u0443\u043b\u0441\u0442\u0430\u0442:");
        jPanel4.add(jLabel3);

        jTextFieldBulstat.setPreferredSize(new java.awt.Dimension(90, 20));
        jPanel4.add(jTextFieldBulstat);

        jLabel4.setText("\u0414.\u043d\u043e\u043c\u0435\u0440:");
        jPanel4.add(jLabel4);

        jTextFieldDanNomer.setPreferredSize(new java.awt.Dimension(90, 20));
        jPanel4.add(jTextFieldDanNomer);

        jLabel5.setText("\u0410\u0434\u0440\u0435\u0441:");
        jPanel4.add(jLabel5);

        jTextFieldAddress.setPreferredSize(new java.awt.Dimension(200, 20));
        jPanel4.add(jTextFieldAddress);

        jLabel6.setText("\u0422\u0435\u043b.:");
        jPanel4.add(jLabel6);

        jTextFieldTel.setPreferredSize(new java.awt.Dimension(70, 20));
        jPanel4.add(jTextFieldTel);

        jLabel7.setText("\u0424\u0430\u043a\u0441:");
        jPanel4.add(jLabel7);

        jTextFieldFax.setPreferredSize(new java.awt.Dimension(70, 20));
        jPanel4.add(jTextFieldFax);

        jLabel8.setText("E-mail:");
        jPanel4.add(jLabel8);

        jTextFieldEmail.setPreferredSize(new java.awt.Dimension(150, 20));
        jPanel4.add(jTextFieldEmail);

        jLabel9.setText("Web page:");
        jPanel4.add(jLabel9);

        jTextFieldWeb.setPreferredSize(new java.awt.Dimension(150, 20));
        jPanel4.add(jTextFieldWeb);

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
        jButtonNew.setText("\u041d\u043e\u0432");
        jButtonNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonNewActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonNew);

        jButtonEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButtonEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonEditActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonEdit);

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

    private void formInternalFrameClosed(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameClosed
// TODO add your handling code here:
        
    }//GEN-LAST:event_formInternalFrameClosed

    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
// TODO add your handling code here:
        try
        {
        MessageFormat headerFormat = new MessageFormat("Contragent");
        MessageFormat footerFormat = new MessageFormat("Page. "+"- {0} -"+" IMAKANTE' ");
        table.print(JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        }
        catch(PrinterException e)
        {
            e.printStackTrace();
        }
        
    }//GEN-LAST:event_jButtonPrintActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
    /*    try
        {
        setCod(Integer.parseInt(jTextFieldCod.getText()));
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        setName(jTextFieldName.getText());
        setBulstat(jTextFieldBulstat.getText());
        setDanNomer(jTextFieldDanNomer.getText());
        setAddress(jTextFieldAddress.getText());
        setTel(jTextFieldTel.getText());
        setFax(jTextFieldFax.getText());
        setEmail(jTextFieldEmail.getText());
        setWeb(jTextFieldWeb.getText());
        
        
        try
        {
            
            rs = countriesT.searchRecords(getCod(),getName(),getBulstat(),
                          getDanNomer(),getAddress(),getID_NM(), getTel(),
                          getFax(),getEmail(),getWeb(),getID_MOL(),getID_OSO());
            
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
            // da se napravqt skriti kolona "id" 
            jScrollPane1.getViewport().add(table);
            jScrollPane1.repaint();
        }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       table.requestFocus();
       
       */ 
        
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButtonRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonRefreshActionPerformed
// TODO add your handling code here:
        refreshTable();
    }//GEN-LAST:event_jButtonRefreshActionPerformed

    private void jButtonDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDeleteActionPerformed
// TODO add your handling code here:
        if(table.getSelectedRow() != -1)
        {
            setRow(table.getSelectedRow());
            setId_PM((Integer)table.getValueAt(getRow(),0));
            countriesT.deleteRow(getId_PM());
            refreshTable();
        }
        
    }//GEN-LAST:event_jButtonDeleteActionPerformed

    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
// TODO add your handling code here:
       /* setCod(-1);
        setName("");
        setBulstat("");
        setDanNomer("");
        setAddress("");
        setID_NM(-1);
        setTel("");
        setFax("");
        setEmail("");
        setWeb("");
        setID_MOL(-1);
        setID_OSO(-1);*/
        
     
       
         try
            {
                dialog = new aeProduct(this, true,true);
                dialog.setVisible(true);
                
            } catch(Exception e)
            {
                e.printStackTrace();
            }
        refreshTable(); 
        
    }//GEN-LAST:event_jButtonNewActionPerformed

    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed

    private void jButtonEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonEditActionPerformed
// TODO add your handling code here:
        if (table.getSelectedRow() != -1) 
        { 
            
            setRow(table.getSelectedRow());
            if(getRow()==0){
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }
            setAllVariables();
            
            
            try
            {
                dialog = new aeProduct(this, true,false);
                dialog.setVisible(true);
                
            } catch(Exception e)
            {
                e.printStackTrace();
            }
        }else{
            
        }
        
    }//GEN-LAST:event_jButtonEditActionPerformed
    
    /**
     * @param args the command line arguments
     */
  /*  public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
               
               FrmProduct frCN =   new FrmProduct("ttt",0);
                fr.add(frCN);
                frCN.setVisible(true);
                fr.setVisible(true);
            }
        });
    }*/
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
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
    private javax.swing.JTextField jTextFieldAddress;
    private javax.swing.JTextField jTextFieldBulstat;
    private javax.swing.JTextField jTextFieldCod;
    private javax.swing.JTextField jTextFieldDanNomer;
    private javax.swing.JTextField jTextFieldEmail;
    private javax.swing.JTextField jTextFieldFax;
    private javax.swing.JTextField jTextFieldName;
    private javax.swing.JTextField jTextFieldTel;
    private javax.swing.JTextField jTextFieldWeb;
    // End of variables declaration//GEN-END:variables
//--------------- My Variables
    private String nameOfColumns[];
    private  boolean atBegining=false;
    private  boolean atEnd = false;
    private int row;
    private  aeProduct dialog;
    private int id_pm,id_n_group,id_ppp, id_pp,id_pf,id_contragent,flag_pm;              //       \
    private int barcod_pm,max_pop_pm;                                                   //         >
    private String name_pm, sname_pm, fname_pm, cname_pm, cod1_pm, cod2_pm;            //         /
    private String expertsheet_pm ;                                                   //        /
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private  java.sql.ResultSet rs; 
    private productDB countriesT;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table; 
    private java.sql.Connection ccc;  // samo za testvaneto
    private  static JFrame fr = new JFrame("test");
    private String User="javauser";  // vremenna promenliva za test
    private String Pass="javadude";  // vremenna promenliva za test
    private String Url = "jdbc:mysql://127.0.0.1:3306/mida";  // vremenna promenliva za test
 
    
//---------------END My Variables
 //---------------START MyFunction
    
 private void prepareConn() //TEST
    {
      // samo za testovate ------------
      try
         {
          Class.forName("com.mysql.jdbc.Driver");
           
           ccc = DriverManager.getConnection(Url, User, Pass);
           conn = ccc;
          
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
      //
       /*try
       {
            setConn(myframe.getConn());
       }
       catch(Exception e)
       {
       e.printStackTrace();
       }*/
  }
private void constructGroupDB() // ok
    {
        try
        {
            
         countriesT = new nom.productDB(conn,flag_pm);
        }
        catch(Exception e)
        
        {
            e.printStackTrace();
        }
        System.out.println("ot construct object");
    }
private void initTable() //ok  -- !!ima za dovyr6wane - skrivane na koloni!!
    {
      try
        {
            countriesT.setFlag(flag_pm);
            rs = countriesT.getTable();
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
            
            // da se napravqt skriti kolona "id" 
        }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       table.requestFocus();
       try
        {
          table.setEditingRow(0);
       } 
        catch(Exception ex) 
        {
        
        }
  }
       
 public void windowOpened(java.awt.event.WindowEvent e)
  {
   }
  public void windowClosing(java.awt.event.WindowEvent e) // colose frame`s windows
   {
        System.exit(1);
   }
        
  public void windowClosed(java.awt.event.WindowEvent e)
   {
        System.out.println("windowClosed");
   }
  public void windowIconified(java.awt.event.WindowEvent e)
   {
   }
  public void windowDeiconified(java.awt.event.WindowEvent e)
   {
   }
  public void windowActivated(java.awt.event.WindowEvent e)
   {
   }
  public void windowDeactivated(java.awt.event.WindowEvent e) 
   {
   
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
     public void setId_Contragent(int ID) // ok
    {
        this.id_contragent = ID;
    }
    public int getId_Contragent() // ok
    {
        return id_contragent;
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
   public void setExpertSheet(String exp)    
   {
       this.expertsheet_pm = exp;
   }
   public String getExpertSheet()
   {
       return expertsheet_pm;
   }
   public void setBarCod(int bar)
   {
       this.barcod_pm = bar;
       
   }
   public int getBarCod()
   {
       return barcod_pm;
   }
   
   public void setFlag(int f)
   {
       this.flag_pm = f;
       
   }
   public int getFlag()
   {
       return flag_pm;
   }
   public void setMax_POP(int max)
   {
       this.max_pop_pm = max;
       
   }
   public int getMax_POP()
   {
       return max_pop_pm;
   }
   public void setCountriesT(productDB ccc) // ok
   {
       countriesT = ccc;
   }
   public productDB getCountriesT() // ok
   {
       return countriesT;
   }
    protected  void refreshTable() // ok
  {
        jScrollPane1.remove(table);
        rs = countriesT.getTable();
        model = new imakante.com.CustomTableModel(conn, rs, null);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
        
    }
    private void setAllVariables()
    {
        
        setId_PF((Integer) table.getValueAt(getRow(), 0));
         setName((String) table.getValueAt(getRow(), 2));
        
    }
    public  void mTableEnd() //- 
 {
        setRow(getMaxRow());
        try{
            setAllVariables();
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            
        }
        catch(ArrayIndexOutOfBoundsException aioobe)
        {
            setRow(getRow() - 1);
            System.out.println("problem - mTableEnd");
        }
        setAtBegining(false);
        setAtEnd(true);
    }
 public void mOneRowPlus() //- 
 {
      if(getRow() <= getMaxRow())
      {
        if(getRow() < getMaxRow())
        {
          setRow(getRow()+1);
        }
        setAtBegining(false);
        try
        {
            setAllVariables();
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        }
        catch(ArrayIndexOutOfBoundsException aioobe)
        {
            setRow(getRow() - 1);
            System.out.println("problem - mOneRowPlus");
        }
        if(getRow() == getMaxRow())
        {
                setAtEnd(true);
        }
      }
 }
 public  void mOneRowMinus() //- 
 {
        if(getRow() >= 0){
            if(getRow() > 0){
                setRow(getRow() - 1);}
            setAtEnd(false);
            try
            {
            setAllVariables();
                
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            }
            catch(ArrayIndexOutOfBoundsException aioobe)
            {
                setRow(getRow() + 1);
            }
                System.out.println("problem - mOneRowMinus");}
            if(getRow() == 0){
                setAtBegining(true);
            }
        }   
 public void mTableBegining() //- 
 {
      setRow(0);
        try
        {
            setAllVariables();
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        }
        catch(ArrayIndexOutOfBoundsException aioobe)
        {
            setRow(getRow() - 1);
            System.out.println("problem- mTableBegining");
        }
        setAtBegining(true);
        setAtEnd(false);
        
 } 
 public void setConn(java.sql.Connection con)
 {
     this.conn = con;
 }
}// end class
