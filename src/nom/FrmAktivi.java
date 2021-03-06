
package nom;

import imakante.com.vcomponents.*;
import javax.print.PrintException;
import javax.swing.*;
import java.text.MessageFormat;

public class FrmAktivi extends  imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmAktivi(String title, int idGroup) // TEST ----> da se dobavi: imakante.com.vcomponents.iFrame frame,
    {
        super(title);
        // myframe = frame;
        
        this.nom = idGroup;
        prepareConn();     // zapazva connection
        constructGroupDB(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
        fr.addWindowListener(this);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextCod = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextAnLevel = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButtonNew = new javax.swing.JButton();
        jButtonEdit = new javax.swing.JButton();
        jButtonPrint = new javax.swing.JButton();
        jButtonPrnReport = new javax.swing.JButton();
        jButtonDel = new javax.swing.JButton();
        jButtonRefresh = new javax.swing.JButton();
        jButtonDeleteAll = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();

        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("\u0410\u043a\u0442\u0438\u0432\u0438");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        setMaximumSize(new java.awt.Dimension(2000, 1600));
        setMinimumSize(new java.awt.Dimension(890, 350));
        setPreferredSize(new java.awt.Dimension(890, 350));
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(452, 45));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 37));
        jLabel1.setText("\u041a\u043e\u0434:");
        jPanel4.add(jLabel1);

        jTextCod.setPreferredSize(new java.awt.Dimension(45, 20));
        jPanel4.add(jTextCod);

        jLabel2.setText("\u0418\u043c\u0435:");
        jPanel4.add(jLabel2);

        jTextName.setPreferredSize(new java.awt.Dimension(100, 20));
        jPanel4.add(jTextName);

        jLabel3.setText("\u0410\u043d\u0430\u043b\u0438\u0442\u0438\u0447\u043d\u0438 \u043d\u0438\u0432\u0430:");
        jPanel4.add(jLabel3);

        jTextAnLevel.setPreferredSize(new java.awt.Dimension(45, 20));
        jPanel4.add(jTextAnLevel);

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
        jButton1.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton1);

        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 869, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setPreferredSize(new java.awt.Dimension(801, 37));
        jButtonNew.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Add 2.png")));
        jButtonNew.setText("\u041d\u043e\u0432");
        jButtonNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonNewActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonNew);

        jButtonEdit.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Report Edit 2.png")));
        jButtonEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButtonEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonEditActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonEdit);

        jButtonPrint.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Printer.png")));
        jButtonPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jButtonPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrintActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonPrint);

        jButtonPrnReport.setText("\u041f\u0435\u0447\u0430\u0442 \u0440\u0435\u043f\u043e\u0440\u0442");
        jPanel3.add(jButtonPrnReport);

        jButtonDel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Delete 2.png")));
        jButtonDel.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButtonDel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDelActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonDel);

        jButtonRefresh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Refresh 3.png")));
        jButtonRefresh.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jButtonRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonRefreshActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonRefresh);

        jButtonDeleteAll.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        jPanel3.add(jButtonDeleteAll);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonClose);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        try {
            MessageFormat headerFormat = new MessageFormat("Aktivi");
            MessageFormat footerFormat = new MessageFormat("Page. "+"- {0} -"+" IMAKANTE' ");
            table.print(JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_jButtonPrintActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
        try {
            String searchCod = jTextCod.getText();
            String searchName = jTextName.getText();
            int searchAnLevel = Integer.parseInt(jTextAnLevel.getText());
//            rs = countriesT.searchRecords(getNom(),searchCod,searchName,searchAnLevel);
            jScrollPane1.remove(table);
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
            jScrollPane1.getViewport().add(table);
            jScrollPane1.repaint();
        } catch(Exception e) {
            e.printStackTrace();
        }
        
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButtonRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonRefreshActionPerformed
// TODO add your handling code here:
        refreshTable();
    }//GEN-LAST:event_jButtonRefreshActionPerformed
    
    private void jButtonDelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDelActionPerformed
// TODO add your handling code here:
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setAllVariables();
            countriesT.deleteRow(getId());
            refreshTable();
        }
        
    }//GEN-LAST:event_jButtonDelActionPerformed
    
    private void jButtonEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonEditActionPerformed
