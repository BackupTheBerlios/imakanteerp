
package nom;

public class dbBankAccount extends imakante.com.dbObject {
    
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator = 1;
    private int id = 0;
    private int id_group = 0;
    private int code = 0;
    private String name, baccount, address, comment;
    private int id_type = 0;
    private String splitNamesG[];
    private int indexConnOfId[] = null;
    
    public dbBankAccount(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    protected void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("call nom_pocedure_baccount(?,?,?,?,?,?,?,?,?)"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    protected void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_group", getIDGr());
            getCstm().setInt("in_code", getcode());
            getCstm().setString("in_name", getName());
            /*getCstm().setString("in_account", getAccount());
            getCstm().setString("in_address", getAddress());*/
            
            getCstm().setString("in_comments", getComment());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
}
