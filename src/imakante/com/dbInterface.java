
package imakante.com;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public interface dbInterface {
    void close();

    void deleteRow(int in_id);

    String getComment();

    int getComprator();

    Connection getConn();

    CallableStatement getCstm();

    int getIDGr();

    int getId();

    int getMaxCod();

    int getMaxId();

    String getName();

    ResultSet getRs();

    Statement getStm();

    ResultSet getTable();

    int getcode();

    void insertRow(int in_code, int in_id_groupe);

    void setComment(String Comment);

    void setComprator(int com);

    void setConn(Connection conn);

    void setCstm(CallableStatement cstm);

    void setIDGr(int COD);

    void setId(int ID);

    void setName(String Name);

    void setRs(ResultSet rs);

    void setStm(Statement stm);

    void setcode(int anid);
    
}
