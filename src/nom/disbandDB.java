
package nom;

public class disbandDB  extends imakante.com.dbObject {
    //-------------START MyVariables
   private int id;
   private String name;
   private String sname;
   private java.sql.Connection conn;
    //-------------END MyVariables
    
    public disbandDB(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
       
    }
    
    //-------SART MyFunction
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_disband(?,?,?,?)}"));
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
    
    public void registerParameters() {
        try {
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_comprator", getComprator());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_sname", getSName());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
   public void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public int insertRow(int in_id, String in_name, String in_sname)
    {
        setComprator(1);
       
        this.setName(in_name);
        this.setSName(in_sname);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
      int maxID = 0;
      maxID = getMaxId();
      
      return maxID;
    }
    
    public void updateRow(int in_id, String in_name, String in_sname) {
        setComprator(2);
        this.setId(in_id);
        this.setName(in_name);
        this.setSName(in_sname);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }

    public java.sql.ResultSet searchRecords(int in_id, String in_name, String in_sname)
    {
        setComprator(5);
        this.setId(in_id);
       
        this.setName(in_name);
        this.setSName(in_sname);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
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
 
 public void removeRow(int in_id) 
 {
    setComprator(4);
    this.setId(in_id);
    try
    {
      registerParameters();
      getCstm().execute();
    }
    catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
 }
 
 public void deleteRow(int in_id)
 {
     removeRow(in_id);
 }
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
  public void setSName(String COD) {
        this.sname = COD;
    }
    
    public String getSName() {
        return sname;
    }
}// end class
