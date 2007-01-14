
package imakante.com.dbo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public abstract class dboClass {
    private java.sql.Connection conn;
    private java.sql.PreparedStatement statement;
    private java.sql.ResultSet rs;
    private java.sql.ResultSetMetaData rsmd;
    
    
    
    private String selectPlain = "";
    
    private String selectPlainFields = "" ;
    
    private String insertPlainFields = "";
    
    private String updateByKey = "";
    
    private String deleteByKey = "" ;
    private int parametar_count = 0;
    
    /** Creates a new instance of NewClass */
    public dboClass(java.sql.Connection connection) {
        setConn(connection);
    }
    
    abstract void setFields() throws SQLException;
    
     
    // SELECT
    private void Select(String q) throws SQLException{
        
        setStatement(getConn().prepareStatement(q));
        setRs(getStatement().executeQuery());
        
    }
    
    // UPDATE
    private void Update(String q) throws SQLException{
        setStatement(getConn().prepareStatement(q));
        setFields();
        getStatement().execute();
        //statement.close();
        
    }
    
    //DELETE
    private void Delete(String q) throws SQLException{
        setStatement(getConn().prepareStatement(q));
        setFields();
        getStatement().execute();
        // statement.close();
    }
    //DELETE BY PRIMARY KEY
    public void DeleteByKey() throws SQLException{
        Delete(getDeleteByKey());
    }
    
    
    //INSERT WITH CURENT DB STATUS
    public void Insert() throws SQLException{
        setStatement(getConn().prepareStatement(getInsertPlainFields()));
        setFields();
        getStatement().execute();
        //  statement.close();
        
        
    }
    
    // SELECT WITH CURENT DB STATUS
    public void SelectFields() throws SQLException{
        Select(getSelectPlainFields());
        
    }
    
    
    public void SelectPlain() throws SQLException{
        Select(getSelectPlain());
    }
    
    
    //UPDATE BY KEY
    public void UpdateByKey() throws SQLException{
        Update(getUpdateByKey());
    }
    
    
    //COUNT RS
    public int getAfectedRowCount() throws SQLException{
        int i = 0;
        if (!getRs().wasNull()){
            getRs().beforeFirst();
            while (getRs().next()){
                long j = getRs().getInt(1);
                i++;
            }
        }
        return i;
    }
    
    
    public Connection getConn() {
        return conn;
    }
    
    
    public String getDeleteByKey() {
        return deleteByKey;
    }
    
    
    public String getInsertPlainFields() {
        return insertPlainFields;
    }
    
    
    public int getMaxId() throws SQLException{
        int i = 0;
        SelectPlain();
        return i;
    }
    
    
    public int getParametar_count() {
        return parametar_count;
    }
    
    
    public ResultSet getRs() {
        return rs;
    }
    
    
    public ResultSetMetaData getRsmd() {
        return rsmd;
    }
    
    
    public String getSelectPlain() {
        return selectPlain;
    }
    
    
    public String getSelectPlainFields() {
        return selectPlainFields;
    }
    
    
    public PreparedStatement getStatement() {
        return statement;
    }
    
    
    public String getUpdateByKey() {
        return updateByKey;
    }
    
    
    public void setConn(Connection conn) {
        this.conn = conn;
    }
    
    
    public void setDeleteByKey(String deleteByKey) {
        this.deleteByKey = deleteByKey;
    }
    
    
    public void setInsertPlainFields(String insertPlainFields) {
        this.insertPlainFields = insertPlainFields;
    }
    
    
    public void setParametar_count(int parametar_count) {
        this.parametar_count = parametar_count;
    }
    
    
    public void setRs(ResultSet rs) {
        this.rs = rs;
    }
    
    
    public void setRsmd(ResultSetMetaData rsmd) {
        this.rsmd = rsmd;
    }
    
    
    public void setSelectPlain(String selectPlain) {
        this.selectPlain = selectPlain;
    }
    
    
    public void setSelectPlainFields(String selectPlainFields) {
        this.selectPlainFields = selectPlainFields;
    }
    
    
    public void setStatement(PreparedStatement statement) {
        this.statement = statement;
    }
    
    
    public void setUpdateByKey(String updateByKey) {
        this.updateByKey = updateByKey;
    }
    
}
