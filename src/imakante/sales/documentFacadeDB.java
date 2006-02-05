/*
 *comprator = 0 : getTable()
 *comprator = 1 : insertRow()
 *comprator = 2 : updateRow()
 *comprator = 3 : deleteRow()
 *comprator = 4 : getRow();
 *comprator = 5 : searchRecords()
 *comprator = 6 : getDocNumberLast()
 *comprator = 7 :  getMaxId()
 *comprator = 8 : getTableIncludeTextDistDeliv()
 *comprator = 9 : getTableStartTextDistDeliv()
 *comprator = 10 : getTableFinishTextDistDeliv()
 *comprator = 11 : getTableIncludeTextObekt()
 *comprator = 12 : getTableStartTextObekt()
 *comprator = 13 : getTableFinishTextObekt()
 *comprator = 14 : getTableIncludeTextContragent()
 *comprator = 15 : getTableStartTextContragent()
 *comprator = 16 : getTableFinishTextContragent()
 *comprator = 17 :
 *comprator = 18 :
 *comprator = 19 :
 *comprator = 20 :
 *comprator = 21 :
 *
 *
 *
 *
 *
 *
 *
 * 
 */

package imakante.sales;

import com.mysql.jdbc.ResultSetMetaData;
import imakante.com.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class documentFacadeDB  extends dbObject 
{
    //-------------START MyVariables
   private java.sql.ResultSet rs;
   private java.sql.Statement stmt;
   private java.sql.CallableStatement cstm;
   private int comprator;
   private Connection conn;
  
    private int idDocFacade;
    private int docFacadeNumber;
    private int docFacadeType;
    private String conditionDocFacade;
    private int levelDocFacade;
    private int idContragent_IN;
    private int idContragent_OUT;
    private int idObect_IN;
    private int idObect_OUT;
    private double allDDSPaing=0;
    private double totalPaying=0;
    private int userDocFacade;
    private String docFacadeDate;
    private int storageDocFacade;
    private int idDistributor;
    private int idDeliver;
    private int idFakturaConnection;
    private int idZaqvkaConnection;
    private int descriptionPaying =0;
    private int idPayingOrder;
    private String payingDate;
    private String dateDeliver;
    private int userLastEdit ;
    private String commentDocFacade;
   // private int idrep; //??????? 
    //-------------END MyVariables
    
    /** Creates a new instance of groupDB */
 public documentFacadeDB(java.sql.Connection conn) 
    {
        super(conn);
        prepareCstm();
       
        
    }
    //-------SART MyFunction
 private void prepareCstm() //????? vhodnite parametri  - brojkata
    {
        try {
            
            setCstm(getConn().prepareCall("{call ls_document_facade(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
 public java.sql.ResultSet getTable() //OK
    {
        
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        return rs;
    }
 private void registerParameters() 
    {
         try
         {
            
            getCstm().setInt("in_id_df", getID_DocFacade());                       
            getCstm().setInt("in_id_contragent_in", getID_Contragent_IN());         
            getCstm().setInt("in_id_contragent_out", getID_Contragent_OUT());       
            getCstm().setInt("in_id_obekt_out", getID_Obekt_OUT());                 
            getCstm().setInt("in_id_obekt_in", getID_Obekt_IN());                  
            getCstm().setInt("in_id_distributor", getID_Distributor());            
            getCstm().setInt("in_id_deliver", getID_Deliver());                    
            getCstm().setInt("in_descriptionPaying", getDescriptionPaying());             
            getCstm().setInt("in_docFacadeNumber", getNumberDocFacade());          
            getCstm().setInt("in_docFacadeUser", getUserDocFacade());              
            getCstm().setInt("in_docFacadeUserLastEdit", getUserLastEditDocFacade()); 
            getCstm().setInt("comprator", getComprator()); // izbor na SQL zaqwka
            getCstm().setInt("in_id_facturaConnection", getID_FakturaConnection());    
            getCstm().setInt("in_id_payingOrder", getID_PayingOrder());               
            getCstm().setInt("in_id_zaqvkaConnection", getID_ZaqvkaConnection());     
            getCstm().setInt("in_docFacadeLevel", getLevelDocFacade());          
            getCstm().setInt("in_docFacadeStorage", getStorageDocFacade());      
            getCstm().setInt("in_docFacadeType", getDocFacadeType()); 
            getCstm().setDouble("in_docFacadeAllDDS",getAllDDSPaingDocFacade());       
            getCstm().setDouble("in_docFacadeTotal",getTotalPayingDocFacade());  
            getCstm().setString("in_docFacadeCondition", getConditionDocFacade());   
            getCstm().setString("in_docFacadeDate", getDateDocFacade());            
            getCstm().setString("in_docFacadeCommnet", getCommentDocFacade());
            getCstm().setString("in_dateDeliver", getDateDeliver());  
            getCstm().setString("in_payingDate", getPayingDate()); 
            //25
            
            
            
            System.out.println("ot registerparameter");
        }
         catch(java.sql.SQLException sqle)
         {
             sqle.printStackTrace();
         }
    }
 private void prepareRezult() //OK
    {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
 public void insertRow(int in_id_contragent_out , int in_id_contragent_in,
            int in_id_obekt_out, int in_id_obekt_in, int in_id_distributor, int in_id_deliver,
            int in_descriptionPaying, int in_docFacadeNumber, int in_docFacadeUser, int in_docFacadeUserLastEdit,
            int in_id_facturaConnection, int in_id_payingOrder, int in_id_zaqvkaConnection, int in_docFacadeLevel,
            int in_docFacadeStorage, int in_docFacadeType, double in_docFacadeTotal, double in_docFacadeAllDDS,
            String in_docFacadeCondition, String in_docFacadeDate, String in_docFacadeCommnet,
            String in_dateDeliver, String in_payingDate)
      {
        comprator = 1;
        setID_Contragent_IN(in_id_contragent_in);
        setID_Contragent_OUT(in_id_contragent_out);
        setID_Obekt_IN(in_id_obekt_in);
        setID_Obekt_OUT(in_id_obekt_out);
        setID_Distributor(in_id_distributor);
        setID_Deliver(in_id_deliver);
        setDescriptionPaying(in_descriptionPaying);
        setNumberDocFacade(in_docFacadeNumber);
        setUserDocFacade(in_docFacadeUser);
        setUserLastEditDocFacade(in_docFacadeUserLastEdit);
        setID_FakturaConnection(in_id_facturaConnection);
        setID_PayingOrder(in_id_payingOrder);
        setID_ZaqvkaConnection(in_id_zaqvkaConnection);
        setLevelDocFacade(in_docFacadeLevel);
        setStorageDocFacade(in_docFacadeStorage);
        setDocFacadeType(in_docFacadeType);
        setTotalPayingDocFacade(in_docFacadeTotal);
        setAllDDSPaingDocFacade(in_docFacadeAllDDS);
        setConditionDocFacade(in_docFacadeCondition);
        setDateDocFacade(in_docFacadeDate);
        setCommentDocFacade(in_docFacadeCommnet);
        setDateDeliver(in_dateDeliver);
        setPayingDate(in_payingDate);
        
        
        try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        
    }
 public void updateRow(int in_id_df, int in_id_contragent_out , int in_id_contragent_in,
            int in_id_obekt_out, int in_id_obekt_in, int in_id_distributor, int in_id_deliver,
            int in_descriptionPaying, int in_docFacadeNumber, int in_docFacadeUser, int in_docFacadeUserLastEdit,
            int in_id_facturaConnection, int in_id_payingOrder, int in_id_zaqvkaConnection, int in_docFacadeLevel,
            int in_docFacadeStorage, int in_docFacadeType, double in_docFacadeTotal, double in_docFacadeAllDDS,
            String in_docFacadeCondition, String in_docFacadeDate, String in_docFacadeCommnet,
            String in_dateDeliver, String in_payingDate) 
    {
        comprator = 2;
        setID_DocFacade(in_id_df);
        setID_Contragent_IN(in_id_contragent_in);
        setID_Contragent_OUT(in_id_contragent_out);
        setID_Obekt_IN(in_id_obekt_in);
        setID_Obekt_OUT(in_id_obekt_out);
        setID_Distributor(in_id_distributor);
        setID_Deliver(in_id_deliver);
        setDescriptionPaying(in_descriptionPaying);
        setNumberDocFacade(in_docFacadeNumber);
        setUserDocFacade(in_docFacadeUser);
        setUserLastEditDocFacade(in_docFacadeUserLastEdit);
        setID_FakturaConnection(in_id_facturaConnection);
        setID_PayingOrder(in_id_payingOrder);
        setID_ZaqvkaConnection(in_id_zaqvkaConnection);
        setLevelDocFacade(in_docFacadeLevel);
        setStorageDocFacade(in_docFacadeStorage);
        setDocFacadeType(in_docFacadeType);
        setTotalPayingDocFacade(in_docFacadeTotal);
        setAllDDSPaingDocFacade(in_docFacadeAllDDS);
        setConditionDocFacade(in_docFacadeCondition);
        setDateDocFacade(in_docFacadeDate);
        setCommentDocFacade(in_docFacadeCommnet);
        setDateDeliver(in_dateDeliver);
        setPayingDate(in_payingDate);
        
        
        try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        
        
    }
 public void deleteRow(int in_id_df) //OK
    {
        comprator = 3;
       
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
 public java.sql.ResultSet getRow(int in_id_df) //OK
    {
        comprator = 4;
       setID_DocFacade(in_id_df);
        try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
               
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      return rs;  
    }
 public java.sql.ResultSet searchRecords(int in_id_contragent_out , int in_id_contragent_in,
            int in_id_obekt_out, int in_id_obekt_in, int in_id_distributor, int in_id_deliver,
            int in_descriptionPaying, int in_docFacadeNumber, int in_docFacadeUser, int in_docFacadeUserLastEdit,
            int in_id_facturaConnection, int in_id_payingOrder, int in_id_zaqvkaConnection, int in_docFacadeLevel,
            int in_docFacadeStorage, int in_docFacadeType, double in_docFacadeTotal, double in_docFacadeAllDDS,
            String in_docFacadeCondition, String in_docFacadeDate, String in_docFacadeCommnet,
            String in_dateDeliver, String in_payingDate)
    {
        comprator = 5;
         setID_Contragent_IN(in_id_contragent_in);
        setID_Contragent_OUT(in_id_contragent_out);
        setID_Obekt_IN(in_id_obekt_in);
        setID_Obekt_OUT(in_id_obekt_out);
        setID_Distributor(in_id_distributor);
        setID_Deliver(in_id_deliver);
        setDescriptionPaying(in_descriptionPaying);
        setNumberDocFacade(in_docFacadeNumber);
        setUserDocFacade(in_docFacadeUser);
        setUserLastEditDocFacade(in_docFacadeUserLastEdit);
        setID_FakturaConnection(in_id_facturaConnection);
        setID_PayingOrder(in_id_payingOrder);
        setID_ZaqvkaConnection(in_id_zaqvkaConnection);
        setLevelDocFacade(in_docFacadeLevel);
        setStorageDocFacade(in_docFacadeStorage);
        setDocFacadeType(in_docFacadeType);
        setTotalPayingDocFacade(in_docFacadeTotal);
        setAllDDSPaingDocFacade(in_docFacadeAllDDS);
        setConditionDocFacade(in_docFacadeCondition);
        setDateDocFacade(in_docFacadeDate);
        setCommentDocFacade(in_docFacadeCommnet);
        setDateDeliver(in_dateDeliver);
        setPayingDate(in_payingDate);
        try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        return getRs();
        
    }
    public java.sql.Connection getConn() //OK
    {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) //OK
    {
        this.conn = conn;
    }
    
    public java.sql.Statement getStm() //OK
    {
        return stmt;
    }
    
    public void setStm(java.sql.Statement stm) //OK
    {
        this.stmt = stm;
    }
    
    public java.sql.CallableStatement getCstm() //OK
    {
        return cstm;
    }
    
    public void setCstm(java.sql.CallableStatement cstm) //OK
    {
        this.cstm = cstm;
    }
    
    public java.sql.ResultSet getRs() //OK
    {
        return rs;
    }
    public void setRs(java.sql.ResultSet rs) //OK
    {
        this.rs = rs;
    }
  
    public int getMaxId() //OK
    {
        comprator = 7;
        int return_int=-1;
         try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
                return_int = rs.getInt(1);
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       return return_int;
    }
  
    public int getComprator() //OK
    {
        return comprator;
    }
    public void setComprator(int com) //OK
    {
        this.comprator = com;
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
    
//------------------------>
    public void setNumberDocFacade(int numberDocFacade) 
    {
        this.docFacadeNumber = numberDocFacade;
    }
    public int getNumberDocFacade() 
    {
        return docFacadeNumber;
    }
    public void setDateDocFacade(String date) 
    {
        this.docFacadeDate = date;
    }
    public String getDateDocFacade() 
    {
        return docFacadeDate;
    }
    
   public void setID_DocFacade(int  id) 
    {
        this.idDocFacade = id;
    }
    public int getID_DocFacade() 
    {
        return idDocFacade;
    }
    public void setID_Contragent_IN(int  id) 
    {
        this.idContragent_IN = id;
    }
    public int getID_Contragent_IN() 
    {
        return idContragent_IN;
    }
    public void setID_Contragent_OUT(int  id) 
    {
        this.idContragent_OUT = id;
    }
    public int getID_Contragent_OUT() 
    {
        return idContragent_OUT;
    }
     public void setID_Obekt_IN(int  id) 
    {
        this.idObect_IN = id;
    }
    public int getID_Obekt_IN() 
    {
        return idObect_IN;
    }
     public void setID_Obekt_OUT(int  id) 
    {
        this.idObect_OUT = id;
    }
    public int getID_Obekt_OUT() 
    {
        return idObect_OUT;
    }   
    public void setID_Distributor(int  id) 
    {
        this.idDistributor = id;
    }
    public int getID_Distributor() 
    {
        return idDistributor;
    }
     public void setID_Deliver(int  id) 
    {
        this.idDeliver = id;
    }
    public int getID_Deliver() 
    {
        return idDeliver;
    }   


public void setAllDDSPaingDocFacade(double in)
{
   this.allDDSPaing = in;
}
public double getAllDDSPaingDocFacade()
{
   return allDDSPaing;
}
public void setTotalPayingDocFacade(double in)
{
   this.totalPaying = in;
}
public double getTotalPayingDocFacade()
{
   return totalPaying;
}
public void setUserLastEditDocFacade(int in)
{
   this.userLastEdit= in;
}
public int getUserLastEditDocFacade()
{
   return userLastEdit;
}
public void setUserDocFacade(int in)
{
   this.userDocFacade= in;
}
public int getUserDocFacade()
{
   return userDocFacade;
}
public void setCommentDocFacade(String in)
{
   this.commentDocFacade= in;
}
public String getCommentDocFacade()
{
   return commentDocFacade;
}  
public void setID_FakturaConnection(int factuta)
{
    this.idFakturaConnection = factuta;
}
public int getID_FakturaConnection()
{
    return idFakturaConnection;
} 
public void setID_ZaqvkaConnection(int zaqvka)
{
    this.idZaqvkaConnection = zaqvka;
}
public int getID_ZaqvkaConnection()
{
    return idZaqvkaConnection;
}
public void setDescriptionPaying(int in)
{
    this.descriptionPaying = in;
}
public int getDescriptionPaying()
{
    return descriptionPaying;
}
public void setID_PayingOrder(int in)
{
    this.idPayingOrder = in;
}
public int getID_PayingOrder()
{
    return idPayingOrder;
}
public void setPayingDate(String in)
{
    this.payingDate = in;
}
public String getPayingDate()
{
    return payingDate;
}
 
public void setDateDeliver(String in)
{
    this.dateDeliver = in;
}
public String getDateDeliver()
{
    return dateDeliver;
}
public void setStorageDocFacade(int in)
{
    this.storageDocFacade = in;
}
public int getStorageDocFacade()
{
    return storageDocFacade;
}

public void setLevelDocFacade(int in)
{
    this.levelDocFacade = in;
}
public int getLevelDocFacade()
{
    return levelDocFacade;
}
public void setConditionDocFacade(String in)
{
    this.conditionDocFacade = in;
}
public String getConditionDocFacade()
{
    return conditionDocFacade;
}
public void setDocFacadeType(int in)
{
    this.docFacadeType = in;
}
public int getDocFacadeType()
{
    return docFacadeType;
}
public java.sql.ResultSet getTableIncludeTextDistDeliv(String in,int sqlselect)
{
    java.sql.ResultSet rs1 = null;
     this.comprator = 8;
     String oldvalues = getDateDeliver();
     setDateDeliver(in);
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        setDateDeliver(oldvalues);
        return rs1;
}

public java.sql.ResultSet getTableStartTextDistDeliv(String in, int sqlselect)
{
    java.sql.ResultSet rs1 = null;
    String oldvalues = getDateDeliver();
     setDateDeliver(in);
   this.comprator = 9;
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
         setDateDeliver(oldvalues);
        return rs1;
}

public java.sql.ResultSet getTableFinishTextDistDeliv(String in , int sqlselect)
{
     java.sql.ResultSet rs1 = null;
     String oldvalues = getDateDeliver();
      setDateDeliver(in);
   this.comprator = 10;
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
         setDateDeliver(oldvalues);
        return rs1;
}

public java.sql.ResultSet getTableIncludeTextObekt(String in, int sqlselect)
{
     java.sql.ResultSet rs1 = null;
     String oldvalues = getDateDeliver();
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     this.comprator = 11;
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        setDateDeliver(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}
public java.sql.ResultSet getTableStartTextObekt(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
     String oldvalues = getDateDeliver();
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     this.comprator = 12;
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        setDateDeliver(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}

public java.sql.ResultSet getTableFinishTextObekt(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
     String oldvalues = getDateDeliver();
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     this.comprator = 13;
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        setDateDeliver(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}
public java.sql.ResultSet getTableIncludeTextContragent(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
     String oldvalues = getDateDeliver();
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     this.comprator = 14;
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        setDateDeliver(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}
public java.sql.ResultSet getTableStartTextContragent(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
     String oldvalues = getDateDeliver();
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     this.comprator = 15;
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        setDateDeliver(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}
public java.sql.ResultSet getTableFinishTextContragent(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
     String oldvalues = getDateDeliver();
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     this.comprator = 16;
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        setDateDeliver(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}

public int getDocNumberLast(int user)
{
    int lastNumber = 0;
   
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(user);
     this.comprator = 17;
     try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
                lastNumber = rs.getInt(1);
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
     
    setDocFacadeType(oldIntValue);
    return lastNumber;
    
}
// <-----------------------
    
}// end class
