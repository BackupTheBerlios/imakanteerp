package nom;
/*
 *comprator = 0; get all table
 *comprator = 1; insert into table
 *comprator = 2; update table;
 *
 *comprator = 3; getDescription()
 *
 *comprator = 4; getRow()
 *comprator = 5; searchRecords()
 *
 *comprator = 6; getProdictFee()
 *
 *comprator = 7; getMaxId()
 *
 *comprator = 8; getProductPrice()
 *comprator = 9; setNewPrice()
 *comprator = 10; updateProductPrice()
 *
 *comprator = 11; getProductPromotionPrice() 
 *comprator = 12; setProductPromotionPrice()
 *comprator = 13; updateProductPromotionPrice()
 *
 *comprator = 14; setProdictFee()
 *comprator = 15; updateProdictFee()
 *
 *comprator = 16; getProductGroup();
 *
 *comprator = 17;  getProductContragent();
 *
 *comprator = 18; getMaxID product price
 *comprator = 19; getMaxID product promotion price
 *comprator = 20; getMaxID product fee
 *
 *comprator = 21; getMoney()
 *comprator = 22; getCurs()
 *comprator = 23; 
 *
 *comprator = 24; getShowContein()
 *
 *comprator = 25; getProductDescriptionColumn()
 *comprator = 26; getShowConteinCurs()
 *
 *comprator = 27; setProductDescriptionColumn()
 *comprator = 28; getMaxID product description
 *comprator = 29; updateProductDescription(Column)
 *
 *
 *comprator = 33 : checkFlag()
 *
 *comprator = 34 : updateIDProductConsigment()
 **/

import imakante.com.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
public class productDB extends dbObject 
{
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private java.sql.Connection conn;
   private int comprator;
   private int  indexConnOfId[] = null;
   private int  indexConnOfIdColumn[] = null;
   private int indexConnOfIdOnMoney[] = null;
   private String splitManey[] = null;
   private String splitGroup[] = null;
    private String splitColumn[] = null;
   
    private int id_pm,id_n_group,id_ppp, id_pp,id_pf,id_pd,flag_pm;            //       \
    private int barcod_pm;
    private int min_pm;                                          //        \
    private double max_pop_pm;
    private String name_pm, sname_pm, fname_pm, cname_pm, cod1_pm, cod2_pm;    //         >
    private String expertsheet_pm,code_pm ;                                            //        /
    private double price0_pp,price1_pp,price2_pp,price3_pp;                   //        /
    
    /** Creates a new instance of productDB */
     
