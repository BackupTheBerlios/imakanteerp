/*
 *comprator = 0 : getTable()
 *comprator = 1 : insertRow()
 *comprator = 2 : updateRow()
 *comprator = 3 : deleteRow()
 *comprator = 4 : getRow();
 *comprator = 5 : searchRecords()
 *comprator = 6 : getDocNumberLast()
 *comprator = 7 : getMaxId()
 *comprator = 8 : getTableIncludeTextDistDeliv()
 *comprator = 9 : getTableStartTextDistDeliv()
 *comprator = 10 : getTableFinishTextDistDeliv()
 *comprator = 11 : getTableIncludeTextObekt()
 *comprator = 12 : getTableStartTextObekt()
 *comprator = 13 : getTableFinishTextObekt()
 *comprator = 14 : getTableIncludeTextContragent()
 *comprator = 15 : getTableStartTextContragent()
 *comprator = 16 : getTableFinishTextContragent()
 *comprator = 17 : getUserDataByID()
 *comprator = 18 : getContragentDataByID()
 *comprator = 19 : getObektDataByID()
 *comprator = 20 : getTableProductInfo()
 *comprator = 21 : getPriceListByID();
 * comprator = 22 :getProductDescriptionByID()
 *comprator = 23: getProductFeeByID()
 *comprator = 24: getProductDescriptionNameID()
 *comprator = 25: getAllProductWithOutLevel()
 *comprator = 26: insertDocLine()
 *comprator = 27: checkForEnoughProducts()
 *comprator = 28: preserveProducts()
 *comprator = 29: getValutaByID()
 *comprator = 30: emptyPreservation()
 *comprator = 31: getDocLine()
 *comprator = 32: updateDocLine()
 *comprator = 33: deleteDocLine()
 *comprator = 34: getMaxIdDocLine()
 *comprator = 35: deleteDocFacade()
 *comprator = 35: clearPreservation()
 *comprator = 36: returnProducts() 
 *comprator = 37:
 *comprator = 38:
 *comprator = 39:
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
    private double priceOne=0;
    private double climbDown=0;
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
    private int docFacadeFlagFinish;
   // private int idrep; //??????? 
    //-------------END MyVariables
    
    /** Creates a new instance of groupDB */
 public documentFacadeDB(java.sql.Connection conn) 
    {
        super(conn);
        prepareCstm();
       
        
    }
    //-------SART MyFunction
 public void prepareCstm() //????? vhodnite parametri  - brojkata
    {
        try {
            
            setCstm(getConn().prepareCall("{call mida.ls_procedure_document_facade(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
       
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
 public java.sql.ResultSet getTable(int level) //OK
    {
     int oldID_DF = getID_DocFacade();
     setID_DocFacade(level);
        
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
        setID_DocFacade(oldID_DF);
        return rs;
    }
 public void registerParameters() 
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
            getCstm().setInt("in_docFacadeFlagFinish", getDocFacadeFlagFinish()); 
            getCstm().setDouble("in_docFacadeAllDDS",getAllDDSPaingDocFacade());       
            getCstm().setDouble("in_docFacadeTotal",getTotalPayingDocFacade());
            getCstm().setDouble("in_priceOne",getPriceOne());
            getCstm().setDouble("in_climbDown",getClimbDown());
            getCstm().setString("in_docFacadeCondition", getConditionDocFacade());   
            getCstm().setString("in_docFacadeDate", getDateDocFacade());            
            getCstm().setString("in_docFacadeComment", getCommentDocFacade());
            getCstm().setString("in_dateDeliver", getDateDeliver());  
            getCstm().setString("in_payingDate", getPayingDate()); 
            
                    
            //26
            
            
            
            System.out.println("ot registerparameter");
        }
         catch(java.sql.SQLException sqle)
         {
             sqle.printStackTrace();
         }
    }
 public void prepareRezult() //OK
    {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
 public void insertRow(int in_id_contragent_out , int in_id_contragent_in,
            int in_id_obekt_out, int in_id_obekt_in, int in_id_distributor, int in_id_deliver,
            int in_descriptionPaying, int in_docFacadeNumber, int in_docFacadeUser, int in_docFacadeUserLastEdit,
            int in_id_facturaConnection, int in_id_payingOrder, int in_id_zaqvkaConnection, int in_docFacadeLevel, //14
            int in_docFacadeStorage, int in_docFacadeType, double in_docFacadeTotal, double in_docFacadeAllDDS,
            String in_docFacadeCondition, String in_docFacadeDate, String in_docFacadeCommnet,
            String in_dateDeliver, String in_payingDate,int in_docFacadeFlagFinish)
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
        setDocFacadeFlagFinish(in_docFacadeFlagFinish);
        
        
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
            String in_dateDeliver, String in_payingDate,int in_docFacadeFlagFinish) 
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
        setDocFacadeFlagFinish(in_docFacadeFlagFinish);
        
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
            String in_dateDeliver, String in_payingDate,int in_docFacadeFlagFinish)
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
        setDocFacadeFlagFinish(in_docFacadeFlagFinish);
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
public double getPriceOne()
{
   return priceOne;
}
public void setPriceOne(double in)
{
   this.priceOne = in;
}
public double getClimbDown()
{
   return climbDown;
}
public void setClimbDown(double in)
{
   this.climbDown = in;
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

public void setDocFacadeFlagFinish(int in)
{
    this.docFacadeFlagFinish = in;
}
public int getDocFacadeFlagFinish()
{
    return docFacadeFlagFinish;
}
public java.sql.ResultSet getTableIncludeTextDistDeliv(String in,int sqlselect)
{
    java.sql.ResultSet rs1 = null;
     this.comprator = 8;
     String oldvalues = getCommentDocFacade();
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     setCommentDocFacade(in);
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
        setCommentDocFacade(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
}

public java.sql.ResultSet getTableStartTextDistDeliv(String in, int sqlselect)
{
    java.sql.ResultSet rs1 = null;
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
    String oldvalues = getCommentDocFacade();
    setCommentDocFacade(in);
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
         setDocFacadeType(oldIntValue);
         setCommentDocFacade(oldvalues);
        return rs1;
}

public java.sql.ResultSet getTableFinishTextDistDeliv(String in , int sqlselect)
{
     java.sql.ResultSet rs1 = null;
      int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
    String oldvalues = getCommentDocFacade();
    setCommentDocFacade(in);
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
         setDocFacadeType(oldIntValue);
         setCommentDocFacade(oldvalues);
        return rs1;
}

public java.sql.ResultSet getTableIncludeTextObekt(String in, int sqlselect)
{
     java.sql.ResultSet rs1 = null;
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     String oldvalues = getCommentDocFacade();
     setCommentDocFacade(in);
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
        setCommentDocFacade(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}
public java.sql.ResultSet getTableStartTextObekt(String in , int sqlselect)
{ 
     java.sql.ResultSet rs1 = null;
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     String oldvalues = getCommentDocFacade();
     setCommentDocFacade(in);
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
        setCommentDocFacade(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}

public java.sql.ResultSet getTableFinishTextObekt(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
    int oldIntValue = getDocFacadeType();
    setDocFacadeType(sqlselect);
    String oldvalues = getCommentDocFacade();
    setCommentDocFacade(in); 
     
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
        setCommentDocFacade(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}
public java.sql.ResultSet getTableIncludeTextContragent(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
    int oldIntValue = getDocFacadeType();
    setDocFacadeType(sqlselect);
    String oldvalues = getCommentDocFacade();
    setCommentDocFacade(in); 
    
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
        setCommentDocFacade(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}
public java.sql.ResultSet getTableStartTextContragent(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
    int oldIntValue = getDocFacadeType();
    setDocFacadeType(sqlselect);
    String oldvalues = getCommentDocFacade();
    setCommentDocFacade(in); 
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
        setCommentDocFacade(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}
public java.sql.ResultSet getTableFinishTextContragent(String in , int sqlselect)
{ 
    java.sql.ResultSet rs1 = null;
    int oldIntValue = getDocFacadeType();
    setDocFacadeType(sqlselect);
    String oldvalues = getCommentDocFacade();
    setCommentDocFacade(in);  
     this.comprator = 16;
    System.out.println("comprator: "+String.valueOf(comprator) + "  in:" + in+ "  sqlselect: " + String.valueOf(sqlselect));
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("getTableFinishTextContragent()");
        setCommentDocFacade(oldvalues);
        setDocFacadeType(oldIntValue);
        return rs1;
    
}

public int getDocNumberLast(int iduser, int level)
{
    int lastNumber = 0;
    int oldId_obekt_in  = getID_Obekt_IN();
    setID_Obekt_IN(level);
     int oldIntValue = getUserDocFacade();
     setUserDocFacade(iduser);
     this.comprator = 6;
     try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
                lastNumber = rs.getInt("maxNumber");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
     
    setUserDocFacade(oldIntValue);
    setID_Obekt_IN(oldId_obekt_in);
    return lastNumber;
    
}
public String[] getUserDataByID(int iduser)
{
    String newUserDate[]= {" "," "};
     this.comprator = 17;
     int oldIntValue = getUserDocFacade();
     setUserDocFacade(iduser);
    
     try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
                newUserDate[0] = String.valueOf(rs.getInt("id_ndtur"));
                newUserDate[1] = rs.getString("name_um");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
    setUserDocFacade(oldIntValue);
    return newUserDate;
}
public String[] getContragentDataByID(int idContragent)
{
    String ContragentData[] = new String[7];
    int oldIntValue = getUserDocFacade();
    setUserDocFacade(idContragent);
     this.comprator = 18;
     try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
               ContragentData[0] =String.valueOf(rs.getInt("code_contragent"));
               ContragentData[1] = rs.getString("bul_n_contragent");
               ContragentData[2] = rs.getString("dan_n_contragent");
               ContragentData[3] = rs.getString("name_n_contragent");
               ContragentData[4] = rs.getString("address_n_contragent");
               ContragentData[5] = rs.getString("name_ls_n_person");
               ContragentData[6] = rs.getString("tel_contragent");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
   setUserDocFacade(oldIntValue);
    return ContragentData;
}
public String[] getObektDataByID(int idObekt)
{
    String ObektData[] = new String[7];
    int oldIntValue = getUserDocFacade();
    setUserDocFacade(idObekt);
     this.comprator = 19;
     try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
               ObektData[0] = rs.getString("code_n_obekt");
               ObektData[1] = rs.getString("name_n_obekt");
               ObektData[2] = rs.getString("address_n_obekt");
               ObektData[3] = rs.getString("address_n_obekt");
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
   setUserDocFacade(oldIntValue);
    return ObektData;
}
public java.sql.ResultSet getTableProductInfo(String in , int sqlselect,int level, int flag)
{ 
    java.sql.ResultSet rs1 = null;
    int oldIntValue = getDocFacadeType();
    setDocFacadeType(sqlselect);
    String oldvalues = getCommentDocFacade();
    setCommentDocFacade(in);  
    int oldID_df = getID_DocFacade();
    int oldID_obekt_in = getID_Obekt_IN();
    int levelForNali4nost = 0;
    switch(level)
    {
        case 2 :
        {
           levelForNali4nost =1;
            break;
        }
        case 3 :
        {
            levelForNali4nost =0;
            break;
        }
        case 1 :
        {
            levelForNali4nost =1;
            break;
        }
    }
    
    setID_DocFacade(levelForNali4nost);
    setID_Obekt_IN(flag);
    
     this.comprator = 20;
   
        try{
            registerParameters();
            rs1 = cstm.executeQuery();;
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("getTableProductInfo()");
        setCommentDocFacade(oldvalues);
        setDocFacadeType(oldIntValue);
        setID_DocFacade(oldID_df);
        setID_Obekt_IN(oldID_obekt_in);
        return rs1;
    
}
public double[] getPriceListByID(int in_id_pp)
{
    double pricelist[] = new double[4];
   int oldIntValue = getID_Obekt_IN();
   setID_Obekt_IN(in_id_pp);
     this.comprator = 21;
     try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
              pricelist[0] = rs.getDouble("price1_pp");
              pricelist[1] = rs.getDouble("price2_pp");
              pricelist[2] = rs.getDouble("price3_pp");
              Integer  curs = ( Integer)rs.getInt("id_sl_curs");
              pricelist[3] =curs.doubleValue();
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
     
     
    setID_Obekt_IN(oldIntValue);
   
    return pricelist;
}
 public String[][] getProductDescriptionByID(int in_id_pd) // Test   comprator = 22;
   {
       String des[][] = new String[3][2];
        int oldIntValue = getID_Obekt_IN();
   setID_Obekt_IN(in_id_pd);
       comprator = 22;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
                des[0][0] = rs.getString("m1_pd");
                des[1][0] = rs.getString("m2_pd");
                des[2][0] = rs.getString("m3_pd");
                des[0][1] = rs.getString("v1_pd");
                des[1][1] = rs.getString("v2_pd");
                des[2][1] = rs.getString("v3_pd");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       setID_Obekt_IN(oldIntValue);
       return des;
   }
 public double[] getProductFeeByID(int in_id_pf) // Test   comprator = 23;
   {
      double fee[] =  new double[3];
        int oldIntValue = getID_Obekt_IN();
       setID_Obekt_IN(in_id_pf);
       comprator = 23;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
                fee[0] = rs.getDouble("dds_pf");
                fee[1] = rs.getDouble("excise_pf");
                fee[2]  =rs.getDouble("other_pf") ;     
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       setID_Obekt_IN(oldIntValue);
       return fee;
   }
 public String getProductDescriptionNameID(int in_id_pam) // Test   comprator = 24;
   {
       String des = new String();
        int oldIntValue = getID_Obekt_IN();
       setID_Obekt_IN(in_id_pam);
       comprator = 24;
       java.sql.ResultSet rs1;
       try
        {
            registerParameters();
            rs1 = cstm.executeQuery();
            
            while(rs1.next())
            {
                des = rs1.getString("sname_pam");
                
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       setID_Obekt_IN(oldIntValue);
       return des;
   }
 public int getAllProductWithOutLevel(int in_id_pc, int flag)
 {
      int allProduct =0;
      int oldIntValue = getID_Obekt_IN();
      int oldID_df = getID_DocFacade();
     
       setID_Obekt_IN(in_id_pc);
       setID_DocFacade(flag);
      
       comprator = 25;
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            
            while(rs.next())
            {
                allProduct += rs.getInt("quant_nal"); 
                
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      
       setID_Obekt_IN(oldIntValue);
       setID_DocFacade(oldID_df);
       return allProduct;
 }
 
 public void insertDocLine(int in_id_df,int in_id_pc,int in_id_storage,double priceone,double climbdown,int numberProduct,double dds,double totalall)
 {
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_contragent_in = getID_Contragent_IN();
     int oldID_df = getID_DocFacade();
     double oldDDS = getAllDDSPaingDocFacade();
     double oldTotal = getTotalPayingDocFacade();
       setID_Obekt_IN(in_id_pc);
       setID_Obekt_OUT(in_id_storage);
       setID_Contragent_IN(numberProduct);
       setAllDDSPaingDocFacade(dds);
       setTotalPayingDocFacade(totalall);
       setPriceOne(priceone);
       setClimbDown(climbdown);
       setID_DocFacade(in_id_df);
       comprator=26;
       try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       
       setTotalPayingDocFacade(oldTotal);
       setAllDDSPaingDocFacade(oldDDS);
       setID_Contragent_IN(oldID_contragent_in);
       setID_Obekt_OUT(oldID_obekt_out);
       setID_Obekt_IN(oldID_obekt_in);
       setID_DocFacade(oldID_df);
 }
 
 public int checkForEnoughProducts(int in_id_pc, int in_id_starage)
 {
     int enoughProduct = 0;
     int maxNumber = 0;
     comprator=27;
     int oldID_DF = getID_DocFacade();
     int oldID_Obekt_in = getID_Obekt_IN();
     setID_Obekt_IN(in_id_starage);
     setID_DocFacade(in_id_pc);
    
     try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
               enoughProduct = rs.getInt("quant_rezerv_nal");
               maxNumber = rs.getInt("quant_nal");
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
  
     setID_Obekt_IN(oldID_Obekt_in);
     setID_DocFacade(oldID_DF);
     enoughProduct = maxNumber - enoughProduct;
     return enoughProduct;
 }
 public void preserveProducts(int in_id_pc, int in_id_storage, int number)
 {
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_contragent_in = getID_Contragent_IN();
     comprator=28;
      setID_Obekt_IN(in_id_pc);
      setID_Obekt_OUT(in_id_storage);
       setID_Contragent_IN(number);
     try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       
       
       
     setID_Contragent_IN(oldID_contragent_in);
       setID_Obekt_OUT(oldID_obekt_out);
       setID_Obekt_IN(oldID_obekt_in);
     
 }
 public String getValutaByID(int in_id_curs)
 {
     String valuta = new String();
      int oldID_obekt_in = getID_Obekt_IN();
      comprator=29;
      setID_Obekt_IN(in_id_curs);
       try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
               valuta= (String) rs.getString("cod_lat_n_money");
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
      
      
     setID_Obekt_IN(oldID_obekt_in); 
     return valuta;
 }
public void emptyPreservation(int id_dl, int nal)
{
    int oldId_DF = getID_DocFacade();
    int oldID_Obekt_in = getID_Obekt_IN();
    setID_Obekt_IN(nal);
    
    setID_DocFacade(id_dl);
     comprator=30;
     try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
    setID_Obekt_IN(oldID_Obekt_in);
    setID_DocFacade(oldId_DF);
}
public void clearPreservation(int id_dl, int nal)
{
    int oldId_DF = getID_DocFacade();
    int oldID_Obekt_in = getID_Obekt_IN();
    setID_Obekt_IN(nal);
    
    setID_DocFacade(id_dl);
     comprator=36;
     try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
    setID_Obekt_IN(oldID_Obekt_in);
    setID_DocFacade(oldId_DF);
}

public HashMap getDocLine(int id_df)
{
   
     int oldId_DF = getID_DocFacade();
    setID_DocFacade(id_df);
     comprator=31;
     HashMap rows = new HashMap(); 
     docLineArray data;
     java.sql.ResultSet rs12 =null;
     int key = 0;
     try
        {
            registerParameters();
            rs12 = cstm.executeQuery();
            while(rs12.next())
            {
              int numerOfDisBaund[] = new int[3];
              int v1 = (Integer) rs12.getInt("v1");
              int v2 = (Integer) rs12.getInt("v2");
              int v3 = (Integer) rs12.getInt("v3");
              numerOfDisBaund[0] = v1;
              numerOfDisBaund[1] = v2;
              numerOfDisBaund[2] = v3;
              
                
              data = new docLineArray();
              data.setID_DocLine(rs12.getInt("id_dl"));
              data.setNumerOfDisBand(numerOfDisBaund);
              data.setCodeOfProduct((Integer)rs12.getInt("code_pm"));
              data.setDDS((Double)rs12.getDouble("dds_dl"));
              data.setNameOfProduct((String)rs12.getString("name_pm"));
              data.setNumberOfProduct((Integer)rs12.getInt("numbers_piece_dl"));
               
              data.setPriceList((Integer)rs12.getInt("price_list_dl"));
              data.setPricePiece((Double)rs12.getDouble("singly_price_dl"));
              data.setPriceTotal((Double)rs12.getDouble("totalall_dl"));
              data.setRateReduction((Double)rs12.getDouble("climb_down_dl"));
              data.setStorageOut((Integer)rs12.getInt("id_n_storage"));
              String nameOfDisBaund[]= new String[3];
              
              nameOfDisBaund[0] = rs12.getString("m1");
              nameOfDisBaund[1] = rs12.getString("m2");
              nameOfDisBaund[2] = rs12.getString("m3");
              data.setNameOfDisBand(nameOfDisBaund);
             
             
              rows.put(key,data);
              key++;
               
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
     
     
     
    setID_DocFacade(oldId_DF);
    return rows;
}

 
public void updateDocLine(int id_dl,int in_id_df,int in_id_pc,int in_id_storage,double priceone,double climbdown,int numberProduct,double dds,double totalall)
 {
      comprator=32;
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_contragent_in = getID_Contragent_IN();
     int oldID_df = getID_DocFacade();
     int oldID_contragent_out = getID_Contragent_OUT();
     double oldDDS = getAllDDSPaingDocFacade();
     double oldTotal = getTotalPayingDocFacade();
       setID_Obekt_IN(in_id_pc);
       setID_Obekt_OUT(in_id_storage);
       setID_Contragent_IN(numberProduct);
       setID_Contragent_OUT(id_dl);
       setAllDDSPaingDocFacade(dds);
       setTotalPayingDocFacade(totalall);
       setPriceOne(priceone);
       setClimbDown(climbdown);
       setID_DocFacade(in_id_df);
       
       try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       
       setTotalPayingDocFacade(oldTotal);
       setAllDDSPaingDocFacade(oldDDS);
       setID_Contragent_IN(oldID_contragent_in);
       setID_Obekt_OUT(oldID_obekt_out);
       setID_Obekt_IN(oldID_obekt_in);
       setID_DocFacade(oldID_df); 
       setID_Contragent_OUT(oldID_contragent_out);
      
 }

 public void deleteDocLine(int id_dl)
 {
      int oldId_DF = getID_DocFacade();
      setID_DocFacade(id_dl);
     comprator = 33;
     try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
     
     
      setID_DocFacade(oldId_DF);
 }


 public int getMaxIdDocLine()
 {
     int maxid =0;
        comprator=34;
      try
        {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next())
            {
              maxid = rs.getInt("id");
               
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
     
     
     return maxid;
 }
 
public void  deleteRow(int type,int numberDocFadade, int level)
 {
      comprator=35;
   int oldID_df = getID_DocFacade();
   int oldID_obekt_in = getID_Obekt_IN();
   int oldID_obekt_out = getID_Obekt_OUT();
   setID_DocFacade(type);
   setID_Obekt_IN(numberDocFadade);
   setID_Obekt_OUT(level);
   
   try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
  
   setID_Obekt_IN(oldID_obekt_in);
   setID_Obekt_OUT(oldID_obekt_out);
   setID_DocFacade(oldID_df);
    
 }
 public void returnProducts(int in_id_pc, int in_id_storage, int number)
 {
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_contragent_in = getID_Contragent_IN();
     comprator=36;
      setID_Obekt_IN(in_id_pc);
      setID_Obekt_OUT(in_id_storage);
       setID_Contragent_IN(number);
     try
        {
            registerParameters();
            cstm.execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       
       
       
     setID_Contragent_IN(oldID_contragent_in);
       setID_Obekt_OUT(oldID_obekt_out);
       setID_Obekt_IN(oldID_obekt_in);
     
 }
// <-----------------------
}// end class
