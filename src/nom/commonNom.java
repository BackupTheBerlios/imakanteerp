
package nom;

public class commonNom extends imakante.com.dbObject {
    private String dbName = "frmtest.";   // imeto na bazata
    private String sqlTableInfo = "nomInfo"; // imeto na tablicata za informaciq
    
    private java.sql.Connection conn;
    private String nameTableCyr, nameTableLat, nameColumns, sqlProcedure, nameParameter; //poleta ot tablicata sydyrza6ta informaciq za razli4nite NOM
    private String editField;      // sydyrza poletata koito 6te mogat da se redaktirat
    private String searchField;          //sydyrza poleta 4rez koito 6te moje da se tyrsi
    private int countColumns; // broq na kolonite na syotvetnata NOM
    private Object ob[];  // stoinostite na parametrite
    private int typeSQL[]; //masiv opisva6t typovete v sql
    public CTableInfo tableInfo = null;
    private int c1=0;
    private java.sql.ResultSetMetaData rSetMetaData = null;
    
    public commonNom(java.sql.Connection conn, int idNom) {
        super(conn);
        this.conn = conn;
        int countColumnsMeta = 0;
        try {
            createStatement();
            getTableInfoNom(idNom);
            prepareCstm(sqlProcedure);
            setComprator(0);
            setStartParameter();
            registerStartParameters();
            setRs(getCstm().executeQuery());
            rSetMetaData = getRs().getMetaData();
            countColumnsMeta = rSetMetaData.getColumnCount();
            typeSQL = new int[countColumnsMeta];
            for(int i = 0 ; i < countColumnsMeta; i++) {
                typeSQL[i]=rSetMetaData.getColumnType((i+1));
            }
            tableInfo = new CTableInfo(nameTableLat, nameParameter, typeSQL);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    public void createStatement() {
        try {
            setStm(conn.createStatement());
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void prepareCstm(String procedure) {
        try {
            setCstm(conn.prepareCall(procedure));
        } catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void prepareRezult() {
    }
    
    public boolean getTableInfoNom(int idNom) {
        
        String tableInfo = "SELECT * FROM "+sqlTableInfo+" where id ="; // zaqvka za izvlivane na informaciq za syotvetnata NOM
        
        tableInfo += String.valueOf(idNom);
        boolean return_check = false;    // buleva stoinost za proverka pri izvikvane na funkciite getTableCyr, getTableLat,getNameColumns, getSqlProcedure
        try {
            setRs(getStm().executeQuery(tableInfo));
            while(getRs().next()) {
                nameTableCyr = getRs().getString("nametableCyr");
                nameTableLat = getRs().getString("nameTableLat");
                nameColumns = getRs().getString("nameColumns");
                sqlProcedure = getRs().getString("sqlProcedure");
                nameParameter = getRs().getString("nameParameter");
                countColumns = getRs().getInt("countColumns");
                editField = getRs().getString("editField");
                searchField = getRs().getString("searchField");
                return_check = true;
            }
        } catch(Exception e) { e.printStackTrace(); }
        return return_check;
    }
    
    public void registerParameters() {
        try {
            for(int i =0; i < tableInfo.splitParameters.length;i++) {
                
                getCstm().setObject(tableInfo.splitParameters[i], tableInfo.getParametersData(getComprator())[i], 
                        tableInfo.getSqlParamType()[i]);
            }
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    public void setColumsData(Object ob[]) {
        tableInfo.setColumnsData(ob);
    }
    
    private void registerStartParameters() {
        String splitParameter[] = nameParameter.split(" ");
        try {
            for(int i = 0; i < splitParameter.length; i++) {
                getCstm().setObject(splitParameter[i],ob[i]);
            }
            System.out.println("ot registerparameter");
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void setStartParameter() {//OK -  pri uslovie 4e imeto na kolonata e 4ast ot imeto na parametyra
        // t.e ime na kolona - "name" => parameter  - "in_name"
        String splitParameter[] = nameParameter.split(" ");
        ob = new Object[splitParameter.length];
        for(int i = 0; i < ob.length; i++) {
            if(splitParameter[i].equals("comprator")) {
                ob[i] = getComprator();
            } else {
                ob[i] = null;
            }
        }
    }
    
    public java.sql.ResultSet getTable() {
        try {
            setStartParameter();
            registerStartParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        System.out.println("ot getTable()");
        return getRs();
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void deleteALL() {
        setComprator(8);
        try{
            //registerParameters();
            registerStartParameters();
            getCstm().execute();} catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    public int getMaxId() {
        int i = 0;
        setComprator(7);
        try{
            registerStartParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()){
                i = getRs().getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return i;
    }
    
    public java.sql.ResultSet searchRecords(Object ob[]) {
        setComprator(5);
        try {
            tableInfo.setColumnsData(ob);
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public Object[] getRow(int in_id) {
        setComprator(4);
        Object ob[] = new Object[tableInfo.splitParameters.length];
        Object obData[] = new Object[tableInfo.splitColumns.length];
        for(int i = 0; i < ob.length; i++) {
            if(tableInfo.splitParameters[i].equals("in_id")) ob[i]=new Integer(in_id);
            else ob[i]  = null;
        }
        tableInfo.setColumnsData(ob);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()){
                for(int i = 0; i < obData.length;i++) {
                    obData[i] =getRs().getObject(i);
                }
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return obData;
    }
    
    public void deleteRow(int in_id) {
        setComprator(3);
        Object ob[] = new Object[tableInfo.splitParameters.length];
      /*  for(int i = 0; i < ob.length; i++)
       {
          if(tableInfo.splitParameters[i].equals("in_id")) ob[i]=new Integer(in_id);
          else ob[i]  = null;
       }
       tableInfo.setColumnsData(ob);*/
        try{
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(Object ob[]) {
        setComprator(2);
        tableInfo.setColumnsData(ob);
        try{
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(Object ob[]) //OK
    {
        setComprator(1);
        tableInfo.setColumnsData(ob);
        try{
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
 /*public  static void  main(String args[])
   {
      Connection ccc;
      String User="javauser";
      String Pass="javadude";
      String Url = "jdbc:mysql://127.0.0.1:3306/frmtest";
       try
         {
          Class.forName("com.mysql.jdbc.Driver");
  
           ccc = DriverManager.getConnection(Url, User, Pass);
          commonNom c1 = new commonNom(ccc,2);
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
  
   }*/
    
    protected void prepareCstm() {
    }
}
//-----------------------------------------------------------------------------
class CTableInfo {
    private String namesColumns;
    private String namesParameters;
    public String splitColumns[] = null;
    public String splitParameters[] = null;
    private int    columnsCount = 0;
    private Object dataOb[] = null;
    private int    indexConnParam[] = null;
    private int splitTypes[] = null;
    
    public CTableInfo(String namesColumns, String namesParameters, int columnsType[]) {
        this.namesColumns = namesColumns;
        this.namesParameters = namesParameters;
        this.splitTypes = columnsType;
        splitColumns = namesColumns.split(" ");
        splitParameters = namesParameters.split(" ");
        columnsCount = splitColumns.length;
        createArrayData(0);
        createConnIndex();
    }
    
    private int createArrayData(int length) {
        if(length == 0)
            if(columnsCount == 0) {
            System.out.println("Error");
            return 0;
            } else dataOb = new Object[columnsCount];
        else dataOb = new Object[length];
        return dataOb.length;
    }
    
    private void createConnIndex() {
        String name;
        String param;
        indexConnParam = new int[splitParameters.length];
        for(int i = 0; i < indexConnParam.length; i++) indexConnParam[i] = -1;
        for(int i = 0; i < splitParameters.length; i++) {
            param = splitParameters[i];
            for(int j = 0 ; j < columnsCount; j++) {
                name = splitColumns[j];
                if( param.regionMatches(true, 3, name, 0, name.length())) {
                    indexConnParam[i] = j;
                }
            }
        }
    }
    
    public boolean  setColumnsData(Object ob[]) {
        if(ob.length == columnsCount) {
            for(int i = 0 ; i < columnsCount; i++) {
                dataOb[i] = ob[i];
            }
            return true;
        }
        return false;
    }
    
    public Object[] getParametersData() {
        Object ret_ob[] = new Object[splitParameters.length];
        for(int i = 0; i < splitParameters.length; i++) {
            if(indexConnParam[i] != -1) ret_ob[i] = dataOb[indexConnParam[i]];
        }
        return ret_ob;
    }
    
    public Object[] getParametersData(Integer comprator) {
        Object OBcomrator = (Object) comprator;
        Object ret_ob[] = new Object[splitParameters.length];
        for(int i = 0; i < splitParameters.length; i++) {
            if(indexConnParam[i]!= -1) ret_ob[i] = dataOb[indexConnParam[i]];
            else ret_ob[i] = OBcomrator;
        }
        return ret_ob;
    }
    
    public int[] getSqlParamType() {
        int ret_int[] = new int[splitParameters.length];
        for(int i = 0; i < splitParameters.length; i++) {
            if(indexConnParam[i] != -1) {
                ret_int[i] = splitTypes[indexConnParam[i]];
            } else   ret_int[i] = java.sql.Types.INTEGER;
        }
        return ret_int;
    }
    
}

