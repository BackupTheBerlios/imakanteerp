
package imakante.sales;

import java.sql.SQLException;
import org.jdesktop.swingx.*;
import java.util.Date;
import java.util.*;
public class infoFakturi extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener 
{
    
    private java.sql.ResultSet rs;
    private int level=3;
    private String dateStart,dateEnd ;
    private String sql ="SELECT s.id_df, s.in_contragent_df, s.out_obekt_df, s.in_obekt_df, s.number_df, s.type_df, "+
            " s.condition_df, s.out_store_df, s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, "+ 
            " s.time_edition_df, s.distributor_df, s.delivere_df, s.faktura_connection_df, s.zaiavka_connection_df, "+
            " s.description_pay_df, s.paying_order_df, s.date_deliver_df, s.date_pay_df, s.comments_df, s.flag_finish_df, " +
            " s.id_rep, s.level_df, s.out_contragent_df, s.in_store_df "+
            " FROM sl_document_facade s "+
            " WHERE (s.date_edition_df BETWEEN ? AND ?) AND s.level_df = ?;";
    
    private java.sql.PreparedStatement pStm;
    private java.sql.Connection conn;
    private imakante.com.vcomponents.tableDialog printReportDialog;
    public infoFakturi(String title,java.sql.Connection con) 
    {
        super(title);
        initComponents();
        conn = con;
        try
        {
        pStm = conn.prepareStatement(sql);
        }
        catch(SQLException SQLEx)
        {
            JXErrorDialog.showDialog(this,"\u0413\u0440\u0435\u0448\u043A\u0430 \u043F\u0440\u0438 \u0441\u044A\u0437\u0434\u0430\u0432\u0430\u043D\u0435\u0442\u043E \u043D\u0430 \u0437\u0430\u044F\u0432\u043A\u0430\u0442\u0430",SQLEx);
            
            
        }
    }
   
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jTextLevel = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jXDateStart = new org.jdesktop.swingx.JXDatePicker();
        jXDateEnd = new org.jdesktop.swingx.JXDatePicker();
        jButton1 = new javax.swing.JButton();

        getContentPane().setLayout(new javax.swing.BoxLayout(getContentPane(), javax.swing.BoxLayout.X_AXIS));

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jTextLevel.setMinimumSize(new java.awt.Dimension(45, 20));
        jTextLevel.setPreferredSize(new java.awt.Dimension(45, 20));
        jTextLevel.setInputVerifier(new imakante.com.InputIntegerVerifier());
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jPanel1.add(jTextLevel, gridBagConstraints);

        jLabel1.setText("\u041d\u0438\u0432\u043e:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 5, 5);
        jPanel1.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u043e\u0442:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 10, 5);
        jPanel1.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0434\u043e:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 5);
        jPanel1.add(jLabel3, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 5);
        jPanel1.add(jXDateStart, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 10);
        jPanel1.add(jXDateEnd, gridBagConstraints);

        jButton1.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u0439");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.gridwidth = 4;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
        jPanel1.add(jButton1, gridBagConstraints);

        getContentPane().add(jPanel1);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
        makeSelect();
    }//GEN-LAST:event_jButton1ActionPerformed
 
  public void windowOpened(java.awt.event.WindowEvent e)
  {
  }
    public void windowClosing(java.awt.event.WindowEvent e) 
    {
        unload();
    }
    public void windowClosed(java.awt.event.WindowEvent e)
    {
    }
    public void windowIconified(java.awt.event.WindowEvent e) 
    {
    }
    public void windowDeiconified(java.awt.event.WindowEvent e) 
    {
    }
    public void windowActivated(java.awt.event.WindowEvent e) 
    {
    }
    public void windowDeactivated(java.awt.event.WindowEvent e) 
    {
    }
   private void unload()
   {
        closeResource();
        this.dispose();
   } 
 protected void closeResource() 
 {
   try
   {
     pStm.close();
     rs.close();
   } catch(java.sql.SQLException sqle) {  }
     rs = null;
     
    } 
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField jTextLevel;
    private org.jdesktop.swingx.JXDatePicker jXDateEnd;
    private org.jdesktop.swingx.JXDatePicker jXDateStart;
    // End of variables declaration//GEN-END:variables
  
 private void registerParam(int level,String dS,String dE) throws SQLException
 {
     try
     {
        pStm.setString(1,dS) ;
        pStm.setString(2,dE) ;
        pStm.setInt(3,level);
     }
     catch(SQLException sqlEx)
     {
       JXErrorDialog.showDialog(this,"\u0413\u0440\u0435\u0448\u043A\u0430 \u043F\u0440\u0438 \u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044F \u043D\u0430 \u043F\u0430\u0440\u0430\u043C\u0435\u0442\u0440\u0438\u0442\u0435",sqlEx);
     }
 }
 private void makeSelect()
 {
    level = Integer.parseInt(jTextLevel.getText());
    Date d = jXDateStart.getDate();
    dateStart = (d.getYear()+1900)+"-"+d.getMonth()+"-"+d.getDate();
    d = jXDateEnd.getDate();
    dateEnd = (d.getYear()+1900)+"-"+d.getMonth()+"-"+d.getDate();
    
    if(dateStart.equals(dateEnd))
    {
        dateStart = "2000-01-01";
    }
    
   try
     {
       registerParam(level,dateStart,dateEnd);
       rs = pStm.executeQuery();
       HashMap parameterHashMap = new HashMap();
       String path = "";
       new imakante.com.vcomponents.tableDialog(this,true,getDocLineTable(id_doc),conn,parameterHashMap,
                   path+"sales_Dan_fak.jasper","\u0414\u0410\u041d\u042a\u0427\u041d\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410",
                    "\u0414\u0410\u041d\u042a\u0427\u041d\u0410 \u0424\u0410\u041a\u0422\u0423\u0420\u0410");
       printReportDialog.setVisible(true);
       
       
     }
     catch(SQLException sqlEx)
     {
       JXErrorDialog.showDialog(this,"\u0413\u0440\u0435\u0448\u043A\u0430 \u043F\u0440\u0438 \u0437\u0430\u044F\u0432\u043A\u0430\u0442\u0430",sqlEx);
     }
    
    
    
 }
