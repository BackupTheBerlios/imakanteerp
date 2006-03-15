
package nom;

public class dbDoctypeUserRights extends imakante.com.dbObject {
    
    private java.sql.Connection conn;
    private int id_usermaster = 0;
    private int doctypeNum = 0;
    private int rights = 3;
    private String splitNamesUsers[];
    private String splitReceiptBooks[];
    private int indexOfUsers[] = null;
    private int indexOfRBooks[] = null;
    
    public dbDoctypeUserRights(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    protected void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("call nom_procedure_doctype_user_rights(?,?,?,?,?)"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    protected void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_um", getUserMaster());
            getCstm().setInt("in_id_sdtn", getDoctypeNum());
            getCstm().setInt("in_rights", getRights());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(int in_id_um) {
        setComprator(1);
        this.id_usermaster = in_id_um;
        this.rights = 3;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_id_um, int in_sdtn, int in_rights) {
        setComprator(2);
        this.setId(in_id);
        this.id_usermaster = in_id_um;
        this.doctypeNum = in_sdtn;
        this.rights = in_rights;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
//
//    public void deleteRow(int in_id) {
//        comprator = 3;
//        id = in_id;
//        try{
//            registerParameters();
//            getCstm().execute();
//        }catch(java.sql.SQLException sqle){ sqle.printStackTrace(); }
//    }
    
//    public java.sql.ResultSet getRow(int in_id) {
//        comprator = 4;
//        id = in_id;
//        try {
//            registerParameters();
//            rs = getCstm().executeQuery();
//            while(rs.next()) {
//                // ??????????????????????????????????????????????????????????????????
//                // koi poleta ot rs da se wzemat i s kakwi zaglawiq?
//            }
//        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
//        return rs;
//    }
    
    public java.sql.ResultSet searchRecords(int in_rights) {
        setComprator(5);
        this.rights = in_rights;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public String[] getUserNames() {
        setComprator(6);
        String return_str = new String("");
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Users = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Users.put(new Integer(getRs().getInt("id_um")), new String(getRs().getString("name_um")));
                in.add(new Integer(getRs().getInt("id_um")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexOfUsers = new int[i];
        it = in.iterator();
        splitNamesUsers = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexOfUsers[i] = (Integer) it.next();
            splitNamesUsers[i] = (String) Users.get(indexOfUsers[i]);
            i++;
        }
        return splitNamesUsers;
    }
    
    public String[] getReceiptBooks() {
        setComprator(8);
        String resultStr = new String("");
        int originalId = getId(), i = 0;
        java.sql.ResultSet originalRS = getRs();
        java.util.ArrayList list = new java.util.ArrayList();
        java.util.Iterator iterator = null;
        java.util.HashMap RBooks = new java.util.HashMap();
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                RBooks.put(new Integer(getRs().getInt("id_sdtn")), new String(getRs().getString("area_number_sdtn") + " - " +
                        getRs().getString("name_sdtn")));
                list.add(new Integer(getRs().getInt("id_sdtn")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(originalRS);
        setId(originalId);
        indexOfRBooks = new int[i];
        iterator = list.iterator();
        splitReceiptBooks = new String[i];
        i = 0;
        while(iterator.hasNext()) {
            indexOfRBooks[i] = (Integer) iterator.next();
            splitReceiptBooks[i] = (String) RBooks.get(indexOfRBooks[i]);
            i++;
        }
        return splitReceiptBooks;
    }
    
    public int getUserMaster() {
        return id_usermaster;
    }
    
    public void setUsermaster(int UserMaster) {
        this.id_usermaster = UserMaster;
    }
    
    public int getDoctypeNum() {
        return doctypeNum;
    }
    
    public void setDoctypeNum(int DoctypeNum) {
        this.doctypeNum = DoctypeNum;
    }
    
    public int getRights() {
        return rights;
    }
    
    public void setRights(int Rights) {
        this.rights = Rights;
    }
    
    public int[] getIndexOfUsers() {
        return indexOfUsers;
    }
    
    public int[] getIndexOfRBooks() {
        return indexOfRBooks;
    }
}
