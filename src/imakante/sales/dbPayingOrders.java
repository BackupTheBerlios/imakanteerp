
package imakante.sales;

public class dbPayingOrders extends imakante.com.dbObject {
    
    // --- Custom Members --- //
    private java.sql.Connection conn;
    private int orderingPerson = 0;
    private String OrderTypes[];
    private int[] OTIndexes = null;
    private String OurAccounts[];
    private int[] OAIndexes = null;
    private String Currencies[];
    private int[] CurrIndexes = null;
    private int idPayingOrderType = 0;
    private int idBankAccount = 0;
    private int idPerson = 0;
    private int idContragent = 0;
    private double amount = 0;
    private String osnovanie = "";
    private String comment = "";
    private String beginDate = "0000-00-00";
    private String endDate = "0000-00-00";
    
    // --- Constructor --- //
    public dbPayingOrders(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    // --- Custom Methods --- //
    public void prepareCstm(){
        try {
            setCstm(getConn().prepareCall("{call sl_procedure_paying_orders(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_order_person", getOrderingPerson());
            getCstm().setInt("in_id_spt", getIdPayingOrderType());
            getCstm().setInt("in_id_nbc", getIdBankAccount());
            getCstm().setInt("in_id_person", getIdPerson());
            getCstm().setInt("in_id_contragent", getIdContragent());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setDouble("in_amount", getAmount());
            getCstm().setString("in_osnovanie", getOsnovanie());
            getCstm().setString("in_comment_spo", getComment());
            getCstm().setString("beginDate", getBeginDate());
            getCstm().setString("endDate", getEndDate());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getTable(int in_orderingPerson) {
        this.setComprator(0);
        this.setOrderingPerson(in_orderingPerson);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
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
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Groups = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Groups.put(new Integer(getRs().getInt("id_spt")), new String(getRs().getString("type_porder")));
                in.add(new Integer(getRs().getInt("id_spt")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        OTIndexes = new int[i];
        it = in.iterator();
        OrderTypes = new String[i];
        i = 0;
        while(it.hasNext()) {
            OTIndexes[i] = (Integer) it.next();
            OrderTypes[i] = (String) Groups.get(OTIndexes[i]);
            i++;
        }
        return OrderTypes;
    }
    
    public int[] getOTIndexes() {
        return OTIndexes;
    }
    
    public String[] getAvailableCurrencies() {
        setComprator(11);
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Groups = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Groups.put(new Integer(getRs().getInt("id_n_money")), new String(getRs().getString("cod_lat_n_money")));
                in.add(new Integer(getRs().getInt("id_n_money")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        CurrIndexes = new int[i];
        it = in.iterator();
        Currencies = new String[i];
        i = 0;
        while(it.hasNext()) {
            CurrIndexes[i] = (Integer) it.next();
            Currencies[i] = (String) Groups.get(CurrIndexes[i]);
            i++;
        }
        return Currencies;
    }
    
    public String[] getOurAccounts() {
        setComprator(7);
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Groups = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Groups.put(new Integer(getRs().getInt("id_nbc")), new String(getRs().getString("name_nbc") + " - " 
                + getRs().getString("account_nbc") + " - " 
                + getRs().getString("name_tbacc")));
                in.add(new Integer(getRs().getInt("id_nbc")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        OAIndexes = new int[i];
        it = in.iterator();
        OurAccounts = new String[i];
        i = 0;
        while(it.hasNext()) {
            OAIndexes[i] = (Integer) it.next();
            OurAccounts[i] = (String) Groups.get(OAIndexes[i]);
            i++;
        }
        return OurAccounts;
    }
    
    public int[] getOAIndexes() {
        return OAIndexes;
    }
    
    public int getOrderingPerson() {
        return orderingPerson;
    }

    public void setOrderingPerson(int orderingPerson) {
        this.orderingPerson = orderingPerson;
    }
    
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
    
    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
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

    public String getOsnovanie() {
        return osnovanie;
    }

    public void setOsnovanie(String osnovanie) {
        this.osnovanie = osnovanie;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

}
