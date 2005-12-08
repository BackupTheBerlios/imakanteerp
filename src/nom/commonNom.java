/*
 * commonNom.java
 *
 * Created on Сряда, 2005, Декември 7, 23:42
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package nom;

/**
 *
 * @author Ivan Katsarov
 */

import com.mysql.jdbc.Statement;
import java.sql.*;
import imakante.com.*;
import java.sql.ResultSetMetaData;
import java.util.*;


public class commonNom extends dbObject 
{
   private String dbName = "frmtest.";   // imeto na bazata 
   private String sqlTableInfo = "nomInfo"; // imeto na tablicata za informaciq
   
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private Connection conn;
   
    
   private String nameTableCyr, nameTableLat, nameColumns, sqlProcedure, nameParameter; //poleta ot tablicata sydyrza6ta informaciq za razli4nite NOM
   private int countColumns; // broq na kolonite na syotvetnata NOM
   private String splitColumns[]=null;
   private String splitParameter[]=null;
   private Object ob[];  // stoinostite na parametrite
   
   private ArrayList tableInfoList = new ArrayList();   // spisyk s informaciq za syotvetnata NOM, 6te sluzi sa sravnenie s gornite promenlivi
    /** Creates a new instance of commonNom */
    public commonNom(java.sql.Connection conn, int idNom) 
    {
        super(conn);
        this.conn = conn;
        try
        {
         createStatement();
         getTableInfoNom(idNom);
         prepareCstm(sqlProcedure);
         setStartParameter();
        
       
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
    }
   public void createStatement()
   {
       try
       {
       stmt = conn.createStatement();
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
   }
    private void prepareCstm(String procedure) { 
        try 
        {
            cstm = conn.prepareCall(procedure);
            
          
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
    }
    private void prepareRezult(){
        try
        {
           registerParameters();
           rs =  cstm.executeQuery();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        
    }
    public boolean getTableInfoNom(int idNom)
    {
        
        String tableInfo = "SELECT * FROM "+sqlTableInfo+" where id ="; // zaqvka za izvlivane na informaciq za syotvetnata NOM
      
        tableInfo += String.valueOf(idNom);
        boolean return_check = false;    // buleva stoinost za proverka pri izvikvane na funkciite getTableCyr, getTableLat,getNameColumns, getSqlProcedure
        try
        {
            rs = stmt.executeQuery(tableInfo);
            while(rs.next())
            {
                nameTableCyr = rs.getString("nametableCyr");
                nameTableLat = rs.getString("nameTableLat");
                nameColumns = rs.getString("nameColumns");
                sqlProcedure = rs.getString("sqlProcedure");
                nameParameter = rs.getString("nameParameter");
                countColumns = rs.getInt("countColumns");
                return_check = true;
           }
           splitColumns = nameColumns.split(" ");  // razdelane na colonite
           splitParameter = nameParameter.split(" "); // razdelqna na parametrite
 // vzemane na tipovete na kolonite 
        
          
          
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       return return_check; 
    }
   
 
 
     private void registerParameters()
     {
      
        try
        {
            for(int i = 0; i < splitParameter.length; i++)
            {
                cstm.setObject(splitParameter[i],ob[i]);
            }
         
            System.out.println("ot registerparameter");
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
    }
  
     public void setStartParameter() // pri uslovie 4e imeto na kolonata e 4ast ot imeto naparametyra
     {                            // t.e ime na kolona - "name" => parameter  - "in_name"
                                 
         
         ob = new Object[splitParameter.length];
         
         for(int i = 0;i<ob.length;i++)
         {
             if(splitParameter[i].equals("comprator"))
             {
                 ob[i]=0;
             }
             else
             {
                 ob[i] = null;
             }
             
         }
         
     }
     public void setParameter(Object ob[])
     {
         this.ob = ob;
     }
public java.sql.ResultSet getTable()
{
     
   
     try
     {
       setStartParameter();
       registerParameters();
       rs = cstm.executeQuery();
     }
     catch(java.sql.SQLException sqle)
     {
         sqle.printStackTrace();
     }
        System.out.println("ot getTable()");
        return rs;
    }
 /*public  static void  main(String args[])
   {
      Connection ccc;
      String User="javauser";
      String Pass="javadude";
      String Url = "jdbc:mysql://127.0.0.1:3306/frmtest";
       try
         {
          Class.forName("com.mysql.jdbc.Driver");
           
           ccc = DriverManager.getConnection(Url, User, Pass);
          commonNom c1 = new commonNom(ccc,2);
         }
         catch(Exception e)
         {
             e.printStackTrace();
         } 
      
   }*/
}
