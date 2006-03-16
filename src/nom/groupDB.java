
package nom;

public class groupDB  extends imakante.com.dbObject {
    //-------------START MyVariables
    private String splitNamesOfAnLevel[];
    private int indexConnOfId[] = null;
    private int nom = 0;
    private int alId = 0; // vryzkata kym tablicata za analitu4nite niva
    private java.sql.Connection conn;
    //-------------END MyVariables
    
    public groupDB(java.sql.Connection conn, int idGroup) {
        super(conn);
        prepareCstm();
        this.nom = idGroup;
    }
    
    //-------SART MyFunction
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call ls_procedure_group(?,?,?,?,?,?)}"));
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
            getCstm().setInt("in_nom", getNom()); // za suotvetnata grupa
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setInt("in_alid", getAnID());
            getCstm().setInt("comprator", getComprator());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(int in_nom, int in_code, String in_name, int alID) {
        setComprator(1);
        this.nom = in_nom;
        this.setCode(in_code);
        this.setName(in_name);
        this.alId = alID;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_nom, int in_code, String in_name, int alID) {
        setComprator(2);
        this.setId(in_id);
        this.nom = in_nom;
        this.setCode(in_code);
        this.setName(in_name);
        this.alId = alID;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
//    
//    public java.sql.ResultSet getRow(int in_id) {
//        setComprator(4);
//        setId(in_id);
//        try {
//            registerParameters();
//            setRs(getCstm().executeQuery());
//            while(getRs().next()) {
//                cod = getRs().getString("cod");
//                name = getRs().getString("name");
//                nom = getRs().getInt("nom");
//                alId = getRs().getInt("alid");
//            }
//        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
//        return getRs();
//    }
//    
    public java.sql.ResultSet searchRecords(int in_nom, int in_code,String in_name, int alID) {
        setComprator(5);
        this.nom = in_nom;
        this.setCode(in_code);
        this.setName(in_name);
        this.alId = alID;
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
    
    public void setNom(int NOM) {
        this.nom = NOM;
    }
    
    public int getNom() {
        return nom;
    }
    
    public void setAnID(int anid) {
        this.alId = anid;
    }
    
    public int getAnID() {
        return alId;
    }
    
    public String[] getAnLevelName() {
        setComprator(6);
        String return_str = new String("");
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap key_Anlevel = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                key_Anlevel.put(new Integer(getRs().getInt(1)), new String(getRs().getString(3)));
                return_str = return_str + getRs().getString(3) + " ";
                in.add(new Integer(getRs().getInt(1)));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        splitNamesOfAnLevel = return_str.split(" ");
        indexConnOfId = new int[i];
        it = in.iterator();
        splitNamesOfAnLevel = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexConnOfId[i] =(Integer) it.next();
            splitNamesOfAnLevel[i] = (String) key_Anlevel.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesOfAnLevel;
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
    
}// end class
