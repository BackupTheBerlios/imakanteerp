
package nom;

public class dbPerson extends imakante.com.dbObject {
    
    // --- Custom Members --- //
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    
    private int comprator = 1;
    
    // --- Constructor --- //
    public dbPerson(java.sql.Connection conn) {
        super(conn);
        prepareCStm();
    }
    
    
    // --- Custom Methods --- //
    private void prepareCStm(){
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_casa(?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
    }
    
    public java.sql.ResultSet getTable() {
        
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        return rs;
    }
    private void registerParameters() //OK
    {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_groupe", getIDGr());
            getCstm().setInt("in_code", getcode());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_comments", getComment());
                       
            
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
    }
    private void prepareRezult() //OK
    {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    public void insertRow(int in_code, int in_id_groupe) // OK  comprator = 1;
    {
        comprator = 1;
        
        this.code = in_code;
        this.name = "";
        this.id_groupe = in_id_groupe;
        this.comment = "";
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
    }
    public void updateRow(int in_id,  int in_id_groupe, int in_code, String in_name, String in_comment) //OK   comprator = 2;
    {
        comprator = 2;
        this.id = in_id;
        this.id_groupe = in_id_groupe;
        this.code = in_code;
        this.name = in_name;
        this.comment = in_comment;
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
    }
    public void deleteRow(int in_id) //OK   comprator = 3;
    {
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    public java.sql.ResultSet getRow(int in_id) //OK  comprator = 4;
    {
        comprator = 4;
        id = in_id;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                id_groupe = rs.getInt("id_groupe");
                name = rs.getString("name");
                code = rs.getInt("code");
                comment = rs.getString("comments");
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return rs;
    }
    
    public java.sql.ResultSet searchRecords( int in_code, String in_name) // -OK  comprator = 5;
    {
        comprator = 5;
        
        this.code = in_code;
        this.name = in_name;
        
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return getRs();
        
    }
   
    
    public java.sql.Connection getConn() //OK
    {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) //OK
    {
        this.conn = conn;
    }
    
    public java.sql.Statement getStm() //OK
    {
        return stmt;
    }
    
    public void setStm(java.sql.Statement stm) //KO
    {
        this.stmt = stm;
    }
    
    public java.sql.CallableStatement getCstm() //OK
    {
        return cstm;
    }
    
    public void setCstm(java.sql.CallableStatement cstm) //OK
    {
        this.cstm = cstm;
    }
    
    public java.sql.ResultSet getRs() //OK
    {
        return rs;
    }
    public void setRs(java.sql.ResultSet rs) //OK
    {
        this.rs = rs;
    }
    public void setId(int ID) //OK
    {
        this.id = ID;
    }
    public int getId() //OK
    {
        return id;
    }
    
    
    public int getMaxId() //OK    comprator = 7;
    {
        comprator = 7;
        int return_int=-1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return return_int;
    }
    
    
    
    public int getMaxCod() //OK    comprator = 8;
    {
        comprator = 8;
        int return_int=-1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return return_int;
    }
    
   public int getMaxGrID() //OK    comprator = 8;
    {
        comprator = 9;
        int return_int=-1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return return_int;
    }
     
    public void setIDGr(int COD) //OK
    {
        this.id_groupe = COD;
    }
    public int getIDGr() //OK
    {
        return id_groupe;
    }
    public void setName(String Name) //OK
    {
        this.name = Name;
    }
    public String getName() //OK
    {
        return name;
    }
    public void setcode(int anid) //OK
    {
        this.code = anid;
    }
    public int getcode() //OK
    {
        return code;
    }
    public int getComprator() //OK
    {
        return comprator;
    }
    public void setComprator(int com) //OK
    {
        this.comprator = com;
    }
    
    public void setComment(String Comment){
    
    this.comment = Comment;
    
    }
    public String getComment(){
    return comment;
    }
    
    public void close() //OK
    {
        try{
            rs.close();
            rs=null;
        }catch(java.sql.SQLException sqle){}
        
        try{
            cstm.close();
            cstm=null;
        }catch(java.sql.SQLException sqle){}
        
    }
    public String[] getCasaG() //test comprator = 6;
    {
        comprator=6;
        String return_str=new String("");
        int oldId = id;
        ResultSet oldRs = rs;
        String strIndexConnOfId = new String("");
        ArrayList in = new ArrayList();
        Iterator it = null;
        // nova ideq porodena ot fakta 4e pri razdelqneto na stringa i
        //ako imeto na ednata kletka ima intervali no se polu4ava gre6ka
        HashMap Gropes = new HashMap();
        int i = 0;
        
        try {
            registerParameters();
            rs = cstm.executeQuery();
            
            
            while(rs.next()) {
                Gropes.put(new Integer(rs.getInt("id_n_group")),new String(rs.getString("name_n_group")));
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
        
        splitNamesG = new String[i];
        i=0;
        while(it.hasNext()) {
            indexConnOfId[i] =(Integer) it.next();
            splitNamesG[i] = (String) Gropes.get(indexConnOfId[i]);
            i++;
        }
        
        
        
        return splitNamesG;
    }
    
    public int[] getIndexConnOfId() //OK
    {
        return indexConnOfId;
    }
}
