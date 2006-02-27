

package imakante.sales;
import java.util.ArrayList;
import javax.swing.*;
import java.awt.event.*;
import java.io.Serializable;




import javax.swing.table.*;

import javax.swing.*;
public class docLineTableModel extends AbstractTableModel implements Serializable
{
    
    private final int CODE_OF_PRODUCT  = 0;
    private final int NAME_OF_PRODUCT   = 1;
    private final int STORAGE_OUT       = 2;
    private final int PRICE_LIST        = 3;
    private final int NUMBER_OF_PRODUCT = 4;
    private final int PRICE_PIECE       = 8;
    private final int RATE_REDUCTION    = 9;
    private final int PRICE_TOTAL       = 11;
    private final int DDS_              = 10;
    private final int NAME_OF_DISBAUND_0  = 13;
    private final int NAME_OF_DISBAUND_1  = 14;
    private final int NAME_OF_DISBAUND_2 =  15;
    private final int NUMBER_OF_DISBAUND_0= 5;
    private final int NUMBER_OF_DISBAUND_1= 6;
    private final int NUMBER_OF_DISBAUND_2= 7;
    private final int ID_DOCLINE          = 12;
   
    
    
    
    
    private ArrayList rows = new ArrayList();
    private docLineArray docLine = null;
    private boolean[] canEdit = new boolean [] {
                          false, false, false,false, false, false, false,
                          false, false, false, false, false, false, false, false, false};
    
    private String[] colNames =  new String [] {
                "����� �������", "��� �� �������", "����� �����", 
                "������ �����","���� ��������", "�-�� �������", "���������� 1",
                "���������� 2", "��. ����", "������� ��������",
                "���", "���� �����","id_dl","r1","r2","r3"};
    private int rowsCount=0;
    private int columnsCound=0;
        // Types of the columns.
    private Class[]  colTypes =  new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.Integer.class,
                java.lang.Integer.class, java.lang.Integer.class,java.lang.Integer.class, java.lang.Integer.class,
                java.lang.Integer.class, java.lang.Double.class, java.lang.Double.class,
                java.lang.Double.class, java.lang.Double.class,java.lang.Integer.class,java.lang.String.class,
                java.lang.String.class,java.lang.String.class};
        
        
    public docLineTableModel()
    {
        docLine = new docLineArray();
        rows.add(docLine);
        rowsCount++;
        
    }
     public docLineTableModel(int codeOfProduct,String nameOfProduct,int storageOut,int priceList,
                       int numberOfProduct, double pricePiece,double rateReduction,double priceTotal,double DDS,
                       String nameOfDisBaund[],int numerOfDisBaund[], int in_id_dl)
    {
       
        docLine = new docLineArray( codeOfProduct, nameOfProduct, storageOut, priceList,
                        numberOfProduct,  pricePiece,rateReduction ,priceTotal, DDS,
                        nameOfDisBaund, numerOfDisBaund,in_id_dl);
        rows.add(docLine);
        rowsCount++;
    }
     
    public docLineTableModel(docLineArray in)
    {
        
        docLine = new docLineArray(in);
        rows.add(docLine);
        rowsCount++;
        
    }
