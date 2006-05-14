

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
    private int id_pc;
    private String nameOfDisBaund[]= new String[3]; // imenata na razfasovkite
    private int numerOfDisBaund[] = new int[3];   // broiki zavisi6i ot koeficientite
    private int ratioOfDisBaund[] = new int[3];   // koeficienti za razfasovkite
    private boolean isFinishRow = false;
    private boolean isRowCanEdit = true;
    private double[] priceOfList = new double[4];
    
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
        priceOfList[0] = 0;
        priceOfList[1] = 0;
        priceOfList[2] = 0;
        priceOfList[3] = 0;
        ratioOfDisBaund[0] = 0; 
        ratioOfDisBaund[1] = 0;     
        ratioOfDisBaund[2] = 0;  
        
    }
    
    public docLineArray(int codeOfProduct,String nameOfProduct,int storageOut,int priceList,
                       int numberOfProduct, double pricePiece,double rateReduction ,double priceTotal,double DDS,
                       String nameOfDisBand[],int numerOfDisBand[],int in_id_dl,
                       int id_pc, double price0,double price1,double price2,double price3, int ratioOfDisBand[])
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
         this.id_pc = id_pc;
         this.priceOfList[0] = price0;
         this.priceOfList[1] = price1;
         this.priceOfList[2] = price2;
         this.priceOfList[3] = price3;
         this.ratioOfDisBaund = ratioOfDisBand;
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
         this.id_dl = in.getID_DocLine(); 
         this.id_pc = in.getID_PC();
         this.priceOfList = in.getPriceOfList();
         this.ratioOfDisBaund = in.getRatioOfDisBand();
    }
    
    
    public void setALLData(int codeOfProduct,String nameOfProduct,int storageOut,int priceList,
                       int numberOfProduct, double pricePiece,double rateReduction,double priceTotal,double DDS,
                       String nameOfDisBand[],int numerOfDisBand[], int in_id_dl,
                       int id_pc, double price0,double price1,double price2,double price3,  int ratioOfDisBand[])
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
         this.id_pc = id_pc;
         this.priceOfList[0] = price0;
         this.priceOfList[1] = price1;
         this.priceOfList[2] = price2;
         this.priceOfList[3] = price3;
         this.ratioOfDisBaund = ratioOfDisBand;
    }
  
    
 // get metods
public double[] getPriceOfList()
{
    return priceOfList;
}
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
public  int[] getRatioOfDisBand()
{
    return ratioOfDisBaund;
}
public int getID_DocLine()
{
    return id_dl;
}
public boolean getIsFinishRow()
{
    return isFinishRow;
}
public boolean getIsRowCanEdit()
{
    return isRowCanEdit;
}
public int getID_PC()
{
    return id_pc;
}
 //set metods 
public void setPriceOfList(double[] in)
{
    priceOfList = in;
}
public void setID_PC(int id)
{
    id_pc=id;
}
public void setIsFinishRow(boolean is)
{
    isFinishRow = is;
}
public void setIsRowCanEdit(boolean is)
{
    isRowCanEdit = is;
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
public void setRatioOfDisBand(int[] in)
{
     ratioOfDisBaund=in;
}       
}
