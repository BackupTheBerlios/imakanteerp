

package imakante.salary;

public class prDate {
    
    
    
    
    public static javax.swing.JComboBox setComboRSDate(boolean m, java.sql.Connection dbExt) 
    {
        
        java.sql.ResultSet rs = null;
        java.sql.Connection dbInternal = dbExt;
        java.sql.PreparedStatement pstm = null;
        java.sql.Statement stm = null;
        javax.swing.JComboBox jCXOM = null;
        boolean n = m;
        jCXOM = new javax.swing.JComboBox();
        if(n){
            try {
                pstm = dbInternal.prepareStatement("{SELECT * FROM sp_getyear}");
                rs = pstm.executeQuery();
                while(rs.next()){
                    jCXOM.addItem(rs.getString("pyear"));
                }
            } catch(java.sql.SQLException sqle){}
            
        } else {
            try{
                System.out.println("VATRE v 2 try");
                stm = dbInternal.createStatement();
                rs = stm.executeQuery("SELECT DISTINCT pyear FROM lsresult WHERE pyear IS NOT NULL ORDER BY pyear");
                if (rs == null){System.out.println("Niama result");}
                if (rs!=null){System.out.println("iama result");}
                rs.absolute(-1);
                while(rs.next()){
                    
                    jCXOM.addItem(rs.getString("pyear"));
                    
                    System.out.println(rs.getString("pyear"));
                }
            } catch(java.sql.SQLException sqle){
            sqle.printStackTrace();
            }
        }
        
        return jCXOM;
    }
    
    
    
    
}
