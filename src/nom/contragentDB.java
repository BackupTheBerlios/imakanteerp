
package nom;

public class contragentDB extends imakante.com.dbObject {
    
   
    private int id_nm, id_mol, id_oso, flag;
    private String bull, dan, tel, fax, email, web;
    private String nameBank_r,nameBank_d, IBAN_R, IBAN_D,valuta_R,valuta_D,BIC_R,BIC_D;
    
    public contragentDB(java.sql.Connection conn, int flag) {
        super(conn);
        this.flag = flag;
        prepareCstm();
    }
    
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_contragent(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getRow(int in_id) {
        setComprator(4);
        setId(in_id);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                setCode(getRs().getInt("code"));
                setName(getRs().getString("name"));
                bull = getRs().getString("bul");
                dan = getRs().getString("dan");
                setAddress(getRs().getString("address"));
                id_nm = getRs().getInt("id_nm");
                tel = getRs().getString("tel");
                fax = getRs().getString("fax");
                email = getRs().getString("email");
                web = getRs().getString("web");
                id_mol = getRs().getInt("id_mol");
                id_oso = getRs().getInt("id_oso");
                flag = getRs().getInt("flag");
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public void insertRow(int in_cod, String in_name, String in_bul,
            String in_dan, String in_address, int in_id_nm, String in_tel,
            String in_fax, String in_email, String in_web, int in_id_mol,
            int in_id_oso, String in_nameBank_r,String in_nameBank_d,
            String in_iban_d,String in_iban_r,
            String in_bic_r,String in_bic_d,
            String in_valuta_d,String in_valuta_r) 
    {
        setComprator(1);
        setCode(in_cod);
        setName(in_name);
        this.bull = in_bul;
        this.dan = in_dan;
        this.setAddress(in_address);
        this.id_nm = in_id_nm;
        this.tel = in_tel;
        this.fax = in_fax;
        this.email = in_email;
        this.web = in_web;
        this.id_mol = in_id_mol;
        this.id_oso = in_id_oso;
        
        this.BIC_D = in_bic_d;
        this.BIC_R = in_bic_r;
        
        this.IBAN_D = in_iban_d;
        this.IBAN_R = in_iban_r;
        
        this.nameBank_d = in_nameBank_d;
        this.nameBank_r = in_nameBank_r;
        
        this.valuta_D = in_valuta_d;
        this.valuta_R = in_valuta_r;
        
        // this.flag = 0;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_cod, String in_name, String in_bul,
            String in_dan, String in_address, int in_id_nm, String in_tel,
            String in_fax, String in_email, String in_web, int in_id_mol,
            int in_id_oso,
            String in_nameBank_r, String in_nameBank_d,
            String in_iban_d, String in_iban_r,
            String in_bic_r, String in_bic_d,
            String in_valuta_d, String in_valuta_r) 
    {
        changeFlag(1,in_id);
        // po princip trqbva da izpolzvame comprator = 2, no nie defakto nqma da redaktirame redove,
        // a 6te dobavim nov, kato promenim flaga na stariq zapis ot 0 na 1, a na noviq zapis s flag 0
        setComprator(1);   // ---> comprator: 1.INSERT INTO <tablename>  ... ;2.UPDATE <table name> ... <---- ;
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
                in_web,in_id_mol,in_id_oso,in_nameBank_r, in_nameBank_d,
             in_iban_d, in_iban_r,
             in_bic_r, in_bic_d,
             in_valuta_d,in_valuta_r);
    }
    private void changeFlag(int flag, int id) {
        // smenqme flaga na opredelen red !!!
        setComprator(2);  // sqlska zaqwka koqto samo 6te smenq flaga
        int old_flag = this.flag;
        this.flag = flag;
        this.setId(id);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        this.flag = old_flag;
    }
    
    public void deleteRow(int in_id) {
        // po princip trqbva da iztriem reda ot tablicata,  no po iziskvaneto da ne se triqt reove
        // ot tablicata, nie samo smenqme flaga
        changeFlag(1,in_id);
    }
    
    public java.sql.ResultSet searchRecords(int in_cod, String in_name, String in_bul,
            String in_dan, String in_address, int in_id_nm, String in_tel,
            String in_fax, String in_email, String in_web, int in_id_mol,
            int in_id_oso, String in_nameBank_r,String in_nameBank_d,
            String in_iban_d,String in_iban_r,
            String in_bic_r,String in_bic_d,
            String in_valuta_d,String in_valuta_r) {
        setComprator(5);
        this.setCode(in_cod);
        this.setName(in_name);
        this.bull = in_bul;
        this.dan = in_dan;
        this.setAddress(in_address);
        this.id_nm = in_id_nm;
        this.tel = in_tel;
        this.fax = in_fax;
        this.email = in_email;
        this.web = in_web;
        this.id_mol = in_id_mol;
        this.id_oso = in_id_oso;
        //this.flag = 0;
        this.BIC_D = in_bic_d;
        this.BIC_R = in_bic_r;
        
        this.IBAN_D = in_iban_d;
        this.IBAN_R = in_iban_r;
        
        this.nameBank_d = in_nameBank_d;
        this.nameBank_r = in_nameBank_r;
        
        this.valuta_D = in_valuta_d;
        this.valuta_R = in_valuta_r;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
   
    
    public String getAddressName(int id_nm) {
        String adres = new String("");
        this.id_nm = id_nm;
        this.setComprator(10);           // SQLska zaqvka za izvli4ane na naselenoto mqsto v zavisimost id_nm
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                adres = getRs().getString(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        System.out.println("ot contragentDB.getAddress()");
        return adres;
    }
    
    public java.sql.ResultSet getTablesAddressName(String nm) { // izvli4ane na naseleneto mqsto, oblasta, stranata
        this.setComprator(11);
        String adres = getAddress();
        this.setAddress(nm);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        System.out.println("ot contragentDB.getTablesAddressName()");
        setAddress(adres);
        return getRs();
    }
    
    public java.sql.ResultSet getTablesWithNames(String nam) {  // izvli4ane na imenata - ime , prezime familiq, egn ...
        this.setComprator(12);
        String oldName = getName();
        this.setName(nam);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        System.out.println("ot contragentDB.getTablesWithNames()");
        setName(oldName);
        return getRs();
    }
    
    public String getNameWithID(int id_nam,boolean mol_oso) {   //ok izvli4ane na imenata na MOL
        String nam = new String("");
        if(mol_oso) {   // ako e true izvli4ame stoinost za MOL
            this.id_mol = id_nam;
            this.id_oso = -1;
        } else {    // ako e fause izvli4ame stoinost za OSO;
            this.id_oso = id_nam;
            this.id_mol = -1;
        }
        this.setComprator(13);
        try {
            System.out.println(" id mol  " + this.getID_MOL() );
            System.out.println(" id oso  " + this.getID_OSO() );
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                nam = getRs().getString("name_ls_n_person");
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        System.out.println("ot contragentDB.getNameWithID()");
        return nam;
    }
    
    public void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator()); // izbor na SQL zaqwka
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_bul",getBulstat());
            getCstm().setString("in_dan",getDanNomer());
            getCstm().setString("in_address",getAddress());
            getCstm().setInt("in_id_nm",getID_NM());
            getCstm().setString("in_tel",getTel());
            getCstm().setString("in_fax",getFax());
            getCstm().setString("in_email",getEmail());
            getCstm().setString("in_web",getWeb());
            
            getCstm().setString("in_nameBank_d",getNameBank_D());
            getCstm().setString("in_nameBank_r",getNameBank_R());
            
            getCstm().setString("in_iban_d",getIBAN_D());
            getCstm().setString("in_iban_r",getIBAN_R());
            
            getCstm().setString("in_bic_d",getBIC_D());
            getCstm().setString("in_bic_r",getBIC_R());
            
            getCstm().setString("in_valuta_d",getValita_D());
            getCstm().setString("in_valuta_r",getValita_R());
            
            getCstm().setInt("in_id_mol",getID_MOL());
            getCstm().setInt("in_id_oso",getID_OSO());
            getCstm().setInt("in_flag",getFlag());
            
            
            System.out.println("ot registerparameter");
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
  
    
    public void setBulstat(String bul) {
        this.bull = bull;
    }
    
    public String getBulstat() {
        return bull;
    }
    
    public void setDanNomer(String dannomer) {
        this.dan = dannomer;
    }
    
    public String getDanNomer() {
        return dan;
    }
    
    public void setID_NM(int nm) {
        this.id_nm = nm;
    }
    
    public int getID_NM() {
        return id_nm;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }
    
    public String getTel() {
        return tel;
    }
    
    public void setFax(String fax) {
        this.fax = fax;
    }
    
    public String getFax() {
        return fax;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setWeb(String web) {
        this.web = web;
    }
    
    public String getWeb() {
        return web;
    }
    
    public void setID_MOL(int mol) {
        this.id_mol = mol;
    }
    
    public int getID_MOL() {
        return id_mol;
    }
    
    public void setID_OSO(int oso) {
        this.id_oso = oso;
    }
    
    public int getID_OSO() {
        return id_oso;
    }
    
    public void setFlag(int flag) {
        this.flag = flag;
    }
    
    public int getFlag() {
        return flag;
    }
    public void setNameBank_R(String b)
    {
        nameBank_r=b;
    }
    public void setNameBank_D(String b)
    {
        nameBank_d=b;
    }
    public void setIBAN_R(String iban)
    {
        IBAN_R=iban;
    }
    public void setIBAN_D(String iban)
    {
        IBAN_D=iban;
    }
    public String getBIC_R()
    {
       return BIC_R;
    }
     public String getBIC_D()
    {
       return BIC_D;
    }
    public String getNameBank_R()
    {
       return nameBank_r;
    }
    public String getNameBank_D()
    {
       return  nameBank_d;
    }
    public String getIBAN_R()
    {
        return IBAN_R;
    }
    public String getIBAN_D()
    {
       return IBAN_D;
    }
    public void setBIC_R(String bic)
    {
        BIC_R=bic;
    }
     public void setBIC_D(String bic)
    {
        BIC_D=bic;
    }
   public String getValita_R()
   {
       return valuta_R;
   }
   public void setValuta_R(String in)
   {
       valuta_R=in;
   }
   public String getValita_D()
   {
       return valuta_D;
   }
   public void setValuta_D(String in)
   {
       valuta_D=in;
   } 
  
    
    public void updateIDProductContragent(int in_id_contragent_old, int in_id_contragent_new, int in_flag) {
        java.util.ArrayList arrayID = getIDProductContragent(in_id_contragent_old, 0) ;
        setIDProductContragent(arrayID, in_id_contragent_new, 0);
        
        int oldIn_od = getId();
        setId(in_id_contragent_old);
        int oldIn_flag = flag;
        flag = in_flag;
        setComprator(15);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        
        flag=oldIn_flag;
        setId(oldIn_od);
    }
    
    private void setIDProductContragent(java.util.ArrayList id_pm, int in_id_contragent_new, int in_flag) {
        int oldIn_od = getId();
        int oldIn_flag = flag;
        int oldId_in_OSO = id_oso;
        setId(in_id_contragent_new);
        flag = in_flag;
        setComprator(16);
        java.util.ArrayList arrayID = id_pm;
        java.util.Iterator it = id_pm.iterator();
        try {
            while(it.hasNext()) {
                registerParameters();
                id_oso = (Integer)it.next();
                getCstm().execute();
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    private java.util.ArrayList getIDProductContragent(int in_id_contragent_old, int in_flag) {
        java.util.ArrayList arrayIdOnProduct = new java.util.ArrayList();
        int oldIn_flag = flag;
        flag = in_flag;
        int oldIn_od = getId();
        setId(in_id_contragent_old);
        setComprator(17);
       
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                arrayIdOnProduct.add(new Integer(getRs().getInt("id_pm")));
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return arrayIdOnProduct;
    }
    
    
}// end class
