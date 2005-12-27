
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
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    
    
    private void constructStm(){
    stm = inconn.createStatement();
    }
    
    private java.util.HashMap constructHash(){
        java.util.HashMap hm = null;
        return hm;
    }
    
    // Method for extracting user rights
    public int getRight(int modul, int rightn){
        
        int outright = 0;
        if (modul == 0){
            outright = Integer.valueOf((String) modul0.get(""+modul));
        }else if(modul == 1){
            outright = Integer.valueOf((String) modul1.get(""+modul));
        }else if(modul == 2){
            outright = Integer.valueOf((String) modul2.get(""+modul));
        }else if(modul == 3){
            outright = Integer.valueOf((String) modul3.get(""+modul));
        }else if(modul == 4){
            outright = Integer.valueOf((String) modul4.get(""+modul));
        }
        return outright;
    }
    
}
