
package imakante.salary;

import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;

public class frmAddDOD extends javax.swing.JDialog {
    
    
    public frmAddDOD(javax.swing.JFrame OwnerForm, boolean modal,java.sql.Connection srcCN, int id) {
        super(OwnerForm, modal);
        idI=id;
        dbInternal = srcCN;
        
        
        initComponents();
        makeTextFields();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setText("\u0414\u0430\u0442\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(30, 40, 5, 5);
        jPanel1.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u0414\u043e\u0445\u043e\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 5);
        jPanel1.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0421\u0443\u043c\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 5);
        jPanel1.add(jLabel3, gridBagConstraints);

        jLabel4.setText("\u041f\u0440\u043e\u0446\u0435\u043d\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 20, 5);
        jPanel1.add(jLabel4, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 150;
        gridBagConstraints.insets = new java.awt.Insets(30, 5, 5, 40);
        jPanel1.add(jTextField1, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 150;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 40);
        jPanel1.add(jTextField2, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 150;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 40);
        jPanel1.add(jTextField3, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 150;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 40);
        jPanel1.add(jTextField4, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u0417\u0410\u041f\u0410\u0417\u0418");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jButton1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton1KeyPressed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u041e\u0422\u041c\u0415\u041d\u0418");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton2KeyPressed(evt);
            }
        });

        jPanel2.add(jButton2);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>
    
    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton2.doClick(); }
    }
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {
        dispose();
    }
    
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick(); }
    }
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {
        inputDataDB();
    }
    
    
    // Variables declaration - do not modify
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    // End of variables declaration
    private java.sql.Connection dbInternal;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    private int idI;
    
    public void setBlanckFields(){
        jTextField1.setText("");
        jTextField2.setText("");
        jTextField3.setText("");
        jTextField4.setText("");
        
    }
    public void makeTextFields(){
        try{
            stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,
                    java.sql.ResultSet.CONCUR_UPDATABLE);
            if (idI!=0){
                rs = stm.executeQuery("SELECT ls_dod.datep, ls_dod.doh, ls_dod.sum, ls_dod.prct FROM ls_dod WHERE id = " + idI);
                while(rs.next()){
                    jTextField1.setText(rs.getString("datep"));
                    jTextField2.setText(rs.getString("doh"));
                    jTextField3.setText(rs.getString("sum"));
                    jTextField4.setText(rs.getString("prct"));
                    
                }
            }else{
                setBlanckFields();
            }
        }catch(java.sql.SQLException sqle){}
        
    }
    public void inputDataDB(){
        if(idI!=0){
            try{
                stm.executeUpdate("UPDATE ls_dod SET datep = '" +
                        jTextField1.getText() + "', doh = '" +
                        jTextField2.getText() + "', sum = '" +
                        jTextField3.getText() + "', prct = '" +
                        jTextField4.getText() +
                        "' WHERE id = " + idI);
                FrmDOD.repaintTable();
               
            }catch(java.sql.SQLException sqle){}
            
        }else{
            try{
                stm.executeUpdate("INSERT INTO ls_dod(datep, doh, sum, prct)"  +
                        
                        "VALUES ('" +
                        jTextField1.getText() + "', '" +
                        jTextField2.getText() + "', '" +
                        jTextField3.getText() + "', '" +
                        jTextField4.getText() +
                        "')");}catch(java.sql.SQLException sqle){}
            
        }
        this.dispose();
    }
}
