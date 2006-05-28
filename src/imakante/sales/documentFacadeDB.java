/*
 *comprator= 0 : getTable()
 *comprator= 1 : insertRow()
 *comprator= 2 : updateRow()
 *comprator= 3 : deleteRow()
 *comprator= 4 : getRow();
 *comprator= 5 : searchRecords()
 *comprator= 6 : getDocNumberLast()
 *comprator= 7 : getMaxId()
 *comprator= 8 : getTableIncludeTextDistDeliv()
 *comprator= 9 : getTableStartTextDistDeliv()
 *comprator= 10 : getTableFinishTextDistDeliv()
 *comprator= 11 : getTableIncludeTextObekt()
 *comprator= 12 : getTableStartTextObekt()
 *comprator= 13 : getTableFinishTextObekt()
 *comprator= 14 : getTableIncludeTextContragent()
 *comprator= 15 : getTableStartTextContragent()
 *comprator= 16 : getTableFinishTextContragent()
 *comprator= 17 : getUserDataByID()
 *comprator= 18 : getContragentDataByID()
 *comprator= 19 : getObektDataByID()
 *comprator= 20 : getTableProductInfo()
 *comprator= 21 : getPriceListByID();
 *comprator= 22 :getProductDescriptionByID()
 *comprator= 23: getProductFeeByID()
 *comprator= 24: getProductDescriptionNameID()
 *comprator= 25: getAllProductWithOutLevel()
 *comprator= 26: insertDocLine()
 *comprator= 27: checkForEnoughProducts()
 *comprator= 28: preserveProducts()
 *comprator= 29: getValutaByID()
 *comprator= 30: emptyPreservation()
 *comprator= 31: getDocLine()
 *comprator= 32: updateDocLine()
 *comprator= 33: deleteDocLine()
 *comprator= 34: getMaxIdDocLine()
 *comprator= 35: deleteRow()
 *comprator= 36: clearPreservation()
 *comprator= 37: returnProducts() 
 *comprator= 38: clearReturnProducts()
 *comprator= 39: emptyReturnProducts()
 *comprator= 40: cancellationDocFacade()
 *comprator= 41: getIDPMByIDPC()
 *comprator= 42: updateConnectionID()
 *comprator= 43: getCurentRate()
 *comprator= 44: searchForNamlichnost()
 *comprator= 45: insertProductNal()
 *comprator= 46: getMaxNalID()
 *comprator= 47: increaseProductNal()
 *comprator= 48: getRowDocLine()
 *comprator= 49: getStatusConnection()
 *comprator= 50: getStorageAndParcelByID()
 *comprator= 51: getLastCurentDate();
 *comprator= 52: getFromConsigmentIDInfo();
 *
 *
 *
  */

package imakante.sales;

import java.util.*;
public class documentFacadeDB  extends imakante.com.dbObject {
    //-------------START MyVariables
   private java.sql.Connection conn;
  
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
    private int storageDocFacade; //zapazva teku6tiq sklad
    private int storageDocFacadeIN; // zapazva sklada kym koito 6te prehvyrqme stokata
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
    
    private final int LEVEL_1 = 1;  // master
    private final int LEVEL_2 = 2;  // real
    private final int LEVEL_3 = 3;  // fakturno
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
            
