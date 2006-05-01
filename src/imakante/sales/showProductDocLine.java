
package imakante.sales;

import java.awt.Dimension;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import imakante.sales.FrmDocumentFacade;
public class showProductDocLine extends imakante.com.vcomponents.iDialog
{
    
    /** Creates new form showNameOfMOL_OSO */
    public showProductDocLine (imakante.com.vcomponents.iInternalFrame myframe, boolean modal, java.sql.ResultSet rs, java.sql.Connection conn,boolean isProductIN)
    {
        super(myframe, modal);
        isPRODUKTIN = isProductIN;
        myParent = (FrmDocumentFacade)  myframe;
        this.rs = rs;
        
       // columnName=null;
        model = new imakante.com.CustomTableModel(conn,rs, columnName);
        table = new imakante.com.CustomTable(model);
       
      
        HideColumns(getColumnIndex("id_pm"));
        HideColumns(getColumnIndex("id_pc"));
        HideColumns(getColumnIndex("id_pf"));
        HideColumns(getColumnIndex("id_pd"));
        HideColumns(getColumnIndex("pc_id_pp"));
        HideColumns(getColumnIndex("pc_id_pf"));
        HideColumns(getColumnIndex("pc_id_ppp"));
        HideColumns(getColumnIndex("id_pp"));
        HideColumns(getColumnIndex("id_ppp"));
       
        HideColumns(getColumnIndex("level"));
        HideColumns(getColumnIndex("id_df"));
        HideColumns(getColumnIndex("id_nal"));
       // premestvane na kolonite
        table.moveColumn(getColumnIndex("Номер склад"),0);
        table.moveColumn(getColumnIndex("Име на склада"),1);
        table.moveColumn(getColumnIndex("Наличност"),2);
        table.moveColumn(getColumnIndex("Код на продукта"),3);
        
        table.addKeyListener(new KeyListener()
        {
            public void keyPressed(KeyEvent e)
            {
              if(java.awt.event.KeyEvent.VK_ENTER == e.getKeyCode())
                {
                   int row = table.getSelectedRow();
                   int ID = (Integer)table.getValueAt(row,getColumnIndex("id_pm"));
                              
                  myParent.setID_Product(ID);
                  myParent.setID_PC((Integer)table.getValueAt(row,getColumnIndex("id_pc")));
                  myParent.setNameProduct((String)table.getValueAt(row,getColumnIndex("Фактурно име")));
                  myParent.setCodeProduct((Integer)table.getValueAt(row,getColumnIndex("Код на продукта")));
                  myParent.setStorageOUTProduct((Integer)table.getValueAt(row,getColumnIndex("Номер склад")));
                  if((Integer)table.getValueAt(row,getColumnIndex("Партида"))>1)
                  myParent.setID_PP((Integer)table.getValueAt(row,getColumnIndex("pc_id_pp")));
                  else  myParent.setID_PP((Integer)table.getValueAt(row,getColumnIndex("id_pp")));
                  pricelist = myParent.getCountriesT().getPriceListByID(myParent.getID_PP());
                  myParent.setWorkPriceListProduct(pricelist);
                  if(isPRODUKTIN) // produkta se vkarva v sklada                 
                     myParent.setBrojProduct(0);
                  else  myParent.setBrojProduct((Integer)table.getValueAt(row,getColumnIndex("Наличност"))-(Integer)table.getValueAt(row,getColumnIndex("Запазено количество")));
                  myParent.setID_PD((Integer)table.getValueAt(row,getColumnIndex("id_pd")));
                  productDescription = myParent.getCountriesT().getProductDescriptionByID(myParent.getID_PD());
                  productDescription[0][0] = myParent.getCountriesT().getProductDescriptionNameID(Integer.parseInt(productDescription[0][0]));
                  productDescription[1][0] = myParent.getCountriesT().getProductDescriptionNameID(Integer.parseInt(productDescription[1][0]));
                  productDescription[2][0] = myParent.getCountriesT().getProductDescriptionNameID(Integer.parseInt(productDescription[2][0]));
                  
                  myParent.setProductDescription(productDescription);
                  myParent.setProcentProduct((Double)table.getValueAt(row,getColumnIndex("Мах % на отстъпка")));
                  
                  if((Integer)table.getValueAt(row,getColumnIndex("Партида"))>1)
                  myParent.setID_PF((Integer)table.getValueAt(row,getColumnIndex("pc_id_pf")));
                  else myParent.setID_PF((Integer)table.getValueAt(row,getColumnIndex("id_pf")));
                  productFee = myParent.getCountriesT().getProductFeeByID(myParent.getID_PF());
                  myParent.setProductFee(productFee);
                  
                  myParent.setIsSelectProduct(true);
                  
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
        this.setSize(680,600);
        
    }
    
   
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jScrollPane1 = new javax.swing.JScrollPane();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        getContentPane().add(jScrollPane1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
   private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table; 
    private  java.sql.ResultSet rs;
    private FrmDocumentFacade myParent;
    
  /* id_n_storage = Номер склад 
   *quant_nal = Наличност
   *code_n_storage = Код на склада
   name_n_storage = Име на склада 
   *name_pm = Име на продукта
   *fname_pm = Фактурно име
   *sname_pm = Съкратено име
   *cname_pm = Име на съответ.
   *max_pop_pm = Мах % на отстъпка
   *code_pm = Код на продукта
   *parcel_pc = Партида
   *dateofexpire_pc = Годност
   *comments_n_storage = Коментар-склад
   *quant_rezerv_nal = Запазено количество
   */
   private String columnName[] = {"id_pc","pc_id_pp","pc_id_ppp","pc_id_pf","id_pm","id_pd", "id_ppp","id_pp","id_df","Име на продукта","Фактурно име","Съкратено име","Име на съответ.","Мах % на отстъпка","Код на продукта","Партида","Годност",
                                  "id_nal", "Номер склад","level", "Наличност","Запазено количество","Код на склада","Име на склада","Коментар-склад"};
   private double pricelist[] = new double[5];
   private String productDescription[][] =new String[3][2];
   private double productFee[]  = new double[3];
   private boolean isPRODUKTIN;
    
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
}// end class
