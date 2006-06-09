
package nom;

import java.awt.event.WindowListener;
import java.awt.print.PrinterException;
import java.sql.*;
import imakante.com.*;
import imakante.com.vcomponents.*;
import javax.print.PrintException;
import javax.swing.*;
import java.text.MessageFormat;
import java.lang.Byte;


public class FrmNaseleniMesta extends  imakante.com.vcomponents.iInternalFrame implements WindowListener {
    
    public FrmNaseleniMesta(String title, imakante.com.vcomponents.iFrame frame) // TEST da se dobavi , imakante.com.vcomponents.iFrame frame
    {
        super(title);
        myframe = frame;
        prepareConn();     // zapazva connection
        constructNaseleniMestaDB(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextPostCode = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextName = new javax.swing.JTextField();
        jButtonSearch = new javax.swing.JButton();
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
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        setMinimumSize(new java.awt.Dimension(890, 390));
        setPreferredSize(new java.awt.Dimension(900, 400));
        addInternalFrameListener(new javax.swing.event.InternalFrameListener() {
            public void internalFrameActivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosed(javax.swing.event.InternalFrameEvent evt) {
                formInternalFrameClosed(evt);
            }
            public void internalFrameClosing(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeactivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeiconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameIconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameOpened(javax.swing.event.InternalFrameEvent evt) {
            }
        });

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(452, 45));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 37));
        jLabel1.setText("\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434:");
        jPanel4.add(jLabel1);

