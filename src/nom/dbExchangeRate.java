
package nom;

import java.util.Calendar;

public class dbExchangeRate extends imakante.com.dbObject {
    
    private int indexConnOfId[] = null;
    private String Date = "";
    private int id_money = 0;
    private Double rate = 0.00;
    private java.sql.Connection conn;
    private String splitCurrencies[];
    private String in_DATE = "";
    private org.jdesktop.swingx.JXDatePicker dp;
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd"); 
    private Calendar now_calendar;
    public dbExchangeRate(java.sql.Connection conn) {
        super(conn);
        Calendar now_data;
        prepareCstm();
        dp = new org.jdesktop.swingx.JXDatePicker();
        
        in_DATE = (String)formatter.format(dp.getDate());
        System.out.println(" data " + in_DATE);
    }
    
    protected void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call sl_procedure_exchange_rate(?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setString("in_date", getDate());
            getCstm().setInt("in_id_money", getIDCurrency());
            getCstm().setDouble("in_value", getRateValue());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getTable() {
        this.setComprator(0);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(String in_date) {
        setComprator(1);
        this.setDate(in_date);
        this.id_money = 0;
        this.rate = 0.00;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
   public void updateRow(int in_id, String in_date, int in_id_money, Double in_value) {
        setComprator(2);
        this.setId(in_id);
        this.setDate(in_date);
        this.id_money = in_id_money;
        this.rate = in_value;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void deleteRow(int in_id) {
        setComprator(3);
        setId(in_id);
        try{
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getRow(int in_id) {
        setComprator(4);
        setId(in_id);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                setDate(getRs().getDate("date_sl_exchange_rate").toString());
                id_money = getRs().getInt("id_n_money");
                rate = getRs().getDouble("value_sl_exchange_rate");
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public java.sql.ResultSet searchRecords(String in_date, String in_id_money) {
        setComprator(5);
//        this.setERDate(in_date);
//        this.id_money = in_id_money;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public int getMaxId() {
        setComprator(7);
        int return_int = -1;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                return_int = getRs().getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
    public String getDate() {
        return in_DATE;
    }
    
    public void setDate(String Date) {
//        this.Date = (String)formatter.format(Date.getDate());
    }
    
    public int getIDCurrency() {
        return id_money;
    }
    
    public int getMaxCurrID() {
        setComprator(8);
        int return_int = -1;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                return_int = getRs().getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
    public void setIDCurrency(int Curr) {
        this.id_money = Curr;
    }
    
    public Double getRateValue() {
        return rate;
    }
    
    public void setRateValue(Double Rate) {
        this.rate = Rate;
    }
    
    public String[] getCurrencies() {
        setComprator(6);
        String return_str = new String("");
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Codes = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Codes.put(new Integer(getRs().getInt("id_n_money")), new String(getRs().getString("cod_lat_n_money") + " - " + 
                        getRs().getString("name_n_money")));
                in.add(new Integer(getRs().getInt("id_n_money")));
                System.out.println("sdfsf " +i);
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexConnOfId = new int[i];
        it = in.iterator();
        splitCurrencies = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexConnOfId[i] =(Integer) it.next();
            splitCurrencies[i] = (String) Codes.get(indexConnOfId[i]);
            i++;
        }
        return splitCurrencies;
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
    
}
