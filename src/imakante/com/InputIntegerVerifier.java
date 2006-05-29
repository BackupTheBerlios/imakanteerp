

package imakante.com;
import javax.swing.*;

public class InputIntegerVerifier extends InputVerifier
{
    private int maxInt=-1;
    public InputIntegerVerifier(int maxInt)
    {
        super();
        this.maxInt = maxInt;
   
    }
     public InputIntegerVerifier()
     {
         super();
     }
    public boolean verify(JComponent input) 
    {
     byte UpRange = 57;
      byte DownRange = 48;
      boolean checkSimbol=false;
      int count=-1;
      JTextField tf = (JTextField) input;
      int lenth = tf.getText().length();
      byte ch[] = new byte[lenth];
      ch = tf.getText().getBytes();
       if(lenth<=0) return true;
      if(lenth <= maxInt | maxInt==-1)
      {
          count=0;
      for(int i=0;i < lenth; i++)
         {
           if(( ch[i]<= UpRange)&&(ch[i] >=DownRange))
             {
              checkSimbol = true;
             }
           else
           {
               checkSimbol= false;
               count++;
           }
         }
      }
      else checkSimbol= false;
     
      if(count>0) checkSimbol= false; 
      return checkSimbol;
    }
   
    
}
