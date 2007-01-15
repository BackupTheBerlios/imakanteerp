
package imakante.sales;

import java.math.BigDecimal;
import java.net.URL;
import java.sql.Array;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Date;
import java.sql.Ref;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.Statement;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Map;

public class levelDialog extends javax.swing.JDialog {
    
    public levelDialog(imakante.sales.sales_main parent, boolean modal, int ModuleCode, java.util.LinkedHashMap area) {
        super(parent, modal);
        frame = parent;
        modul = ModuleCode;
        hash = area;
        prepareConn();
        prepareStm();
        if(area.size() > 0) {
            initComponents();
            hash = new java.util.LinkedHashMap(area);
            constructComboNames();
            if (modul < 700) {
                this.jLabel4.setText("\u0421\u041A\u041B\u0410\u0414:");
                constructComboStorages();
            } else {
                this.jLabel4.setText("\u041A\u0410\u0421\u0410:");
                constructComboCashRegisters();
            }
            writeH();
        } else {
            sales_main.levelForWork = -1;
            sales_main.userID_ndtur = -1;
            imakante.com.MessagePane.MissingBook();
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jComboBox1 = new javax.swing.JComboBox();
        jPasswordField1 = new javax.swing.JPasswordField();
        jLabel4 = new javax.swing.JLabel();
        jComboBox2 = new javax.swing.JComboBox();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u043d\u0438\u0432\u043e");
        setLocationByPlatform(true);
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
            public void windowDeactivated(java.awt.event.WindowEvent evt) {
                formWindowDeactivated(evt);
            }
        });

        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel1.setText("\u041d\u0418\u0412\u041e:");

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel2.setText("\u041f\u0410\u0420\u041e\u041b\u0410:");

        jTextField1.setInputVerifier(new imakante.com.InputIntegerVerifier(3));
        jTextField1.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel3.setText("\u041a\u041e\u0427\u0410\u041d:");

