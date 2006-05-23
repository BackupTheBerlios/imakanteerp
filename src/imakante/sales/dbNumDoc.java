
package imakante.sales;

public class dbNumDoc extends imakante.com.dbObject {
    
    private String splitNamesG[];
    private int indexConnOfId[] = null;
    private int narea = 0;
    private String name = "";
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
            getCstm().setInt("in_area", getCode());
            getCstm().setString("in_name", getName());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    protected void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
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
    
    public void insertRow(int in_area, int in_id_doctype) {
        setComprator(1);
        this.setIDGr(in_id_doctype);
        this.setNArea(in_area);
        this.setName("");
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id,  int in_id_doctype, int in_area, String in_name) {
        setComprator(2);
        this.setId(in_id);
        this.setIDGr(in_id_doctype);
        this.setNArea(in_area);
        System.out.println("Areata e: " + this.getNArea());
        this.setName(in_name);
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
                setIDGr(getRs().getInt("id_doctype"));
                setNArea(getRs().getInt("code"));
                setName(getRs().getString("name"));
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public java.sql.ResultSet searchRecords(int in_area, String in_name) {
        setComprator(5);
        this.setNArea(in_area);
        this.setName(in_name);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public String[] getCasaG() {
        setComprator(6);
        String return_str = new String("");
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Doctypes = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Doctypes.put(new Integer(getRs().getInt("id_ntd")), new String(getRs().getString("name_ntd")));
                in.add(new Integer(getRs().getInt("id_ntd")));
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
            splitNamesG[i] = (String) Doctypes.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesG;
    }
    
    public boolean keyAlreadyTaken(int Num, String docType) {
        int num = Num;
        String doc = docType;
        java.sql.ResultSet res = getTable();
        java.util.HashMap keys = new java.util.HashMap();
        java.util.Vector pair = new java.util.Vector();
        pair.add(1, num);
        pair.add(2, doc);
        try {
            while (res.next()) keys.put(new Integer(getRs().getInt("area_number_sdtn")), new String(getRs().getString("name_sdtn")));
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        boolean present = keys.entrySet().contains(pair);
        if (present) return true;
        return false;
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
    
    public int getMaxCod() {
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
    
    public int getMaxGrID() {
        setComprator(9);
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
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public int getNArea() {
        return narea;
    }
    
    public void setNArea(int narea) {
        this.narea = narea;
    }
}
