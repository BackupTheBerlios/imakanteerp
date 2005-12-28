
package imakante.com;

import java.sql.SQLException;

public class userRights {
    // Obekt sadarjash pravata na usera
    
    
    public userRights(java.sql.Connection conn) {
        this.inconn = conn;
        constructStm();
        constructHashes();
        closeRes();
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
        try{
            stm = inconn.createStatement();}catch(java.sql.SQLException ex){}
    }
    
    private void constructHashes(){
        try {
            String ur = "";
            rs = stm.executeQuery("SELECT model0, modul1, modul2 FROM user_rights WHERE id_user =" + imakante.com.NewMain.getDbUser());
            ur = rs.getString("modul0");
            for (int i = 0; i < ur.length(); i++ ){
                modul0.put(i, String.valueOf(ur.charAt(i)));}
            ur = rs.getString("modul1");
            for (int i = 0; i < ur.length(); i++ ){
                modul1.put(i, String.valueOf(ur.charAt(i)));}
            ur = rs.getString("modul2");
            for (int i = 0; i < ur.length(); i++ ){
                modul2.put(i, String.valueOf(ur.charAt(i)));}
            ur = rs.getString("modul3");
            for (int i = 0; i < ur.length(); i++ ){
                modul3.put(i, String.valueOf(ur.charAt(i)));}
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
    }
    
    private void closeRes(){
        try {
            rs.close();
            rs=null;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        try {
            stm.close();
            stm=null;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
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
