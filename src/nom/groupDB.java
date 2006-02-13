

package nom;

import com.mysql.jdbc.ResultSetMetaData;
import imakante.com.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class groupDB  extends dbObject 
{
    //-------------START MyVariables
   private String splitNamesOfAnLevel[];
   private int indexConnOfId[] = null; // masiv prave6t vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata za analiti4ni niva
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private int comprator;
   private int id=0; // imena ot tablicata                           \   
   private int nom=0; // imena ot tablicata                           \ 
   private String cod,name; // imena ot tablicata                      > tablica "group"
   private int alId=0; // vryzkata kym tablicata za analitu4nite niva /
                       //                                            /
   private Connection conn;
    //-------------END MyVariables
    
    /** Creates a new instance of groupDB */
 public groupDB(java.sql.Connection conn, int idGroup) 
    {
        super(conn);
        prepareCstm();
        this.nom = idGroup;
        
    }
    //-------SART MyFunction
 public void prepareCstm() //????? imeto na procedurata ??
    {
        try {
            
            setCstm(getConn().prepareCall("{call ls_procedure_group(?,?,?,?,?,?)}"));
            
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
        System.out.println("ot getTable()");
        return rs;
    }
 public void registerParameters() //OK
    {
         try
         {
            
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_nom", getNom()); // za suotvetnata grupa
            getCstm().setString("in_cod", getCod());
            getCstm().setString("in_name", getName());
            getCstm().setInt("in_alid", getAnID());
            getCstm().setInt("comprator", getComprator()); // izbor na SQL zaqwka
            
            System.out.println("ot registerparameter");
        }
         catch(java.sql.SQLException sqle)
         {
             sqle.printStackTrace();
         }
    }
 public void prepareRezult() //OK
    {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
 public void insertRow(int in_nom, String in_cod,String in_name, int alID) //OK
    {
        comprator = 1;
        this.nom = in_nom;
        this.cod = in_cod;
        this.name = in_name;
        this.alId = alID;
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
 public void updateRow(int in_id, int in_nom, String in_cod,String in_name, int alID) //OK
    {
        comprator = 2;
        this.id = in_id;
        this.nom = in_nom;
        this.cod = in_cod;
        this.name = in_name;
        this.alId = alID;
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
 public void deleteRow(int in_id) //OK
    {
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
 public java.sql.ResultSet getRow(int in_id) //OK
    {
        comprator = 4;
        id = in_id;
        try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
                cod = rs.getString("cod");
                name = rs.getString("name");
                nom = rs.getInt("nom");
                alId = rs.getInt("alid");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      return rs;  
    }
 public java.sql.ResultSet searchRecords(int in_nom, String in_cod,String in_name, int alID) //OK
    {
        comprator = 5;
        this.nom = in_nom;
        this.cod = in_cod;
        this.name = in_name;
        this.alId = alID;
       
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
    
    public void setStm(java.sql.Statement stm) //OK
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
    public int getMaxId() //OK
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
    public void setNom(int NOM) //OK
    {
        this.nom = NOM;
    }
    public int getNom()//OK
    {
        return nom;
    }
    public void setCod(String COD) //OK
    {
        this.cod = COD;
    }
    public String getCod() //OK
    {
        return cod;
    }
    public void setName(String Name) //OK
    {
        this.name = Name;
    }
    public String getName() //OK
    {
        return name;
    }
    public void setAnID(int anid) //OK
    {
        this.alId = anid;
    }
    public int getAnID() //OK
    {
        return alId;
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
    public String[] getAnLevelName() //OK 
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
               key_Anlevel.put(new Integer(rs.getInt(1)),new String(rs.getString(3)));  // new
               return_str =return_str + rs.getString(3) + " ";
               in.add(new Integer(rs.getInt(1)));
               i++;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        rs = oldRs;
        id = oldId;
        splitNamesOfAnLevel = return_str.split(" ");
        indexConnOfId = new int[i];
        it = in.iterator();
        
        splitNamesOfAnLevel = new String[i]; // new
        i=0;
        while(it.hasNext())
        {
            indexConnOfId[i] =(Integer) it.next();
            splitNamesOfAnLevel[i] = (String) key_Anlevel.get(indexConnOfId[i]); // new
            i++;
        }
       
        
        
        return splitNamesOfAnLevel;
    }
    
  public int[] getIndexConnOfId()
  {
      return indexConnOfId;
  }
}// end class
