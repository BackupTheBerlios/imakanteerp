
package imakante.sales;

public class casa2casaOp  extends imakante.com.dbObject {
    //-------------START MyVariables
    private String splitNamesG[]; // kasi
    private String exCRs[];       // ostanalite kasi
    private String splitNamesM[]; // Money
    private String splitNamesD[]; // Doc
    
    private int indexConnOfId[] = null; // masiv prave6t vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata za kasi
    private int indexExCRs[] = null;    // index na dopylwa6tite kasi
    private int indexMoney[] = null; // masiv valuti
    private int indexDoc[] = null; // vid doc prihodni orderi
    
    //  private java.sql.ResultSet rs;
    // private java.sql.Statement stmt;
    //  private java.sql.CallableStatement cstm;
    
    private int level = 1;
    private     int in_id_sdtn = 1;
//              IN in_id INT(11),
//              IN in_number_sl_mop INT(11), code go zamenia v obekta
    private     int in_in_sl_mop = 1;
    private     int in_outsl_mop = 1;
    private     int in_id_order_spec = 0 ;
    private     int in_id_order_spec_type = 1;
    private     int in_id_order_doc = 1;
    private     String in_DATE;
    private     int in_id_n_money = 1;
    private     double in_exchange_rate = 1;
    private     double in_sum_sl_mop = 0;
    private     double in_sum_os_val_sl_mop = 0;
    private     int in_user_id  = imakante.com.NewMain.getUserId();
    
//              IN in_comment_sl_mop VARCHAR(250)) comment
//
    // SEARCH VARIABLES
    private int CasaBegin = 0;
    private int CasaEnd = 0;
    private int ContragentBegin = 0;
    private int ContragentEnd = 0;
    private String DateBegin = "0000-00-00";
    private String DateEnd = "0000-00-00";
    private java.sql.Connection conn;
    //-------------END MyVariables
    
    /** Creates a new instance of kasiDB */
    public casa2casaOp(java.sql.Connection conn, int level, int sdtn) {
        super(conn);
        this.setLevel(level);
        this.setIn_id_sdtn(sdtn);
        prepareCstm();
    }
    
