package nom;


import imakante.com.*;

public class productDB extends dbObject 
{
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private java.sql.Connection conn;
   private int comprator;
   
    private int id_pm,id_n_group,id_ppp, id_pp,id_pf,id_pd,flag_pm;              //       \
    private int barcod_pm,max_pop_pm;                                                   //         >
    private String name_pm, sname_pm, fname_pm, cname_pm, cod1_pm, cod2_pm;             //        /
     private String expertsheet_pm ;                                                   //        /
    /** Creates a new instance of productDB */
     
    public productDB(java.sql.Connection conn, int flag) //-
    {
        super(conn);
        this.conn  = conn;
        this.flag_pm = flag;
        prepareCstm();
    }
 private void prepareCstm() // ok
    {
     try {
          setCstm(getConn().prepareCall("{call nom_procedure_product(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
        
         }
     catch(java.sql.SQLException sqle)
     {
         sqle.printStackTrace();
     }
    }
  public java.sql.ResultSet getRow(int in_id) // ok
    {
        comprator = 4;
        id_pm = in_id;
        try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
               id_pm = rs.getInt("id_pm") ;
               id_ppp = rs.getInt("id_ppp");
               id_pp  = rs.getInt("id_ppp");
               id_pf  = rs.getInt("id_pf");
               id_n_group = rs.getInt("id_n_group");
               id_pd = rs.getInt("id_pd");
               name_pm = rs.getString("name_pm");
               sname_pm = rs.getString("sname_pm");
               fname_pm = rs.getString("fname_pm");
               cname_pm = rs.getString("cname_pm");
               max_pop_pm = rs.getInt("max_pop_pm");
               flag_pm = rs.getInt("flag_pm");
               expertsheet_pm = rs.getString("expertsheet_pm");
               barcod_pm = rs.getInt("barcod_pm");
               cod1_pm = rs.getString("cod1_pm");
               cod2_pm = rs.getString("cod2_pm");
                
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      return rs;  
    }
  public void insertRow(int in_id_pm, int in_id_ppp, int in_id_pp, int in_id_pf, int in_id_n_group,
                        int in_id_pd, String in_name_pm, String in_sname_pm, String in_fname_pm,
                        String in_cname_pm,int in_max_pop_pm, int in_flag_pm, String in_expertsheet_pm,int in_barcod_pm,
                        String in_cod1_pm , String in_cod2_pm) // ok
                      
    {
        comprator = 1;
        
        this.id_pm = in_id_pm ;
        this.id_ppp = in_id_ppp;
        this.id_pp  = in_id_ppp;
        this.id_pf  = in_id_pf;
        this.id_n_group = in_id_n_group;
        this.id_pd = in_id_pd;
        this.name_pm = in_name_pm;
        this.sname_pm = in_sname_pm;
        this.fname_pm = in_fname_pm;
        this.cname_pm = in_cname_pm;
        this.max_pop_pm = in_max_pop_pm;
        this.flag_pm = in_flag_pm;
        this.expertsheet_pm = in_expertsheet_pm;
        this.barcod_pm = in_barcod_pm;
        this.cod1_pm = in_cod1_pm;
        this.cod2_pm = in_cod2_pm;
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
 public void updateRow(int in_id_pm, int in_id_ppp, int in_id_pp, int in_id_pf, int in_id_n_group,
                        int in_id_pd, String in_name_pm, String in_sname_pm, String in_fname_pm,
                        String in_cname_pm,int in_max_pop_pm, int in_flag_pm, String in_expertsheet_pm,int in_barcod_pm,
                        String in_cod1_pm , String in_cod2_pm) // ok
    {
        changeFlag(1,in_id_pm);
    
      
        insertRow( in_id_pm,  in_id_ppp,  in_id_pp,  in_id_pf,  in_id_n_group,
                   in_id_pd, in_name_pm, in_sname_pm, in_fname_pm,
                   in_cname_pm, in_max_pop_pm, in_flag_pm, in_expertsheet_pm,
                   in_barcod_pm, in_cod1_pm , in_cod2_pm) ;
      
        
    }
 private void changeFlag(int flag, int id) // ok 
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
 public void deleteRow(int in_id) // ok
    {
     // po princip trqbva da iztriem reda ot tablicata,  no po iziskvaneto da ne se triqt reove
     // ot tablicata, nie samo smenqme flaga 
        changeFlag(1,in_id);
            
    }
 public java.sql.ResultSet searchRecords(int in_id_pm, int in_id_ppp, int in_id_pp, int in_id_pf, int in_id_n_group,
                        int in_id_pd, String in_name_pm, String in_sname_pm, String in_fname_pm,
                        String in_cname_pm,int in_max_pop_pm, int in_flag_pm, String in_expertsheet_pm,int in_barcod_pm,
                        String in_cod1_pm , String in_cod2_pm) //- ima da se dovyr6va
    {
        comprator = 5;
        
      // ----------------------- da se dovur6i   
        
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
 public void setCstm(java.sql.CallableStatement cstm) // ok
    {
        this.cstm = cstm;
    }
  public java.sql.Statement getStm() // ok
    {
        return stmt;
    }
 public void setStm(java.sql.Statement stm) //ok
    {
        this.stmt = stm;
    }
 public java.sql.CallableStatement getCstm() //ok
    {
        return cstm;
    }
 public java.sql.Connection getConn() //ok
    {
        return conn;
    }
 public void setConn(java.sql.Connection conn) //ok
    {
        this.conn = conn;
    }
   public java.sql.ResultSet getRs() //ok
    {
        return rs;
    }
    public void setRs(java.sql.ResultSet rs) //ok
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
 
 

 
 private void registerParameters() //ok
    {
         try
         {
            getCstm().setInt("comprator", getComprator()); // izbor na SQL zaqwka
            getCstm().setInt("in_id_pm", getId_PM());
            getCstm().setInt("in_id_pp", getId_PP());
            getCstm().setInt("in_id_ppp", getId_PPP());
            getCstm().setInt("in_id_pf", getId_PF());
            getCstm().setInt("in_id_n_group", getId_Group());
            getCstm().setInt("in_id_pd", getId_PD());
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
  public int getMaxId() //ok
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
  public int getComprator() //ok
    {
        return comprator;
    }
    public void setComprator(int com) //ok
    {
        this.comprator = com;
    }
    public void close() //ok
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
    
  public void setId_PM(int ID) // ok
    {
        this.id_pm = ID;
    }
    public int getId_PM() // ok
    {
        return id_pm;
    }
     public void setId_PD(int ID) // ok
    {
        this.id_pd = ID;
    }
    public int getId_PD() // ok
    {
        return id_pd;
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
