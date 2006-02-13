

package nom;

import com.mysql.jdbc.ResultSetMetaData;
import imakante.com.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class casaDB  extends dbObject {
    //-------------START MyVariables
    private String splitNamesG[];
    private int indexConnOfId[] = null; // masiv prave6t vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata za grupi kasi
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator = 1;
    private int id=0; // imena ot tablicata                                \
    private int code=0; // imena ot tablicata                           \
    private String name; // imena ot tablicata                                 > tablica "kasi"
    private int id_groupe=0; // vryzkata kym tablicata za grope  /
    private String comment="";//                                                  /
    private Connection conn;
    //-------------END MyVariables
    
    /** Creates a new instance of kasiDB */
    public casaDB(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
        
    }
      protected void prepareCstm()
    {
        try {
            
            setCstm(getConn().prepareCall("{call nom_procedure_casa(?,?,?,?,?,?)}"));
            
        } catch (SQLException sqle) {sqle.printStackTrace();}
    }
    protected void registerParameters() //OK
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
}// end class
