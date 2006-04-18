
package imakante.sales;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.*;
import imakante.sales.FrmDocumentFacade;

public class selectDataOfDocFacade   extends imakante.com.vcomponents.iDialog
{
  final public static int CONTARGENT_NO =1;
  final public static int CONTARGENT_BULSTAT =2;
  final public static int CONTARGENT_DAN_NO =3;
  final public static int CONTARGENT_NAME =4;
  final public static int CONTARGENT_ADDRESS =5;
  final public static int CONTARGENT_MOL =6;
  final public static int CONTARGENT_TEL =7;
  final public static int OBEKT_NO =8;
  final public static int OBEKT_NAME =9;
  final public static int OBEKT_ADDRESS =10;
  final public static int OBEKT_TEL =11;
  final public static int DISTRIBUTOR_DELIVER =12;
  final public static int DISTRIBUTOR =13;
  final public static int DELIVER =14;
  
    /** Creates new form aContragent */
    public selectDataOfDocFacade(imakante.com.vcomponents.iInternalFrame myframe,
                   boolean modal, java.sql.ResultSet rs, java.sql.Connection con,
                   int sqlVariant, boolean dist_deliv)
    {
        super(myframe, modal);
        myParent = (imakante.sales.FrmDocumentFacade)  myframe;
        this.rs = rs;
        this.conn = con;
        this.sqlselect = sqlVariant;
        this.isDistributor = dist_deliv;
       
         if(sqlselect == CONTARGENT_ADDRESS | sqlselect == CONTARGENT_BULSTAT | sqlselect == CONTARGENT_DAN_NO | 
                         sqlselect == CONTARGENT_MOL | sqlselect == CONTARGENT_NAME | sqlselect == CONTARGENT_NAME | 
                         sqlselect == CONTARGENT_NO | sqlselect == CONTARGENT_TEL)
                     {  
                        
                        String columnNameContragent[] =  {"id_contragent","Код на контрагента","Име на контрагента",
                                      "Булстат на контрагента","Дан No на контрагента","Адрес на контрагента",
                                      "id_nm","Телефон на контрагента","Fax на контрагента","Email на контрагента",
                                      "Web на контрагента", "id_mol","МОЛ на контрагента"};
                        columnName = columnNameContragent;
                        this.setTitle("К О Н Т Р А Г Е Н Т");
                     }
        
         if(sqlselect == OBEKT_ADDRESS | sqlselect == OBEKT_NAME | sqlselect == OBEKT_NO | sqlselect == OBEKT_TEL)
                    {
                         String columnNameObekt[] = {"id_n_obekt","Код","Име на обекта","Адрес на обекта","id_ls_n_person","Телефон на обекта"}; // da se napi6at imenata na kolonite
                         columnName = columnNameObekt;
                         this.setTitle("О Б Е К Т");
                    }
         if(sqlselect == DISTRIBUTOR_DELIVER)
                   {
                        String columnNameDistDeliver[] = {"id_ls_n_person","Код","ЕГН","НЛК","Име","Коментар"}; // da se napi6at imenata ba kolonite
                        columnName = columnNameDistDeliver;
                         this.setTitle("ДИСТРИБУТОР/ДОСТАВЧИК");
                   }
        model = new imakante.com.CustomTableModel(conn,rs, columnName);
        table = new imakante.com.CustomTable(model);
         if(sqlselect == CONTARGENT_ADDRESS | sqlselect == CONTARGENT_BULSTAT | sqlselect == CONTARGENT_DAN_NO | 
                         sqlselect == CONTARGENT_MOL | sqlselect == CONTARGENT_NAME | sqlselect == CONTARGENT_NAME | 
                         sqlselect == CONTARGENT_NO | sqlselect == CONTARGENT_TEL)
                { 
                    HideColumns(getColumnIndex("id_contragent"));
                    HideColumns(getColumnIndex("id_mol"));
                    HideColumns(getColumnIndex("id_nm"));
                }
         if(sqlselect == OBEKT_ADDRESS | sqlselect == OBEKT_NAME | sqlselect == OBEKT_NO | sqlselect == OBEKT_TEL)
               {
                 HideColumns(getColumnIndex("id_n_obekt"));
               }
         if(sqlselect == DISTRIBUTOR_DELIVER)
               {
                 HideColumns(getColumnIndex("id_ls_n_person"));
               }
        switch(sqlselect)
        {
            case CONTARGENT_NO:
                {
                  table.moveColumn(getColumnIndex(columnName[1]),1);  
                  break; 
                }
            case CONTARGENT_BULSTAT:
                {
                    table.moveColumn(getColumnIndex(columnName[3]),1);
                  break;
                }
            case CONTARGENT_DAN_NO:
                {
                  table.moveColumn(getColumnIndex(columnName[4]),1);
                  break;
                }
            case  CONTARGENT_NAME:
                {
                    table.moveColumn(getColumnIndex(columnName[2]),1);
                    break;
                }

             case  CONTARGENT_ADDRESS:
                {
                  table.moveColumn(getColumnIndex(columnName[5]),1);
                  break;
                }
            case  CONTARGENT_MOL:
                {
                    table.moveColumn(getColumnIndex(columnName[12]),1);
                    break;
                }
            case  CONTARGENT_TEL:
                {
                     table.moveColumn(getColumnIndex(columnName[7]),1);
                  break;
                }
            case OBEKT_NO:
                {
                   table.moveColumn(getColumnIndex(columnName[1]),1); 
                    break;
                }
            case  OBEKT_NAME:
                {
                    table.moveColumn(getColumnIndex(columnName[2]),1); 
                  break;
                }
            case  OBEKT_ADDRESS:
                {
                    table.moveColumn(getColumnIndex(columnName[3]),1); 
                    break;
                }
             case  OBEKT_TEL:
                {
                    table.moveColumn(getColumnIndex(columnName[4]),1); 
                  break;
                }
            case  DISTRIBUTOR_DELIVER:
                {
                    break;
                }
        }   
        
        
        
        
        table.addKeyListener(new KeyListener()
        {
            public void keyPressed(KeyEvent e)
            {
              if(java.awt.event.KeyEvent.VK_ENTER == e.getKeyCode())
                {
                 int row = table.getSelectedRow();
                 if(sqlselect == CONTARGENT_ADDRESS | sqlselect == CONTARGENT_BULSTAT | sqlselect == CONTARGENT_DAN_NO | 
                         sqlselect == CONTARGENT_MOL | sqlselect == CONTARGENT_NAME | sqlselect == CONTARGENT_NAME | 
                         sqlselect == CONTARGENT_NO | sqlselect == CONTARGENT_TEL)
                     {   
                         int ID = (Integer)table.getValueAt(row,getColumnIndex("id_contragent"));
                         myParent.setID_Contragent(ID);
                         
                         ContragentData[0] =String.valueOf((Integer)table.getValueAt(row,getColumnIndex(columnName[1]))); // code
                         ContragentData[1] = (String)table.getValueAt(row,getColumnIndex(columnName[3]));  // bulstat
                         ContragentData[2] = (String)table.getValueAt(row,getColumnIndex(columnName[4]));   // dany4en
                         ContragentData[3] = (String)table.getValueAt(row,getColumnIndex(columnName[2]));  // name
                         ContragentData[4] = (String)table.getValueAt(row,getColumnIndex(columnName[5])); //address
                         ContragentData[5] = (String)table.getValueAt(row,getColumnIndex(columnName[12])); // MOL - name
                         ContragentData[6] = (String)table.getValueAt(row,getColumnIndex(columnName[7])); // telefon
                         myParent.setContragentData(ContragentData);
                         
                        
                        
                     }
                 if(sqlselect == OBEKT_ADDRESS | sqlselect == OBEKT_NAME | sqlselect == OBEKT_NO | sqlselect == OBEKT_TEL)
                    {
                          int ID = (Integer)table.getValueAt(row,getColumnIndex("id_obekt"));
                          myParent.setID_Obekt(ID);
                          ObectData[0] = (String)table.getValueAt(row,getColumnIndex(columnName[1])); // code
                          ObectData[1] = (String)table.getValueAt(row,getColumnIndex(columnName[2])); // name
                          ObectData[2] = (String)table.getValueAt(row,getColumnIndex(columnName[3])); // address
                          ObectData[3] = (String)table.getValueAt(row,getColumnIndex(columnName[5])); //telefon
                            
                          myParent.setObektData(ObectData);
                    }
                 if(sqlselect == DISTRIBUTOR_DELIVER)
                   {
                    
                       if(isDistributor) // true  - ditributor
                       {
                         int ID = (Integer)table.getValueAt(row,getColumnIndex("id_ls_n_person"));
                         int codeD = (Integer)table.getValueAt(row,getColumnIndex(columnName[1]));
                         codeDistributorDeliver = String.valueOf(codeD); 
                         myParent.setID_Distributor(ID);
                         myParent.setDistributorDocFacade(codeDistributorDeliver);
                       }
                       else // false deliver
                       {
                         int ID = (Integer)table.getValueAt(row,getColumnIndex("id_ls_n_person"));
                         int codeD = (Integer)table.getValueAt(row,getColumnIndex(columnName[1]));
                         codeDistributorDeliver = String.valueOf(codeD);
                         myParent.setID_Deliver(ID);
                         myParent. setDeliverDocFacade(codeDistributorDeliver);   
                       }
                   }
                  close();
                }
            }
            public void keyReleased(KeyEvent e)
            {
            }
            public void keyTyped(KeyEvent e)
            {
            }
        });
        
        
        initComponents();
        
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        this.setSize(400,400);
        setVisible(true);
        
        
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jScrollPane1 = new javax.swing.JScrollPane();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.setOpaque(false);
        jScrollPane1.setPreferredSize(new java.awt.Dimension(200, 200));
        jScrollPane1.getViewport().add(table);
        jScrollPane1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jScrollPane1KeyPressed(evt);
            }
        });

        getContentPane().add(jScrollPane1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jScrollPane1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jScrollPane1KeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode())
        {
            int row = table.getSelectedRow();
            int ID = (Integer)table.getValueAt(row,0);
           // myParent.
            this.dispose();  
        }
            
        
        
    }//GEN-LAST:event_jScrollPane1KeyPressed
    
   
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table; 
    private  java.sql.ResultSet rs;
    private imakante.sales.FrmDocumentFacade myParent;
    private java.sql.Connection conn;
    private String ContragentData[] = new String[7];
    private String ObectData[] = new String[4];
    private String codeDistributorDeliver = new String();
    private String columnName[] = null;
    private int sqlselect;
    private  boolean isDistributor;
   
    
    public void close()
    {
        this.dispose();
    }
  private int getColumnIndex(String in) //test
 {
     int count = table.getColumnCount();
     for(int i=0; i < count; i++)
     {
         if(table.getColumnName(i).equals(in)) return i;
     }
     return 0;
 }
 private void HideColumns(int col)
 {
   int iColumn = col;
// set column width
    table.getColumnModel().getColumn(iColumn).setMaxWidth(0);
    table.getColumnModel().getColumn(iColumn).setMinWidth(0);
    table.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
    table.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);

 }
}
