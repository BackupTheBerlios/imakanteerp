
package imakante.com;

import javax.swing.*;

public class InputCharacterVerifier extends InputVerifier
{
    
   private int maxInt=-1;
    public InputCharacterVerifier()
    {
        super();
    }
    public boolean verify(JComponent input) 
    {
      byte UpRange = 57;
      byte DownRange = 48;
   
      boolean checkSimbol=false;
      JTextField tf = (JTextField) input;
      int lenth = tf.getText().length();
      byte ch[] = new byte[lenth];
      ch = tf.getText().getBytes();
       if(lenth<=0) return true;
      if(lenth <= maxInt | maxInt==-1)
      {
      for(int i=0;i < lenth; i++)
         {
           if(( ch[i]> UpRange)||(ch[i] <DownRange))
             {
              checkSimbol = true;
             }
           else checkSimbol= false;
         }
      }
      else checkSimbol= false;
     
      return checkSimbol;
    }
    
}
