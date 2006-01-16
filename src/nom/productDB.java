package nom;


import imakante.com.*;

public class productDB extends dbObject 
{
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private java.sql.Connection conn;
   private int comprator;
   
    private int id_pm,id_n_group,id_ppp, id_pp,id_pf,id_contragent,flag_pm;              //       \
    private int barcod_pm,max_pop_pm;                                                   //         >
    private String name_pm, sname_pm, fname_pm, cname_pm, cod1_pm, cod2_pm;             //        /
     private String expertsheet_pm ;                                                   //        /
    /** Creates a new instance of contragentDB */
     
    public productDB(java.sql.Connection conn, int flag) //-
    {
        super(conn);
        this.flag_pm = flag;
        prepareCstm();
    }
 private void prepareCstm() // ok
    {
     try {
          setCstm(getConn().prepareCall("{call nom_procedure_product(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
         }
     catch(java.sql.SQLException sqle)
     {
         sqle.printStackTrace();
     }
    }
  public java.sql.ResultSet getRow(int in_id) //-
    {
        comprator = 4;
        id_pm = in_id;
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
                       int in_id_oso) //-
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
                       int in_id_oso) //-
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
 private void changeFlag(int flag, int id) //- 
 {
     // smenqme flaga na opredelen red !!!
     comprator = 2;  // sqlska zaqwka koqto samo 6te smenq flaga
     int old_flag = this.flag_pm;
     this.flag_pm = flag;
     this.id_pm = id;
     try
     {
         registerParameters();
         cstm.execute(); 
     }
     catch(java.sql.SQLException sqle)
     {
         sqle.printStackTrace();
     }
     this.flag_pm = old_flag;
 }
 public void deleteRow(int in_id) //-
    {
     // po princip trqbva da iztriem reda ot tablicata,  no po iziskvaneto da ne se triqt reove
     // ot tablicata, nie samo smenqme flaga 
        changeFlag(1,in_id);
            
    }
 public java.sql.ResultSet searchRecords(int in_cod, String in_name, String in_bul,
                      String in_dan, String in_address, int in_id_nm, String in_tel,
                      String in_fax, String in_email, String in_web, int in_id_mol,
                       int in_id_oso) //-
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
 public void setCstm(java.sql.CallableStatement cstm) //-
    {
        this.cstm = cstm;
    }
  public java.sql.Statement getStm() //-
    {
        return stmt;
    }
 public void setStm(java.sql.Statement stm) //-
    {
        this.stmt = stm;
    }
 public java.sql.CallableStatement getCstm() //-
    {
        return cstm;
    }
 public java.sql.Connection getConn() //-
    {
        return conn;
    }
 public void setConn(java.sql.Connection conn) //-
    {
        this.conn = conn;
    }
   public java.sql.ResultSet getRs() //-
    {
        return rs;
    }
    public void setRs(java.sql.ResultSet rs) //-
    {
        this.rs = rs;
    }
    
 public java.sql.ResultSet getTable() // ok
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
 
 

 
 private void registerParameters() //-
    {
         try
         {
            getCstm().setInt("comprator", getComprator()); // izbor na SQL zaqwka
            getCstm().setInt("in_id_pm", getId_PM());
            getCstm().setInt("in_id_pp", getId_PP());
            getCstm().setInt("in_id_ppp", getId_PPP());
            getCstm().setInt("in_id_pf", getId_PF());
            getCstm().setInt("in_id_n_group", getId_Group());
            getCstm().setInt("in_id_contragent", getId_Contragent());
            getCstm().setInt("in_barcod_pm", getBarCod());
            getCstm().setInt("in_flag_pm", getFlag());
            getCstm().setInt("in_max_pop_pm", getMax_POP());
            getCstm().setString("in_name_pm", getNamePM());
            getCstm().setString("in_sname_pm", getSNamePM());
            getCstm().setString("in_fname_pm", getFNamePM());
            getCstm().setString("in_cname_pm", getCNamePM());
            getCstm().setString("in_cod1_pm", getCod1());
            getCstm().setString("in_cod2_pm", getCod2());
            getCstm().setString("in_expertsheet_pm", getExpertSheet());
            
            System.out.println("ot registerparameter");
        }
         catch(java.sql.SQLException sqle)
         {
             sqle.printStackTrace();
         }
    }
  public int getMaxId() //-
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
  public void setId_PM(int ID) // ok
    {
        this.id_pm = ID;
    }
    public int getId_PM() // ok
    {
        return id_pm;
    }
     public void setId_Contragent(int ID) // ok
    {
        this.id_contragent = ID;
    }
    public int getId_Contragent() // ok
    {
        return id_contragent;
    }
     public void setId_Group(int ID)  // ok
    {
        this.id_n_group = ID;
    }
    public int getId_Group()  // ok
    {
        return id_n_group;
    }
     public void setId_PP(int ID) // ok
    {
        this.id_pp = ID;
    }
    public int getId_PP()  // ok
    {
        return id_pp;
    }
     public void setId_PPP(int ID) // ok
    {
        this.id_ppp = ID;
    }
    public int getId_PPP() // ok
    {
        return id_ppp;
    }
     public void setId_PF(int ID)  // ok
    {
        this.id_pf = ID;
    }
    public int getId_PF() // ok
    {
        return id_pf;
    }
    public void setCod2(String COD) // ok
    {
        this.cod2_pm = COD;
    }
    public String getCod2()   // ok
    {
        return cod2_pm;
    } 
    public void setCod1(String COD)  // ok
    {
        this.cod1_pm = COD;
    }
    public String getCod1()  // ok
    {
        return cod1_pm;
    }
    public void setNamePM(String Name) // ok
    {
        this.name_pm = Name;
    }
    public String getNamePM() // ok
    {
        return name_pm;
    }
     public void setSNamePM(String Name)  // ok
    {
        this.sname_pm = Name;
    }
    public String getSNamePM()  // ok
    {
        return sname_pm;
    }
     public void setFNamePM(String Name) // ok
    {
        this.fname_pm = Name;
    }
    public String getFNamePM()  // ok
    {
        return fname_pm;
    }
     public void setCNamePM(String Name)  // ok
    {
        this.cname_pm = Name;
    }
    public String getCNamePM() // ok
    {
        return cname_pm;
    }
    public void setExpertSheet(String exp)  // ok  
   {
       this.expertsheet_pm = exp;
   }
   public String getExpertSheet() // ok
   {
       return expertsheet_pm;
   }
    public void setBarCod(int bar) // ok
   {
       this.barcod_pm = bar;
       
   }
   public int getBarCod() // ok
   {
       return barcod_pm;
   }
    public void setFlag(int f) // ok
   {
       this.flag_pm = f;
       
   }
   public int getFlag() // ok
   {
       return flag_pm;
   }
   public void setMax_POP(int max) // ok
   {
       this.max_pop_pm = max;
       
   }
   public int getMax_POP() // ok
   {
       return max_pop_pm;
   }
}// end class