    protected void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call sl_procedure_casa_casa(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
        } catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    protected void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_number_sl_mop", getCode());
            getCstm().setInt("in_in_sl_mop", in_in_sl_mop);
            getCstm().setInt("in_outsl_mop", in_outsl_mop);
            getCstm().setInt("in_id_order_spec", in_id_order_spec);
            getCstm().setInt("in_id_order_doc", in_id_order_doc);
            getCstm().setString("in_date_is", getIn_DATE());
            getCstm().setInt("in_id_n_money", in_id_n_money);
            getCstm().setDouble("in_exchange_rate", in_exchange_rate);
            getCstm().setDouble("in_sum_sl_mop", in_sum_sl_mop);
            getCstm().setDouble("in_sum_os_val_sl_mop", in_sum_os_val_sl_mop);
            getCstm().setInt("in_user_id", in_user_id);
            getCstm().setInt("in_id_sdtn", getIn_id_sdtn());
            getCstm().setString("in_comment_sl_mop", getComment());
            getCstm().setInt("in_casaBegin", CasaBegin);
            getCstm().setInt("in_casaEnd", CasaEnd);
            getCstm().setInt("in_contragentBegin", ContragentBegin);
            getCstm().setInt("in_contragentEnd", ContragentEnd);
            getCstm().setString("in_data_begin", DateBegin);
            getCstm().setString("in_data_end", DateEnd);
            getCstm().setInt("in_level", getLevel());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(int in_code) {
        setComprator(1);
        setCode(in_code);
        registerParameters();
        try {
            getCstm().execute();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    public void updateRow(int in_id,
            int in_code,
            int in_in_sl_mop,
            int in_outsl_mop,
            int in_id_order_spec,
            int in_id_order_spec_type,
            int in_id_order_doc,
            String in_DATE,
            int in_id_n_money,
            double in_exchange_rate,
            double in_sum_sl_mop,
            double in_sum_os_val_sl_mop,
            int in_id_sdtn,
            String in_comment) {
        setComprator(2);
        setId(in_id);
        setCode(in_code);
        this.in_in_sl_mop = in_in_sl_mop;
        this.in_outsl_mop = in_outsl_mop;
        this.in_id_order_spec = in_id_order_spec;
        this.in_id_order_spec_type = in_id_order_spec_type;
        this.in_id_order_doc = in_id_order_doc;
        this.setIn_DATE(in_DATE);
        this.in_id_n_money = in_id_n_money;
        this.in_exchange_rate = in_exchange_rate;
        this.in_sum_sl_mop = in_sum_sl_mop;
        this.in_sum_os_val_sl_mop = in_sum_os_val_sl_mop;
        this.setIn_id_sdtn(in_id_sdtn);
        setComment(in_comment);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet searchRecords( int casaBegin, int casaEnd, int contragentBegin,
            int contragentEnd, String data_begin, String data_end) {
        setComprator(5);
        CasaBegin = casaBegin;
        CasaEnd = casaEnd;
        ContragentBegin = contragentEnd;
        DateBegin = data_begin;
        DateEnd = data_end;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public String[] getCasa() {
        setComprator(6);
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Gropes = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Gropes.put(new Integer(getRs().getInt("id_n_casa")),new String(getRs().getString("code_n_casa")));
                in.add(new Integer(getRs().getInt("id_n_casa")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexConnOfId = new int[i];
        it = in.iterator();
        splitNamesG = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexConnOfId[i] = (Integer) it.next();
            splitNamesG[i] = (String) Gropes.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesG;
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
    
    public String[] getOtherCRs() {
        
        setComprator(9);
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap CRs = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                CRs.put(new Integer(getRs().getInt("id_n_casa")), new String(getRs().getString("code_n_casa")));
                in.add(new Integer(getRs().getInt("id_n_casa")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexExCRs = new int[i];
        it = in.iterator();
        exCRs = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexExCRs[i] = (Integer) it.next();
            exCRs[i] = (String) CRs.get(indexExCRs[i]);
            i++;
        }
        return exCRs;
    }
    
    public int[] getExcludedCRs() {
        return indexExCRs;
    }
    
    public String[] getMoney() {
        setComprator(11);
        String return_str = new String("");
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Gropes = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Gropes.put(new Integer(getRs().getInt("id_n_money")),new String(getRs().getString("cod_lat_n_money")));
                in.add(new Integer(getRs().getInt("id_n_money")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexMoney = new int[i];
        it = in.iterator();
        splitNamesM = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexMoney[i] = (Integer) it.next();
            splitNamesM[i] = (String) Gropes.get(indexMoney[i]);
            i++;
        }
        return splitNamesM;
    }
    
    public int[] getIndexMoney() {
        return indexMoney;
    }
    
    public String[] getDoc() {
        setComprator(12);
        String return_str = new String("");
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Gropes = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Gropes.put(new Integer(getRs().getInt("id_n_incoms")), new String(getRs().getString("name_n_incoms")));
                in.add(new Integer(getRs().getInt("id_n_incoms")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexDoc = new int[i];
        it = in.iterator();
        splitNamesD = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexDoc[i] = (Integer) it.next();
            splitNamesD[i] = (String) Gropes.get(indexDoc[i]);
            i++;
        }
        return splitNamesD;
    }
    
    public int[] getIndexDoc() {
        return indexDoc;
    }
    
    public int getLevel() {
        return level;
    }
    
    public void setLevel(int level) {
        this.level = level;
    }
    
    public int getIn_id_sdtn() {
        return in_id_sdtn;
    }
    
    public void setIn_id_sdtn(int in_id_sdtn) {
        this.in_id_sdtn = in_id_sdtn;
    }
    
    public String getIn_DATE() {
        return in_DATE;
    }
    
    public void setIn_DATE(String in_DATE) {
        this.in_DATE = in_DATE;
    }
    
}// end class