        jTextPostCode.setToolTipText("\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u0430\u043c\u043e \u0446\u0438\u0444\u0440\u0438 ");
        jTextPostCode.setPreferredSize(new java.awt.Dimension(45, 20));
        jTextPostCode.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextPostCode.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextPostCodeFocusGained(evt);
            }
        });
        jTextPostCode.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextPostCodeKeyPressed(evt);
            }
        });

        jPanel4.add(jTextPostCode);

        jLabel2.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e:");
        jPanel4.add(jLabel2);

        jTextName.setPreferredSize(new java.awt.Dimension(100, 20));
        jTextName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextNameFocusGained(evt);
            }
        });
        jTextName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextNameKeyPressed(evt);
            }
        });

        jPanel4.add(jTextName);

        jButtonSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
        jButtonSearch.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButtonSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSearchActionPerformed(evt);
            }
        });

        jPanel4.add(jButtonSearch);

        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 876, Short.MAX_VALUE)
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

        jButtonPrnReport.setText("\u041f\u0435\u0447\u0430\u0442 \u043e\u0442\u0447\u0435\u0442");
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
    
    private void jTextPostCodeFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextPostCodeFocusGained
        jTextPostCode.selectAll();
    }//GEN-LAST:event_jTextPostCodeFocusGained
    
    private void jTextPostCodeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextPostCodeKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSearch.doClick(); searchRecords(); 
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextPostCode.setText(""); }
    }//GEN-LAST:event_jTextPostCodeKeyPressed
    
    private void jTextNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextNameFocusGained
        jTextName.selectAll();
    }//GEN-LAST:event_jTextNameFocusGained
    
    private void jTextNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextNameKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSearch.doClick(); searchRecords(); 
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextName.setText(""); }
    }//GEN-LAST:event_jTextNameKeyPressed
    
    private void formInternalFrameClosed(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameClosed
        
    }//GEN-LAST:event_formInternalFrameClosed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        try {
            MessageFormat headerFormat = new MessageFormat("Group");
            MessageFormat footerFormat = new MessageFormat("Page. "+"- {0} -"+" IMAKANTE' ");
            table.print(JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(PrinterException e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_jButtonPrintActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
// ????? proverka za vhoda na dannite , trqbva da sa samo cifri   v momenta e izpylneno s class imacante.com.InputIntegerVerifier
    private void jButtonSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSearchActionPerformed
        searchRecords();
    }//GEN-LAST:event_jButtonSearchActionPerformed
    
    private void jButtonRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonRefreshActionPerformed
        refreshTable();
    }//GEN-LAST:event_jButtonRefreshActionPerformed
    
    private void jButtonDelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDelActionPerformed
        delRedord();
    }//GEN-LAST:event_jButtonDelActionPerformed
    
    private void jButtonEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonEditActionPerformed
        if (table.getSelectedRow() != -1) {
            
            setRow(table.getSelectedRow());
            if(getRow()==0){
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }else{
                setAtBegining(false);
                setAtEnd(false);
            }
            setId((Integer) table.getValueAt(getRow(), 0));
            setPostCode((Integer) table.getValueAt(getRow(), 1));
            setNames((String) table.getValueAt(getRow(), 2));
            
            setIDOblast((Byte) table.getValueAt(getRow(), 3));
            
            
            try {
                
                dialog = new aeNaseleniMesta(this, true, getIDOblast());
                dialog.setVisible(true);
                
            } catch(Exception e) {
                e.printStackTrace();
            }
        }else{
            
        }
        
    }//GEN-LAST:event_jButtonEditActionPerformed
    
    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
        setPostCode(0);
        setNames("");
        setId(countriesT.getMaxId()+1);
        setIDOblast(new Integer(0).byteValue());
        countriesT.insertRow( getNames(),getPostCode() ,getIDOblast());
        setId(countriesT.getMaxId());
        refreshTable();
        try {
            dialog = new aeNaseleniMesta(this, true, 0);
            dialog.setVisible(true);
        } catch(Exception e) { e.printStackTrace(); }
    }//GEN-LAST:event_jButtonNewActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonDel;
    private javax.swing.JButton jButtonDeleteAll;
    private javax.swing.JButton jButtonEdit;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrnReport;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JButton jButtonSearch;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextName;
    private javax.swing.JTextField jTextPostCode;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    //  private String columnName[] = {"id_n_nm","Пощенски код:","Населено място","id_n_oblast","Област"};
    private String columnName[] = {"id_n_nm","\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434",
    "\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e","id_n_oblast","\u041e\u0431\u043b\u0430\u0441\u0442"};
    private int id = 0; // imena ot tablicata
    private int postcode=0; // imena ot tablicata
    private String name; // imena ot tablicata
    private byte id_oblast=0; // vryzkata kym tablicata za Oblastite
    private  boolean atBegining=false;
    private  boolean atEnd = false;
    private int row;
    private aeNaseleniMesta dialog;
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private  java.sql.ResultSet rs;
    private  naseleniMestaDB countriesT;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    //---------------END My Variables
    
    //---------------START MyFunction
    private void prepareConn() {
        try {
            setConn(myframe.getConn());
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructNaseleniMestaDB() {
        try {
            countriesT = new nom.naseleniMestaDB(conn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() {
        try {
            rs = countriesT.getTable();
            model = new imakante.com.CustomTableModel(conn,rs, columnName);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id_n_nm"));
            HideColumns(getColumnIndex("id_n_oblast"));
            
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
    public void windowClosing(java.awt.event.WindowEvent e) {
        unload();
    }
    public void windowClosed(java.awt.event.WindowEvent e) {
        
    }
    public void windowIconified(java.awt.event.WindowEvent e) {
        
    }
    public void windowDeiconified(java.awt.event.WindowEvent e) {
        
    }
    public void windowActivated(java.awt.event.WindowEvent e) {
        
    }
    public void windowDeactivated(java.awt.event.WindowEvent e) {
        
    }
    
    public void setConn(java.sql.Connection con) {
        this.conn = con;
    }
    public naseleniMestaDB getCountriesT() //-
    {
        return countriesT;
    }
    
    public void setCountriesT(naseleniMestaDB val)//-
    {
        this.countriesT = val;
    }
    
    public CustomTableModel getModel()//-
    {
        return model;
    }
    
    public void setModel(CustomTableModel val)//-
    {
        this.model = val;
    }
    
    public CustomTable getTable()//-
    {
        return table;
    }
    
    public void setTable(CustomTable val) //-
    {
        this.table = val;
    }
    
    public iFrame getMyframe()//-
    {
        return myframe;
    }
    
    public void setMyframe(iFrame val)//-
    {
        this.myframe = val;
    }
    public  boolean isAtBegining()//-
    {
        return atBegining;
    }
    
    public  void setAtBegining(boolean aAtBegining)//-
    {
        atBegining = aAtBegining;
    }
    
    public  boolean isAtEnd()//-
    {
        return atEnd;
    }
    
    public  void setAtEnd(boolean aAtEnd) //-
    {
        atEnd = aAtEnd;
    }
    private int  getMaxRow() //-
    {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
    }
    public  int getRow() {
        return row;
    }
    
    public void setId(int ID) //-
    {
        this.id = ID;
    }
    public int getId() //-
    {
        return id;
    }
    
    public void setPostCode(int COD) //OK
    {
        this.postcode = COD;
    }
    public int getPostCode() //OK
    {
        return postcode;
    }
    public void setNames(String Name) //OK
    {
        this.name = Name;
    }
    public String getNames() //OK
    {
        return name;
    }
    
    public void setIDOblast(byte anid) //OK
    {
        this.id_oblast = anid;
    }
    public byte getIDOblast() //OK
    {
        return id_oblast;
    }
    public  void setRow(int val) //-
    {
        row = val;
    }
    public  void mTableEnd() //-
    {
        setRow(getMaxRow());
        try{
            setAllVariable();
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem");
        }
        setAtBegining(false);
        setAtEnd(true);
    }
    public void mOneRowPlus() //-
    {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow()) {
                setRow(getRow()+1);
            }
            setAtBegining(false);
            try {
                setAllVariable();
                
                table.changeSelection(getRow(), 2, false, false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
                System.out.println("problem");
            }
            if(getRow() == getMaxRow()) {
                setAtEnd(true);
            }
        }
    }
    public  void mOneRowMinus() //-
    {
        if(getRow() >= 0){
            if(getRow() > 0){
                setRow(getRow() - 1);
            }
            setAtEnd(false);
            try {
                setAllVariable();
                
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
            }
            System.out.println("problem");}
        if(getRow() == 0){
            setAtBegining(true);
        }
    }
    public void mTableBegining() //-
    {
        setRow(0);
        try {
            setAllVariable();
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem");
        }
        setAtBegining(true);
        setAtEnd(false);
    }
    
    private void searchRecords() {
        int searchPostCode = 0;
        try {
            if((jTextPostCode.getText() != null) && (jTextPostCode.getText().length() > 0)) {
                searchPostCode = Integer.parseInt(jTextPostCode.getText());
            }
            String searchName = jTextName.getText();
            rs = countriesT.searchRecords(searchPostCode,searchName);
            jScrollPane1.remove(table);
            model = new imakante.com.CustomTableModel(conn,rs, columnName);
            table = new imakante.com.CustomTable(model);
            jScrollPane1.getViewport().add(table);
            HideColumns(getColumnIndex("id_n_nm"));
            HideColumns(getColumnIndex("id_n_oblast"));
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    protected  void refreshTable() {
        jScrollPane1.remove(table);
        rs = countriesT.getTable();
        model = new imakante.com.CustomTableModel(conn, rs, columnName);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        HideColumns(getColumnIndex("id_n_nm"));
        HideColumns(getColumnIndex("id_n_oblast"));
        jTextPostCode.setText("");
        jTextName.setText("");
        jScrollPane1.repaint();
    }
    
    private int getColumnIndex(String in) {
        int count = table.getColumnCount();
        for(int i=0; i < count; i++) {
            if(table.getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    
    private void HideColumns(int col) {
        int iColumn = col;
        table.getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getColumnModel().getColumn(iColumn).setMinWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
    }
    
    public void setAllVariable() {
        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id_n_nm")));
        setPostCode((Integer) table.getValueAt(getRow(), getColumnIndex("\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434")));
        setNames((String) table.getValueAt(getRow(), getColumnIndex("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e")));
        setIDOblast((Byte) table.getValueAt(getRow(), getColumnIndex("id_n_oblast")));
    }
    
    private void unload() {
        closeResource();
        this.dispose();
    }
    
    protected void closeResource() {
        try{
            rs.close();
        } catch(java.sql.SQLException sqle) {  }
        rs = null;
        countriesT.close();
    }

    private void delRedord() {
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setAllVariable();
            countriesT.deleteRow(getId());
            refreshTable();
        }
    }
}// end class