            setCstm(getConn().prepareCall("{call mida.ls_procedure_document_facade(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"));
       
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
 public java.sql.ResultSet getTable(int level, int user,int doctype) //OK
    {
     int oldType = getDocFacadeType();
     int oldUse = getUserDocFacade();
     int oldLevel = getLevelDocFacade();
     
     setDocFacadeType(doctype);
     setUserDocFacade(user);
     setLevelDocFacade(level);
        
        this.setComprator(0);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
            
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        System.out.println("ot getTable()");
       setDocFacadeType(oldType);
       setUserDocFacade(oldUse);
       setLevelDocFacade(oldLevel);
        
        return getRs();
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
            getCstm().setInt("in_in_store_df", getINStorageDocFacade()); 
            getCstm().setDouble("in_docFacadeAllDDS",getAllDDSPaingDocFacade());       
            getCstm().setDouble("in_docFacadeTotal",getTotalPayingDocFacade());
            getCstm().setDouble("in_priceOne",getPriceOne());
            getCstm().setDouble("in_climbDown",getClimbDown());
            getCstm().setString("in_docFacadeCondition", getConditionDocFacade());   
            getCstm().setString("in_docFacadeDate", getDateDocFacade());            
            getCstm().setString("in_docFacadeComment", getCommentDocFacade());
            getCstm().setString("in_dateDeliver", getDateDeliver());  
            getCstm().setString("in_payingDate", getPayingDate()); 
            
            
                    
            //27
            
            
            
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
            String in_dateDeliver, String in_payingDate,int in_docFacadeFlagFinish,int in_in_store_df)
      {
        setComprator(1);
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
        setINStorageDocFacade(in_in_store_df);
        
        
        try
        {
            registerParameters();
            getCstm().execute();
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
            String in_dateDeliver, String in_payingDate,int in_docFacadeFlagFinish,int in_in_store_df) 
    {
        setComprator(2);
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
        setINStorageDocFacade(in_in_store_df);
        
        try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
        
        
    }
 public void deleteRow(int in_id_df) //OK
    {
     int oldID_DF = getID_DocFacade();
     setID_DocFacade(in_id_df);
        setComprator(3);
       
        try{
            registerParameters();
            getCstm().execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
     setID_DocFacade(oldID_DF)   ;
    }
 public java.sql.ResultSet getRow(int in_id_df) //OK
    {
        setComprator(4);
       setID_DocFacade(in_id_df);
        try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
               
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      return getRs();  
    }
 public java.sql.ResultSet searchRecords(int in_id_contragent_out , int in_id_contragent_in,
            int in_id_obekt_out, int in_id_obekt_in, int in_id_distributor, int in_id_deliver,
            int in_descriptionPaying, int in_docFacadeNumber, int in_docFacadeUser, int in_docFacadeUserLastEdit,
            int in_id_facturaConnection, int in_id_payingOrder, int in_id_zaqvkaConnection, int in_docFacadeLevel,
            int in_docFacadeStorage, int in_docFacadeType, double in_docFacadeTotal, double in_docFacadeAllDDS,
            String in_docFacadeCondition, String in_docFacadeDate, String in_docFacadeCommnet,
            String in_dateDeliver, String in_payingDate,int in_docFacadeFlagFinish)
    {
        setComprator(5);
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
    
    public int getMaxId() //OK
    {
        setComprator(7);
        int return_int=-1;
         try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
                return_int = getRs().getInt(1);
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       return return_int;
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
public void setINStorageDocFacade(int in)
{
    this.storageDocFacadeIN = in;
}
public int getINStorageDocFacade()
{
    return storageDocFacadeIN;
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
     this.setComprator(8);
     String oldvalues = getCommentDocFacade();
     int oldIntValue = getDocFacadeType();
     setDocFacadeType(sqlselect);
     setCommentDocFacade(in);
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
   this.setComprator(9);
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
   this.setComprator(10);
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
     this.setComprator(11);
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
     this.setComprator(12);
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
     
     this.setComprator(13);
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
    
     this.setComprator(14);
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
     this.setComprator(15);
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
     this.setComprator(16);
    System.out.println("comprator: "+String.valueOf(getComprator()) + "  in:" + in+ "  sqlselect: " + String.valueOf(sqlselect));
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
     this.setComprator(6);
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
                lastNumber = getRs().getInt("maxNumber");
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
     this.setComprator(17);
     int oldIntValue = getUserDocFacade();
     setUserDocFacade(iduser);
    
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
                newUserDate[0] = String.valueOf(getRs().getInt("id_ndtur"));
                newUserDate[1] = getRs().getString("name_um");
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
     this.setComprator(18);
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
               ContragentData[0] =String.valueOf(getRs().getInt("code_contragent"));
               ContragentData[1] = getRs().getString("bul_n_contragent");
               ContragentData[2] = getRs().getString("dan_n_contragent");
               ContragentData[3] = getRs().getString("name_n_contragent");
               ContragentData[4] = getRs().getString("address_n_contragent");
               ContragentData[5] = getRs().getString("name_ls_n_person");
               ContragentData[6] = getRs().getString("tel_contragent");
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
     this.setComprator(19);
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
               ObektData[0] = getRs().getString("code_n_obekt");
               ObektData[1] = getRs().getString("name_n_obekt");
               ObektData[2] = getRs().getString("address_n_obekt");
               ObektData[3] = getRs().getString("address_n_obekt");
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
   setUserDocFacade(oldIntValue);
    return ObektData;
}
public java.sql.ResultSet getTableProductInfo(String in , int sqlselect,int level, int flag, int storageID)
{ 
    java.sql.ResultSet rs1 = null;
    int oldIntValue = getDocFacadeType();
    int oldStrorage = getStorageDocFacade();
    setDocFacadeType(sqlselect);
    setStorageDocFacade(storageID);
    String oldvalues = getCommentDocFacade();
    setCommentDocFacade(in);  
    int oldID_df = getID_DocFacade();
    int oldID_obekt_in = getID_Obekt_IN();
    int levelForNali4nost = 0;
    switch(level)
    {
        case LEVEL_2 :
        {
           levelForNali4nost =0; // realno nivo
            break;
        }
        case LEVEL_3 :
        {
            levelForNali4nost =1; // fakturno nivo
            break;
        }
        case LEVEL_1 :
        {
            levelForNali4nost =0;  // Master nivo -6te se raboti s nivo "2", no pri promqna na koli4estvata 6te se orazi i v nivo "3"
            break;
        }
    }
    
    setID_DocFacade(levelForNali4nost);
    setID_Obekt_IN(flag);
    
     this.setComprator(20);
   
        try{
            registerParameters();
            rs1 = getCstm().executeQuery();;
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
        setStorageDocFacade(oldStrorage);
        return rs1;
    
}
public double[] getPriceListByID(int in_id_pp)
{
    double pricelist[] = new double[5];
   int oldIntValue = getID_Obekt_IN();
   setID_Obekt_IN(in_id_pp);
     this.setComprator(21);
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
              pricelist[0] = getRs().getDouble("price1_pp");  //   \
              pricelist[1] = getRs().getDouble("price2_pp");  //    > cenova lista
              pricelist[2] = getRs().getDouble("price3_pp");  //   /
              Integer  curs = (Integer) getRs().getInt("id_sl_curs");
              pricelist[3] =curs.doubleValue();
              pricelist[4] =  getRs().getDouble("price0_pp");  // dostavna cena
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
     
     
    setID_Obekt_IN(oldIntValue);
   
    return pricelist;
}
 public String[][] getProductDescriptionByID(int in_id_pd) // Test   getComprator(22;
   {
       String des[][] = new String[3][2];
        int oldIntValue = getID_Obekt_IN();
   setID_Obekt_IN(in_id_pd);
       setComprator(22);
       try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next())
            {
                des[0][0] = getRs().getString("m1_pd");
                des[1][0] = getRs().getString("m2_pd");
                des[2][0] = getRs().getString("m3_pd");
                des[0][1] = getRs().getString("v1_pd");
                des[1][1] = getRs().getString("v2_pd");
                des[2][1] = getRs().getString("v3_pd");
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       setID_Obekt_IN(oldIntValue);
       return des;
   }
 public double[] getProductFeeByID(int in_id_pf) // Test   getComprator(23;
   {
      double fee[] =  new double[3];
        int oldIntValue = getID_Obekt_IN();
       setID_Obekt_IN(in_id_pf);
       setComprator(23);
       try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next())
            {
                fee[0] = getRs().getDouble("dds_pf");
                fee[1] = getRs().getDouble("excise_pf");
                fee[2]  =getRs().getDouble("other_pf") ;     
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       setID_Obekt_IN(oldIntValue);
       return fee;
   }
 public String getProductDescriptionNameID(int in_id_pam) // Test   getComprator(24;
   {
       String des = new String();
        int oldIntValue = getID_Obekt_IN();
       setID_Obekt_IN(in_id_pam);
       setComprator(24);
       java.sql.ResultSet rs1;
       try
        {
            registerParameters();
            rs1 = getCstm().executeQuery();
            
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
 public int getAllProductWithOutLevel(int in_id_pc, int flag_level,int storage)
 {
      int allProduct =0;
      int oldIntValue = getID_Obekt_IN();
      int oldID_df = getID_DocFacade();
      int oldStorage = getStorageDocFacade();
      setID_Obekt_IN(in_id_pc);
      
      setStorageDocFacade(storage);
      setComprator(25);
      int newLevel=0;
      switch(flag_level)
      {
          case  LEVEL_1:
          {
              newLevel=1; // 6te se vzemat i danni za  nivo "3""
              break;
          }
          case  LEVEL_2:
          {
              newLevel=0; // danni za nivo "2"
              break;
          }
          case  LEVEL_3:
          {
              newLevel=1; // danni za nivo "3"
              break;
          }
      }
      setID_DocFacade(newLevel);
       try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            
            while(getRs().next())
            {
                allProduct = getRs().getInt("quant_nal"); 
                
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
      
       setID_Obekt_IN(oldIntValue);
       setID_DocFacade(oldID_df);
       setStorageDocFacade(storage);
       return allProduct;
 }
 
 public void insertDocLine(int in_id_df,int in_id_pc,int in_id_storage,double priceone,double climbdown,int numberProduct,double dds,double totalall,int pricelist)
 {
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_contragent_in = getID_Contragent_IN();
     int oldID_df = getID_DocFacade();
     int oldID_Deliver = getID_Deliver();
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
       setComprator(26);
       setID_Deliver(pricelist);
       try
        {
            registerParameters();
            getCstm().execute();
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
       setID_Deliver(oldID_Deliver);
 }
 
 public int checkForEnoughProducts(int in_id_pc, int in_id_starage,int level)
 {
     int enoughProduct = 0;
     int maxNumber = 0;
     setComprator(27);
     int oldID_DF = getID_DocFacade();
     int oldID_Obekt_in = getID_Obekt_IN();
     int oldLevel = getLevelDocFacade();
     setID_Obekt_IN(in_id_starage);
     setID_DocFacade(in_id_pc);
     setLevelDocFacade(level);
    
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
               enoughProduct = getRs().getInt("quant_rezerv_nal");
               maxNumber = getRs().getInt("quant_nal");
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
  
     setID_Obekt_IN(oldID_Obekt_in);
     setID_DocFacade(oldID_DF);
     setLevelDocFacade(oldLevel);
     enoughProduct = maxNumber - enoughProduct;
     return enoughProduct;
 }
 public void preserveProducts(int in_id_pc, int in_id_storage, int number,int level)
 {
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_contragent_in = getID_Contragent_IN();
     int oldLevel = getLevelDocFacade();
     setComprator(28);
      setID_Obekt_IN(in_id_pc);
      setID_Obekt_OUT(in_id_storage);
       setID_Contragent_IN(number);
       int levelForNali4nost = 0;
       boolean isLevelOne=false;
       switch(level)
       {
            case  LEVEL_1:
          {
              levelForNali4nost=0; 
              isLevelOne = true;
              break;
          }
          case  LEVEL_2:
          {
              levelForNali4nost=0; 
              break;
          }
          case  LEVEL_3:
          {
              levelForNali4nost=1; 
              break;
          }
       }
       setLevelDocFacade(levelForNali4nost);
      try
        {
           
            registerParameters();
            getCstm().execute();
            if(isLevelOne)
              {
                levelForNali4nost=1;
                setLevelDocFacade(levelForNali4nost);
                registerParameters();
                getCstm().execute();
              }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       
       
       
     setID_Contragent_IN(oldID_contragent_in);
       setID_Obekt_OUT(oldID_obekt_out);
       setID_Obekt_IN(oldID_obekt_in);
     setLevelDocFacade(oldLevel);
 }
 public String getValutaByID(int in_id_curs)
 {
     String valuta = new String();
      int oldID_obekt_in = getID_Obekt_IN();
      setComprator(29);
      setID_Obekt_IN(in_id_curs);
       try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
               valuta= (String) getRs().getString("cod_lat_n_money");
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
      
      
     setID_Obekt_IN(oldID_obekt_in); 
     return valuta;
 }
public void emptyPreservation(int id_dl, int nal,int level)
{
   int levelForNali4nost = 0;
   boolean isLevelOne=false;
   switch(level)
       {
            case  LEVEL_1:
          {
              
              emptyPreservationA(id_dl,nal,levelForNali4nost);
              levelForNali4nost=1;
              emptyPreservationA(id_dl,nal,levelForNali4nost);
              break;
          }
          case  LEVEL_2:
          {
               levelForNali4nost=0;
              emptyPreservationA(id_dl,nal,levelForNali4nost); 
              break;
          }
          case  LEVEL_3:
          {
               levelForNali4nost=1;
              emptyPreservationA(id_dl,nal,levelForNali4nost); 
              break;
          }
       }
}
private void emptyPreservationA(int id_dl, int nal,int level)
{
    int oldId_DF = getID_DocFacade();
    int oldID_Obekt_in = getID_Obekt_IN();
    setID_Obekt_IN(nal);
    int oldLevel = getLevelDocFacade();
    setLevelDocFacade(level);
    setID_DocFacade(id_dl);
     setComprator(30);
     try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
    setID_Obekt_IN(oldID_Obekt_in);
    setID_DocFacade(oldId_DF);
    setLevelDocFacade(oldLevel);
}
public void clearPreservation(int id_dl, int nal,int level)
{
    int levelForNali4nost = 0;
   boolean isLevelOne=false;
   switch(level)
       {
            case  LEVEL_1:
          {
              
              clearPreservationA(id_dl,nal,levelForNali4nost);
              levelForNali4nost=1;
              clearPreservationA(id_dl,nal,levelForNali4nost);
              break;
          }
          case  LEVEL_2:
          {
              levelForNali4nost=0;
              clearPreservationA(id_dl,nal,levelForNali4nost); 
              break;
          }
          case  LEVEL_3:
          {
              levelForNali4nost=1;
              clearPreservationA(id_dl,nal,levelForNali4nost); 
              break;
          }
       }
}
private void clearPreservationA(int id_dl, int nal,int level)
{
    int oldId_DF = getID_DocFacade();
    int oldID_Obekt_in = getID_Obekt_IN();
    setID_Obekt_IN(nal);
    int oldLevel = getLevelDocFacade();
    setLevelDocFacade(level);
    setID_DocFacade(id_dl);
     setComprator(36);
     try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
    setID_Obekt_IN(oldID_Obekt_in);
    setID_DocFacade(oldId_DF);
    setLevelDocFacade(level);
}

public java.util.HashMap getDocLine(int id_df)
{
   
     int oldId_DF = getID_DocFacade();
    setID_DocFacade(id_df);
     setComprator(31);
     java.util.HashMap rows = new java.util.HashMap(); 
     docLineArray data;
     java.sql.ResultSet rs12 =null;
     int key = 0;
     try
        {
            registerParameters();
            rs12 = getCstm().executeQuery();
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
              data.setID_PC((Integer)rs12.getInt("id_pc"));
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
public java.sql.ResultSet getDocLineRS(int id_df)
{
   
    int oldId_DF = getID_DocFacade();
    setID_DocFacade(id_df);
    setComprator(31);
    java.sql.ResultSet rs12 =null;
     
     try
        {
            registerParameters();
            rs12 = getCstm().executeQuery();
           
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
     
     
     
    setID_DocFacade(oldId_DF);
    return rs12;
}
 
public void updateDocLine(int id_dl,int in_id_df,int in_id_pc,int in_id_storage,double priceone,double climbdown,int numberProduct,double dds,double totalall,int pricelist)
 {
      setComprator(32);
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_contragent_in = getID_Contragent_IN();
     int oldID_df = getID_DocFacade();
     int oldID_contragent_out = getID_Contragent_OUT();
     int oldID_Deliver = getID_Deliver();
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
       setID_Deliver(pricelist);
       
       try
        {
            registerParameters();
            getCstm().execute();
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
       setID_Deliver(oldID_Deliver);
 }

 public void deleteDocLine(int id_dl)
 {
      int oldId_DF = getID_DocFacade();
      setID_DocFacade(id_dl);
     setComprator(33);
     try
        {
            registerParameters();
            getCstm().execute();
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
        setComprator(34);
      try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
              maxid = getRs().getInt("id");
               
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
      setComprator(35);
   int oldID_df = getID_DocFacade();
   int oldID_obekt_in = getID_Obekt_IN();
   int oldID_obekt_out = getID_Obekt_OUT();
   setID_DocFacade(type);
   setID_Obekt_IN(numberDocFadade);
   setID_Obekt_OUT(level);
   
   try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
  
   setID_Obekt_IN(oldID_obekt_in);
   setID_Obekt_OUT(oldID_obekt_out);
   setID_DocFacade(oldID_df);
    
 }
 public void returnProducts(int in_id_pc, int in_id_storage, int number,int level)
 {
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_contragent_in = getID_Contragent_IN();
     int oldLevel = getLevelDocFacade();
     setComprator(37);
      setID_Obekt_IN(in_id_pc);
      setID_Obekt_OUT(in_id_storage);
       setID_Contragent_IN(number);
     int levelForNali4nost = 0;
       boolean isLevelOne=false;
       switch(level)
       {
            case  LEVEL_1:
          {
              levelForNali4nost=0; 
              isLevelOne = true;
              break;
          }
          case  LEVEL_2:
          {
              levelForNali4nost=0; 
              break;
          }
          case  LEVEL_3:
          {
              levelForNali4nost=1; 
              break;
          }
       }
       setLevelDocFacade(levelForNali4nost);  
     try
        {
            registerParameters();
            getCstm().execute();
            if(isLevelOne)
            {
              levelForNali4nost=1;
              setLevelDocFacade(levelForNali4nost);
              registerParameters();
              getCstm().execute();
            }
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
       
       
       
     setID_Contragent_IN(oldID_contragent_in);
       setID_Obekt_OUT(oldID_obekt_out);
       setID_Obekt_IN(oldID_obekt_in);
     setLevelDocFacade(oldLevel);
 }
 public void clearReturnProducts(int id_dl, int nal,int level)
{
   int levelForNali4nost = 0;
   boolean isLevelOne=false;
   switch(level)
       {
            case  LEVEL_1:
          {
              
              clearReturnProductsA(id_dl,nal,levelForNali4nost);
              levelForNali4nost=1;
              clearReturnProductsA(id_dl,nal,levelForNali4nost);
              break;
          }
          case  LEVEL_2:
          {
              clearReturnProductsA(id_dl,nal,levelForNali4nost); 
              break;
          }
          case  LEVEL_3:
          {
              clearReturnProductsA(id_dl,nal,levelForNali4nost); 
              break;
          }
       }
}
 private void clearReturnProductsA(int id_dl, int nal,int level)
{
    int oldId_DF = getID_DocFacade();
    int oldID_Obekt_in = getID_Obekt_IN();
    setID_Obekt_IN(nal);
    int oldLevel = getLevelDocFacade();
    setLevelDocFacade(level);
    setID_DocFacade(id_dl);
     setComprator(38);
     try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
    setID_Obekt_IN(oldID_Obekt_in);
    setID_DocFacade(oldId_DF);
    setLevelDocFacade(level);
} 
public void emptyReturnProducts(int id_dl, int nal,int level)
{
  int levelForNali4nost = 0;
   boolean isLevelOne=false;
   switch(level)
       {
            case  LEVEL_1:
          {
              
              emptyReturnProductsA(id_dl,nal,levelForNali4nost);
              levelForNali4nost=1;
              emptyReturnProductsA(id_dl,nal,levelForNali4nost);
              break;
          }
          case  LEVEL_2:
          {
              levelForNali4nost=0;
              emptyReturnProductsA(id_dl,nal,0); 
              break;
          }
          case  LEVEL_3:
          {
              levelForNali4nost=1;
              emptyReturnProducts(id_dl,nal,1); 
              break;
          }
       }  
}
private void emptyReturnProductsA(int id_dl, int nal,int level)
{
    int oldId_DF = getID_DocFacade();
    int oldID_Obekt_in = getID_Obekt_IN();
    setID_Obekt_IN(nal);
    int oldLevel =getLevelDocFacade();
    setLevelDocFacade(level);
    
    setID_DocFacade(id_dl);
     setComprator(39);
     try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
       
    setID_Obekt_IN(oldID_Obekt_in);
    setID_DocFacade(oldId_DF);
    setLevelDocFacade(oldLevel);
}
public void cancellationDocFacade(int id_df)
{
    int oldID_DF = getID_DocFacade();
    setComprator(40);
    setID_DocFacade(id_df);
     try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
    
    
    setID_DocFacade(oldID_DF);
}
public int getIDPMByIDPC(int in_id_pc)
{
    int id_pm=0;
    int oldID_DF = getID_DocFacade();
    setComprator(41);
    setID_DocFacade(in_id_pc);
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
              id_pm = getRs().getInt("id_pm");
               
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }        
    setID_DocFacade(oldID_DF);
    return id_pm;
}

public void updateConnectionID(int in_oldDocID, int in_faktura_connection_df,int in_zaiavka_connection_df)
{
     int oldID_obekt_in = getID_Obekt_IN();
     int oldID_obekt_out = getID_Obekt_OUT();
     int oldID_DF = getID_DocFacade();
     setComprator(42);
      setID_Obekt_IN(in_faktura_connection_df);
      setID_Obekt_OUT(in_zaiavka_connection_df);
       setID_DocFacade(in_oldDocID);
     try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
  
       setID_DocFacade(oldID_DF);
       setID_Obekt_OUT(oldID_obekt_out);
       setID_Obekt_IN(oldID_obekt_in);
 
}
public HashMap getCurentRate(String dateSQLFormat)
{
    HashMap rate = new HashMap();
    rate.put(new String("BGL"),new Double(1));
    String oldComment = getCommentDocFacade();
    setCommentDocFacade(dateSQLFormat);
    setComprator(43);
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
                
             String key = getRs().getString("cod_lat_n_money");
             
             double c_rate = getRs().getDouble("value_sl_exchange_rate");
             rate.put(key,c_rate);
           
            }
            
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }         
     
     return rate;
}
public  int searchForNamlichnost(int in_id_pc,int in_id_storage,int level)
 {
   int isHaveNalichnost=0;
   int oldIDpc = getID_Obekt_IN();
   setID_Obekt_IN(in_id_pc);
   int oldStorage = getStorageDocFacade();
   setStorageDocFacade(in_id_storage);
   setComprator(44);  
    int oldLevel = getLevelDocFacade();
    int levelForNali4nost = level;
   
  setLevelDocFacade(levelForNali4nost);  
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
                
              isHaveNalichnost=getRs().getInt("id_nal");
           
            }
            
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
   setStorageDocFacade(oldStorage)  ;
   setID_Obekt_IN(oldIDpc);
   setLevelDocFacade(oldLevel);
   return isHaveNalichnost;
 }
public int insertProductNal()
{
    int maxId = 0;
     setComprator(45);  
     try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
     setComprator(46); 
     try
        {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next())
            {
                
             maxId=getRs().getInt("id");
           
            }
            
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
    
    return maxId;
}
public void increaseProductNal(int in_id_nal,int nal,int storageTo,int in_id_pc,int level)
{
    int oldID_Obekt_in = getID_Obekt_IN();
    int oldID_Obekt_out = getID_Obekt_OUT();
    int oldStorage = getStorageDocFacade();
    int oldID_DF = getID_DocFacade();
    int oldLevel = getLevelDocFacade();
    setLevelDocFacade(level);
    setID_DocFacade(in_id_pc);
    setStorageDocFacade(storageTo);
    setID_Obekt_IN(in_id_nal);
    setID_Obekt_OUT(nal);
     setComprator(47);  
     try
        {
            registerParameters();
            getCstm().execute();
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
    setID_Obekt_IN(oldID_Obekt_in) ;
    setID_Obekt_OUT(oldID_Obekt_out);
    setStorageDocFacade(oldStorage);
    setID_DocFacade(oldID_DF);
    setLevelDocFacade(oldLevel);
}
public docLineArray getRowDocLine(int id_dl)
{
   
     int oldId_DF = getID_DocFacade();
     setID_DocFacade(id_dl);
     setComprator(48);
     docLineArray data=null;
     java.sql.ResultSet rs12 =null;
     int key = 0;
     try
        {
            registerParameters();
            rs12 = getCstm().executeQuery();
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
              data.setID_PC((Integer)rs12.getInt("id_pc"));
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
                           
            }
               
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
     
     
     
    setID_DocFacade(oldId_DF);
    return data;
}

public int  getStatusConnection(int checkConn, int in_id_df)
{
    /*****************************
    *checkConn = 
    * 0 : faktura_connection
    * 1 : zaqvka_connection      
    *
    *
    ****************        */
    int return_value=0;
    int oldID_DF = getID_DocFacade();
    int oldID_Obekt_in = getID_Obekt_IN();
    setID_Obekt_IN(checkConn);
    setID_DocFacade(in_id_df);
    setComprator(49);
    java.sql.ResultSet rs12 =null;
    try
        {
            registerParameters();
            rs12 = getCstm().executeQuery();
            while(rs12.next())
            {
            return_value =(Integer) rs12.getInt(1);
            }  
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }       
    setID_DocFacade(oldID_DF) ;
    setID_Obekt_IN(oldID_Obekt_in);
   return return_value;
}
private int[] getStorageAndParcelByID(int in_id_dl)
{
    int data[] = new int[2];
    int oldID_DF = getID_DocFacade();
    setID_DocFacade(in_id_dl);
    java.sql.ResultSet rs12 =null;
     setComprator(50);
    try
        {
            registerParameters();
            rs12 = getCstm().executeQuery();
            while(rs12.next())
            {
             data[0] = rs12.getInt("id_n_storage") ;
             data[1] = rs12.getInt("id_pc") ;      
            }  
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        }
    setID_DocFacade(oldID_DF) ;
    return data;
}
/**
 *Vzemane na poslednata data ot bazata koqto e vyvedena za cursovete 
 */
public String getLastCurentDate()
{
    setComprator(51);
    String lastDate = new String();
    java.sql.ResultSet rs12 =null;
    try
        {
            registerParameters();
            rs12 = getCstm().executeQuery();
            while(rs12.next())
            {
            lastDate =(String) rs12.getString("lastDate");
            }  
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        } 
    return lastDate;
}
/**
 *Vemane na "id stoinostite" ot tablicata za partidite "n_product_consigment";
 * Notes:"id stoinostite" - id_tata na tablicite s koito e svyrzana tablicata za partidite :"n_product_consigment"
 *
 *@param in_id_pc - id_pc ot tablicata za partidi: "n_product_consigment"
 */
public int[] getFromConsigmentIDInfo(int in_id_pc)
{
    int return_value[]= new int[8];
    
   
    
    int oldId_DF = getID_DocFacade();
    setID_DocFacade(in_id_pc);
    setComprator(52);
    java.sql.ResultSet rs12 =null;
    try
        {
            registerParameters();
            rs12 = getCstm().executeQuery();
            while(rs12.next())
            {
                return_value[0] = rs12.getInt("id_pm");
                return_value[1] = rs12.getInt("id_pp");
                return_value[2] = rs12.getInt("id_ppp");
                return_value[3] = rs12.getInt("id_pf");        
                return_value[4] = rs12.getInt("pm_id_pp");
                return_value[5] = rs12.getInt("pm_id_ppp");
                return_value[6] = rs12.getInt("pm_id_pf");
                return_value[7] = rs12.getInt("parcel_pc");
            
            }  
        }
        catch(java.sql.SQLException sqle)
        {
            sqle.printStackTrace();
        } 
    
    return return_value;
}
// <-----------------------
}// end class
