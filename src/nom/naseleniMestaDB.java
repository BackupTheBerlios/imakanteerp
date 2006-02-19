

package nom;

import com.mysql.jdbc.ResultSetMetaData;
import imakante.com.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class naseleniMestaDB  extends dbObject 
{
    //-------------START MyVariables
   private String splitNamesOfOblast[];
   private int indexConnOfId[] = null; // masiv prave6t vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata za oblastite
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private int comprator;
   private int id=0; // imena ot tablicata                                \   
   private int postcode=0; // imena ot tablicata                           \ 
   private String name; // imena ot tablicata                                 > tablica "naseleni mesta"
   private byte id_oblast=0; // vryzkata kym tablicata za analitu4nite niva  /
                       //                                                  /
   private Connection conn;
    //-------------END MyVariables
    
    /** Creates a new instance of naseleniMestaDB */
 public naseleniMestaDB(java.sql.Connection conn) 
    {
        super(conn);
        prepareCstm();
               
    }
    //-------SART MyFunction
 public void prepareCstm() // OK
    {
        try {
            
            setCstm(getConn().prepareCall("{call nom_procedure_naselenimesta(?,?,?,?,?)}"));
            
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
 public void registerParameters() //OK
    {
         try
         {
            
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_postcode", getPostCode()); 
            getCstm().setString("in_name", getName());
            getCstm().setInt("in_id_oblast", getIDOblast());
            getCstm().setInt("comprator", getComprator()); 
            
            
        }
         catch(java.sql.SQLException sqle)
         {
             sqle.printStackTrace();
         }
     System.out.println("ot registerparameter");    
    }
 public void prepareRezult() //OK
    {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
 public void insertRow(String in_name, int in_postcode, byte in_id_oblast) // OK  comprator = 1;
    {
        comprator = 1;
        
        this.postcode = in_postcode;
        this.name = in_name;
        this.id_oblast = in_id_oblast;
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
 public void updateRow(int in_id, String in_name, int in_postcode, byte in_id_oblast) //OK   comprator = 2;
    {
        comprator = 2;
        this.id = in_id;
        this.postcode = in_postcode;
        this.name = in_name;
        this.id_oblast = in_id_oblast;
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
                name = rs.getString("name_n_nm");
                postcode = rs.getInt("postcode_n_nm");
                id_oblast = rs.getByte("id_n_oblast");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      return rs;  
    }
 public java.sql.ResultSet searchRecords(int in_postcode,String in_name) //-OK  comprator = 5;
    {
        comprator = 5;
        this.postcode = in_postcode;
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
    public void setIDOblast(byte COD) //OK
    {
        this.id_oblast = COD;
    }
    public byte getIDOblast() //OK
    {
        return id_oblast;
    }
    public void setName(String Name) //OK
    {
        this.name = Name;
    }
    public String getName() //OK
    {
        return name;
    }
    public void setPostCode(int anid) //OK
    {
        this.postcode = anid;
    }
    public int getPostCode() //OK
    {
        return postcode;
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
    public String[] getOblastName() //test comprator = 6;
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
               key_Anlevel.put(new Integer(rs.getInt("id_n_oblast")),new String(rs.getString("name_n_oblast")));  
               in.add(new Integer(rs.getInt("id_n_oblast")));
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
        
        splitNamesOfOblast = new String[i]; 
        i=0;
        while(it.hasNext())
        {
            indexConnOfId[i] =(Integer) it.next();
            splitNamesOfOblast[i] = (String) key_Anlevel.get(indexConnOfId[i]); 
            i++;
        }
       
        
        
        return splitNamesOfOblast;
    }
    
  public int[] getIndexConnOfId() //OK
  {
      return indexConnOfId;
  }
}// end class
