
package imakante.com;

import javax.swing.JOptionPane;

public class prog_mes {
    
    public static javax.swing.JOptionPane err_mes(int code){
        String string_mess;
    
        switch(code){
        
        case     1:string_mess = "NIama" ; break;
        default   :string_mess = "problem"; break;
        
    }
     javax.swing.JOptionPane jERR = new javax.swing.JOptionPane(string_mess,1);
    return jERR;
    }
    
    
}
