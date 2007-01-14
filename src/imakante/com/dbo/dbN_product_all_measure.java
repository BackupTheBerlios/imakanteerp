
//TOVA E ZPOCHNATOTO OT MEN KATO OBEKT
// NE E KRAINA FAZA ZASHOTO PREDSTOI REFRAKTORING
//SAMO GO DAVAM GORE DOLU DA SE ORIENTIRASH
// REFRAKTORINGA SHE VKLIUCHVA I SUPER CLASS
// PONE TAKA SAM GO PISAL PAK SHE VIDIM

package imakante.com.dbo;

import java.sql.SQLException;

public class dbN_product_all_measure extends dboClass{
    
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
    
    //TABLE SPECIFIC
    private String updatesByNam_pam;
    
    private String updatesBySnam_pam;
    
    private String deleteByName_pam;
    
    private String deleteBySname_pam;
    
    
    
    
    //Constructor
    
    public dbN_product_all_measure(java.sql.Connection connection) {
        super(connection);
        
    }
    
    //init fields
    private void initMainFields() throws SQLException{
        Select(getSelectPlain());
        setRsmd(getRs().getMetaData());
        
    }
    // SET WITH INTERNAL FIELDS
    protected void setFields() throws SQLException {
        getStatement().setLong(1, getId_pam());
        getStatement().setString(2, getName_pam());
        getStatement().setString(3, getSname_pam());
    }
    
    //SET WITH EXTERNAL FIELDS
    private void setFields(long a, String b, String c) throws SQLException{
        setId_pam(a);
        setName_pam(b);
        setSname_pam(c);
        setFields();
    }
    
    
    
    //SPECIFIC UPDATES
    
    public void UpdateByName_pam() throws SQLException{
        Update(getUpdatesByNam_pam());
    }
    public void UpdateBySname_pam() throws SQLException{
        Update(getUpdatesBySnam_pam());
    }
    
    
    
    
    // SPECIFIC DELETE
    public void DeleteByName_pam() throws SQLException{
        Delete(getDeleteByName_pam());
    }
    
    public void DeleteBySname_pam() throws SQLException{
        Delete(getDeleteBySname_pam());
    }
    
    public Long getId_pam() {
        return id_pam;
    }
    
    public void setId_pam(Long id_pam) {
        this.id_pam = id_pam;
    }
    
    public String getName_pam() {
        return name_pam;
    }
    
    public void setName_pam(String name_pam) {
        this.name_pam = name_pam;
    }
    
    public int getName_pam_size() {
        return name_pam_size;
    }
    
    public void setName_pam_size(int name_pam_size) {
        this.name_pam_size = name_pam_size;
    }
    
    public String getSname_pam() {
        return sname_pam;
    }
    
    public void setSname_pam(String sname_pam) {
        this.sname_pam = sname_pam;
    }
    
    public int getSname_pam_size() {
        return sname_pam_size;
    }
    
    public void setSname_pam_size(int sname_pam_size) {
        this.sname_pam_size = sname_pam_size;
    }
    
    public String getUpdatesByNam_pam() {
        return updatesByNam_pam;
    }
    
    public void setUpdatesByNam_pam(String updatesByNam_pam) {
        this.updatesByNam_pam = updatesByNam_pam;
    }
    
    public String getUpdatesBySnam_pam() {
        return updatesBySnam_pam;
    }
    
    public void setUpdatesBySnam_pam(String updatesBySnam_pam) {
        this.updatesBySnam_pam = updatesBySnam_pam;
    }
    
    public String getDeleteByName_pam() {
        return deleteByName_pam;
    }
    
    public void setDeleteByName_pam(String deleteByName_pam) {
        this.deleteByName_pam = deleteByName_pam;
    }
    
    public String getDeleteBySname_pam() {
        return deleteBySname_pam;
    }
    
    public void setDeleteBySname_pam(String deleteBySname_pam) {
        this.deleteBySname_pam = deleteBySname_pam;
    }
    
    
}
