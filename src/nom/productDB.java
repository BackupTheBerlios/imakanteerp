package nom;
/*
 *setComprator(0); get all table
 *setComprator(1); insert into table
 *setComprator(2); update table;
 *
 *setComprator(3); getDescription()
 *
 *setComprator(4); getRow()
 *setComprator(5); searchRecords()
 *
 *setComprator(6); getProdictFee()
 *
 *setComprator(7); getMaxId()
 *
 *setComprator(8); getProductPrice()
 *setComprator(9); setNewPrice()
 *setComprator(10); updateProductPrice()
 *
 *setComprator(11); getProductPromotionPrice()
 *setComprator(12); setProductPromotionPrice()
 *setComprator(13); updateProductPromotionPrice()
 *
 *setComprator(14); setProdictFee()
 *setComprator(15); updateProdictFee()
 *
 *setComprator(16); getProductGroup();
 *
 *setComprator(17);  getProductContragent();
 *
 *setComprator(18); getMaxID product price
 *setComprator(19); getMaxID product promotion price
 *setComprator(20); getMaxID product fee
 *
 *setComprator(21); getMoney()
 *setComprator(22); getCurs()
 *setComprator(23);
 *
 *setComprator(24); getShowContein()
 *
 *setComprator(25); getProductDescriptionColumn()
 *setComprator(26); getShowConteinCurs()
 *
 *setComprator(27); setProductDescriptionColumn()
 *setComprator(28); getMaxID product description
 *setComprator(29); updateProductDescription(Column)
 *setComprator(30) : getContragentID()
 *setComprator(31) : setIDProductContragent()
 *setComprator(32) : updateIDProductContragent()
 *setComprator(33) : checkFlag()
 *
 *setComprator(34) : updateIDProductConsigment()
 *setComprator(35) : setNewConsigment()
 *setComprator(36) : getConsigmentFromIdPM()
 *setComprator(37) : getPriceIDs()
 *setComprator(38) : insertConsigment() : setComprator(40) : maxId 
 *setComprator(39) : updateConsigment()
 
 *setComprator(41) :deleteConsigment()
 *setComprator(42) :
 *setComprator(43) :
 *setComprator(44) :
 *setComprator(45) :
 *setComprator(46) :
 *setComprator(47) :
 *
 *
 *
 *
 *
 *
 *
 **/

import java.util.*;

public class productDB extends imakante.com.dbObject {
    private java.sql.Connection conn;
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
    
