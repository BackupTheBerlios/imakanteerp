
package imakante.sales;

public class dbExchangeRate extends imakante.com.dbObject {
    
    private int indexConnOfId[] = null;
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator = 1;
    private int id = 0;
    private String date = null;
    private int id_money = 0;
    private Double rate = 0.00;
    private java.sql.Connection conn;
    private String splitCurrencies[];
    
    public dbExchangeRate(java.sql.Connection conn) {
        super(conn);
        prepareCStm();
    }
    
    private void prepareCStm() {
        try {
            setCstm(getConn().prepareCall("{call sl_procedure_exchange_rate(?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    private void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setString("in_date", getDate());
            getCstm().setInt("in_id_money", getIDCurrency());
            getCstm().setDouble("in_value", getRateValue());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getTable() {
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return rs;
    }
    
    private void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(String in_date) {
        comprator = 1;
        this.date = in_date;
        this.id_money = 0;
        this.rate = 0.00;
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
   public void updateRow(int in_id, String in_date, int in_id_money, Double in_value) {
        comprator = 2;
        this.id = in_id;
        this.date = in_date;
        this.id_money = in_id_money;
        this.rate = in_value;
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void deleteRow(int in_id) {
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getRow(int in_id) {
        comprator = 4;
        id = in_id;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                date = rs.getDate("date_sl_exchange_rate").toString();
                id_money = rs.getInt("id_n_money");
                rate = rs.getDouble("value_sl_exchange_rate");
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return rs;
    }
    
    public java.sql.ResultSet searchRecords(String in_date, int in_id_money) {
        comprator = 5;
        this.date = in_date;
        this.id_money = in_id_money;
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
    
    public java.sql.Statement getStm() {
        return stmt;
    }
    
    public void setStm(java.sql.Statement stm) {
        this.stmt = stm;
    }
    
    public java.sql.CallableStatement getCstm() {
        return cstm;
    }
    
    public void setCstm(java.sql.CallableStatement cstm) {
        this.cstm = cstm;
    }
    
    public java.sql.ResultSet getRs() {
        return rs;
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
    
    public int getComprator() {
        return comprator;
    }
    
    public void setComprator(int Comprator) {
        this.comprator = Comprator;
    }
    
    public int getId() {
        return id;
    }
    
    public int getMaxId() {
        comprator = 7;
        int return_int = -1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
    public void setId(int ID) {
        this.id = ID;
    }
    
    public String getDate() {
        return date;
    }
    
    public void setDate(String Date) {
        this.date = Date;
    }
    
    public int getIDCurrency() {
        return id_money;
    }
    
    public int getMaxCurrID() {
        comprator = 8;
        int return_int = -1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
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
        comprator=6;
        String return_str = new String("");
        int oldId = id;
        java.sql.ResultSet oldRs = rs;
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Codes = new java.util.HashMap();
        int i = 0;
        
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                Codes.put(new Integer(rs.getInt("id_n_money")), new String(rs.getString("cod_n_money")));
                in.add(new Integer(rs.getInt("id_n_money")));
                i++;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        rs = oldRs;
        id = oldId;
        indexConnOfId = new int[i];
        it = in.iterator();
        splitCurrencies = new String[i];
        i=0;
        while(it.hasNext()) {
            indexConnOfId[i] =(Integer) it.next();
            splitCurrencies[i] = (String) Codes.get(indexConnOfId[i]);
            i++;
        }
        return splitCurrencies;
    }
    
    public void close() {
        try{
            rs.close();
            rs = null;
        } catch(java.sql.SQLException sqle) {  }
        try{
            cstm.close();
            cstm = null;
        } catch(java.sql.SQLException sqle) {  }
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
}