    public productDB(java.sql.Connection conn, int flag) //-
    {
        super(conn);
        this.conn  = conn;
        this.flag_pm = flag;
        prepareCstm();
    }
 public void prepareCstm() // ok
    {
     try {
          setCstm(getConn().prepareCall("{call nom_procedure_product(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
        
         }
     catch(java.sql.SQLException sqle)
     {
         sqle.printStackTrace();
     }
    }
  public java.sql.ResultSet getRow(int in_id) // ok  comprator = 4;
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
               code_pm = rs.getString("code_pm");
                
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
                        String in_cname_pm,double in_max_pop_pm, int in_flag_pm, String in_expertsheet_pm,int in_barcod_pm,
                        String in_cod1_pm , String in_cod2_pm, int in_min_pm,String in_code_pm) // ok   comprator = 1;
                      
    {
        comprator = 1;
        
        this.id_pm = in_id_pm ;
        this.id_ppp = in_id_ppp;
        this.id_pp  = in_id_pp;
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
        this.min_pm = in_min_pm;
        this.code_pm = in_code_pm;
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
                        String in_cname_pm,double in_max_pop_pm, int in_flag_pm, String in_expertsheet_pm,int in_barcod_pm,
                        String in_cod1_pm , String in_cod2_pm,int in_min_pm,String in_code_pm) // ok
    {
        
        if(checkFlag(1,in_id_pm)==0)
        {
        changeFlag(1,in_id_pm);
    
       
        insertRow( in_id_pm,  in_id_ppp,  in_id_pp,  in_id_pf,  in_id_n_group,
                   in_id_pd, in_name_pm, in_sname_pm, in_fname_pm,
                   in_cname_pm, in_max_pop_pm, in_flag_pm, in_expertsheet_pm,
                   in_barcod_pm, in_cod1_pm , in_cod2_pm,in_min_pm,in_code_pm) ;
        }
        
    }
 private void changeFlag(int flag, int id) // ok  comprator = 2;
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
 private int checkFlag(int flag, int id) // ok  comprator = 2;
 {
     // smenqme flaga na opredelen red !!!
     comprator = 33;  // sqlska zaqwka koqto samo 6te proverqva flaga
     int newFlag=0;
     int old_flag = this.flag_pm;
     this.flag_pm = flag;
     int oldid = id_pm;
     this.id_pm = id;
     java.sql.ResultSet rs1;
      try
        {
            registerParameters();
            rs1 = getCstm().executeQuery();
           while(rs1.next())
           {
                newFlag = rs1.getInt("flag_pm");
           }
            
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
     this.flag_pm = old_flag;
     this.id_pm = oldid;
     return newFlag;
 }
 public void deleteRow(int in_id) // ok
    {
     // po princip trqbva da iztriem reda ot tablicata,  no po iziskvaneto da ne se triqt reove
     // ot tablicata, nie samo smenqme flaga 
        changeFlag(1,in_id);
            
    }
 public java.sql.ResultSet searchRecords(int in_id_pm, int in_id_ppp, int in_id_pp, int in_id_pf, int in_id_n_group,
                        int in_id_pd, String in_name_pm, String in_sname_pm, String in_fname_pm,
                        String in_cname_pm,double in_max_pop_pm, int in_flag_pm, String in_expertsheet_pm,int in_barcod_pm,
                        String in_cod1_pm , String in_cod2_pm,int in_min_pm,String in_code_pm) //- comprator = 5;
    {
        comprator = 5;
        
        this.id_pm = in_id_pm ;
        this.id_ppp = in_id_ppp;
        this.id_pp  = in_id_pp;
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
        this.min_pm = in_min_pm;
        this.code_pm = in_code_pm;
        
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
    
 public java.sql.ResultSet getTable() // ok  comprator = 0
    {
        
        this.comprator = 0;
        registerParameters();
        try{
            
            
            setRs(getCstm().executeQuery());
        }
        catch(java.sql.SQLException sqle)
        {
            System.out.println("error ot getTable()");
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        return rs;
    }
 
 

 
 public void registerParameters() //ok
    {
         try
         {
            getCstm().setInt("in_comprator", getComprator()); // izbor na SQL zaqwka
            getCstm().setInt("in_id_pm", getId_PM());
            getCstm().setInt("in_id_pp", getId_PP());
            getCstm().setInt("in_id_ppp", getId_PPP());
            getCstm().setInt("in_id_pf", getId_PF());
            getCstm().setInt("in_id_n_group", getId_Group());
            getCstm().setInt("in_id_pd", getId_PD());
            getCstm().setInt("in_barcod_pm", getBarCod());
             
            getCstm().setInt("in_flag_pm", getFlag());
            getCstm().setDouble("in_max_pop_pm", getMax_POP());
            getCstm().setInt("in_min_pm", getMinProduct());
            getCstm().setString("in_name_pm", getNamePM());
            getCstm().setString("in_sname_pm", getSNamePM());
            getCstm().setString("in_fname_pm", getFNamePM());
            getCstm().setString("in_cname_pm", getCNamePM());
            getCstm().setString("in_cod1_pm", getCod1());
            getCstm().setString("in_cod2_pm", getCod2());
            getCstm().setString("in_code_pm", getCodePM());
            getCstm().setString("in_expertsheet_pm", getExpertSheet());
            getCstm().setDouble("in_price0_pp",getDostPrice());
            getCstm().setDouble("in_price1_pp",getPrice1());
            getCstm().setDouble("in_price2_pp",getPrice2());
            getCstm().setDouble("in_price3_pp",getPrice3());
             
            
            System.out.println("ot registerparameter");
        }
         catch(java.sql.SQLException sqle)
         {
             sqle.printStackTrace();
             System.out.println(" error ot registerparameter");
         }
    }
  public int getMaxId() //ok  comprator = 7;
    {
        comprator = 7;
        int return_int=-1;
         try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
                return_int = rs.getInt("id_pm");
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
    public void setCodePM(String COD) // ok
    {
        this.code_pm = COD;
    }
    public String getCodePM()   // ok
    {
        return code_pm;
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
   public void setMax_POP(double max) // ok
   {
       this.max_pop_pm = max;
       
   }
   public double getMax_POP() // ok
   {
       return max_pop_pm;
   }
     public void setMinProduct(int min) // ok
   {
       this.min_pm = min;
       
   }
   public int getMinProduct() // ok
   {
       return min_pm;
   }
   
   public String[][] getDescription(int id) // Test   comprator = 3;
   {
       String des[][] = new String[3][2];
       int oldid_pd = id_pd;
       id_pd = id;
       comprator = 3;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
                des[0][0] = rs.getString("m1_pd");
                des[1][0] = rs.getString("m2_pd");
                des[2][0] = rs.getString("m3_pd");
                des[0][1] = rs.getString("v1_pd");
                des[1][1] = rs.getString("v2_pd");
                des[2][1] = rs.getString("v3_pd");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       id_pd = oldid_pd;
       return des;
   }
   public String[] getProdictFee(int id) // Test ?comprator = 6;
   {
       String fee[] = new String[3];
        int oldid_pf = id_pf;
       id_pf = id;
       comprator = 6;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
                fee[0] = String.valueOf(rs.getDouble("dds_pf"));
                fee[1] = String.valueOf(rs.getDouble("excise_pf"));
                fee[2] = String.valueOf(rs.getDouble("other_pf"));
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       id_pf = oldid_pf;
       
       return fee;
   }
   public String[] getProductPrice(int id)  // Test ?comprator = 8;
   {
       String price[] = new String[5];
       int oldid_pp = id_pp;
       id_pp = id;
        comprator = 8;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
                price[0] = String.valueOf(rs.getDouble("price0_pp"));
             
                price[1] = String.valueOf(rs.getDouble("price1_pp"));
               
                price[2] = String.valueOf(rs.getDouble("price2_pp"));
                
                price[3] = String.valueOf(rs.getDouble("price3_pp"));
                
                price[4] = String.valueOf(rs.getInt("id_sl_curs"));
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       id_pp = oldid_pp;
       
       return price;
   }
   public double getDostPrice()
   {
       return price0_pp;
   }
public void setDostPrice(double in)    
{
    this.price0_pp = in;
}

public double getPrice1()
{
    return price1_pp;
}

public double getPrice2()
   {
    return price2_pp;
}
public double getPrice3()
   {
    return price3_pp;
}
public void setPrice1(double in)
   {
    this.price1_pp = in;
}
public void setPrice2(double in)
   {
    this.price2_pp = in;
}
public void setPrice3(double in)
   {
    this.price3_pp = in;
}
public int setNewPrice(double price0, double price1, double price2, double price3,int id_curs) // Test ?comprator = 9;
   {
       double p0,p1,p2,p3;
       int oldid = id_pp;
       id_pp = id_curs;
       int newID = 0;
       price0_pp = price0;
       price1_pp = price1;
       price2_pp = price2;
       price3_pp = price3;
       
        comprator = 9;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      
       id_pp = oldid;
        comprator = 18;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
               newID = rs.getInt("id_pp");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       return newID;
   }
public void updateProductPrice(int id,double price0, double price1, double price2, double price3, int id_curs)  // Test ?comprator = 10;
   {
        double p0,p1,p2,p3;
       int oldid = id_pp;
       int oldid_pd = id_pd;
       id_pd = id_curs;
       id_pp = id;
       price0_pp = price0;
       price1_pp = price1;
       price2_pp = price2;
       price3_pp = price3;
       comprator = 10;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      
       id_pp = oldid;
       id_pd = oldid_pd;
   }
   
public String[] getProductPromotionPrice(int id)  // Test ?comprator = 11;
   {
       String promo_price[] = new String[3];
        int oldid_ppp = id_ppp;
       id_ppp = id;
       comprator = 11;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
                promo_price[0] = String.valueOf(rs.getDouble("price_ppp"));
                promo_price[1] = String.valueOf(rs.getDate("datestart_ppp"));
                promo_price[2] = String.valueOf(rs.getDate("datestop_ppp"));
                
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       id_ppp = oldid_ppp;
       
       return promo_price;
   }
public int setProductPromotionPrice(double promoprice, String start, String stop)  // Test ?comprator = 12;
   {
      int newID = 0;
       String oldname = name_pm;
       String oldsname = sname_pm;
       double oldprice0_pp = price0_pp;
       price0_pp = promoprice;
       name_pm = start;
       sname_pm = stop;
       comprator = 12;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
      
       comprator = 19;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
               newID = rs.getInt("id_ppp");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       name_pm = oldname;
       sname_pm = oldsname;
       price0_pp = oldprice0_pp;
       return newID;
   }

public void updateProductPromotionPrice(int id,double promoprice, String start, String stop)  // Test ?comprator = 13;
   {
      int oldid = id_ppp;
      id_ppp = id;
       String oldname = name_pm;
       String oldsname = sname_pm;
       double oldprice0_pp = price0_pp;
       price0_pp = promoprice;
       name_pm = start;
       sname_pm = stop;
       comprator = 13;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
      
       name_pm = oldname;
       sname_pm = oldsname;
       price0_pp = oldprice0_pp;
       id_ppp = oldid;
     
   }

public int setProductFee(double dds, double akcizi, double other)  // Test ?comprator = 14;
   {
      int newID = 0;
      double oldprice0_pp = price0_pp;
      double oldprice1_pp = price1_pp;
      double oldprice2_pp = price2_pp;
       price0_pp = dds;
       price1_pp = akcizi;
       price2_pp = other;
      comprator = 14;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
      
       comprator = 20 ;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
               newID = rs.getInt("id_pf");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       price0_pp = oldprice0_pp;
       price1_pp = oldprice1_pp;
       price2_pp = oldprice2_pp;
       
      
       return newID;
     
   }

public void  updateProductFee(int id,double dds, double akcizi, double other)  // Test ?comprator = 15;
   {
      int oldid = id_pf;
      double oldprice0_pp = price0_pp;
      double oldprice1_pp = price1_pp;
      double oldprice2_pp = price2_pp;
       price0_pp = dds;
       price1_pp = akcizi;
       price2_pp = other;
       id_pf = id;
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
       
      
      
       price0_pp = oldprice0_pp;
       price1_pp = oldprice1_pp;
       price2_pp = oldprice2_pp;
       id_pf = oldid;
      
      
     
   }


public String[] getProductGroup(int group) // Test  da se opredeli kakvo da se pokazva  //comprator = 16;
   {
        java.sql.ResultSet oldRs = rs;
        ArrayList in = new ArrayList();
        Iterator it = null;
        HashMap key_Group = new HashMap();
         comprator = 16;
         int oldid_pf = id_pf;
         id_pf = group;
        int i = 0;
       
         try              
        {
             registerParameters();
            rs = cstm.executeQuery();
                        
           
            while(rs.next())
            {
               key_Group.put(new Integer(rs.getInt("id_n_group")),new String(rs.getString("name_n_group")));  
               in.add(new Integer(rs.getInt(1)));
               i++;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        rs = oldRs;
        indexConnOfId = new int[i];
        it = in.iterator();
        splitGroup = new String[i]; // new
        i=0;
        while(it.hasNext())
        {
            indexConnOfId[i] =(Integer) it.next();
            splitGroup[i] = (String) key_Group.get(indexConnOfId[i]); 
            i++;
        }
       
        
        id_pf = oldid_pf;
        return splitGroup;
    }
 public int[] getIndexConnOfId()
  {
      return indexConnOfId;
  }
  public int[] getIndexConnOfIdMoney()
  {
      return indexConnOfIdOnMoney;
  }
 
public String getProductContragent(int in_id_pm) // Test ?comprator = 17;
   {
       String contragent = new String();
       int oldid_pm = id_pm; 
       id_pm = in_id_pm;
       comprator = 17;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
                contragent = rs.getString("name_n_contragent");
                
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       
       id_pm = oldid_pm;
       return contragent;
       
   }
public java.sql.ResultSet getShowContein() // Test ?comprator =24;
   {
       java.sql.ResultSet rs1=null;
      
      
        comprator = 24 ;
       try
        {
            registerParameters();
            rs1 = cstm.executeQuery();
            
            
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
    
     return rs1;
       
   }
public String[] getMoney() // test  comprator = 21;
{
     java.sql.ResultSet oldRs = rs;
     ArrayList in = new ArrayList();
     Iterator it = null;
     HashMap key_Group = new HashMap();
     comprator = 21;
        int i = 0;
       
         try              
        {
             registerParameters();
            rs = cstm.executeQuery();
                        
           
            while(rs.next())
            {
               key_Group.put(new Integer(rs.getInt("id_n_money")),new String(rs.getString("cod_lat_n_money")));  
               in.add(new Integer(rs.getInt(1)));
               i++;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        rs = oldRs;
        indexConnOfIdOnMoney = new int[i];
        it = in.iterator();
        splitManey = new String[i]; 
        i=0;
        while(it.hasNext())
        {
            indexConnOfIdOnMoney[i] =(Integer) it.next();
            splitManey[i] = (String) key_Group.get(indexConnOfIdOnMoney[i]); 
            i++;
        }
       
        
        
        return splitManey;
}

public String[] getCurs(int id_curs) // test  comprator = 22;
{
    String newCurs[] = new String[3];
    int oldid = id_pd;
    id_pd = id_curs;
    comprator = 22;
    try
       {
        registerParameters();
        rs = cstm.executeQuery();
        while(rs.next())
         {
            newCurs[0] =String.valueOf( rs.getInt("date_time_sl_curs"));
            newCurs[1] =String.valueOf( rs.getInt("id_n_money"));
            newCurs[2] =String.valueOf( rs.getDouble("value_sl_curs"));
          
         }
       }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        } 
    id_pd = oldid;
    return newCurs;
}


public String[] getProductDescriptionColumn() // Test  da se opredeli kakvo da se pokazva  //comprator = 25;
   {
        java.sql.ResultSet oldRs = rs;
        ArrayList in = new ArrayList();
        Iterator it = null;
        HashMap key_Group = new HashMap();
        comprator = 25;
        int i = 0;
       
         try              
        {
             registerParameters();
            rs = cstm.executeQuery();
                        
           
            while(rs.next())
            {
               key_Group.put(new Integer(rs.getInt("id_pam")),new String(rs.getString("name_pam")));  
               in.add(new Integer(rs.getInt(1)));
               i++;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        rs = oldRs;
        indexConnOfIdColumn = new int[i];
        it = in.iterator();
        splitColumn = new String[i]; 
        i=0;
        while(it.hasNext())
        {
            indexConnOfIdColumn[i] =(Integer) it.next();
            splitColumn[i] = (String) key_Group.get(indexConnOfIdColumn[i]); 
            i++;
        }
       
        
        
        return splitColumn;
    }
 public int[] getIndexConnOfIdColumn()
  {
      return indexConnOfIdColumn;
  }
public java.sql.ResultSet getShowConteinCurs() //test //comprator = 26;
{
     this.comprator = 26;
     java.sql.ResultSet newrs = null;
        try{
            registerParameters();
            newrs = getCstm().executeQuery();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getShowConteinCurs()");
        return newrs;
    
}
public int setProductDescriptionColumn(int v1,int v2,int v3 ,int m1 ,int m2 , int m3) //test //comprator = 27;comprator = 28;   v- values; m -measure
{
    int newID=0;
    int oldid_pm,oldid_pp,oldid_ppp,oldid_pf,oldid_n_group,oldid_pd;
    
    comprator = 27;
    oldid_pm = id_pm;
    oldid_pp = id_pp;
    oldid_ppp = id_ppp;
    oldid_pf = id_pf;
    oldid_n_group= id_n_group;
    oldid_pd = id_pd;
    id_pm = v1;
    id_pp = v2;
    id_ppp = v3;
    id_pf = m1;
    id_pd = m2;
    id_n_group = m3;
    
    try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
      
       comprator = 28;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
               newID = rs.getInt("id_pd");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      
    id_pm = oldid_pm;
    id_pp = oldid_pp;
    id_ppp = oldid_ppp;
    id_pf = oldid_pf;
    id_pd = oldid_pd;
    id_n_group = oldid_n_group;
    return newID;
   
}
public void updateProductDescriprionColumn(int in_id_pd,int v1,int v2,int v3 ,int m1 ,int m2 , int m3) //test //comprator = 29;   v- values; m -measure
{
    
    int oldid_pm,oldid_pp,oldid_ppp,oldid_pf,oldid_n_group,oldid_pd;
   int oldbarcod_pm;
    comprator = 29;
    oldid_pm = id_pm;
    oldid_pp = id_pp;
    oldid_ppp = id_ppp;
    oldid_pf = id_pf;
    oldid_n_group= id_n_group;
    oldid_pd = id_pd;
    oldbarcod_pm = barcod_pm;
    id_pd = in_id_pd;
    
    id_pm = v1;
    id_pp = v2;
    id_ppp = v3;
    id_pf = m1;
    barcod_pm = m2;
    id_n_group = m3;
    
    try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
      
    id_pm = oldid_pm;
    id_pp = oldid_pp;
    id_ppp = oldid_ppp;
    id_pf = oldid_pf;
    id_pd = oldid_pd;
    id_n_group = oldid_n_group;
    barcod_pm = oldbarcod_pm;
    
   
}
public int getContragentID(int in_id_pm, int in_flag) //test //comprator = 30;
{
    int oldid_pm = id_pm;
    int oldflag = flag_pm;
    id_pm = in_id_pm;
    flag_pm = in_flag;
    int newID = 0;
    comprator = 30 ;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
               newID = rs.getInt("id_contragent");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      id_pm = oldid_pm;
       
      
       return newID;
}
public void setIDProductContragent(int in_id_pm,int in_id_contragent, int in_flag) //test //comprator = 31;
{
    int oldid_pm = id_pm;
    int oldid_contragent = id_n_group;
    int oldflag = flag_pm;
    flag_pm = in_flag;
    id_pm = in_id_pm;
    id_n_group = in_id_contragent;
    comprator = 31;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
   id_pm = oldid_pm;
   id_n_group = oldid_contragent;
   flag_pm = oldflag;   
}
public void updateIDProductContragent(int in_id_pm,int in_id_contragent,int in_flag) //test //comprator = 32;
{
    int oldid_pm = id_pm;
    int oldid_contragent = id_n_group;
    int oldflag = flag_pm;
    flag_pm = in_flag;
    id_pm = in_id_pm;
    id_n_group = in_id_contragent;
    comprator = 32;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
   id_pm = oldid_pm;
   id_n_group = oldid_contragent;
   flag_pm = oldflag;    
}
public void updateIDProductConsigment(int in_id_pm_new,int in_id_pm_old) //test //comprator = 34;
{
    int oldid_pm = id_pm;
    int oldId_pp = id_pp;
    id_pp = in_id_pm_old;
    id_pm = in_id_pm_new;
   
    comprator = 34;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
   id_pm = oldid_pm;
   id_pp = oldId_pp;  
}
public void setNewConsigment(int in_id_pm)
{
    int oldid_pm = id_pm;
    comprator = 35;
      try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
   id_pm = oldid_pm; 
}
}// end class
