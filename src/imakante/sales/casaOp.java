

package imakante.sales;

import com.mysql.jdbc.ResultSetMetaData;
import imakante.com.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class casaOp  extends dbObject {
    //-------------START MyVariables
    private String splitNamesG[]; //kasi
    private String splitNamesM[]; //Money
    private String splitNamesD[]; // Doc
    
    private int indexConnOfId[] = null; // masiv prave6t vryzkata mejdu indexite na ComboBox_a i "ID" na tablicata za kasi
    private int indexMoney[] = null; // masiv valuti
    private int indexDoc[] = null; // vid doc prihodni orderi
    
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    
   
//              IN in_id INT(11),
//              IN in_number_sl_mop INT(11), code go zamenia v obekta
   private     int in_in_sl_mop=0;
   private     int in_outsl_mop=0;
   private     int in_id_order_spec = 0 ;
   private     int in_id_order_spec_type= 1;
   private     int in_id_order_doc = 0;
   private     String in_DATE;
   private     int in_id_n_money=1;
   private     double in_exchange_rate = 1;
   private     double in_sum_sl_mop;
   private     double in_sum_os_val_sl_mop;
   private     int in_user_id;
   private     int in_id_sdtn  = 1;
//              IN in_comment_sl_mop VARCHAR(250)) comment
//              
    private Connection conn;
    //-------------END MyVariables
    
    /** Creates a new instance of kasiDB */
    public casaOp(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
        
    }
    protected void prepareCstm() {
        try {
            
            setCstm(getConn().prepareCall("{call sl_procedure_case_in(?,?,?,?,?,?)}"));
            
        } catch (SQLException sqle) {sqle.printStackTrace();}
    }
    protected void registerParameters() //OK
    {
        try {
            
            
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_number_sl_mop", getCode());
            getCstm().setInt("in_outsl_mop", in_outsl_mop);
            getCstm().setInt("in_id_order_spec", in_id_order_spec);
            getCstm().setInt("in_id_order_spec_type", in_id_order_spec_type);
            getCstm().setInt("in_id_order_doc", in_id_order_doc);
            getCstm().setString("in_date_is", in_DATE);
            getCstm().setInt("in_id_n_money", in_id_n_money);
            getCstm().setDouble("in_sum_sl_mop", in_sum_sl_mop);
            getCstm().setDouble("in_sum_os_val_sl_mop", in_sum_os_val_sl_mop);
            getCstm().setInt("in_user_id", in_user_id);
            getCstm().setInt("in_id_sdtn", in_id_sdtn);
            getCstm().setString("in_comments", getComment());
            
  
 
  
 
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
    }
    public void updateRow(int in_id,  int in_id_groupe, int in_code, String in_name, String in_comment) //OK   comprator = 2;
    {
        setComprator(2);
        setId(in_id);
       
        setCode(in_code);
       
        setComment(in_comment);
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
    }
    
    public java.sql.ResultSet searchRecords( int in_code, String in_name) // -OK  comprator = 5;
    {
        setComprator(5);
        
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
        setComprator(9);
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
    public String[] getCasa() //test comprator = 6;
    {
        setComprator(6);
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
            setRs(getCstm().executeQuery());
            
            
            while(rs.next()) {
                Gropes.put(new Integer(rs.getInt("id_n_casa")),new String(rs.getString("code_n_casa")));
                in.add(new Integer(rs.getInt("id_n_casa")));
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
    
    public String[] getMoney() //test comprator = 6;
    {
        setComprator(11);
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
            setRs(getCstm().executeQuery());
            
            
            while(rs.next()) {
                Gropes.put(new Integer(rs.getInt("id_n_money")),new String(rs.getString("code_n_money")));
                in.add(new Integer(rs.getInt("id_n_money")));
                i++;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        rs = oldRs;
        id = oldId;
        indexMoney = new int[i];
        it = in.iterator();
        
        splitNamesM = new String[i];
        i=0;
        while(it.hasNext()) {
            indexMoney[i] =(Integer) it.next();
            splitNamesM[i] = (String) Gropes.get(indexMoney[i]);
            i++;
        }
        
        
        
        return splitNamesM;
    }
    
    
    
    public int[] getIndexMoney() //OK
    {
        return indexMoney;
    }
    
    
    
    public String[] getDoc() //test comprator = 6;
    {
        setComprator(12);
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
            setRs(getCstm().executeQuery());
            
            
            while(rs.next()) {
                Gropes.put(new Integer(rs.getInt("id_n_incoms")),new String(rs.getString("name_n_incoms")));
                in.add(new Integer(rs.getInt("id_n_incoms")));
                i++;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        rs = oldRs;
        id = oldId;
        indexDoc = new int[i];
        it = in.iterator();
        
        splitNamesD = new String[i];
        i=0;
        while(it.hasNext()) {
            indexDoc[i] =(Integer) it.next();
            splitNamesD[i] = (String) Gropes.get(indexDoc[i]);
            i++;
        }
        
        
        
        return splitNamesD;
    }
    
    
    
    public int[] getIndexDoc() //OK
    {
        return indexDoc;
    }
    
    
    
    
}// end class
