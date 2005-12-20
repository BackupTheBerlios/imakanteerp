/*
 * contragentDB.java
 *
 * Created 20.12.2005, 20:38
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package nom;

/**
 *
 * @author Ivan Katsarov
 */
import imakante.com.*;

public class contragentDB extends dbObject 
{
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private java.sql.Connection conn;
   private int comprator;
   
   private int id,id_nm,id_mol,id_oso,flag;
   private String cod,name,bull,dan,address,tel,fax,email,web;
   
    /** Creates a new instance of contragentDB */
    public contragentDB(java.sql.Connection conn)
    {
        super(conn);
        prepareCstm();
    }
 private void prepareCstm() // vhodnite parametri
    {
     try {
          setCstm(getConn().prepareCall("{call nom_procedure_contragent(?,?,?,?,?,?)}"));
         }
     catch(java.sql.SQLException sqle)
     {
         sqle.printStackTrace();
     }
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
                cod = rs.getString("code");
                name = rs.getString("name");
                bull = rs.getString("bul");
                dan = rs.getString("dan");
                address = rs.getString("address");
                id_nm = rs.getInt("id_nm");
                tel = rs.getString("tel");
                fax = rs.getString("fax");
                email = rs.getString("email");
                web = rs.getString("web");
                id_mol = rs.getInt("id_mol");
                id_oso = rs.getInt("id_oso");
                flag = rs.getInt("flag");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      return rs;  
    }
  public void insertRow(String in_cod, String in_name, String in_bul,
                      String in_dan, String in_address, int in_id_nm, String in_tel,
                      String in_fax, String in_email, String in_web, int in_id_mol,
                       int in_id_oso) //ok
    {
        comprator = 1;
        
        this.cod = in_cod;
        this.name = in_name;
        this.bull = in_bul;
        this.dan = in_dan;
        this.address = in_address;
        this.id_nm = in_id_nm;
        this.tel = in_tel;
        this.fax = in_fax;
        this.email = in_email;
        this.web = in_web;
        this.id_mol = in_id_mol;
        this.id_oso = in_id_oso;
        this.flag = 0;
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
 public void updateRow(int in_id, String in_cod, String in_name, String in_bul,
                      String in_dan, String in_address, int in_id_nm, String in_tel,
                      String in_fax, String in_email, String in_web, int in_id_mol,
                       int in_id_oso) // ok
    {
        changeFlag(1,in_id);
     // po princip trqbva da izpolzvame comprator = 2, no nie defakto nqma da redaktirame redove,
     // a 6te dobavim nov, kato promenim flaga na stariq zapis ot 0 na 1, a na noviq zapis s glag 0  
        comprator = 1;   // comprator: 1.INSERT INTO <tablename>  ... ;2.UPDATE <table name> ... ;
      /*  this.id = in_id;
        this.cod = in_cod;
        this.name = in_name;
        this.bull = in_bul;
        this.dan = in_dan;
        this.address = in_address;
        this.id_nm = in_id_nm;
        this.tel = in_tel;
        this.fax = in_fax;
        this.email = in_email;
        this.web = in_web;
        this.id_mol = in_id_mol;
        this.id_oso = in_id_oso;*/
      
        insertRow(in_cod,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,
                  in_web,in_id_mol,in_id_oso);
      
        
    }
 private void changeFlag(int flag, int id) //ok
 {
     comprator = 2; 
     this.flag = flag;
     this.id = id;
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
 public void deleteRow(int in_id) // ok
    {
     // po princip trqbva da iztriem reda ot tablicata,  no po iziskvaneto da ne se triqt reove
     // ot tablicata, nie samo smenqme flaga 
        changeFlag(1,in_id);
            
    }
 public java.sql.ResultSet searchRecords(String in_cod, String in_name, String in_bul,
                      String in_dan, String in_address, int in_id_nm, String in_tel,
                      String in_fax, String in_email, String in_web, int in_id_mol,
                       int in_id_oso) //ok
    {
        comprator = 5;
        this.cod = in_cod;
        this.name = in_name;
        this.bull = in_bul;
        this.dan = in_dan;
        this.address = in_address;
        this.id_nm = in_id_nm;
        this.tel = in_tel;
        this.fax = in_fax;
        this.email = in_email;
        this.web = in_web;
        this.id_mol = in_id_mol;
        this.id_oso = in_id_oso;
        this.flag = 0;
        
        
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
 public void setCstm(java.sql.CallableStatement cstm) //OK
    {
        this.cstm = cstm;
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
 public java.sql.Connection getConn() //OK
    {
        return conn;
    }
 public void setConn(java.sql.Connection conn) //OK
    {
        this.conn = conn;
    }
   public java.sql.ResultSet getRs() //OK
    {
        return rs;
    }
    public void setRs(java.sql.ResultSet rs) //OK
    {
        this.rs = rs;
    }
    
 public java.sql.ResultSet getTable()
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
 private void registerParameters() //OK - ima da se divyr6vat poleta
    {
         try
         {
            getCstm().setInt("comprator", getComprator()); // izbor na SQL zaqwka
            getCstm().setInt("in_id", getId());
            getCstm().setString("in_cod", getCod());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_bul",getBulstat());
            getCstm().setString("in_dan",getDanNomer());
            getCstm().setString("in_address",getAddress()); 
            getCstm().setInt("in_id_nm",getID_NM());
            getCstm().setString("in_tel",getTel());
            getCstm().setString("in_fax",getFax());
            getCstm().setString("in_email",getEmail());
            getCstm().setString("in_web",getWeb());
            getCstm().setInt("in_id_mol",getID_MOL());
            getCstm().setInt("in_id_oso",getID_OSO());
            getCstm().setInt("in_flag",getFlag());
            
            System.out.println("ot registerparameter");
        }
         catch(java.sql.SQLException sqle)
         {
             sqle.printStackTrace();
         }
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
 public void setId(int ID) //OK
    {
        this.id = ID;
    }
    public int getId() //OK
    {
        return id;
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
    public void setBulstat(String bul)
    {
        this.bull = bull;
    }
    public String getBulstat()
    {
        return bull;
    }
    public void setDanNomer(String dannomer)
    {
        this.dan = dannomer;
    }
    public String getDanNomer()
    {
        return dan;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }
    public String getAddress()
    {
        return address;
    }
    public void setID_NM(int nm)
    {
        this.id_nm = nm;
    }
    public int getID_NM()
    {
        return id_nm;
    }
    public void setTel(String tel)
    {
        this.tel = tel;
    }
    public String getTel()
    {
        return tel;
    }
    public void setFax(String fax)
    {
        this.fax = fax;
    }
    public String getFax()
    {
        return fax;
    }
    public void setEmail(String email)
    {
        this.email = email;
    }
    public String getEmail()
    {
        return email;
    }
    public void setWeb(String web)
    {
        this.web = web;
    }
    public String getWeb()
    {
        return web;
    }
    public void setID_MOL(int mol)
    {
        this.id_mol = mol;
    }
    public int getID_MOL()
    {
        return id_mol;
    }
    public void setID_OSO(int oso)
    {
        this.id_oso = oso;
    }
    public int getID_OSO()
    {
        return id_oso;
    }
    public void setFlag(int flag)
    {
        this.flag = flag;
    }
    public int getFlag()
    {
        return flag;
    }
}// end class