    public productDB(java.sql.Connection conn, int flag) {
        super(conn);
        this.conn  = conn;
        this.flag_pm = flag;
        prepareCstm();
    }
    
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_product(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getRow(int in_id) {
        setComprator(4);
        id_pm = in_id;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                id_pm = getRs().getInt("id_pm") ;
                id_ppp = getRs().getInt("id_ppp");
                id_pp  = getRs().getInt("id_ppp");
                id_pf  = getRs().getInt("id_pf");
                id_n_group = getRs().getInt("id_n_group");
                id_pd = getRs().getInt("id_pd");
                name_pm = getRs().getString("name_pm");
                sname_pm = getRs().getString("sname_pm");
                fname_pm = getRs().getString("fname_pm");
                cname_pm = getRs().getString("cname_pm");
                max_pop_pm = getRs().getInt("max_pop_pm");
                flag_pm = getRs().getInt("flag_pm");
                expertsheet_pm = getRs().getString("expertsheet_pm");
                barcod_pm = getRs().getInt("barcod_pm");
                cod1_pm = getRs().getString("cod1_pm");
                cod2_pm = getRs().getString("cod2_pm");
                code_pm = getRs().getString("code_pm");
                
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return getRs();
    }
    public void insertRow(int in_id_pm, int in_id_ppp, int in_id_pp, int in_id_pf, int in_id_n_group,
            int in_id_pd, String in_name_pm, String in_sname_pm, String in_fname_pm,
            String in_cname_pm,double in_max_pop_pm, int in_flag_pm, String in_expertsheet_pm,int in_barcod_pm,
            String in_cod1_pm , String in_cod2_pm, int in_min_pm,String in_code_pm) // ok   setComprator(1;
            
    {
        setComprator(1);
        
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
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
    }
    public void updateRow(int in_id_pm, int in_id_ppp, int in_id_pp, int in_id_pf, int in_id_n_group,
            int in_id_pd, String in_name_pm, String in_sname_pm, String in_fname_pm,
            String in_cname_pm,double in_max_pop_pm, int in_flag_pm, String in_expertsheet_pm,int in_barcod_pm,
            String in_cod1_pm , String in_cod2_pm,int in_min_pm,String in_code_pm) // ok
    {
        
        if(checkFlag(1,in_id_pm)==0) {
            changeFlag(1,in_id_pm);
            
            
            insertRow( in_id_pm,  in_id_ppp,  in_id_pp,  in_id_pf,  in_id_n_group,
                    in_id_pd, in_name_pm, in_sname_pm, in_fname_pm,
                    in_cname_pm, in_max_pop_pm, in_flag_pm, in_expertsheet_pm,
                    in_barcod_pm, in_cod1_pm , in_cod2_pm,in_min_pm,in_code_pm) ;
        }
        
    }
    private void changeFlag(int flag, int id) // ok  setComprator(2;
    {
        // smenqme flaga na opredelen red !!!
        setComprator(2);  // sqlska zaqwka koqto samo 6te smenq flaga
        int old_flag = this.flag_pm;
        this.flag_pm = flag;
        this.id_pm = id;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        this.flag_pm = old_flag;
    }
    private int checkFlag(int flag, int id) // ok  setComprator(2;
    {
        // smenqme flaga na opredelen red !!!
        setComprator(33);  // sqlska zaqwka koqto samo 6te proverqva flaga
        int newFlag=0;
        int old_flag = this.flag_pm;
        this.flag_pm = flag;
        int oldid = id_pm;
        this.id_pm = id;
        java.sql.ResultSet rs1;
        try {
            registerParameters();
            rs1 = getCstm().executeQuery();
            while(rs1.next()) {
                newFlag = rs1.getInt("flag_pm");
            }
            
        } catch(java.sql.SQLException sqle) {
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
            String in_cod1_pm , String in_cod2_pm,int in_min_pm,String in_code_pm) //- setComprator(5;
    {
        setComprator(5);
        
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
        
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return getRs();
    }
    
    public java.sql.ResultSet getTable() // ok  setComprator(0
    {
        
        this.setComprator(0);
        registerParameters();
        try{
            
            
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) {
            System.out.println("error ot getTable()");
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        return getRs();
    }
    
    
    public void registerParameters() {
        try {
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
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
            System.out.println(" error ot registerparameter");
        }
    }
    public int getMaxId() //ok  setComprator(7;
    {
        setComprator(7);
        int return_int=-1;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                return_int = getRs().getInt("id_pm");
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return return_int;
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
    
    public String[][] getDescription(int id) // Test   setComprator(3;
    {
        String des[][] = new String[3][2];
        int oldid_pd = id_pd;
        id_pd = id;
        setComprator(3);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                des[0][0] = getRs().getString("m1_pd");
                des[1][0] = getRs().getString("m2_pd");
                des[2][0] = getRs().getString("m3_pd");
                des[0][1] = getRs().getString("v1_pd");
                des[1][1] = getRs().getString("v2_pd");
                des[2][1] = getRs().getString("v3_pd");
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pd = oldid_pd;
        return des;
    }
    public String[] getProdictFee(int id) // Test ?setComprator(6;
    {
        String fee[] = new String[3];
        int oldid_pf = id_pf;
        id_pf = id;
        setComprator(6);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                fee[0] = String.valueOf(getRs().getDouble("dds_pf"));
                fee[1] = String.valueOf(getRs().getDouble("excise_pf"));
                fee[2] = String.valueOf(getRs().getDouble("other_pf"));
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pf = oldid_pf;
        
        return fee;
    }
    public String[] getProductPrice(int id)  // Test ?setComprator(8;
    {
        String price[] = new String[5];
        int oldid_pp = id_pp;
        id_pp = id;
        setComprator(8);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                price[0] = String.valueOf(getRs().getDouble("price0_pp"));
                
                price[1] = String.valueOf(getRs().getDouble("price1_pp"));
                
                price[2] = String.valueOf(getRs().getDouble("price2_pp"));
                
                price[3] = String.valueOf(getRs().getDouble("price3_pp"));
                
                price[4] = String.valueOf(getRs().getInt("id_sl_curs"));
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pp = oldid_pp;
        
        return price;
    }
    public double getDostPrice() {
        return price0_pp;
    }
    public void setDostPrice(double in) {
        this.price0_pp = in;
    }
    
    public double getPrice1() {
        return price1_pp;
    }
    
    public double getPrice2() {
        return price2_pp;
    }
    public double getPrice3() {
        return price3_pp;
    }
    public void setPrice1(double in) {
        this.price1_pp = in;
    }
    public void setPrice2(double in) {
        this.price2_pp = in;
    }
    public void setPrice3(double in) {
        this.price3_pp = in;
    }
    public int setNewPrice(double price0, double price1, double price2, double price3,int id_curs) // Test ?setComprator(9;
    {
        double p0,p1,p2,p3;
        int oldid = id_pp;
        id_pp = id_curs;
        int newID = 0;
        price0_pp = price0;
        price1_pp = price1;
        price2_pp = price2;
        price3_pp = price3;
        
        setComprator(9);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pp = oldid;
        setComprator(18);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                newID = getRs().getInt("id_pp");
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return newID;
    }
    public void updateProductPrice(int id,double price0, double price1, double price2, double price3, int id_curs)  // Test ?setComprator(10;
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
        setComprator(10);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pp = oldid;
        id_pd = oldid_pd;
    }
    
    public String[] getProductPromotionPrice(int id)  // Test ?setComprator(11;
    {
        String promo_price[] = new String[3];
        int oldid_ppp = id_ppp;
        id_ppp = id;
        setComprator(11);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                promo_price[0] = String.valueOf(getRs().getDouble("price_ppp"));
                promo_price[1] = String.valueOf(getRs().getDate("datestart_ppp"));
                promo_price[2] = String.valueOf(getRs().getDate("datestop_ppp"));
                
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_ppp = oldid_ppp;
        
        return promo_price;
    }
    public int setProductPromotionPrice(double promoprice, String start, String stop)  // Test ?setComprator(12;
    {
        int newID = 0;
        String oldname = name_pm;
        String oldsname = sname_pm;
        double oldprice0_pp = price0_pp;
        price0_pp = promoprice;
        name_pm = start;
        sname_pm = stop;
        setComprator(12);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
        setComprator(19);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                newID = getRs().getInt("id_ppp");
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        name_pm = oldname;
        sname_pm = oldsname;
        price0_pp = oldprice0_pp;
        return newID;
    }
    
    public void updateProductPromotionPrice(int id,double promoprice, String start, String stop)  // Test ?setComprator(13;
    {
        int oldid = id_ppp;
        id_ppp = id;
        String oldname = name_pm;
        String oldsname = sname_pm;
        double oldprice0_pp = price0_pp;
        price0_pp = promoprice;
        name_pm = start;
        sname_pm = stop;
        setComprator(13);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
        name_pm = oldname;
        sname_pm = oldsname;
        price0_pp = oldprice0_pp;
        id_ppp = oldid;
        
    }
    
    public int setProductFee(double dds, double akcizi, double other)  // Test ?setComprator(14;
    {
        int newID = 0;
        double oldprice0_pp = price0_pp;
        double oldprice1_pp = price1_pp;
        double oldprice2_pp = price2_pp;
        price0_pp = dds;
        price1_pp = akcizi;
        price2_pp = other;
        setComprator(14);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
        setComprator(20);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                newID = getRs().getInt("id_pf");
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        price0_pp = oldprice0_pp;
        price1_pp = oldprice1_pp;
        price2_pp = oldprice2_pp;
        
        
        return newID;
        
    }
    
    public void  updateProductFee(int id,double dds, double akcizi, double other)  // Test ?setComprator(15;
    {
        int oldid = id_pf;
        double oldprice0_pp = price0_pp;
        double oldprice1_pp = price1_pp;
        double oldprice2_pp = price2_pp;
        price0_pp = dds;
        price1_pp = akcizi;
        price2_pp = other;
        id_pf = id;
        setComprator(15);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
        
        price0_pp = oldprice0_pp;
        price1_pp = oldprice1_pp;
        price2_pp = oldprice2_pp;
        id_pf = oldid;
        
        
        
    }
    
    
    public String[] getProductGroup(int group) // Test  da se opredeli kakvo da se pokazva  //setComprator(16;
    {
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap key_Group = new java.util.HashMap();
        setComprator(16);
        int oldid_pf = id_pf;
        id_pf = group;
        int i = 0;
        
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            
            while(getRs().next()) {
                key_Group.put(new Integer(getRs().getInt("id_n_group")),new String(getRs().getString("name_n_group")));
                in.add(new Integer(getRs().getInt(1)));
                i++;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        setRs(oldRs);
        indexConnOfId = new int[i];
        it = in.iterator();
        splitGroup = new String[i]; // new
        i=0;
        while(it.hasNext()) {
            indexConnOfId[i] =(Integer) it.next();
            splitGroup[i] = (String) key_Group.get(indexConnOfId[i]);
            i++;
        }
        
        
        id_pf = oldid_pf;
        return splitGroup;
    }
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
    public int[] getIndexConnOfIdMoney() {
        return indexConnOfIdOnMoney;
    }
    
    public String getProductContragent(int in_id_pm) // Test ?setComprator(17;
    {
        String contragent = new String();
        int oldid_pm = id_pm;
        id_pm = in_id_pm;
        setComprator(17);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                contragent = getRs().getString("name_n_contragent");
                
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
        id_pm = oldid_pm;
        return contragent;
        
    }
    public java.sql.ResultSet getShowContein() // Test ?comprator =24;
    {
        java.sql.ResultSet rs1=null;
        
        
        setComprator(24);
        try {
            registerParameters();
            rs1 = getCstm().executeQuery();
            
            
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
        return rs1;
        
    }
    public String[] getMoney() // test  setComprator(21;
    {
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap key_Group = new java.util.HashMap();
        setComprator(21);
        int i = 0;
        
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            
            while(getRs().next()) {
                key_Group.put(new Integer(getRs().getInt("id_n_money")), new String(getRs().getString("cod_lat_n_money")));
                in.add(new Integer(getRs().getInt(1)));
                i++;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        setRs(oldRs);
        indexConnOfIdOnMoney = new int[i];
        it = in.iterator();
        splitManey = new String[i];
        i=0;
        while(it.hasNext()) {
            indexConnOfIdOnMoney[i] =(Integer) it.next();
            splitManey[i] = (String) key_Group.get(indexConnOfIdOnMoney[i]);
            i++;
        }
        
        
        
        return splitManey;
    }
    
    public String[] getCurs(int id_curs) // test  setComprator(22;
    {
        String newCurs[] = new String[3];
        int oldid = id_pd;
        id_pd = id_curs;
        setComprator(22);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                newCurs[0] =String.valueOf( getRs().getInt("date_time_sl_curs"));
                newCurs[1] =String.valueOf( getRs().getInt("id_n_money"));
                newCurs[2] =String.valueOf( getRs().getDouble("value_sl_curs"));
                
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        id_pd = oldid;
        return newCurs;
    }
    
    
    public String[] getProductDescriptionColumn() // Test  da se opredeli kakvo da se pokazva  //setComprator(25;
    {
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap key_Group = new java.util.HashMap();
        setComprator(25);
        int i = 0;
        
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            
            while(getRs().next()) {
                key_Group.put(new Integer(getRs().getInt("id_pam")),new String(getRs().getString("name_pam")));
                in.add(new Integer(getRs().getInt(1)));
                i++;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        setRs(oldRs);
        indexConnOfIdColumn = new int[i];
        it = in.iterator();
        splitColumn = new String[i];
        i=0;
        while(it.hasNext()) {
            indexConnOfIdColumn[i] =(Integer) it.next();
            splitColumn[i] = (String) key_Group.get(indexConnOfIdColumn[i]);
            i++;
        }
        
        
        
        return splitColumn;
    }
    public int[] getIndexConnOfIdColumn() {
        return indexConnOfIdColumn;
    }
    public java.sql.ResultSet getShowConteinCurs() //test //setComprator(26;
    {
        this.setComprator(26);
        java.sql.ResultSet newrs = null;
        try{
            registerParameters();
            newrs = getCstm().executeQuery();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        System.out.println("ot getShowConteinCurs()");
        return newrs;
        
    }
    public int setProductDescriptionColumn(int v1,int v2,int v3 ,int m1 ,int m2 , int m3) //test //setComprator(27;setComprator(28;   v- values; m -measure
    {
        int newID=0;
        int oldid_pm,oldid_pp,oldid_ppp,oldid_pf,oldid_n_group,oldid_pd;
        
        setComprator(27);
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
        
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
        setComprator(28);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                newID = getRs().getInt("id_pd");
            }
        } catch(java.sql.SQLException sqle) {
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
    public void updateProductDescriprionColumn(int in_id_pd,int v1,int v2,int v3 ,int m1 ,int m2 , int m3) //test //setComprator(29;   v- values; m -measure
    {
        
        int oldid_pm,oldid_pp,oldid_ppp,oldid_pf,oldid_n_group,oldid_pd;
        int oldbarcod_pm;
        setComprator(29);
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
        
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
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
    public int getContragentID(int in_id_pm, int in_flag) //test //setComprator(30;
    {
        int oldid_pm = id_pm;
        int oldflag = flag_pm;
        id_pm = in_id_pm;
        flag_pm = in_flag;
        int newID = 0;
        setComprator(30);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next()) {
                newID = getRs().getInt("id_contragent");
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        id_pm = oldid_pm;
        
        
        return newID;
    }
    public void setIDProductContragent(int in_id_pm,int in_id_contragent, int in_flag) //test //setComprator(31;
    {
        int oldid_pm = id_pm;
        int oldid_contragent = id_n_group;
        int oldflag = flag_pm;
        flag_pm = in_flag;
        id_pm = in_id_pm;
        id_n_group = in_id_contragent;
        setComprator(31);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pm = oldid_pm;
        id_n_group = oldid_contragent;
        flag_pm = oldflag;
    }
    public void updateIDProductContragent(int in_id_pm,int in_id_contragent,int in_flag) //test //setComprator(32;
    {
        int oldid_pm = id_pm;
        int oldid_contragent = id_n_group;
        int oldflag = flag_pm;
        flag_pm = in_flag;
        id_pm = in_id_pm;
        id_n_group = in_id_contragent;
        setComprator(32);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pm = oldid_pm;
        id_n_group = oldid_contragent;
        flag_pm = oldflag;
    }
    public void updateIDProductConsigment(int in_id_pm_new,int in_id_pm_old) 
    {
        int oldid_pm = id_pm;
        int oldId_pp = id_pp;
        id_pp = in_id_pm_old;
        id_pm = in_id_pm_new;
        
        setComprator(34);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pm = oldid_pm;
        id_pp = oldId_pp;
    }
    public void setNewConsigment(int in_id_pm) {
        int oldid_pm = id_pm;
        setComprator(35);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        id_pm = oldid_pm;
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
  public ArrayList getConsigmentFromIdPM(int in_id_pm)
  {
    setComprator(36); 
    int oldID_pm = getId_PM();
    setId_PM(in_id_pm);
    ArrayList partidaNomer = new ArrayList();
    infoConsigment iPartida = new infoConsigment(0,in_id_pm,0,0,"2000-01-01",0);
    
    partidaNomer.add((infoConsigment)iPartida);
    try
    {
      registerParameters();
      setRs(getCstm().executeQuery());
     int com=1;       
      while(getRs().next())
      {
        
         int id_pc = getRs().getInt("id_pc");
         int barcod = getRs().getInt("barcod_pc");
         int nomer = getRs().getInt("parcel_pc");
         java.sql.Date date = getRs().getDate("dateofexpire_pc");
         String strDate = date.toString();
         partidaNomer.add(new infoConsigment(id_pc,in_id_pm,nomer,com,strDate,barcod));
         com++;
      }
    }
    catch(java.sql.SQLException sqle)
    {
      sqle.printStackTrace();
    }
       
     setId_PM(oldID_pm)   ;
        
     return partidaNomer;
    
  }
  public int[] getPriceIDs(int in_id_pc)
  {
      setComprator(37); 
    int oldID_pm = getId_PM();
    setId_PM(in_id_pc);
    int idNumbers[] = new int[3];
    try
    {
      registerParameters();
      setRs(getCstm().executeQuery());
            
      while(getRs().next())
      {
         idNumbers[0]= (Integer)getRs().getInt("id_pp") ;
         idNumbers[1]= (Integer)getRs().getInt("id_ppp") ;
         idNumbers[2]= (Integer)getRs().getInt("id_pf") ;
      }
    }
    catch(java.sql.SQLException sqle)
    {
      sqle.printStackTrace();
    }
       
     setId_PM(oldID_pm)   ;
        
     return idNumbers;
  }
 public int insertConsigment(int in_id_pp,int in_id_ppp,int in_id_pf,int in_id_pm,int in_nomer,String in_date,int barcod) 
 {
    int oldid_pm = id_pm;
    int oldid_pp = id_pp;
    int oldid_ppp = id_ppp;
    int oldid_pf = id_pf;
    int oldid_pd = id_pd;
    String oldsname = sname_pm;
    int oldbarcod = barcod_pm;
    setComprator(38);
    id_pm = in_id_pm;
    id_pp = in_id_pp;
    id_ppp = in_id_ppp;
    id_pf = in_id_pf;
    id_pd = in_nomer;
    sname_pm = in_date;
    barcod_pm = barcod;
    try
    {
            registerParameters();
            getCstm().execute();
    }
    catch(java.sql.SQLException sqle) 
    {
      sqle.printStackTrace();
    }
    int maxID=0;
    setComprator(40);
  try
    {
      registerParameters();
      setRs(getCstm().executeQuery());
            
      while(getRs().next())
      {
        maxID = getRs().getInt("id");
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
        sname_pm = oldsname;
        barcod_pm = oldbarcod;
        return maxID;
 }
 public void updateConsigment(int in_id_pc,int in_id_pp,int in_id_ppp,int in_id_pf,int in_id_pm,int in_nomer,String in_date,int barcod) 
 {
    int oldid_pp = id_pp;
    int oldid_ppp = id_ppp;
    int oldid_pf = id_pf;
    int oldid_pd = id_pd;
    String oldsname = sname_pm;
    int oldbarcod = barcod_pm;
    int oldid_pm = id_pm;
    int oldn_group = id_n_group;
    setComprator(39);
    id_n_group = in_id_pc;
    id_pm = in_id_pm;
    id_pp = in_id_pp;
    id_ppp = in_id_ppp;
    id_pf = in_id_pf;
    id_pd = in_nomer;
    sname_pm = in_date;
    barcod_pm = barcod;
    try
    {
            registerParameters();
            getCstm().execute();
    }
    catch(java.sql.SQLException sqle) 
    {
      sqle.printStackTrace();
    }
        id_pm = oldid_pm; 
        id_n_group = oldn_group;
        id_pp = oldid_pp;
        id_ppp = oldid_ppp;
        id_pf = oldid_pf;
        id_pd = oldid_pd;
        sname_pm = oldsname;
        barcod_pm = oldbarcod;
 }

  public  void deleteConsigment(int in_id_pc)
    {
      int oldid_pm = id_pm;
      setComprator(41);
      id_pm = in_id_pc;
     try
        {
                registerParameters();
                getCstm().execute();
        }
        catch(java.sql.SQLException sqle) 
        {
          sqle.printStackTrace();
        }
      id_pm = oldid_pm;  
    }

   
}// end class