private imakante.com.CustomTable getDocLineTable(int id_dok)
 {
    imakante.com.CustomTable t=null;
    java.sql.ResultSet rs12=null;
    imakante.com.CustomTableModel m=null;

   

 
 
 

    String nameColumns=null;
      
     try
        {
           
            rs12 = countriesT.getDocLineRS(id_dok);
            m = new imakante.com.CustomTableModel(conn,rs12, nameColumnsDocLine);
            t = new imakante.com.CustomTable(m);
            HideColumns(getColumnIndex("id_dl",t),t);
            HideColumns(getColumnIndex("id_pc",t),t);
            HideColumns(getColumnIndex("id_df",t),t);
            HideColumns(getColumnIndex("id_pc1",t),t);
            HideColumns(getColumnIndex("id_pm",t),t);
            HideColumns(getColumnIndex("pm.id_pm",t),t);
            HideColumns(getColumnIndex("pm.id_pd",t),t);
            HideColumns(getColumnIndex("pm.id_n_group",t),t);
            HideColumns(getColumnIndex("pm.id_ppp",t),t);
            HideColumns(getColumnIndex("pm.id_pp",t),t);
            HideColumns(getColumnIndex("pm.id_pf",t),t);
            HideColumns(getColumnIndex("pm.flag_pm",t),t);
            HideColumns(getColumnIndex("pm.min_pm",t),t);
            HideColumns(getColumnIndex("pd.id_pd",t),t);
            
            HideColumns(getColumnIndex("d.m1_pd",t),t);
            HideColumns(getColumnIndex("pd.m2_pd",t),t);
            HideColumns(getColumnIndex("pd.m3_pd",t),t);
            HideColumns(getColumnIndex("pp.id_pp",t),t);
            HideColumns(getColumnIndex("pp.id_sl_curs",t),t);
            HideColumns(getColumnIndex("pf.id_pf",t),t);
            HideColumns(getColumnIndex("pf.dds_pf",t),t);
            HideColumns(getColumnIndex("pf.excise_pf",t),t);
            HideColumns(getColumnIndex("pf.other_pf",t),t);
            HideColumns(getColumnIndex("st.id_n_storage",t),t);
            HideColumns(getColumnIndex("st.id_n_group",t),t);
            HideColumns(getColumnIndex("st.comments_n_storage",t),t);
          /*  HideColumns(getColumnIndex("",t),t);
            HideColumns(getColumnIndex("",t),t);
            HideColumns(getColumnIndex("",t),t);
            HideColumns(getColumnIndex("",t),t);
            HideColumns(getColumnIndex("",t),t);
            HideColumns(getColumnIndex("",t),t);*/
            
                   
                       
                       
            
        }
       catch(Exception e)
       {
           e.printStackTrace();
       }
    
    return t;
             
 }
 
}
