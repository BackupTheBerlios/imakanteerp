

package nom;

import com.mysql.jdbc.ResultSetMetaData;
import imakante.com.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class oblastDB  extends dbObject 
{
    //-------------START MyVariables
   private String splitNamesOfCountry[];
   private int indexConnOfId[] = null; // masiv prave6t vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata za oblastite
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private int comprator;
   private int id=0; // imena ot tablicata                                \   
   			   // imena ot tablicata                           \ 
   private String name; // imena ot tablicata                                 > tablica "naseleni mesta"
   private byte id_country=0; // vryzkata kym tablicata za analitu4nite niva  /
                       //                                                  /
   private Connection conn;
    //-------------END MyVariables
    
    /** Creates a new instance of oblastDB */
 public oblastDB(java.sql.Connection conn) 
    {
        super(conn);
        prepareCstm();
               
    }
    //-------SART MyFunction
 private void prepareCstm() // OK -->>>>>????
    {
        try {
            
            setCstm(getConn().prepareCall("{call nom_procedure_oblast(?,?,?,?)}"));
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
 public java.sql.ResultSet getTable() //OK
    {
        
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("naseleniMesta.getTable()");
        return rs;
    }
 private void registerParameters() //OK
    {
         try
         {
            
            getCstm().setInt("in_id", getId());
            getCstm().setString("in_name", getName());
            getCstm().setInt("in_id_country", getIDCountry());
            getCstm().setInt("comprator", getComprator()); 
            
            
        }
         catch(java.sql.SQLException sqle)
         {
             sqle.printStackTrace();
         }
     System.out.println("ot registerparameter");    
    }
 private void prepareRezult() //OK
    {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
 public void insertRow(int in_id,String in_name, byte in_id_country) // OK  comprator = 1;
    {
        comprator = 1;
        this.id = in_id;
        this.name = in_name;
        this.id_country = in_id_country;
        try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        
    }
 public void updateRow(int in_id, String in_name, byte in_id_country) //OK   comprator = 2;
    {
        comprator = 2;
        this.id = in_id;
        this.name = in_name;
        this.id_country = in_id_country;
        try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        
        
    }
 public void deleteRow(int in_id) //OK   comprator = 3;
    {
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
 public java.sql.ResultSet getRow(int in_id) //OK  comprator = 4;
    {
        comprator = 4;
        id = in_id;
        try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
                name = rs.getString("name");
                id_country = rs.getByte("id_country");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      return rs;  
    }
 public java.sql.ResultSet searchRecords(String in_name) //-OK  comprator = 5;
    {
        comprator = 5;
        this.name = in_name;
       
        try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        return getRs();
       
    }
    public java.sql.Connection getConn() //OK
    {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) //OK
    {
        this.conn = conn;
    }
    
    public java.sql.Statement getStm() //OK
    {
        return stmt;
    }
    
    public void setStm(java.sql.Statement stm) //KO
    {
        this.stmt = stm;
    }
    
    public java.sql.CallableStatement getCstm() //OK
    {
        return cstm;
    }
    
    public void setCstm(java.sql.CallableStatement cstm) //OK
    {
        this.cstm = cstm;
    }
    
    public java.sql.ResultSet getRs() //OK
    {
        return rs;
    }
    public void setRs(java.sql.ResultSet rs) //OK
    {
        this.rs = rs;
    }
    public void setId(int ID) //OK
    {
        this.id = ID;
    }
    public int getId() //OK
    {
        return id;
    }
    public int getMaxId() //OK    comprator = 7;
    {
        comprator = 7;
        int return_int=-1;
         try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
                return_int = rs.getInt(1);
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       return return_int;
    }
    public void setIDCountry(byte COD) //OK
    {
        this.id_country = COD;
    }
    public byte getIDCountry() //OK
    {
        return id_country;
    }
    public void setName(String Name) //OK
    {
        this.name = Name;
    }
    public String getName() //OK
    {
        return name;
    }
    
    public int getComprator() //OK
    {
        return comprator;
    }
    public void setComprator(int com) //OK
    {
        this.comprator = com;
    }
    public void close() //OK
    {
        try{
            rs.close();
            rs=null;
        }catch(java.sql.SQLException sqle){}
        
        try{
            cstm.close();
            cstm=null;
        }catch(java.sql.SQLException sqle){}
        
    }
    public String[] getCountryName() //test comprator = 6;
    {
        comprator=6;
        String return_str=new String("");
        int oldId = id;
        ResultSet oldRs = rs;
        String strIndexConnOfId = new String("");
        ArrayList in = new ArrayList();
        Iterator it = null;
        // nova ideq porodena ot fakta 4e pri razdelqneto na stringa i 
        //ako imeto na ednata kletka ima intervali no se polu4ava gre6ka
        HashMap key_Anlevel = new HashMap();
        int i = 0;
       
         try              
        {
             registerParameters();
            rs = cstm.executeQuery();
                        
           
            while(rs.next())
            {
               key_Anlevel.put(new Integer(rs.getInt("id")),new String(rs.getString("name")));  
               in.add(new Integer(rs.getInt("id")));
               i++;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        rs = oldRs;
        id = oldId;
        indexConnOfId = new int[i];
        it = in.iterator();
        
        splitNamesOfCountry = new String[i]; 
        i=0;
        while(it.hasNext())
        {
            indexConnOfId[i] =(Integer) it.next();
            splitNamesOfCountry[i] = (String) key_Anlevel.get(indexConnOfId[i]); 
            i++;
        }
       
        
        
        return splitNamesOfCountry;
    }
    
  public int[] getIndexConnOfId() //OK
  {
      return indexConnOfId;
  }
}// end class
