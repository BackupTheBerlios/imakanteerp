
package imakante.sales;

public class dbPayingOrders extends imakante.com.dbObject {
    
    // --- Custom Members --- //
    private java.sql.Connection conn;
    private String OrderTypes[];
    private int[] OTIndexes = null;
    private String OurAccounts[];
    private int[] OAIndexes = null;
    private int idPayingOrderType = 0;
    private int idBankAccount = 0;
    private int idContragent = 0;
    private double amount = 0;
    private String instant = "0000-00-00 00:00:00";
    
    
    // --- Constructor --- //
    public dbPayingOrders(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    // --- Custom Methods --- //
    public void prepareCstm(){
        try {
            setCstm(getConn().prepareCall("{call sl_procedure_paying_orders(?,?,?,?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_spt", getIdPayingOrderType());
            getCstm().setInt("in_id_nbc", getIdBankAccount());
            getCstm().setInt("in_id_contragent", getIdContragent());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setDouble("in_amount", getAmount());
            getCstm().setString("in_instant", getInstant());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow() {
        setComprator(1);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_id_spt, int in_id_nbc, int in_id_contragent, double in_amount) {
        setComprator(2);
        this.setId(in_id);
        this.setIdPayingOrderType(in_id_spt);
        this.setIdBankAccount(in_id_nbc);
        this.setIdContragent(in_id_contragent);
        this.setAmount(in_amount);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet searchRecords(int in_code, String in_egn, String in_name) {
        setComprator(5);
        this.setCode(in_code);
        this.setName(in_name);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public String[] getTypesOfOreders() {
        setComprator(6);
        String[] typesOrders = { "boo!", "boo again!" };
        
        
        return typesOrders;
    }
    
    public int[] getOTIndexes() {
        return OTIndexes;
    }
    
    public String[] getAvailableCurrencies() {
        String[] currencies = { "BGN", "EUR", "USD", "CHF", "GBP", "GRD", "JPY" };
        
        
        return currencies;
    }
    
    public String[] getOurAccounts() {
        String[] accounts = { "Po razpla6taniq", "po DDS" };
        
        
        return accounts;
    }
    
    public int[] getOAIndexes() {
        return OAIndexes;
    }
    
//    public String[] getPersonGroups() {
//        setComprator(?);
//        String actStr = new String("");
//        int oldId = getId();
//        java.sql.ResultSet oldRs = getRs();
//        String strIndexConnOfId = new String("");
//        java.util.ArrayList in = new java.util.ArrayList();
//        java.util.Iterator it = null;
//        // nova ideq porodena ot fakta 4e pri razdelqneto na stringa i
//        //ako imeto na ednata kletka ima intervali no se polu4ava gre6ka
//        java.util.HashMap Groups = new java.util.HashMap();
//        int i = 0;
//        try {
//            registerParameters();
//            setRs(getCstm().executeQuery());
//            while(getRs().next()) {
//                Groups.put(new Integer(getRs().getInt("id_n_group")), new String(getRs().getString("name_n_group")));
//                in.add(new Integer(getRs().getInt("id_n_group")));
//                i++;
//            }
//        } catch(Exception e) { e.printStackTrace(); }
//        setRs(oldRs);
//        setId(oldId);
//        indexConnOfId = new int[i];
//        it = in.iterator();
//        splitGroupNames = new String[i];
//        i = 0;
//        while(it.hasNext()) {
//            indexConnOfId[i] = (Integer) it.next();
//            splitGroupNames[i] = (String) Groups.get(indexConnOfId[i]);
//            i++;
//        }
//        return splitGroupNames;
//    }
    
    public int getIdPayingOrderType() {
        return idPayingOrderType;
    }

    public void setIdPayingOrderType(int idPayingOrderType) {
        this.idPayingOrderType = idPayingOrderType;
    }

    public int getIdBankAccount() {
        return idBankAccount;
    }

    public void setIdBankAccount(int idBankAccount) {
        this.idBankAccount = idBankAccount;
    }

    public int getIdContragent() {
        return idContragent;
    }

    public void setIdContragent(int idContragent) {
        this.idContragent = idContragent;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getInstant() {
        return instant;
    }

    public void setInstant(String instant) {
        this.instant = instant;
    }
}
