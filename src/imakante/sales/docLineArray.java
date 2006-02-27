

package imakante.sales;


public class docLineArray 
{
    private int codeOfProduct;
    private String nameOfProduct;
    private int storageOut;
    private int priceList;
    private int numberOfProduct;
    private double pricePiece;
    private double rateReduction;
    private double priceTotal;
    private double DDS;
    private int id_dl;
    private String nameOfDisBaund[]= new String[3];
    private int numerOfDisBaund[] = new int[3];
    private boolean isFinishRow = false;
    
 public docLineArray()
    {
        codeOfProduct   = 0;
        nameOfProduct   = null;     
        storageOut      = 0;  
        priceList       = 0;  
        numberOfProduct = 0;       
        pricePiece      = 0;   
        priceTotal      = 0;
        DDS             = 0; 
        rateReduction   =0;
        nameOfDisBaund[0] = null;
        nameOfDisBaund[1] = null;
        nameOfDisBaund[2] = null;
        numerOfDisBaund[0] = 0; 
        numerOfDisBaund[1] = 0;     
        numerOfDisBaund[2] = 0;         
                
    }
    
    public docLineArray(int codeOfProduct,String nameOfProduct,int storageOut,int priceList,
                       int numberOfProduct, double pricePiece,double rateReduction ,double priceTotal,double DDS,
                       String nameOfDisBand[],int numerOfDisBand[],int in_id_dl)
    {
         this.codeOfProduct   = codeOfProduct;
         this.nameOfProduct   = nameOfProduct;     
         this.storageOut      = storageOut;  
         this.priceList       = priceList;  
         this.numberOfProduct = numberOfProduct;       
         this.pricePiece      = pricePiece;   
         this.priceTotal      = priceTotal;
         this.DDS             = DDS; 
         this.rateReduction   = rateReduction;
         this.nameOfDisBaund = nameOfDisBand;
         this.numerOfDisBaund = numerOfDisBand; 
         this.id_dl = in_id_dl;
      
    }
    
     public docLineArray(docLineArray in)
    {
         this.codeOfProduct   =in.getCodeOfProduct();
         this.nameOfProduct   = in.getNameOfProduct();     
         this.storageOut      = in.getStorageOut();  
         this.priceList       = in.getPriceList();  
         this.numberOfProduct = in.getNumberOfProduct();       
         this.pricePiece      = in.getPricePiece();   
         this.priceTotal      = in.getPriceTotal();
         this.DDS             = in.getDDS(); 
         this.rateReduction   =in.getRateReduction();
         this.nameOfDisBaund = in.getNameOfDisBand();
         this.numerOfDisBaund = in.getNumerOfDisBand(); 
         this.id_dl = in.getID_DocLine(); ;
    }
    
    
    public void setALLData(int codeOfProduct,String nameOfProduct,int storageOut,int priceList,
                       int numberOfProduct, double pricePiece,double rateReduction,double priceTotal,double DDS,
                       String nameOfDisBand[],int numerOfDisBand[], int in_id_dl)
    {
         this.codeOfProduct   = codeOfProduct;
         this.nameOfProduct   = nameOfProduct;     
         this.storageOut      = storageOut;  
         this.priceList       = priceList;  
         this.numberOfProduct = numberOfProduct;       
         this.pricePiece      = pricePiece;   
         this.priceTotal      = priceTotal;
         this.DDS             = DDS; 
         this.rateReduction   = rateReduction;
         this.nameOfDisBaund = nameOfDisBand;
         this.numerOfDisBaund = numerOfDisBand;   
         this.id_dl = in_id_dl;
    }
  
    
 // get metods
    
 public int getCodeOfProduct()
   {
      return codeOfProduct;
  }
 public String getNameOfProduct()
   {
      return nameOfProduct;
  }
 public int getStorageOut()
   {
      return storageOut;
  }
 public int getPriceList()       
   {
      return priceList;
  }
 public int getNumberOfProduct()       
   {
      return numberOfProduct;
  }
 public double getPricePiece()
   {
     return pricePiece;
 }
public double getRateReduction()
{
    return rateReduction;
}
 public double getPriceTotal()
   {
     return priceTotal;
 }
 public double getDDS()
   {
     return DDS;
 }
public String[] getNameOfDisBand ()
{
    return nameOfDisBaund;
}
public  int[] getNumerOfDisBand()
{
    return numerOfDisBaund;
}
public int getID_DocLine()
{
    return id_dl;
}
public boolean getIsFinishRow()
{
    return isFinishRow;
}
 //set metods   
public void setIsFinishRow(boolean is)
{
    isFinishRow = is;
}
public void setID_DocLine(int in_id_dl)
{
     this.id_dl = in_id_dl;
}
 public void setCodeOfProduct(int in)
   {
       codeOfProduct=in;
  }
 public void setNameOfProduct(String in)
   {
       nameOfProduct= in;
  }
 public void setStorageOut(int in)
   {
       storageOut=in;
  }
 public void setPriceList(int in)       
   {
       priceList=in;
  }
 public void setNumberOfProduct(int in)       
   {
       numberOfProduct = in;
  }
 public void setPricePiece(double in)
   {
      pricePiece = in;
 }
 public void setRateReduction(double in)
 {
     rateReduction = in;
 }
 public void setPriceTotal(double in)
   {
      priceTotal = in;
 }
 public void setDDS(double in)
   {
      DDS=in;
 }
     
 public void setNameOfDisBand (String[] in)
{
     nameOfDisBaund = in;
}
public void setNumerOfDisBand(int[] in)
{
     numerOfDisBaund=in;
}       
    
}
