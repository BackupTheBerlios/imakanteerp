
package imakante.sales;

public class dbNumDoc extends imakante.com.dbObject {
    
    private String splitNamesG[];
    private int indexConnOfId[] = null;
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator = 1;
    private int id = 0;
    private int narea = 0;
    private String name;
    private int id_doctype = 0;
    private String comment = "";
    private java.sql.Connection conn;
    
    public dbNumDoc(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    protected void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call sl_procedure_num_doc(?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    protected void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_doctype", getIDGr());
            getCstm().setInt("in_area", getcode());
            getCstm().setString("in_name", getName());
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    protected void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    public java.sql.ResultSet getTable() {
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
        return rs;
    }
    
    public void insertRow(int in_area, int in_id_doctype) {
        comprator = 1;
        this.id_doctype = in_id_doctype;
        this.narea = in_area;
        this.name = "";
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    public void updateRow(int in_id,  int in_id_doctype, int in_area, String in_name) {
        comprator = 2;
        this.id = in_id;
        this.id_doctype = in_id_doctype;
        this.narea = in_area;
        this.name = in_name;
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    public void deleteRow(int in_id) {
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    public java.sql.ResultSet getRow(int in_id) {
        comprator = 4;
        id = in_id;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                id_doctype = rs.getInt("id_doctype");
                narea = rs.getInt("code");
                name = rs.getString("name");
            }
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
        return rs;
    }
    
    public java.sql.ResultSet searchRecords(int in_area, String in_name) {
        comprator = 5;
        this.narea = in_area;
        this.name = in_name;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
        return getRs();
    }
    
    public String[] getCasaG() {
        comprator = 6;
        String return_str = new String("");
        int oldId = id;
        java.sql.ResultSet oldRs = rs;
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Doctypes = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                Doctypes.put(new Integer(rs.getInt("id_n_doctype")), new String(rs.getString("name_ntd")));
                in.add(new Integer(rs.getInt("id_n_doctype")));
                i++;
            }
        } catch(Exception e) {e.printStackTrace();}
        rs = oldRs;
        id = oldId;
        indexConnOfId = new int[i];
        it = in.iterator();
        splitNamesG = new String[i];
        i=0;
        while(it.hasNext()) {
            indexConnOfId[i] =(Integer) it.next();
            splitNamesG[i] = (String) Doctypes.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesG;
    }
    
    public int getMaxId() {
        comprator = 7;
        int return_int=-1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
        return return_int;
    }
    
    public int getMaxCod() {
        comprator = 8;
        int return_int=-1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
        return return_int;
    }
    
   public int getMaxGrID() {
        comprator = 9;
        int return_int=-1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
        return return_int;
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
    
    public void setId(int ID) {
        this.id = ID;
    }
    
    public int getId() {
        return id;
    }
     
    public void setIDGr(int COD) {
        this.id_doctype = COD;
    }
    
    public int getIDGr() {
        return id_doctype;
    }
    
    public void setName(String Name) {
        this.name = Name;
    }
    
    public String getName() {
        return name;
    }
    
    public void setcode(int anid) {
        this.narea = anid;
    }
    
    public int getcode() {
        return narea;
    }
    
    public int getComprator() {
        return comprator;
    }
    
    public void setComprator(int com) {
        this.comprator = com;
    }
    
    public void setComment(String Comment) {
        this.comment = Comment;
    }
    
    public String getComment() {
        return comment;
    }
    
    public void close() {
        try{
            rs.close();
            rs=null;
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
        try{
            cstm.close();
            cstm=null;
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
}
