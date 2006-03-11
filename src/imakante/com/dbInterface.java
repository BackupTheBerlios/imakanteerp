
package imakante.com;

public interface dbInterface {
    
    void close();

    void deleteRow(int in_id);

    String getComment();

    int getComprator();

    java.sql.Connection getConn();

    java.sql.CallableStatement getCstm();

    int getIDGr();

    int getId();

    int getMaxCod();

    int getMaxId();

    String getName();

    java.sql.ResultSet getRs();

    java.sql.Statement getStm();

    java.sql.ResultSet getTable();

    int getCode();

    void insertRow(int in_code, int in_id_groupe);

    void setComment(String Comment);

    void setComprator(int com);

    void setConn(java.sql.Connection conn);

    void setCstm(java.sql.CallableStatement cstm);

    void setIDGr(int COD);

    void setId(int ID);

    void setName(String Name);

    void setRs(java.sql.ResultSet rs);

    void setStm(java.sql.Statement stm);

    void setCode(int anid);
    
}
