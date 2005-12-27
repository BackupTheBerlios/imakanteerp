
package imakante.com;

public class userRights {
 // Obekt sadarjash pravata na usera
    
    
    public userRights(java.sql.Connection conn) {
        this.inconn = conn;
        
    }
    private java.util.HashMap modul0;
    private java.util.HashMap modul1;
    private java.util.HashMap modul2;
    private java.util.HashMap modul3;
    private java.util.HashMap modul4;
    private java.sql.Connection inconn;
    
    // Method for extracting user rights
    public int getRight(int modul, int rightn){
    int inmodul = modul;
    int inright = rightn;
    int outright = 0;
    
    return outright;
    }
    
}