// TODO add your handling code here:
        
        if (table.getSelectedRow() != -1) {
            
            setRow(table.getSelectedRow());
            if(getRow()==0){
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }
            setId((Integer) table.getValueAt(getRow(), 0));
            setCod((String) table.getValueAt(getRow(), 1));
            setNames((String) table.getValueAt(getRow(), 2));
            setAnID((Integer) table.getValueAt(getRow(), 3));
            
            
            try {
                nom.aeGroup dialog = new nom.aeGroup(this, true,getAnID());
                dialog.setVisible(true);
                
            } catch(Exception e) {
                e.printStackTrace();
            }
        }else{
            
        }
        
    }//GEN-LAST:event_jButtonEditActionPerformed
    
    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
// TODO add your handling code here:
        setCod("");
        setNames("");
        setAnID(0);
//        countriesT.insertRow(getNom(),getCod(),getNames(),getAnID());
        setId(countriesT.getMaxId());
        refreshTable();
        try {
            nom.aeGroup dialog = new nom.aeGroup(this, true,0);
            dialog.setVisible(true);
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        
    }//GEN-LAST:event_jButtonNewActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonDel;
    private javax.swing.JButton jButtonDeleteAll;
    private javax.swing.JButton jButtonEdit;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrnReport;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextAnLevel;
    private javax.swing.JTextField jTextCod;
    private javax.swing.JTextField jTextName;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private int id = 0; // imena ot tablicata
    private int nom = 0; // imena ot tablicata
    private String cod,name; // imena ot tablicata
    private int alId=0; // vryzkata kym tablicata za analitu4nite niva
    private  boolean atBegining=false;
    private  boolean atEnd = false;
    private int row;
    
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private  java.sql.ResultSet rs;
    private groupDB countriesT;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    private java.sql.Connection ccc;  // samo za testvaneto
    private  static JFrame fr = new JFrame("test");
    private String User="javauser";  // vremenna promenliva za test
    private String Pass="javadude";  // vremenna promenliva za test
    private String Url = "jdbc:mysql://127.0.0.1:3306/frmtest";  // vremenna promenliva za test
    //---------------END My Variables
    //---------------START MyFunction
    private void prepareConn() //TEST
    {
        // samo za testovate ------------
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            ccc = java.sql.DriverManager.getConnection(Url, User, Pass);
            conn = ccc;
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        //
        /* try
       {
            setConn(myframe.getConn());
       }
       catch(Exception e)
       {
       e.printStackTrace();
       }*/
    }
    private void constructGroupDB() //OK
    {
        try {
            
            countriesT = new nom.groupDB(conn,nom);
        } catch(Exception e)
        
        {
            e.printStackTrace();
        }
        System.out.println("ot construct object");
    }
    private void initTable() //OK  -- !!ima za dovyr6wane - skrivane na koloni!!
    {
        try {
            countriesT.setNom(nom); // za izvli4ane na samo poleta otgovarq6ti s idGroup
            rs = countriesT.getTable();
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
            // da se napravqt skriti kolona "id" i kolona "nom"
        } catch(Exception e) {
            e.printStackTrace();
        }
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {
            
        }
    }
    
    public void windowOpened(java.awt.event.WindowEvent e) {
    }
    public void windowClosing(java.awt.event.WindowEvent e) // colose frame`s windows
    {
        System.exit(1);
    }
    
    public void windowClosed(java.awt.event.WindowEvent e) {
        System.out.println("windowClosed");
    }
    public void windowIconified(java.awt.event.WindowEvent e) {
    }
    public void windowDeiconified(java.awt.event.WindowEvent e) {
    }
    public void windowActivated(java.awt.event.WindowEvent e) {
    }
    public void windowDeactivated(java.awt.event.WindowEvent e) {
        
    }
    
    public groupDB getCountriesT() //OK
    {
        return countriesT;
    }
    
    public void setCountriesT(groupDB val)//OK
    {
        this.countriesT = val;
    }
    
    public imakante.com.CustomTableModel getModel()//OK
    {
        return model;
    }
    
    public void setModel(imakante.com.CustomTableModel val)//OK
    {
        this.model = val;
    }
    
    public imakante.com.CustomTable getTable()//OK
    {
        return table;
    }
    
    public void setTable(imakante.com.CustomTable val) //OK
    {
        this.table = val;
    }
    
    public iFrame getMyframe()//OK
    {
        return myframe;
    }
    
    public void setMyframe(iFrame val)//OK
    {
        this.myframe = val;
    }
    public  boolean isAtBegining()//OK
    {
        return atBegining;
    }
    
    public  void setAtBegining(boolean aAtBegining)//OK
    {
        atBegining = aAtBegining;
    }
    
    public  boolean isAtEnd()//OK
    {
        return atEnd;
    }
    
    public  void setAtEnd(boolean aAtEnd) //OK
    {
        atEnd = aAtEnd;
    }
    private int  getMaxRow() //OK
    {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
    }
    public  int getRow() {
        return row;
    }
    
    public void setId(int ID) //OK
    {
        this.id = ID;
    }
    public int getId() //OK
    {
        return id;
    }
    public void setNom(int NOM) //OK
    {
        this.nom = NOM;
    }
    public int getNom()//OK
    {
        return nom;
    }
    public void setCod(String COD) //OK
    {
        this.cod = COD;
    }
    public String getCod() //OK
    {
        return cod;
    }
    public void setNames(String Name) //OK
    {
        this.name = Name;
    }
    public String getNames() //OK
    {
        return name;
    }
    
    public void setAnID(int anid) //OK
    {
        this.alId = anid;
    }
    public int getAnID() //OK
    {
        return alId;
    }
    public  void setRow(int val) //OK
    {
        row = val;
    }
    public  void mTableEnd() //OK
    {
        setRow(getMaxRow());
        try{
            setId((Integer) table.getValueAt(getRow(), 0));
            setCod((String) table.getValueAt(getRow(), 1));
            setNames((String) table.getValueAt(getRow(), 2));
            setAnID((Integer) table.getValueAt(getRow(), 3));
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem");
        }
        setAtBegining(false);
        setAtEnd(true);
    }
    public void mOneRowPlus() //OK
    {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow()) {
                setRow(getRow()+1);
            }
            setAtBegining(false);
            try {
                setId((Integer) table.getValueAt(getRow(), 0));
                setCod((String) table.getValueAt(getRow(), 1));
                setNames((String) table.getValueAt(getRow(), 2));
                setAnID((Integer) table.getValueAt(getRow(), 3));
                
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
                System.out.println("problem");
            }
            if(getRow() == getMaxRow()) {
                setAtEnd(true);
            }
        }
    }
    public  void mOneRowMinus() //OK
    {
        if(getRow() >= 0){
            if(getRow() > 0){
                setRow(getRow() - 1);}
            setAtEnd(false);
            try {
                setId((Integer) table.getValueAt(getRow(), 0));
                setCod((String) table.getValueAt(getRow(), 1));
                setNames((String) table.getValueAt(getRow(), 2));
                setAnID((Integer) table.getValueAt(getRow(), 3));
                
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
            }
            System.out.println("problem");}
        if(getRow() == 0){
            setAtBegining(true);
        }
    }
    public void mTableBegining() //OK
    {
        setRow(0);
        try {
            setId((Integer) table.getValueAt(getRow(), 0));
            setCod((String) table.getValueAt(getRow(), 1));
            setNames((String) table.getValueAt(getRow(), 2));
            setAnID((Integer) table.getValueAt(getRow(), 3));
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem");
        }
        setAtBegining(true);
        setAtEnd(false);
    }
    protected  void refreshTable() //OK
    {
        jScrollPane1.remove(table);
        rs = countriesT.getTable();
        model = new imakante.com.CustomTableModel(conn, rs, null);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
        
    }
    
    private void setAllVariables() {
        
    }
}// end class
