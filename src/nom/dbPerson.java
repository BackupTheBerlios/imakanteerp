
package nom;

public class dbPerson extends imakante.com.dbObject {
    
    // --- Custom Members --- //
    private java.sql.Connection conn;
    private String splitGroupNames[];
    private int indexConnOfId[] = null;
    private String egn = null;
    private String nomlk = null;
    
    // --- Constructor --- //
    public dbPerson(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    // --- Custom Methods --- //
    public void prepareCstm(){
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_person(?,?,?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_group", getIDGr());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_egn", getEGN());
            getCstm().setString("in_nomlk", getNomLK());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_comment", getComment());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
 
    public void insertRow(int in_id_group, int in_code) {
        setComprator(1);
        this.setIDGr(in_id_group);
        this.setCode(in_code);
        this.egn = "";
        this.nomlk = "";
        this.setName("");
        this.setComment("");
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_id_group, int in_code, String in_egn, String in_nomlk, String in_name, String in_comment) {
        setComprator(2);
        this.setId(in_id);
        this.setIDGr(in_id_group);
        this.setCode(in_code);
        this.egn = in_egn;
        this.nomlk = in_nomlk;
        this.setName(in_name);
        this.setComment(in_comment);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet searchRecords(int in_code, String in_egn, String in_name) {
        setComprator(5);
        this.setCode(in_code);
        this.egn = in_egn;
        this.setName(in_name);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public int getMaxGrID() {
        setComprator(9);
        int actInt = -1;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                actInt = getRs().getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return actInt;
    }
    
    public void setEGN(String EGN) {
        this.egn = EGN;
    }
    
    public String getEGN() {
        return egn;
    }
    
    public void setNomLK(String NomLK) {
        this.nomlk = NomLK;
    }
    
    public String getNomLK() {
        return nomlk;
    }
    
    public String[] getPersonGroups() {
        setComprator(6);
        String actStr = new String("");
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        // nova ideq porodena ot fakta 4e pri razdelqneto na stringa i
        //ako imeto na ednata kletka ima intervali no se polu4ava gre6ka
        java.util.HashMap Groups = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Groups.put(new Integer(getRs().getInt("id_n_group")), new String(getRs().getString("name_n_group")));
                in.add(new Integer(getRs().getInt("id_n_group")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexConnOfId = new int[i];
        it = in.iterator();
        splitGroupNames = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexConnOfId[i] = (Integer) it.next();
            splitGroupNames[i] = (String) Groups.get(indexConnOfId[i]);
            i++;
        }
        return splitGroupNames;
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
}
