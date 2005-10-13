
package imakante.com;

public  class dbObject {

    public dbObject(java.sql.Connection connection) {
        setConn(connection);
    }
    
    private java.sql.Connection conn;

    public java.sql.Connection getConn() {
        return conn;
    }

    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
}
