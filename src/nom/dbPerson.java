
package nom;

public class dbPerson extends imakante.com.dbObject {
    
    // --- Custom Members --- //
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private java.sql.Statement Stm;
    private java.sql.CallableStatement CStm;
    
    private String splitGroupNames[];
    private int indexConnOfId[] = null;
    private int comprator = 1;
    private int id = 0;
    private int id_group = 0;
    private int code = 0;
    private String egn = null;
    private String nomlk = null;
    private String name = null;
    private String comment = null;
    
    // --- Constructor --- //
    public dbPerson(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    
    // --- Custom Methods --- //
    public void prepareCstm(){
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_person(?,?,?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
    }
  
    
    public void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getID());
            getCstm().setInt("in_id_group", getIDGr());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_egn", getEGN());
            getCstm().setString("in_nomlk", getNomLK());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_comment", getComment());
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
    }
 
    public void insertRow(int in_id_group, int in_code) {
        comprator = 1;
        this.id_group = in_id_group;
        this.code = in_code;
        this.egn = "";
        this.nomlk = "";
        this.name = "";
        this.comment = "";
        try {
            registerParameters();
            CStm.execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
    }
    
    public void updateRow(int in_id, int in_id_group, int in_code, String in_egn, String in_nomlk, String in_name, String in_comment) {
        comprator = 2;
        this.id = in_id;
        this.id_group = in_id_group;
        this.code = in_code;
        this.egn = in_egn;
        this.nomlk = in_nomlk;
        this.name = in_name;
        this.comment = in_comment;
        try {
            registerParameters();
            CStm.execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
    }
    
    
    
    public java.sql.ResultSet searchRecords(int in_code, String in_egn, String in_name) {
        comprator = 5;
        this.code = in_code;
        this.egn = in_egn;
        this.name = in_name;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return getRs();
    }
    
    
    public int getID() {
        return id;
    }
    
    public void setID(int ID) {
        this.id = ID;
    }
    
    public int getMaxGrID() {
        comprator = 9;
        int actInt = -1;
        try {
            registerParameters();
            rs = CStm.executeQuery();
            while(rs.next()) {
                actInt = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return actInt;
    }
    
    
  
    
    public void setcode(int anid) {
        this.code = anid;
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
        comprator=6;
        String actStr = new String("");
        int oldId = id;
        java.sql.ResultSet oldRs = rs;
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        // nova ideq porodena ot fakta 4e pri razdelqneto na stringa i
        //ako imeto na ednata kletka ima intervali no se polu4ava gre6ka
        java.util.HashMap Groups = new java.util.HashMap();
        int i = 0;
        
        try {
            registerParameters();
            rs = CStm.executeQuery();
            while(rs.next()) {
                Groups.put(new Integer(rs.getInt("id_n_group")),new String(rs.getString("name_n_group")));
                in.add(new Integer(rs.getInt("id_n_group")));
                i++;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        rs = oldRs;
        id = oldId;
        indexConnOfId = new int[i];
        it = in.iterator();
        splitGroupNames = new String[i];
        i=0;
        while(it.hasNext()) {
            indexConnOfId[i] =(Integer) it.next();
            splitGroupNames[i] = (String) Groups.get(indexConnOfId[i]);
            i++;
        }
        return splitGroupNames;
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }

    
    
    
}
