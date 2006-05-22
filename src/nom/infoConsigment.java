
package nom;

public class infoConsigment 
{
   private int id_pc =0;
   private int id_pm =0;
   private int partidaNomer =0;
   private int connection=0;
   private String expireDate; // na6 format
   private int barCod=0;
   private String expert_list;
    
    
    public infoConsigment(int in_id_pc,int in_id_pm,int p,int con,String date,int barcod,String exp_list)
    {
        this.id_pc = in_id_pc;
        this.id_pm = in_id_pm;
        this.partidaNomer = p;
        this.connection = con;
        this.expireDate = checkAndConvertSQLFormat(date);
        this.barCod = barcod;
        this.expert_list=exp_list;
    }
 
public int getBarCod()
 {
     return barCod;
 }    
 public String getExpireDate() // vry6ta stoinosta v na6 format
 {
     return expireDate;
 }
 public String getExpireDateSQL() // vry6ta stoinosta v SQl ski format
 {
     return expireDate;
 }
 public String getExpertList() // 
 {
     return expert_list;
 }  
 public int getId_PC()
 {
     return id_pc;
 }
 public int getId_PM()
 {
     return id_pm;
 }
 public int getPartidaNomer()
 {
     return partidaNomer;
 }
 public int getConnection()
 {
     return connection;
 }
 public void setId_PC(int in_id_pc)
 {
     this.id_pc=in_id_pc;
 }
 public void setId_PM(int in_id_pm)
 {
     this.id_pm=in_id_pm;
 }
 public void setPartidaNomer(int in)
 {
     this.partidaNomer=in;
 }
 public void setConnection(int in)
 {
     this.connection=in;
 }
  public void setExpireDate(String in)
 {
     
     this.expireDate= checkAndConvertSQLFormat(in);
 }
  public void setExpertList(String in)
 {
     
     this.expert_list=in;
 }
   public void setBarCod(int in)
 {
     this.barCod=in;
 }
 public int[] getExpireDateAsInt() 
 {
     int date[] = new int[3];
     int lenght = expireDate.length();
     char ch[] = expireDate.toCharArray();
     String day = String.copyValueOf(ch,0,2); // 
     int dayInt = Integer.parseInt(day);
     String month = String.copyValueOf(ch,3,2);
     int monthInt = Integer.parseInt(month);
     String year = String.copyValueOf(ch,6,4);
     int yearInt = Integer.parseInt(year);
     date[0]= dayInt;
     date[1]= monthInt;
     date[2]= yearInt;
     return date;
 }
 private String checkAndConvertSQLFormat(String in)
 {
     String newDate = in;
     char ch[] = in.toCharArray();
     int length = in.length();
     int bufLength=0;
     for(int i=0; i < length;i++)
     {
         if(ch[i]==45 || ch[i]==46 || ch[i]==47 )
         {
             if(i==4) // SQL format
             {
                 newDate = in.substring(length-2,length);
                 newDate +="/";
                 newDate +=in.substring(length-5,length-3); 
                 newDate +="/";
                 newDate +=in.substring(0,4); 
                 break;
             }
         }
     }
     
     
     
     return newDate;
 }
}
