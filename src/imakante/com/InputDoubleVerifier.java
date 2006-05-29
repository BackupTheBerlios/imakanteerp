

package imakante.com;
import javax.swing.*;

public class InputDoubleVerifier extends InputVerifier
{
    private int maxIntBefore = -1;
    private int maxIntAffter = -1;
    public InputDoubleVerifier(int maxBefor,int maxAffter)
    {
        super();
        this.maxIntAffter = maxAffter;
        this.maxIntBefore = maxBefor;
    }
     public InputDoubleVerifier()
     {
       super();  
     }
    public boolean verify(JComponent input) 
    {
      byte UpRange = 57;
      byte DownRange = 48;
      byte comma = 44;
      byte dot = 46;
      int countCommaDot[] = null; // masiv za rzpolovenieto na zapetaqta
      int count = 0; // za broene kolko pyti se sre6ta zapetaq ili to4ka
      int intNumber=0;
      int countDif=0;
      boolean checkSimbol=false;
      JTextField tf = (JTextField) input;
      int lenth = tf.getText().length();
      byte ch[] = new byte[lenth];
      ch = tf.getText().getBytes();
      countCommaDot = new int[lenth];
      if(lenth<=0) return true;
       for(int i=0;i < lenth; i++)
         {
           if(count > 1) 
           {
               
               break;
           }
           if( ch[i]== comma | ch[i]== dot)
           {
               countCommaDot[i] = 1;
               count++;
           }
           else countCommaDot[i] = 0;
         }
       if(count <= 1)  // ako potrebitelq e vkaral pove4e ot edin pat to4ka ili zapetaq
           {
             
              for(int i =0; i < lenth; i++ )
              {
                  if(countCommaDot[i]==1) 
                  {
                      intNumber = i;
                      break;
                  }
              }
             if(intNumber > 0)       // predi zapetaq;
             {   
                 if((intNumber-1)<=maxIntBefore | maxIntBefore ==-1)
              for(int i=0;i < intNumber-1; i++)
                 {
                   if(( ch[i]<= UpRange)&&(ch[i] >=DownRange))
                     {
                      checkSimbol = true;
                     }
                   else
                   {
                       checkSimbol= false;
                       countDif++;
                   }
                 }
             }
             if(intNumber == 0)       // ako nqma zapetaq
             { 
                  if((lenth)<=maxIntBefore | maxIntBefore ==-1)
              for(int i=0;i < lenth; i++)
                 {
                   if(( ch[i]<= UpRange)&&(ch[i] >=DownRange))
                     {
                      checkSimbol = true;
                     }
                   else
                   {
                       checkSimbol= false;
                       countDif++;
                   }
                 }
             }
             else
             if(intNumber < lenth)       // sled zapetaq
             {  
                  if((intNumber+1)<=maxIntAffter | maxIntAffter ==-1)
               for(int i=intNumber+1;i < lenth; i++)
                 {
                   if(( ch[i]<= UpRange)&&(ch[i] >=DownRange))
                     {
                      checkSimbol = true;
                     }
                   else
                   {
                       checkSimbol= false;
                       countDif++;
                   }
                }
             }
             
       }
      if(countDif>0) checkSimbol= false;
       return checkSimbol;
    }
   
    
}
