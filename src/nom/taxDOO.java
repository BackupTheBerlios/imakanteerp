
package nom;

import imakante.com.dbObject;


public class taxDOO extends dbObject{
    
    public taxDOO(java.sql.Connection conn, int in_period) {
        super(conn);
        setPeriod(in_period);
    }
    
    private java.sql.Connection conn;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private int comprator= 0;
    private int period = 0;
    
    private double ktu = 0;
    private double min_rab_zaplata = 0;
    private double max_os_prag = 0;
    private double pensii1_sl = 0;
    private double pensii1_rb = 0;
    private double pensii2_sl = 0;
    private double pensii2_rb = 0;
    private double fozm_sl = 0;
    private double fozm_rb = 0;
    private double fbzr_sl = 0;
    private double fbzr_rb = 0;
    private double ppf = 0;
    private double upf_sl = 0;
    private double upf_rb = 0;
    private double fgvrs = 0;
    private double zo_sl = 0;
    private double zo_rb = 0;
    
    public void registerParameters(){
        try{
            
            cstm.setInt("comprator", getComprator());
            cstm.setInt("in_period", getPeriod());
            cstm.setDouble("in_ktu", getKtu());
            cstm.setDouble("in_min_rab_zaplata", getMin_rab_zaplata());
            cstm.setDouble("in_max_os_prag", getMax_os_prag());
            cstm.setDouble("in_pensii1_sl", getPensii1_sl());
            cstm.setDouble("in_pensii1_rb", getPensii1_rb());
            cstm.setDouble("in_pensii2_sl", getPensii2_sl());
            cstm.setDouble("in_pensii2_rb", getPensii2_rb());
            cstm.setDouble("in_fozm_sl", getFozm_sl());
            cstm.setDouble("in_fozm_rb", getFozm_rb());
            cstm.setDouble("in_fbzr_sl", getFbzr_sl());
            cstm.setDouble("in_fbzr_rb", getFbzr_rb());
            cstm.setDouble("in_ppf", getPpf());
            cstm.setDouble("in_upf_sl", getUpf_sl());
            cstm.setDouble("in_upf_rb", getUpf_rb());
            cstm.setDouble("in_fgvrs", getFgvrs());
            cstm.setDouble("in_zo_sl", getZo_sl());
            cstm.setDouble("in_zo_rb", getZo_rb());
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    private void setValueFromResult(){
        try{
            while(getRs().next()){
                setKtu(getRs().getDouble("ktu"));
                setMin_rab_zaplata(getRs().getDouble("min_rab_zaplata"));
                setMax_os_prag(getRs().getDouble("max_os_prag"));
                setPensii1_sl(getRs().getDouble("pensii1_sl"));
                setPensii1_rb(getRs().getDouble("pensii2_rb"));
                setPensii2_sl(getRs().getDouble("pensii2_s1"));
                setPensii2_rb(getRs().getDouble("pensii2_rb"));
                setFozm_sl(getRs().getDouble("fozm_sl"));
                setFozm_rb(getRs().getDouble("fozm_rb"));
                setFbzr_sl(getRs().getDouble("fbzr_s1"));
                setFbzr_rb(getRs().getDouble("fbzr_rb"));
                setPpf(getRs().getDouble("ppf"));
                setUpf_sl(getRs().getDouble("upf_sl"));
                setUpf_rb(getRs().getDouble("upf_rb"));
                setFgvrs(getRs().getDouble("fgvrs"));
                setZo_sl(getRs().getDouble("zo_sl"));
                setZo_rb(getRs().getDouble("zo_rb"));
                
                
            }
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    private void prepareCstm() {
        try {
            
            cstm = conn.prepareCall("{call ls_procedure_taxDOO(?,?)}");
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
     private void prepareRezult(){
        try{
            registerParameters();
            setRs(cstm.executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }  
    public java.sql.ResultSet getRs() {
        return rs;
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
    
    public int getPeriod() {
        return period;
    }
    
    public void setPeriod(int period) {
        this.period = period;
    }
    
    public void closeTaxOOD(){
        try{getRs().close();}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        try{cstm.close();}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }

    public int getComprator() {
        return comprator;
    }

    public void setComprator(int comprator) {
        this.comprator = comprator;
    }

    public double getKtu() {
        return ktu;
    }

    public void setKtu(double ktu) {
        this.ktu = ktu;
    }

    public double getMin_rab_zaplata() {
        return min_rab_zaplata;
    }

    public void setMin_rab_zaplata(double min_rab_zaplata) {
        this.min_rab_zaplata = min_rab_zaplata;
    }

    public double getMax_os_prag() {
        return max_os_prag;
    }

    public void setMax_os_prag(double max_os_prag) {
        this.max_os_prag = max_os_prag;
    }

    public double getPensii1_sl() {
        return pensii1_sl;
    }

    public void setPensii1_sl(double pensii1_sl) {
        this.pensii1_sl = pensii1_sl;
    }

    public double getPensii1_rb() {
        return pensii1_rb;
    }

    public void setPensii1_rb(double pensii1_rb) {
        this.pensii1_rb = pensii1_rb;
    }

    public double getPensii2_sl() {
        return pensii2_sl;
    }

    public void setPensii2_sl(double pensii2_sl) {
        this.pensii2_sl = pensii2_sl;
    }

    public double getPensii2_rb() {
        return pensii2_rb;
    }

    public void setPensii2_rb(double pensii2_rb) {
        this.pensii2_rb = pensii2_rb;
    }

    public double getFozm_sl() {
        return fozm_sl;
    }

    public void setFozm_sl(double fozm_sl) {
        this.fozm_sl = fozm_sl;
    }

    public double getFozm_rb() {
        return fozm_rb;
    }

    public void setFozm_rb(double fozm_rb) {
        this.fozm_rb = fozm_rb;
    }

    public double getFbzr_sl() {
        return fbzr_sl;
    }

    public void setFbzr_sl(double fbzr_sl) {
        this.fbzr_sl = fbzr_sl;
    }

    public double getFbzr_rb() {
        return fbzr_rb;
    }

    public void setFbzr_rb(double fbzr_rb) {
        this.fbzr_rb = fbzr_rb;
    }

    public double getPpf() {
        return ppf;
    }

    public void setPpf(double ppf) {
        this.ppf = ppf;
    }

    public double getUpf_sl() {
        return upf_sl;
    }

    public void setUpf_sl(double upf_sl) {
        this.upf_sl = upf_sl;
    }

    public double getUpf_rb() {
        return upf_rb;
    }

    public void setUpf_rb(double upf_rb) {
        this.upf_rb = upf_rb;
    }

    public double getFgvrs() {
        return fgvrs;
    }

    public void setFgvrs(double fgvrs) {
        this.fgvrs = fgvrs;
    }

    public double getZo_sl() {
        return zo_sl;
    }

    public void setZo_sl(double zo_sl) {
        this.zo_sl = zo_sl;
    }

    public double getZo_rb() {
        return zo_rb;
    }

    public void setZo_rb(double zo_rb) {
        this.zo_rb = zo_rb;
    }
}
