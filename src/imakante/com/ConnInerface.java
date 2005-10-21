package imakante.com;

public interface ConnInerface {

	public abstract java.sql.Connection getConn();

	public abstract void setConn(java.sql.Connection conn);

	public abstract java.sql.Statement getStm();

	public abstract void setStm(java.sql.Statement stm);

	public abstract java.sql.CallableStatement getCstm();

	public abstract void setCstm(java.sql.CallableStatement cstm);

	public abstract java.sql.ResultSet getRs();

	public abstract void setRs(java.sql.ResultSet rs);

}