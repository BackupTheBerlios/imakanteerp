
package imakante.com.dbo;

public class dbN_country extends java.lang.Object {
    
    /**
     * Field variables for table n_country
     */
    private Long id_n_country;
    private int code_n_country;
    private String name_n_country;
    
    /**
     * Basic SQL statements identifiers
     */
    private final static int SELECT = 1;
    private final static int INSERT = 2;
    private final static int UPDATE = 3;
    private final static int DELETE = 4;
    
    
    // Utility & connection variables
    private java.sql.Connection conn;
    private java.sql.PreparedStatement pStatement;
    
    public dbN_country(java.sql.Connection conn) {
        preparePStatement();
    }

    public Long getId_n_country() {
        return id_n_country;
    }

    public void setId_n_country(Long id_n_country) {
        this.id_n_country = id_n_country;
    }

    public int getCode_n_country() {
        return code_n_country;
    }

    public void setCode_n_country(int code_n_country) {
        this.code_n_country = code_n_country;
    }

    public String getName_n_country() {
        return name_n_country;
    }

    public void setName_n_country(String name_n_country) {
        this.name_n_country = name_n_country;
    }

    private void preparePStatement() {
        try {
            setPStatement(getConn().prepareStatement(""));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }

    public java.sql.Connection getConn() {
        return conn;
    }

    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }

    public java.sql.PreparedStatement getPStatement() {
        return pStatement;
    }

    public void setPStatement(java.sql.PreparedStatement pStatement) {
        this.pStatement = pStatement;
    }
    
}
