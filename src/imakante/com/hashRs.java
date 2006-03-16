

package imakante.com;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
public class hashRs {
    
    public hashRs(java.sql.ResultSet rs,String mono){
        
        this.rs = rs;
        this.mono = mono;
        
    }
    
    
    public hashRs(java.util.LinkedHashMap hash){
        this.hash= hash;
        constructArrFromHash();
    }
    
    public hashRs(java.sql.ResultSet rs, String[] values) {
        this.rs = rs;
        this.values = values;
        
    }
    private java.sql.ResultSet rs;
    private String mono;
    private String[] values;
    private int[] valIndex;
    private String[] comboNames;
    private java.util.LinkedHashMap hash;
    private java.util.ArrayList in;
    java.util.Iterator it;
    
    private void constructArrFromHash(){
        in = new java.util.ArrayList(hash.keySet());
        comboNames = new String[in.size()];
        int i = 0;
        for ( it =hash.keySet().iterator(); it.hasNext(); ) {
            Object key = it.next();
            in.add(key);
            Object value = hash.get(key);
            comboNames[i] = value.toString();
            i++;
        }
        
    }
    private void constructMonoString(){
        int i = 0;
        in = new java.util.ArrayList();
        try {
            while(rs.next()){
                in.add(rs.getInt(mono));
                
            }
            comboNames = new String[in.size()];
            for (it = in.iterator(); it.hasNext();){
                comboNames[i] = (String)in.get(i);
                i++;
            }
        } catch (SQLException ex) {
            
            ex.printStackTrace();
        }
        
    }
    
    
}