//----------------------------------------    
   public int getColumnCount()
        {  
            return colNames.length;
        }
        
        
   public int getRowCount()    
      {  
         return rows.size();
      }
        
        
        

 public void setValueAt(Object value, int row, int col) 
    {    
         if(value==null) return;
          docLineArray dd = (docLineArray) rows.get(row);
          
          switch(col)
          {
           case CODE_OF_PRODUCT    :
            {
                dd.setCodeOfProduct((Integer)value);
                break;
            }
           case NAME_OF_PRODUCT    :
                {
                    dd.setNameOfProduct((String) value);
                break;
            }
           case STORAGE_OUT        :
                {
                    dd.setStorageOut((Integer)value);
                break;
            }
           case PRICE_LIST         :
                {
                    dd.setPriceList((Integer)value);
                break;
            }
           case NUMBER_OF_PRODUCT  :
                {
                    dd.setNumberOfProduct((Integer)value);
                break;
            }
           case PRICE_PIECE        :
                {
                    dd.setPricePiece((Double)value);
                break;
            }
            case RATE_REDUCTION    :
                {
                    dd.setRateReduction((Double)value);
                break;
            }
           case PRICE_TOTAL        :
                {
                    dd.setPriceTotal((Double)value);
                break;
            }
           case DDS_               :
                {
                    dd.setDDS((Double)value);
                break;
            }
           case NAME_OF_DISBAUND_0   :
                {
                   String str[] = new String[3];
                   str[0] = (String)value;
                   str[1] = dd.getNameOfDisBand()[1];
                   str[2] = dd.getNameOfDisBand()[2];
                   dd.setNameOfDisBand(str) ;
                break;
            }
           case NUMBER_OF_DISBAUND_0 :
                {
                    int ii[] = new int[3];
                    ii[0] = (Integer)value;
                    ii[1] = dd.getNumerOfDisBand()[1];
                    ii[2] = dd.getNumerOfDisBand()[2];
                    dd.setNumerOfDisBand(ii);
                    
                break;
            }
           case NAME_OF_DISBAUND_1   :
                {
                   String str[] = new String[3];
                    str[0] = dd.getNameOfDisBand()[0];
                   str[1] = (String)value;
                    str[2] = dd.getNameOfDisBand()[2];
                   dd.setNameOfDisBand(str) ;   
                break;
            }
           case NUMBER_OF_DISBAUND_1 :
                {
                    int ii[] = new int[3];
                    ii[0] = dd.getNumerOfDisBand()[0];
                    ii[1] = (Integer)value;
                    ii[2] = dd.getNumerOfDisBand()[2];
                    dd.setNumerOfDisBand(ii);
                break;
            }
           case NAME_OF_DISBAUND_2   :
                {
                   String str[] = new String[3];
                   str[0] = dd.getNameOfDisBand()[0];
                   str[1] = dd.getNameOfDisBand()[1];
                   str[2] = (String)value;
                  dd.setNameOfDisBand(str) ;   
                break;
            }
           case NUMBER_OF_DISBAUND_2 :
                {
                     int ii[] = new int[3];
                    ii[0] = dd.getNumerOfDisBand()[0];
                    ii[1] = dd.getNumerOfDisBand()[1];
                    ii[2] = (Integer)value;
                    dd.setNumerOfDisBand(ii);
                break;
            }
              case ID_DOCLINE :
              {
                  int ii = (Integer) value;
                  dd.setID_DocLine(ii);
                  break;
              }
          }
          
     fireTableCellUpdated(row, col);   
    }

        
 public String getColumnName(int col)
    {
       return colNames[col];
    }

 public Class getColumnClass(int col) 
    {
       return colTypes[col];
    }

        

 public Object getValueAt(int row, int col)
   {
     Object value = null;
        docLineArray dd = (docLineArray) rows.get(row);
          
          switch(col)
          {
           case CODE_OF_PRODUCT    :
            {
               value =  dd.getCodeOfProduct();
                break;
            }
           case NAME_OF_PRODUCT    :
                {
                     value = dd.getNameOfProduct();
                break;
            }
           case STORAGE_OUT        :
                {
                     value = dd.getStorageOut();
                break;
            }
           case PRICE_LIST         :
                {
                     value =dd.getPriceList();
                break;
            }
           case NUMBER_OF_PRODUCT  :
                {
                    value = dd.getNumberOfProduct();
                break;
            }
           case PRICE_PIECE        :
                {
                     value =dd.getPricePiece();
                break;
            }
            case RATE_REDUCTION    :
                {
                    value = dd.getRateReduction();
                break;
            }
           case PRICE_TOTAL        :
                {
                    value = dd.getPriceTotal();
                break;
            }
           case DDS_               :
                {
                     value =dd.getDDS();
                break;
            }
           case NAME_OF_DISBAUND_0   :
                {
                   String str[] = new String[3];
                   
                  str = dd.getNameOfDisBand() ;
                  value = str[0];
                break;
            }
           case NUMBER_OF_DISBAUND_0 :
                {
                    int ii[] = new int[3];
                    ii =  dd.getNumerOfDisBand();
                    value = ii[0];
                  break;
            }
           case NAME_OF_DISBAUND_1   :
                {
                   String str[] = new String[3];
                   str =  dd.getNameOfDisBand() ; 
                   value = str[1];
                break;
            }
           case NUMBER_OF_DISBAUND_1 :
                {
                     int ii[] = new int[3];
                     ii =   dd.getNumerOfDisBand();
                      value = ii[1];
                break;
            }
           case NAME_OF_DISBAUND_2   :
                {
                   String str[] = new String[3];
                   str =  dd.getNameOfDisBand() ;
                   value = str[2];
                break;
            }
           case NUMBER_OF_DISBAUND_2 :
                {
                     int ii[] = new int[3];
                     ii =    dd.getNumerOfDisBand();
                      value = ii[2];
                break;
            }
            case ID_DOCLINE :
              {
                  int ii =  dd.getID_DocLine();
                  value = ii;
                  break;
              }
          }  
      return value;  
   }
 
 public boolean isCellEditable(int rowIndex, int columnIndex)
 {
     docLineArray dd = (docLineArray) rows.get(rowIndex); 
     dd.getIsFinishRow();
     return (canEdit[columnIndex] & !dd.getIsFinishRow());
     
 }
 public void enableCellEditable(int columnIndex)
            {
                 canEdit [columnIndex] = true;
            }
            public void disableCellEditable(int columnIndex)
            {
              canEdit [columnIndex] = false;
            }
           public void setDefaultCellEditable()
           {
              boolean canEdit1[] = new boolean [] {
                false, false, false, false,false, false, false, false, false, false, false, false};
              canEdit = canEdit1;
           }
 
 
 public void addRow(docLineArray rowData)
 {
    docLine = new docLineArray(rowData);
    rows.add(docLine);
    rowsCount++;
    fireTableDataChanged();
 }
public void addRow(int codeOfProduct,String nameOfProduct,int storageOut,int priceList,
                       int numberOfProduct, double pricePiece,double rateReduction,double priceTotal,double DDS,
                       String nameOfDisBaund[],int numerOfDisBaund[],int in_id_dl)
    {
        
        docLine = new docLineArray( codeOfProduct, nameOfProduct, storageOut, priceList,
                        numberOfProduct,  pricePiece,rateReduction ,priceTotal, DDS,
                        nameOfDisBaund, numerOfDisBaund,in_id_dl);
        rows.add(docLine);
        rowsCount++;
        fireTableDataChanged();
    }

public void insertRow(int row,  docLineArray rowData)
   {
   docLine = new docLineArray(rowData);
    rows.add(row,docLine);
    rowsCount++; 
    fireTableRowsInserted(row, row);
}

public void removeRow(int row)
{
    rows.remove(row);
    
   fireTableRowsDeleted(row, row);
    

}

 public void setIsFinish(int row)
 {
    docLineArray dd = (docLineArray) rows.get(row); 
    dd.setIsFinishRow(true);
 }
 
 
}
