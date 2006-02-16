package nom;


import imakante.com.*;
import java.util.*;

public class contragentDB extends dbObject 
{
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private java.sql.Connection conn;
   private int comprator;
   
   private int cod,id,id_nm,id_mol,id_oso,flag;
   private String name,bull,dan,address,tel,fax,email,web;
   
    /** Creates a new instance of contragentDB */
    public contragentDB(java.sql.Connection conn, int flag) //ok
    {
        super(conn);
        this.flag = flag;
        prepareCstm();
    }
 public void prepareCstm() //ok
    {
     try {
          setCstm(getConn().prepareCall("{call nom_procedure_contragent(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
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
                cod = rs.getInt("code");
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
  public void insertRow(int in_cod, String in_name, String in_bul,
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
       // this.flag = 0;
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
 public void updateRow(int in_id, int in_cod, String in_name, String in_bul,
                      String in_dan, String in_address, int in_id_nm, String in_tel,
                      String in_fax, String in_email, String in_web, int in_id_mol,
                       int in_id_oso) // ok
    {
        changeFlag(1,in_id);
     // po princip trqbva da izpolzvame comprator = 2, no nie defakto nqma da redaktirame redove,
     // a 6te dobavim nov, kato promenim flaga na stariq zapis ot 0 na 1, a na noviq zapis s flag 0  
        comprator = 1;   // ---> comprator: 1.INSERT INTO <tablename>  ... ;2.UPDATE <table name> ... <---- ;
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
     // smenqme flaga na opredelen red !!!
     comprator = 2;  // sqlska zaqwka koqto samo 6te smenq flaga
     int old_flag = this.flag;
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
     this.flag = old_flag;
 }
 public void deleteRow(int in_id) // ok
    {
     // po princip trqbva da iztriem reda ot tablicata,  no po iziskvaneto da ne se triqt reove
     // ot tablicata, nie samo smenqme flaga 
        changeFlag(1,in_id);
            
    }
 public java.sql.ResultSet searchRecords(int in_cod, String in_name, String in_bul,
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
        //this.flag = 0;
        
        
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
    
 public java.sql.ResultSet getTable() //ok
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
 public String getAddressName(int id_nm) //ok izvli4ane na naselenoto mqsto sprqmo id_nm
 {
     String adres = new String("");
     this.id_nm = id_nm;
     this.comprator = 10;           // SQLska zaqvka za izvli4ane na naselenoto mqsto v zavisimost id_nm
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(rs.next())
            {
                adres = rs.getString(1);
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot contragentDB.getAddress()");
        return adres;   
 }
 public java.sql.ResultSet getTablesAddressName(String nm) // izvli4ane na naseleneto mqsto, oblasta, stranata
 {
     this.comprator = 11;
     String adres = address;
     this.address = nm;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot contragentDB.getTablesAddressName()");
        address = adres;
        return rs;
 }
 public java.sql.ResultSet getTablesWithNames(String nam) // izvli4ane na imenata - ime , prezime familiq, egn ...
 {
     this.comprator = 12; 
     String oldName = name;
     this.name = nam;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot contragentDB.getTablesWithNames()");
        name = oldName;
        return rs;
     
 }
 public String getNameWithID(int id_nam,boolean mol_oso) //ok izvli4ane na imenata na MOL
 {
     String nam = new String("");
     if(mol_oso) // ako e true izvli4ame stoinost za MOL
     {
          this.id_mol = id_nam;
          this.id_oso = -1;
     }
     else // ako e fause izvli4ame stoinost za OSO;
     {
         this.id_oso = id_nam;
         this.id_mol = -1;
     }
    
     this.comprator = 13;          
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(rs.next())
            {
                nam = rs.getString("name_ls_n_person");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot contragentDB.getNameWithID()");
        return nam;   
 }
 public void registerParameters() //ok
    {
         try
         {
            getCstm().setInt("comprator", getComprator()); // izbor na SQL zaqwka
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_cod", getCod());
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
  public int getComprator() 
    {
        return comprator;
    }
    public void setComprator(int com) 
    {
        this.comprator = com;
    }
    public void close() 
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
 public void setId(int ID) 
    {
        this.id = ID;
    }
    public int getId() 
    {
        return id;
    }
  public void setCod(int COD) 
    {
        this.cod = COD;
    }
    public int getCod() // was String
    {
        return cod;
    }
    public void setName(String Name) 
    {
        this.name = Name;
    }
    public String getName() 
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
    public int getMaxCod() // vzemane na maxCod
    {
     int maxcod=-1;
     this.comprator = 14;          
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(rs.next())
            {
                maxcod = rs.getInt("code");
                
            }
        }
        catch(Exception sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot contragentDB.getMaxCod()");
        return maxcod;
    }
    
 public void updateIDProductContragent(int in_id_contragent_old,int in_id_contragent_new ,int in_flag) //test //comprator = 15;
{
    ArrayList arrayID = getIDProductContragent(in_id_contragent_old,0) ;
    setIDProductContragent(arrayID,in_id_contragent_new,0);
    
     
   int oldIn_od = id;
   id = in_id_contragent_old;
   int oldIn_flag = flag;
   flag = in_flag;
   comprator = 15;
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
  private void setIDProductContragent(ArrayList id_pm,int in_id_contragent_new,int in_flag) //test //comprator = 16;
{
   int oldIn_od = id;
    int oldIn_flag = flag;
    int oldId_in_OSO = id_oso;
   id = in_id_contragent_new;
  
   flag = in_flag;
   comprator = 16;
   ArrayList arrayID = id_pm;
   Iterator it = id_pm.iterator();
      try
        { 
          while(it.hasNext())
            {
               registerParameters();
               id_oso = (Integer)it.next();
               cstm.execute();
                
            }
            
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
    
}
 private ArrayList getIDProductContragent(int in_id_contragent_old, int in_flag) //test //comprator = 17;
{
   ArrayList arrayIdOnProduct=new ArrayList();
   int oldIn_flag = flag;
   flag = in_flag;
   int oldIn_od = id;
   id = in_id_contragent_old;
   comprator = 17;
   java.sql.ResultSet rs1= null;
      try
        {
            registerParameters();
            rs1 = getCstm().executeQuery();
            while(rs1.next())
            {
               arrayIdOnProduct.add(new Integer(rs1.getInt("id_pm")));
       
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
     
   
   return arrayIdOnProduct; 
}
}// end class
