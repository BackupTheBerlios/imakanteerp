
//TOVA E ZPOCHNATOTO OT MEN KATO OBEKT
// NE E KRAINA FAZA ZASHOTO PREDSTOI REFRAKTORING
//SAMO GO DAVAM GORE DOLU DA SE ORIENTIRASH
// REFRAKTORINGA SHE VKLIUCHVA I SUPER CLASS
// PONE TAKA SAM GO PISAL PAK SHE VIDIM

package imakante.com.dbo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dbN_product_all_measure extends java.lang.Object{
    
    private java.sql.Connection conn;
    private java.sql.PreparedStatement statement;
    private java.sql.ResultSet rs;
    private java.sql.ResultSetMetaData rsmd;
    
    
    //table fields
    private Long id_pam;       // int 11
    private String name_pam;   //varchar 30
    private int name_pam_size = 30;
    private String sname_pam;  //varchar 6
    private int sname_pam_size = 6;
    private int parametar_count = 3;
    
    //
    private String selectPlain = "select * from n_product_all_measure";
    
    private String selectPlainFields = "select id_pam, name_pam, sname_pam from n_product_all_measure" ;
    
    private String insertPlainFields = "insert into n_product_all_measure (id_pam, name_pam, sname_pam) values (?, ?, ?)";
    
    private String updateByKey = "update n_product_all_measure set name_pam = ?, sname_pam = ? where id_pam = ?";
    
    private String deleteByKey = "delete from n_product_all_measure where id_pam = ?" ;
    
    private String updatesByNam_pam;
    
    private String updatesBySnam_pam;
    
    private String deleteByName_pam;
    
    private String deleteBySname_pam;
    
    
    
    
    //Constructor
    
    public dbN_product_all_measure(java.sql.Connection conn) {
        conn = conn;
        
    }
    
    //init fields
    private void initMainFields() throws SQLException{
        Select(selectPlain);
        rsmd = rs.getMetaData();
        
    }
    // SET WITH INTERNAL FIELDS
    private void setFields() throws SQLException {
        statement.setLong(1, id_pam);
        statement.setString(2, name_pam);
        statement.setString(3, sname_pam);
    }
    
    //SET WITH EXTERNAL FIELDS
    private void setFields(long a, String b, String c) throws SQLException{
        id_pam = a;
        name_pam = b;
        sname_pam = c;
        setFields();
    }
    
    
    // SELECT
    private void Select(String q) throws SQLException{
        
        statement = conn.prepareStatement(q);
        rs = statement.executeQuery();
        
    }
    
    public void SelectPlain() throws SQLException{
        Select(selectPlain);
    }
    // SELECT WITH CURENT DB STATUS
    public void SelectFields() throws SQLException{
        Select(selectPlainFields);
        
    }
    
    //COUNT RS
    public int getAfectedRowCount()throws SQLException{
        int i = 0;
        if(!rs.wasNull()){
            rs.beforeFirst();
            while(rs.next()){
                long j = rs.getInt(1);
                i++;
            }
        }
        return i;
    }
    
    public int getMaxId()throws SQLException{
        int i = 0;
        SelectPlain();
        return i;
    }
    
    //INSERT WITH CURENT DB STATUS
    public void Insert() throws SQLException{
        statement = conn.prepareStatement(insertPlainFields);
        setFields();
        statement.execute();
        //  statement.close();
        
        
    }
    
    
// UPDATE
    private void Update(String q) throws SQLException{
        statement = conn.prepareStatement(q);
        setFields();
        statement.execute();
        //statement.close();
        
    }
    
    //UPDATE BY KEY
    public void UpdateByKey() throws SQLException{
        Update(updateByKey);
    }
    
    //SPECIFIC UPDATES
    
    public void UpdateByName_pam() throws SQLException{
        Update(updatesByNam_pam);
    }
    public void UpdateBySname_pam() throws SQLException{
        Update(updatesBySnam_pam);
    }
    
    //DELETE
    private void Delete(String q) throws SQLException{
        statement = conn.prepareStatement(q);
        setFields();
        statement.execute();
        // statement.close();
    }
    
    //DELETE BY PRIMARY KEY
    public void DeleteByKey() throws SQLException{
        Delete(deleteByKey);
    }
    // SPECIFIC DELETE
    public void DeleteByName_pam() throws SQLException{
        Delete(deleteByName_pam);
    }
    
    public void DeleteBySname_pam() throws SQLException{
        Delete(deleteBySname_pam);
    }
    
    
}
