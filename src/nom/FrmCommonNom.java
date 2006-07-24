
package nom;

import com.sun.org.apache.bcel.internal.generic.ExceptionThrower;
import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.awt.BorderLayout;
import java.awt.event.KeyEvent;
import java.awt.print.PrinterException;
import java.sql.*;
import imakante.com.vcomponents.*;
import java.awt.event.WindowListener;
import java.text.MessageFormat;
import javax.swing.*;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JFrame;
import javax.swing.JInternalFrame;
import javax.swing.BorderFactory;
import java.util.*;

public class FrmCommonNom extends  imakante.com.vcomponents.iInternalFrame implements WindowListener {
    
    public FrmCommonNom(int idNom) 
    {
        super("test");
        this.idNom = idNom;
       // myframe = frame;
        prepareConn();     // zapazva connection
        createCommonNomDB(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
       
        
         fr.addWindowListener(this);
         
         
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(table);
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButtonNew = new javax.swing.JButton();
        jButtonEdit = new javax.swing.JButton();
        jButtonPrint = new javax.swing.JButton();
        jButtonPrnReportr = new javax.swing.JButton();
        jButtonDel = new javax.swing.JButton();
        jButtonRefresh = new javax.swing.JButton();
        jButtonDeleteAll = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();

        setClosable(true);
        setMaximizable(true);
        setResizable(true);
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 37));
        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 819, Short.MAX_VALUE)
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 33, Short.MAX_VALUE)
        );
        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);
        jScrollPane1.getAccessibleContext().setAccessibleParent(jPanel1);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 823, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setMinimumSize(new java.awt.Dimension(801, 37));
        jPanel3.setPreferredSize(new java.awt.Dimension(801, 37));
        jButtonNew.setText("\u041d\u043e\u0432");
        jPanel3.add(jButtonNew);

        jButtonEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jPanel3.add(jButtonEdit);

        jButtonPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jPanel3.add(jButtonPrint);

        jButtonPrnReportr.setText("\u041f\u0435\u0447\u0430\u0442 \u0440\u0435\u043f\u043e\u0440\u0442");
        jPanel3.add(jButtonPrnReportr);

        jButtonDel.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jPanel3.add(jButtonDel);

        jButtonRefresh.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jPanel3.add(jButtonRefresh);

        jButtonDeleteAll.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        jPanel3.add(jButtonDeleteAll);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435");
        jPanel3.add(jButtonClose);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
      static JFrame fr = new JFrame("test");
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                //JFrame fr = new JFrame("test");
                //fr.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
                FrmCommonNom frCN =   new FrmCommonNom(1);
                fr.add(frCN);
                frCN.setVisible(true);
                fr.setVisible(true);
            }
        });
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonDel;
    private javax.swing.JButton jButtonDeleteAll;
    private javax.swing.JButton jButtonEdit;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrnReportr;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    private static boolean atBegining=false;
    private static boolean atEnd = false;
    private imakante.com.vcomponents.iFrame myframe; 
    private int idNom;
    private java.sql.Connection conn;
    private  java.sql.ResultSet rs; 
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table; 
    private commonNom countriesT;
    private String User="javauser";  // vremenna promenliva za test
    private String Pass="javadude";  // vremenna promenliva za test
    private String Url = "jdbc:mysql://127.0.0.1:3306/frmtest";  // vremenna promenliva za test
    private java.sql.Connection ccc; // vremenna promenliva za test
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
      // kari na koda za testovete---------
      
       /*try
       {
            setConn(myframe.getConn());}catch(Exception e){e.printStackTrace();}
       }*/

  }
  private void createCommonNomDB() //TEST
  {
      countriesT = new commonNom(conn,2);
      System.out.println("ot construct object");
  }
  private void initTable() //OK
  {
      try
        {
            rs = countriesT.getTable();
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
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
  public void windowDeactivated(java.awt.event.WindowEvent e) // close iInternalFrame`s windows
   {
   
   } 
   
    public static boolean isAtBegining() //OK
    {
        return atBegining;
    }
    
    public static void setAtBegining(boolean aAtBegining)//OK
    {
        atBegining = aAtBegining;
    }
    
    public static boolean isAtEnd()//OK
    {
        return atEnd;
    }
    
    public static void setAtEnd(boolean aAtEnd)//OK
    {
        atEnd = aAtEnd;
    }
public commonNom getCountriesT() //OK
   {
   return countriesT;
   }
    
public void setCountriesT(commonNom val) //OK
   {
        this.countriesT = val;
    }
    
public CustomTableModel getModel() //OK
   {
        return model;
    }
    
public void setModel(CustomTableModel val) //OK
   {
        this.model = val;
    }
    
public CustomTable getTable() //OK
   {
        return table;
    }
    
public void setTable(CustomTable val) //OK
   {
        this.table = val;
    }
public iFrame getMyframe() //OK
   {
        return myframe;
    }
    
public void setMyframe(iFrame val) //OK
   {
        this.myframe = val;
    }
    
protected void UnloadWindow() //OK
   {
        closeResource();
        this.dispose();
 }  
protected void closeResource() //OK
   {
        
        try{ rs.close();
        }catch(java.sql.SQLException sqle){}
        rs =null;
        countriesT.close();
  }

public ResultSet getRs() //OK
   {
        return rs;
    }

private  int  getMaxRow()
   {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
 }
 private Object[] deleteRecord() //OK
   {
     Object ob[] = new Object[countriesT.tableInfo.splitColumns.length];
      if (table.getSelectedRow() != -1) 
      {
          
          for(int i=0;i<ob.length;i++)
          {
              ob[i] = table.getValueAt(table.getSelectedRow(),i);
          }
            countriesT.tableInfo.setColumnsData(ob);
            countriesT.deleteRow(table.getSelectedRow());
      }
        refreshTable();
        return ob;
    }
protected  void refreshTable() // OK  
   {
        jScrollPane1.remove(table);
        rs = countriesT.getTable();
        model = new imakante.com.CustomTableModel(conn, rs, null);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
        
    }
protected void editRecord() // !!! trqbva da se prerabori aeCommonNom !!!
   {
        setAtEnd(false);
        setAtBegining(false);
        Object ob[] = new Object[countriesT.tableInfo.splitColumns.length];
        if (table.getSelectedRow() != -1) { //table.getValueAt(table.getSelectedRow(), table.getSelectedColumn()) != null
            
           
            if(table.getSelectedRow()==0)
            {
                setAtBegining(true);
            }
            if(table.getSelectedRow()==getMaxRow())
            {
                setAtEnd(true);
            }
            for(int i=0;i<ob.length;i++)
             {
                  ob[i] = table.getValueAt(table.getSelectedRow(),i);
             }
            countriesT.tableInfo.setColumnsData(ob);
           
            
            try{
                // !! kato vhodni parametri na aeCommonNom podavame: poleta koito iskame da se redaktirat, id  !!!
                
              //  nom.aeCountry dialog = new nom.aeCountry(this, true, getRow(),getId(), getCode(), getNameC());
             //   dialog.setVisible(true);
                
            } catch(Exception e){e.printStackTrace();}
        }else{
            
        }
        
    }
private void newRecord() // !!! trqbva da se prerabori aeCommonNom !!!
{
        refreshTable();
        setAtEnd(true);
        setAtBegining(false);
        countriesT.getMaxId();
        
        // izvikva se aeCommonNom
        
        //nom.aeCountry dialog = new nom.aeCountry(this, true, getRow(), getId(), getCode(), name);
        //dialog.setVisible(true);
        
   }

 private void searchRecords()// !!!!!
 {
        jScrollPane1.remove(table);
       // System.out.println(jTextField2.getText());
         Object ob[] = new Object[countriesT.tableInfo.splitColumns.length];
         
           
        try{
            
            rs = countriesT.searchRecords(ob);
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
        }catch(Exception e){e.printStackTrace();}
      
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
    }

}
