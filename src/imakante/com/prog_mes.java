
package imakante.com;

import javax.swing.JOptionPane;

public class prog_mes extends javax.swing.JOptionPane {
    
    public prog_mes(int i){
        String str_mes;
        int newType = i;
    switch(i){
        case 1:str_mes = "Niama problemi"  ;break;
        default : str_mes = "ima problemi";break;
      
    
    }
    
    
    }

    public void setMessage(Object newMessage) {

        super.setMessage(newMessage);
    }

    public void setMessageType(int newType) {

        super.setMessageType(newType);
    }
  
    
}
