
package nom;

import com.mysql.jdbc.Statement;
import java.sql.*;
import imakante.com.*;
import java.sql.ResultSetMetaData;
import java.util.*;


public class commonNom extends dbObject 
{
   private String dbName = "frmtest.";   // imeto na bazata 
   private String sqlTableInfo = "nomInfo"; // imeto na tablicata za informaciq
   
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private Connection conn;
   
    
   private String nameTableCyr, nameTableLat, nameColumns, sqlProcedure, nameParameter; //poleta ot tablicata sydyrza6ta informaciq za razli4nite NOM
   private String editField;      // sydyrza poletata koito 6te mogat da se redaktirat
   private String searchField;          //sydyrza poleta 4rez koito 6te moje da se tyrsi
   private int countColumns; // broq na kolonite na syotvetnata NOM
   private Object ob[];  // stoinostite na parametrite         
   private int typeSQL[]; //masiv opisva6t typovete v sql       
   public CTableInfo tableInfo=null; 
   private int Comprator = 0;
   private int c1=0;
   private ResultSetMetaData rSetMetaData=null;
   
    /** Creates a new instance of commonNom */
    public commonNom(java.sql.Connection conn, int idNom) //OK
    {
        super(conn);
        this.conn = conn;
        int countColumnsMeta  = 0;
        try
        {
         createStatement();
         getTableInfoNom(idNom);
         prepareCstm(sqlProcedure);
         Comprator = 0;
         setStartParameter();
         registerStartParameters();
         rs = cstm.executeQuery();
         rSetMetaData = rs.getMetaData();
         countColumnsMeta = rSetMetaData.getColumnCount();
         typeSQL = new int[countColumnsMeta];
      
         
         for(int i = 0 ; i < countColumnsMeta; i++)
         {
             typeSQL[i]=rSetMetaData.getColumnType((i+1));
         }
         tableInfo = new CTableInfo(nameTableLat,nameParameter,typeSQL);
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
    }
   public void createStatement() //OK
   {
       try
       {
       stmt = conn.createStatement();
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
   }
    private void prepareCstm(String procedure) //OK
    { 
        try 
        {
            cstm = conn.prepareCall(procedure);
            
          
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
    }
    private java.sql.ResultSet prepareRezult()//OK
    {
        try
        {
           registerParameters();
           rs =  cstm.executeQuery();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       return rs; 
    }
    public boolean getTableInfoNom(int idNom) //OK
    {
        
        String tableInfo = "SELECT * FROM "+sqlTableInfo+" where id ="; // zaqvka za izvlivane na informaciq za syotvetnata NOM
      
        tableInfo += String.valueOf(idNom);
        boolean return_check = false;    // buleva stoinost za proverka pri izvikvane na funkciite getTableCyr, getTableLat,getNameColumns, getSqlProcedure
        try
        {
            rs = stmt.executeQuery(tableInfo);
            while(rs.next())
            {
                nameTableCyr = rs.getString("nametableCyr");
                nameTableLat = rs.getString("nameTableLat");
                nameColumns = rs.getString("nameColumns");
                sqlProcedure = rs.getString("sqlProcedure");
                nameParameter = rs.getString("nameParameter");
                countColumns = rs.getInt("countColumns");
                editField = rs.getString("editField");
                searchField = rs.getString("searchField");
                return_check = true;
           }
           
    
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       return return_check; 
    }
 
     private void registerParameters() //OK
     {
         try
         {
              for(int i =0; i < tableInfo.splitParameters.length;i++)
              {

                   cstm.setObject(tableInfo.splitParameters[i],tableInfo.getParametersData(Comprator)[i],tableInfo.getSqlParamType()[i]);
              }
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
       
    }
     
    public void setColumsData(Object ob[]) //OK
    {
        tableInfo.setColumnsData(ob);
    }
     private void registerStartParameters() //OK
     {
      String splitParameter[] = nameParameter.split(" ");
        try
        {
            for(int i = 0; i < splitParameter.length; i++)
            {
                cstm.setObject(splitParameter[i],ob[i]); 
            }
         
            System.out.println("ot registerparameter");
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
    }
  
     public void setStartParameter() //OK -  pri uslovie 4e imeto na kolonata e 4ast ot imeto na parametyra 
     {                            // t.e ime na kolona - "name" => parameter  - "in_name"
      String splitParameter[] = nameParameter.split(" ");
      ob = new Object[splitParameter.length];
        
         for(int i = 0;i<ob.length;i++)
         {
             if(splitParameter[i].equals("comprator"))
             {
                 ob[i]=Comprator;
             }
             else
             {
                 ob[i] = null;
             }
             
         }
         
     }
    
 public java.sql.ResultSet getTable() //OK
   {
    try
     {
       setStartParameter();
       registerStartParameters();
       rs = cstm.executeQuery();
            
     }
     catch(java.sql.SQLException sqle)
     {
         sqle.printStackTrace();
     }
        System.out.println("ot getTable()");
        return rs;
    }

 public void setComprator(int comprator) //OK
   {
        this.Comprator = comprator;
   }
 public int getComprator()  //OK
   {
      return Comprator;
  }
 public void close() //OK
   {
        try{
            rs.close();
            rs=null;
        }catch(java.sql.SQLException sqle){}
        
        try{
            cstm.close();
            cstm=null;
        }catch(java.sql.SQLException sqle){}
        
    }
 public java.sql.CallableStatement getCstm() //OK
   {
        return cstm;
    }
 public java.sql.ResultSet getRs() //OK
   {
        return rs;
    }
 public java.sql.Statement getStm() //OK
   {
        return stmt;
  } 
 public java.sql.Connection getConn() // OK
   {
      return conn;
 }   
 public void deleteALL() //OK
   {
        Comprator = 8;
        try{
            //registerParameters();
            registerStartParameters();
            cstm.execute();} catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
 public int getMaxId() //OK
   {
        int i = 0;
        Comprator = 7;
        try{
           registerStartParameters();
           rs = cstm.executeQuery();
            while(rs.next()){
                i=rs.getInt(1);
            }
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        return i;
    }
 public java.sql.ResultSet searchRecords(Object ob[]) //OK
   {
        Comprator = 5;
       try
       {
           tableInfo.setColumnsData(ob);
            registerParameters();
            rs = cstm.executeQuery();
       }
       catch(java.sql.SQLException sqle)
       {
           sqle.printStackTrace();
       }
        return rs;
        
    } 
  public Object[] getRow(int in_id) //OK
  {
        Comprator = 4;
       Object ob[] = new Object[tableInfo.splitParameters.length];
       Object obData[] = new Object[tableInfo.splitColumns.length];
       for(int i = 0; i < ob.length; i++)
       {
          if(tableInfo.splitParameters[i].equals("in_id")) ob[i]=new Integer(in_id);
          else ob[i]  = null;
       }
       tableInfo.setColumnsData(ob);
        try{
            registerParameters();
            rs = cstm.executeQuery();
           
            while(rs.next()){
                for(int i = 0; i < obData.length;i++)
                {
                    obData[i] = rs.getObject(i);
                }
                
            }
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
     return obData;   
    } 
  public void deleteRow(int in_id) //OK
  {
        Comprator = 3;
        Object ob[] = new Object[tableInfo.splitParameters.length];
      /*  for(int i = 0; i < ob.length; i++)
       {
          if(tableInfo.splitParameters[i].equals("in_id")) ob[i]=new Integer(in_id);
          else ob[i]  = null;
       }
       tableInfo.setColumnsData(ob);*/
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
  public void updateRow(Object ob[]) //OK
  {
        Comprator = 2;
        tableInfo.setColumnsData(ob);
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        
    }
  public void insertRow(Object ob[]) //OK
  {
        Comprator = 1;
        tableInfo.setColumnsData(ob);
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
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
}
//-----------------------------------------------------------------------------
class CTableInfo
{
    private String namesColumns;
    private String namesParameters;
    public String splitColumns[] = null;
    public String splitParameters[] = null;
    private int    columnsCount = 0;
    private Object dataOb[]=null;
    private int    indexConnParam[]=null;
    private int splitTypes[] = null;

    public CTableInfo(String namesColumns,String namesParameters, int columnsType[])
    {


        this.namesColumns = namesColumns;
        this.namesParameters = namesParameters;
        this.splitTypes = columnsType;
        splitColumns = namesColumns.split(" ");
        splitParameters = namesParameters.split(" ");
        columnsCount = splitColumns.length;
       createArrayData(0);
       createConnIndex();
     }
    private int createArrayData(int length)
    {
        if(length==0)
            if(columnsCount==0)
                {
                    System.out.println("Error");
                    return 0;
                }
            else dataOb = new Object[columnsCount];
        else dataOb = new Object[length];
        return dataOb.length;
    }
    private void createConnIndex()
    {
        String name;
        String param;

         indexConnParam = new int[splitParameters.length];
         for(int i = 0; i< indexConnParam.length;i++) indexConnParam[i]=-1;
            for(int i=0; i < splitParameters.length;i++)
            {
                param = splitParameters[i];
                for(int j= 0 ; j < columnsCount; j++)
                {
                    name = splitColumns[j];
                   if( param.regionMatches(true,3,name,0,name.length()))
                   {
                       indexConnParam[i] = j;
                   }
                   
                }
            }

    }
    public boolean  setColumnsData(Object ob[])
    {
        if(ob.length == columnsCount)
        {
            for(int i = 0 ; i < columnsCount; i++)
            {
                dataOb[i] = ob[i];

            }
            return true;
        }
        return false;
    }
    public Object[] getParametersData()
    {

        Object ret_ob[] = new Object[splitParameters.length];
        for(int i = 0; i < splitParameters.length; i++)
        {

            if(indexConnParam[i]!= -1) ret_ob[i] = dataOb[indexConnParam[i]];
        }

        return ret_ob;
    }
    public Object[] getParametersData(Integer comprator)
   {
        Object OBcomrator = (Object)comprator;
       Object ret_ob[] = new Object[splitParameters.length];
       for(int i = 0; i < splitParameters.length; i++)
       {

           if(indexConnParam[i]!= -1) ret_ob[i] = dataOb[indexConnParam[i]];
           else ret_ob[i] = OBcomrator;
       }

       return ret_ob;
   }

    public int[] getSqlParamType()
    {
        int ret_int[] = new int[splitParameters.length];
        for(int i = 0; i < splitParameters.length;i++)
        {
            if(indexConnParam[i]!= -1)
                {
                    ret_int[i] = splitTypes[indexConnParam[i]];
                }
             else   ret_int[i] = java.sql.Types.INTEGER;
        }

        return ret_int;
    }
  
}