        jComboBox1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboBox1KeyPressed(evt);
            }
        });

        jPasswordField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jPasswordField1KeyPressed(evt);
            }
        });

        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel4.setText("\u0421\u041a\u041b\u0410\u0414:");

        jComboBox2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboBox2KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jLabel1)
                            .add(jLabel3))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                            .add(jComboBox1, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 129, Short.MAX_VALUE)))
                    .add(layout.createSequentialGroup()
                        .add(jLabel4)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jComboBox2, 0, 129, Short.MAX_VALUE))
                    .add(layout.createSequentialGroup()
                        .add(jLabel2)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPasswordField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 129, Short.MAX_VALUE)))
                .addContainerGap())
        );

        layout.linkSize(new java.awt.Component[] {jLabel1, jLabel2, jLabel3, jLabel4}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel1))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jComboBox2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel4))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jPasswordField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jComboBox2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBox2KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jComboBox2.transferFocus(); }
    }//GEN-LAST:event_jComboBox2KeyPressed
    
    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        outLevel = 3;
        sales_main.levelForWork = 3;
        try {
            outIndex = getKey();
            sales_main.userID_ndtur = getKey();
        } catch(Exception xc) { 
            sales_main.userID_ndtur = -1; 
            sales_main.levelForWork = -1; 
        }
        frame.numberStorage = Integer.parseInt(sCodes.get(jComboBox2.getSelectedIndex()).toString());
        frame.startWith = String.valueOf(jComboBox1.getSelectedItem());
    }//GEN-LAST:event_formWindowClosing
    
    private void formWindowDeactivated(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowDeactivated
        
    }//GEN-LAST:event_formWindowDeactivated
    
    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        
    }//GEN-LAST:event_formWindowClosed
    
    private void jPasswordField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPasswordField1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if(hash == null) return;
            if (checkPass()) {
                outLevel = getLevel();
                sales_main.levelForWork = getLevel();
                sales_main.userID_ndtur = getKey();
                outIndex = getKey();
                frame.numberStorage = Integer.parseInt(sCodes.get(jComboBox2.getSelectedIndex()).toString());
                frame.startWith = String.valueOf(jComboBox1.getSelectedItem());
                this.getToolkit().beep();
            } else {
                outLevel = 3;
                outIndex = getKey();
                sales_main.levelForWork = 3;
                sales_main.userID_ndtur = getKey();
                frame.numberStorage = Integer.parseInt(sCodes.get(jComboBox2.getSelectedIndex()).toString());
                frame.startWith = String.valueOf(jComboBox1.getSelectedItem());
            }
            close();
        }
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) {
            if(hash == null)
                return;
            outLevel = 3;
            outIndex = getKey();
            sales_main.levelForWork = 3;
            sales_main.userID_ndtur = getKey();
            frame.numberStorage = Integer.parseInt(sCodes.get(jComboBox2.getSelectedIndex()).toString());
            frame.startWith = String.valueOf(jComboBox1.getSelectedItem());
            this.dispose();
        }
    }//GEN-LAST:event_jPasswordField1KeyPressed
    
    private void jComboBox1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBox1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jComboBox1.transferFocus(); }
    }//GEN-LAST:event_jComboBox1KeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField1.transferFocus(); }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JComboBox jComboBox2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
    private imakante.sales.sales_main frame;
    private  java.sql.Connection conn;
    private  java.sql.Statement stm;
    private java.util.LinkedHashMap hash;
    private int modul = 0;
    private String namesCombo[];
    private int selectComboBoxItem;
    private int i = 0;
    
    private int outLevel = 1;
    private int outIndex = 1;
    
    private java.util.ArrayList in, sCodes;
    private java.util.ArrayList connGetKeyAndIdUser = new java.util.ArrayList();
    private java.sql.ResultSet rs;
    
    private void writeH() {
        System.out.println(new java.util.ArrayList(hash.entrySet()));
    }
    
    private void constructComboNames() {
        jComboBox1.removeAllItems();
        //   in = new java.util.ArrayList(hash.keySet());
        in = new java.util.ArrayList();
        for (java.util.Iterator it = hash.keySet().iterator(); it.hasNext(); ) {
            Object key = it.next();
            in.add(key);
            Object value = hash.get(key);
            jComboBox1.addItem(value);
        }
    }
    
    private void constructComboStorages() {
        String StoragesList =
                "SELECT id_n_storage, code_n_storage, name_n_storage FROM n_storage " +
                "WHERE code_n_storage > 0 " +
                "ORDER BY code_n_storage;";
        jComboBox2.removeAllItems();
        try {
            rs = getStm().executeQuery(StoragesList);
            sCodes = new java.util.ArrayList();
            while (rs.next()) {
                jComboBox2.addItem(new String(rs.getInt("code_n_storage") + " - " + rs.getString("name_n_storage")));
                sCodes.add(new Integer(rs.getInt("id_n_storage")));
            }
        } catch (SQLException ex) { ex.printStackTrace(); }
    }
    
    private void constructComboCashRegisters() {
        String CRsList =
                "SELECT id_n_casa, code_n_casa, name_n_casa FROM n_casa " +
                "WHERE code_n_casa > 0 " +
                "ORDER BY code_n_casa;";
        jComboBox2.removeAllItems();
        try {
            rs = getStm().executeQuery(CRsList);
            sCodes = new java.util.ArrayList();
            while (rs.next()) {
                jComboBox2.addItem(new String(rs.getInt("code_n_casa") + " - " + rs.getString("name_n_casa")));
                sCodes.add(new Integer(rs.getInt("id_n_casa")));
            }
        } catch (SQLException ex) { ex.printStackTrace(); }
    }
    
    private int getLevel() {
        int level = 3;
        try {
            level = Integer.parseInt(this.jTextField1.getText());
        } catch (NumberFormatException ex) { ex.printStackTrace(); }
        if(level <= 0 || level >= 4)
            level = 1;
        return level;
    }
    
    private int getKey(){
        int d = 1;
        d = (Integer)in.get(jComboBox1.getSelectedIndex());
        return d;
    }
    
    private boolean checkPass(){
        String pss = new String(this.jPasswordField1.getPassword());
        if(pss.equals(imakante.com.NewMain.getPassword()))
            return true;
        else
            return false;
    }
    
    //opisanie na formite koito she badat kontrolirani
    private void close(){
        if (modul == 1)   { frame.loadImport(); }
        if (modul == 701) { frame.loadKassss(getLevel(), getKey()); }
        if (modul == 702) { frame.loadCasaOut(getLevel(), getKey()); }
        if (modul == 703) { frame.loadAdvances(getLevel(), getKey()); }
        if (modul == 704) { frame.loadC2C(getLevel(), getKey()); }
        //if (modul == 202) { frame.loadDanFac(getKey(),getLevel());}
        
        this.dispose();
    }
    
    private void toSystemString() {
        java.util.Iterator it = in.iterator();
        System.out.println("|================================================|"); //50
        System.out.println("|=======KEY==============|========VALUE==========|"); //50
        System.out.println("|================================================|"); //50
        while(it.hasNext()) {
            int key =(Integer) it.next();
            System.out.print("| Keys = " + key + "            |");
            System.out.println("Values = " + hash.get(key));
            System.out.println("|================================================|"); //50
        }
    }
    
    private void prepareConn() {
        try {
            setConn(frame.getConn());
            if(getConn() == null)
                System.out.println("CAN NOT ESTABLISH CONNECTION!");
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void prepareStm() {
        try {
            setStm(getConn().createStatement());
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public java.sql.Statement getStm() {
        return stm;
    }
    
    public void setStm(java.sql.Statement stm) {
        this.stm = stm;
    }
    
} // end class
