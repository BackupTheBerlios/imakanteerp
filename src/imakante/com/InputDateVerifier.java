

package imakante.com;
import javax.swing.*;

public class InputDateVerifier extends InputVerifier
{
   
     
    public boolean verify(JComponent input) 
    {
       JTextField tf = (JTextField) input;
           return checkDate(tf.getText(),1);
    }

 private boolean checkDate(String inDate, int format) 
   {
       boolean newDate = true;
       
       int yearLength = 0;
       int monthLength = 2;
       int deyLength = 2;
       int countsing = 0;    // broj znaci ( "/" ili "." ili "\") 
       boolean substance[] = null; // razpredelenie na znacite
       byte slash = 47;        // "/"
       byte dot   = 46;        // "."
       byte opaqueSlash = 92;  // "\"
       byte upRange = 57;
       byte downRange = 48;
       int length = inDate.length();
       substance = new boolean[length];
       byte ch[] = new byte[length];
       ch = inDate.getBytes();
       
       for(int i =0 ; i < length; i++)
       {
           if(ch[i] == slash | ch[i] == dot | ch[i] == opaqueSlash)
           {
               countsing++;
               substance[i] =true;
           }
           else substance[i] = false;
       }
       if(countsing >2) return false;
       
       switch(format)
       {
           
           default: // format DD/MM/YY
           {
               int down =0;
               countsing = 0;
              for(int i = 0 ; i < length; i++)
              {
                   
                   if(substance[i]) 
                   {
                       countsing++;
                       if(countsing == 3)
                       {
                          newDate = newDate & checkRangeForInt(length,i+1,ch,"");  // za godina ne pravim proverka 
                       }
                       else
                       {
                       if(i == 1+down | i == 2+down)
                           {
                               if(countsing ==1)
                                {   
                                 newDate = newDate & checkRangeForInt(i,down,ch,"day");
                                }
                               if(countsing == 2)
                                {
                                 newDate = newDate & checkRangeForInt(i,down,ch,"month");
                                }
                           }
                       
                       else return false;
                       down = i+1;
                       
                       }
                   }
              }
               
               break;
           }
       }
       
       
       return newDate;
   }
   private boolean checkRangeForInt(int up,int down, byte ch[],String dayMonthYear)
   {
       boolean newCheck = true;
       byte upRange = 57;
       byte downRange = 48;
       int newByte = 0;
      
       if(dayMonthYear.equals("day"))
       {
        if((up-down)>1) 
        {
         if((ch[down] >= 51 && ch[up-1] > 49))  return false;
        }
        
        
       }
       if(dayMonthYear.equals("month"))
       {
         if((up-down)>1) 
         {  
          if(ch[down] >= 49 && ch[up-1] > 50)    return false;   
         }
       }
       for(int i = down ; i < up; i++)
         {
           if(ch[i] < upRange && ch[i] > downRange )  newCheck = newCheck & true;       
         }
       return newCheck;
   }    
}
