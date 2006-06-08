
package imakante.com;

public class paramFirm {
    
    public paramFirm() {
       constructParam();
        closeRes();
    }
    
    private  int id;
    private String name;
    private String dan;
    private String IN;
    private String data_r;
    private String data_c;
    private String address;
    private String nm;
    private String tel;
    private String code;
    private String email;
    private String nkid;
    private String boss;
    private String acc;
    private String web;
    private String bankname_D,iban_D,bic_D,valuta_D,bankname_R,iban_R,bic_R,valuta_R;
    
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    
    private String selectQ =
            " SELECT "+
            "`ls_sluj`.`Id` AS `id`, " +
            "`ls_sluj`.`name_firm` AS `name`, " +
            "`ls_sluj`.`dan_nom` AS `dan`, " +
            "`ls_sluj`.`bul` AS `bul`, " +
            "`ls_sluj`.`address` AS `address`, " +
            "`ls_sluj`.`nam_boss` AS `boss`, " +
            "`ls_sluj`.`nam_acc` AS `acc`, " +
            "`ls_sluj`.`nkid` AS `nkid`, " +
            "`ls_sluj`.`telefon` AS `tel`, " +
            "`ls_sluj`.`data_reg_dds` AS `data_r`, " +
            "`ls_sluj`.`data_c` AS `data_c`, " +
            "`ls_sluj`.`nm` AS `nm`, " +
            "`ls_sluj`.`postcode` AS `code`, " +
            "`ls_sluj`.`email` AS `email`, " +
            "`ls_sluj`.`web` AS `web`, " +
            
            "`ls_sluj`.`bankD` AS `bankbank_D`, " +
            "`ls_sluj`.`bankR` AS `bankbank_R`, " +
            "`ls_sluj`.`bicR` AS `bic_R`, " +
            "`ls_sluj`.`bicD` AS `bic_D` ," +
            "`ls_sluj`.`ibanD` AS `iban_D`, " +
            "`ls_sluj`.`ibanR` AS `iban_R`, " +
            "`ls_sluj`.`valr` AS `valuta_R`, " +
            "`ls_sluj`.`vald` AS `valuta_D` " +
            
            
            "FROM "+
            "`ls_sluj`";
    
    private void constructParam(){
       
            conn = imakante.com.NewMain.getConnection();
        
        try {
            stm = conn.createStatement();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        try {
            rs = stm.executeQuery(selectQ);
            while (rs.next()) {
                id = rs.getInt("id");
                setName(rs.getString("name"));
                setDan(rs.getString("dan"));
                setIN(rs.getString("bul"));
                setAddress(rs.getString("address"));
                setBoss(rs.getString("boss"));
                setAcc(rs.getString("acc"));
                setNkid(rs.getString("nkid"));
                setTel(rs.getString("tel"));
                setData_r(rs.getString("data_r"));
                setData_c(rs.getString("data_c"));
                setNm(rs.getString("nm"));
                setCode(rs.getString("code"));
                setEmail(rs.getString("email"));
                setWeb(rs.getString("web"));
                setBankName_D(rs.getString("bankbank_D"));
                setIBAN_D(rs.getString("iban_D"));
                setBIC_D(rs.getString("bic_D"));
                setValuta_D(rs.getString("valuta_D"));
                setBankName_R(rs.getString("bankbank_R"));
                setIBAN_R(rs.getString("iban_R"));
                setBIC_R(rs.getString("bic_R"));
                setValuta_R(rs.getString("valuta_R"));
               
                
            }
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    private void closeRes(){
        try {
            rs.close();
            rs = null;
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        try {
            stm.close();
            stm = null;
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        
    }
    
    public void revalidateParam() {
        constructParam();
        closeRes();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDan() {
        return dan;
    }

    public void setDan(String dan) {
        this.dan = dan;
    }

    public String getIN() {
        return IN;
    }

    public void setIN(String IN) {
        this.IN = IN;
    }

    public String getData_r() {
        return data_r;
    }

    public void setData_r(String data_r) {
        this.data_r = data_r;
    }

    public String getData_c() {
        return data_c;
    }

    public void setData_c(String data_c) {
        this.data_c = data_c;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNm() {
        return nm;
    }

    public void setNm(String nm) {
        this.nm = nm;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getWeb() {
        return web;
    }
    
    public void setWeb(String web) {
        this.web = web;
    }
    
    public String getNkid() {
        return nkid;
    }

    public void setNkid(String nkid) {
        this.nkid = nkid;
    }

    public String getBoss() {
        return boss;
    }

    public void setBoss(String boss) {
        this.boss = boss;
    }

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }
    
   public void setBankName_D(String in) 
   {
       bankname_D = in;
   }
   public void setIBAN_D(String in)
   {
       iban_D = in;
   }
   public void setBIC_D(String in)
   {
       bic_D = in;
   }
   public void setValuta_D(String in)
   {
       valuta_D = in;
   }
   
    public void setBankName_R(String in) 
   {
       bankname_R = in;
   }
   public void setIBAN_R(String in)
   {
       iban_R = in;
   }
   public void setBIC_R(String in)
   {
       bic_R = in;
   }
   public void setValuta_R(String in)
   {
       valuta_R = in;
   }
   
   public String getBankName_D()
   {
       return bankname_D;
   }
   public String getIBAN_D()
   {
       return iban_D;
   }
   public String getBIC_D()
   {
       return bic_D;
   }
   public String getValuta_D()
   {
       return valuta_D;
   }
  public String getBankName_R()
   {
       return bankname_R;
   }
   public String getIBAN_R()
   {
       return iban_R;
   }
   public String getBIC_R()
   {
       return bic_R;
   }
   public String getValuta_R()
   {
       return valuta_R;
   } 
   
}
