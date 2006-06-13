
package imakante.sales;

public class dbCopiuri extends imakante.com.dbObject {
    
    // --- Custom Members --- //
    private java.sql.Connection conn;
    private int userID = 0;
    private String userName = "";
    private String dateBegin = "";
    private String dateEnd = "";
    private int paper100 = 0;
    private int paper50 = 0;
    private int paper20 = 0;
    private int paper10 = 0;
    private int paper5 = 0;
    private int paper2 = 0;
    private int metal1 = 0;
    private int metal050 = 0;
    private int metal020 = 0;
    private int metal010 = 0;
    private int metal005 = 0;
    private int metal002 = 0;
    private int metal001 = 0;
    
    // --- Constructor --- //
    public dbCopiuri(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    // --- Custom Methods --- //
    public void prepareCstm(){
        try {
            setCstm(getConn().prepareCall("{call sl_procedure_copiuri(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setString("in_name_um", getName());
            getCstm().setInt("in_paper_100", getPaper100());
            getCstm().setInt("in_paper_50", getPaper50());
            getCstm().setInt("in_paper_20", getPaper20());
            getCstm().setInt("in_paper_10", getPaper10());
            getCstm().setInt("in_paper_5", getPaper5());
            getCstm().setInt("in_paper_2", getPaper2());
            getCstm().setInt("in_metal_1", getMetal1());
            getCstm().setInt("in_metal_050", getMetal050());
            getCstm().setInt("in_metal_020", getMetal020());
            getCstm().setInt("in_metal_010", getMetal010());
            getCstm().setInt("in_metal_005", getMetal005());
            getCstm().setInt("in_metal_002", getMetal002());
            getCstm().setInt("in_metal_001", getMetal001());
            getCstm().setString("dateBegin", getDateBegin());
            getCstm().setString("dateEnd", getDateEnd());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(int in_paper_100, int in_paper_50, int in_paper_20,
            int in_paper_10, int in_paper_5, int in_paper_2, int in_metal_1,
            int in_metal_050, int in_metal_020, int in_metal_010, int in_metal_005,
            int in_metal_002, int in_metal_001) {
        setComprator(1);
        this.setUserID(imakante.com.NewMain.getUserId());
        this.setPaper100(in_paper_100);
        this.setPaper50(in_paper_50);
        this.setPaper20(in_paper_20);
        this.setPaper10(in_paper_10);
        this.setPaper5(in_paper_5);
        this.setPaper2(in_paper_2);
        this.setMetal1(in_metal_1);
        this.setMetal050(in_metal_050);
        this.setMetal020(in_metal_020);
        this.setMetal010(in_metal_010);
        this.setMetal005(in_metal_005);
        this.setMetal002(in_metal_002);
        this.setMetal001(in_metal_001);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet searchRecords(String name) {
        setComprator(5);
        this.setUserName(name);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getDateBegin() {
        return dateBegin;
    }

    public void setDateBegin(String dateBegin) {
        this.dateBegin = dateBegin;
    }

    public String getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(String dateEnd) {
        this.dateEnd = dateEnd;
    }

    public int getPaper100() {
        return paper100;
    }

    public void setPaper100(int paper100) {
        this.paper100 = paper100;
    }

    public int getPaper50() {
        return paper50;
    }

    public void setPaper50(int paper50) {
        this.paper50 = paper50;
    }

    public int getPaper20() {
        return paper20;
    }

    public void setPaper20(int paper20) {
        this.paper20 = paper20;
    }

    public int getPaper10() {
        return paper10;
    }

    public void setPaper10(int paper10) {
        this.paper10 = paper10;
    }

    public int getPaper5() {
        return paper5;
    }

    public void setPaper5(int paper5) {
        this.paper5 = paper5;
    }

    public int getPaper2() {
        return paper2;
    }

    public void setPaper2(int paper2) {
        this.paper2 = paper2;
    }

    public int getMetal1() {
        return metal1;
    }

    public void setMetal1(int metal1) {
        this.metal1 = metal1;
    }

    public int getMetal050() {
        return metal050;
    }

    public void setMetal050(int metal050) {
        this.metal050 = metal050;
    }

    public int getMetal020() {
        return metal020;
    }

    public void setMetal020(int metal020) {
        this.metal020 = metal020;
    }

    public int getMetal010() {
        return metal010;
    }

    public void setMetal010(int metal010) {
        this.metal010 = metal010;
    }

    public int getMetal005() {
        return metal005;
    }

    public void setMetal005(int metal005) {
        this.metal005 = metal005;
    }

    public int getMetal002() {
        return metal002;
    }

    public void setMetal002(int metal002) {
        this.metal002 = metal002;
    }

    public int getMetal001() {
        return metal001;
    }

    public void setMetal001(int metal001) {
        this.metal001 = metal001;
    }
    
}
