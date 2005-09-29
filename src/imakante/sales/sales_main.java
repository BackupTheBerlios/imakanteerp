
package imakante.sales;

import java.beans.PropertyVetoException;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class sales_main extends javax.swing.JFrame {

    public sales_main() {
        initComponents();
      //  loadPaneForm();
        
      
    }

    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        desktopPane = new javax.swing.JDesktopPane();
        jToolBar1 = new javax.swing.JToolBar();
        jButton1 = new javax.swing.JButton();
        menuBar = new javax.swing.JMenuBar();
        programMenu = new javax.swing.JMenu();
        programMenuLock = new javax.swing.JMenuItem();
        programMenuUnlock = new javax.swing.JMenuItem();
        jSeparator2 = new javax.swing.JSeparator();
        programMenu_conn = new javax.swing.JMenuItem();
        programMenu_logout = new javax.swing.JMenuItem();
        jSeparator1 = new javax.swing.JSeparator();
        exitMenu = new javax.swing.JMenuItem();
        docMenu = new javax.swing.JMenu();
        docMenu_prod = new javax.swing.JMenuItem();
        docMenu_fak = new javax.swing.JMenu();
        fakMenu_dan = new javax.swing.JMenuItem();
        fakMenu_opr = new javax.swing.JMenuItem();
        docMenu_razp = new javax.swing.JMenu();
        razpMenu_pol = new javax.swing.JMenuItem();
        razpMenu_prehv = new javax.swing.JMenuItem();
        docMenu_nar = new javax.swing.JMenuItem();
        docMenu_prot = new javax.swing.JMenu();
        protMenu_rev = new javax.swing.JMenuItem();
        protMenu_brak = new javax.swing.JMenuItem();
        protMenu_lipsa = new javax.swing.JMenuItem();
        protMenu_preo = new javax.swing.JMenuItem();
        docMenu_porach = new javax.swing.JMenu();
        porachMenu_in = new javax.swing.JMenuItem();
        porachMenu_out = new javax.swing.JMenuItem();
        docMenu_offer = new javax.swing.JMenuItem();
        kasaMenu = new javax.swing.JMenu();
        kasaMenu_order = new javax.swing.JMenu();
        orderMenu_prih = new javax.swing.JMenuItem();
        orderMenu_razh = new javax.swing.JMenuItem();
        kasaMenu_nal = new javax.swing.JMenuItem();
        kasaMenu_dvi = new javax.swing.JMenuItem();
        kasaMenu_opis = new javax.swing.JMenuItem();
        nomMenu = new javax.swing.JMenu();
        nomMenu_stock = new javax.swing.JMenu();
        stock_Menu_group_stock = new javax.swing.JMenuItem();
        stock_Menu_stock = new javax.swing.JMenuItem();
        stock_Menu_activ = new javax.swing.JMenuItem();
        nomMenu_Kontragenti = new javax.swing.JMenu();
        kontragentiMenu_groupe = new javax.swing.JMenuItem();
        kontragentiMenu_Clients = new javax.swing.JMenuItem();
        kontragentiMenu_supl = new javax.swing.JMenuItem();
        kontragentiMenu_bank = new javax.swing.JMenuItem();
        kontragentiMenu_obekti = new javax.swing.JMenuItem();
        nomMenu_Litsa = new javax.swing.JMenu();
        litsaMenu_groupe_litsa = new javax.swing.JMenuItem();
        litsaMenu_in = new javax.swing.JMenuItem();
        litsaMenu_out = new javax.swing.JMenuItem();
        nomMenu_object = new javax.swing.JMenu();
        objectMenu_groupe_object = new javax.swing.JMenuItem();
        objectMenu_skl = new javax.swing.JMenuItem();
        objectMenu_kasa = new javax.swing.JMenuItem();
        moneyMenu = new javax.swing.JMenu();
        moneyMenu_groupe = new javax.swing.JMenuItem();
        moneyMenu_in = new javax.swing.JMenuItem();
        moneyMenu_out = new javax.swing.JMenuItem();
        moneyMenu_valutes = new javax.swing.JMenuItem();
        jSeparator3 = new javax.swing.JSeparator();
        nomMenu_nasm = new javax.swing.JMenuItem();
        nomMenu_obl = new javax.swing.JMenuItem();
        nomMenu_con = new javax.swing.JMenuItem();
        sprMenu = new javax.swing.JMenu();
        spravkiMenu_nal = new javax.swing.JMenuItem();
        balansMenu = new javax.swing.JMenu();
        balansMenu_stock = new javax.swing.JMenuItem();
        balansMenu_kol = new javax.swing.JMenuItem();
        spravkiMenu_doc = new javax.swing.JMenuItem();
        sluMenu = new javax.swing.JMenu();
        jMenuItem3 = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();
        helpMenu = new javax.swing.JMenu();
        contentMenuItem = new javax.swing.JMenuItem();
        aboutMenuItem = new javax.swing.JMenuItem();
        jMenuItem1 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415 \u0422\u044a\u0440\u0433\u043e\u0432\u0441\u043a\u0438 \u043c\u043e\u0434\u0443\u043b");
        setFont(new java.awt.Font("Tahoma", 1, 12));
        getContentPane().add(desktopPane, java.awt.BorderLayout.CENTER);

        jButton1.setIcon(new javax.swing.ImageIcon("C:\\REA\\src\\midass\\openfile.gif"));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton1);

        getContentPane().add(jToolBar1, java.awt.BorderLayout.NORTH);

        programMenu.setFont(menuFont);
        programMenu.setText("\u041f\u0420\u041e\u0413\u0420\u0410\u041c\u0410");
        programMenuLock.setText("\u0417\u0430\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435");
        programMenu.add(programMenuLock);

        programMenuUnlock.setText("\u041e\u0442\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435");
        programMenu.add(programMenuUnlock);

        programMenu.add(jSeparator2);

        programMenu_conn.setText("\u0412\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430");
        programMenu_conn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                programMenu_connActionPerformed(evt);
            }
        });

        programMenu.add(programMenu_conn);

        programMenu_logout.setText("\u041f\u0440\u0435\u043a\u044a\u0441\u0432\u0430\u043d\u0435 \u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430");
        programMenu.add(programMenu_logout);

        programMenu.add(jSeparator1);

        exitMenu.setText("\u0418\u0417\u0425\u041e\u0414");
        exitMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                exitMenuActionPerformed(evt);
            }
        });

        programMenu.add(exitMenu);

        menuBar.add(programMenu);

        docMenu.setText("\u0414\u041e\u041a\u0423\u041c\u0415\u041d\u0422\u0418");
        docMenu_prod.setText("\u041f\u0440\u043e\u0434\u0430\u0436\u0431\u0438");
        docMenu.add(docMenu_prod);

        docMenu_fak.setText("\u0424\u0430\u043a\u0442\u0443\u0440\u0438");
        fakMenu_dan.setText("\u0414\u0430\u043d\u044a\u0447\u043d\u0438");
        docMenu_fak.add(fakMenu_dan);

        fakMenu_opr.setText("\u041e\u043f\u0440\u043e\u0441\u0442\u0435\u043d\u0438");
        docMenu_fak.add(fakMenu_opr);

        docMenu.add(docMenu_fak);

        docMenu_razp.setText("\u0420\u0430\u0437\u043f\u0438\u0441\u043a\u0438");
        razpMenu_pol.setText("\u041f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u043d\u0435");
        docMenu_razp.add(razpMenu_pol);

        razpMenu_prehv.setText("\u041f\u0440\u0435\u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435");
        docMenu_razp.add(razpMenu_prehv);

        docMenu.add(docMenu_razp);

        docMenu_nar.setText("\u041d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0435");
        docMenu.add(docMenu_nar);

        docMenu_prot.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438");
        protMenu_rev.setText("\u0420\u0435\u0432\u0438\u0437\u0438\u044f");
        docMenu_prot.add(protMenu_rev);

        protMenu_brak.setText("\u0411\u0440\u0430\u043a");
        docMenu_prot.add(protMenu_brak);

        protMenu_lipsa.setText("\u041b\u0438\u043f\u0441\u0430");
        docMenu_prot.add(protMenu_lipsa);

        protMenu_preo.setText("\u041f\u0440\u0435\u043e\u0446\u0435\u043d\u043a\u0430");
        docMenu_prot.add(protMenu_preo);

        docMenu.add(docMenu_prot);

        docMenu_porach.setText("\u041f\u043e\u0440\u044a\u0447\u043a\u0438");
        porachMenu_in.setText("\u0412\u044a\u0442\u0440\u0435\u0448\u043d\u0438");
        docMenu_porach.add(porachMenu_in);

        porachMenu_out.setText("\u0412\u044a\u043d\u0448\u043d\u0438");
        docMenu_porach.add(porachMenu_out);

        docMenu.add(docMenu_porach);

        docMenu_offer.setText("\u041e\u0444\u0435\u0440\u0442\u0438");
        docMenu.add(docMenu_offer);

        menuBar.add(docMenu);

        kasaMenu.setText("\u041a\u0410\u0421\u0410");
        kasaMenu_order.setText("\u041e\u0440\u0434\u0435\u0440\u0438");
        orderMenu_prih.setText("\u041f\u0440\u0438\u0445\u043e\u0434\u043d\u0438");
        kasaMenu_order.add(orderMenu_prih);

        orderMenu_razh.setText("\u0420\u0430\u0437\u0445\u043e\u0434\u043d\u0438");
        kasaMenu_order.add(orderMenu_razh);

        kasaMenu.add(kasaMenu_order);

        kasaMenu_nal.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442 \u0432 \u043a\u0430\u0441\u0438");
        kasaMenu.add(kasaMenu_nal);

        kasaMenu_dvi.setText("\u0414\u0432\u0438\u0436\u0435\u043d\u0438\u0435");
        kasaMenu.add(kasaMenu_dvi);

        kasaMenu_opis.setText("\u041e\u043f\u0438\u0441 \u043d\u0430 \u043a\u043e\u043f\u044e\u0440\u0438");
        kasaMenu.add(kasaMenu_opis);

        menuBar.add(kasaMenu);

        nomMenu.setText("\u041d\u041e\u041c\u0415\u041d\u041a\u041b\u0410\u0422\u0423\u0420\u0418");
        nomMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenuActionPerformed(evt);
            }
        });

        nomMenu_stock.setText("\u0421\u0442\u043e\u043a\u043e\u0432\u0438");
        stock_Menu_group_stock.setText("\u0413\u0440\u0443\u043f\u0438");
        nomMenu_stock.add(stock_Menu_group_stock);

        stock_Menu_stock.setText("\u0421\u0442\u043e\u043a\u0430");
        nomMenu_stock.add(stock_Menu_stock);

        stock_Menu_activ.setText("\u0414\u0440\u0443\u0433\u0438 \u0430\u043a\u0442\u0438\u0432\u0438");
        nomMenu_stock.add(stock_Menu_activ);

        nomMenu.add(nomMenu_stock);

        nomMenu_Kontragenti.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        kontragentiMenu_groupe.setText("\u0413\u0440\u0443\u043f\u0438");
        nomMenu_Kontragenti.add(kontragentiMenu_groupe);

        kontragentiMenu_Clients.setText("\u041a\u043b\u0438\u0435\u043d\u0442\u0438");
        nomMenu_Kontragenti.add(kontragentiMenu_Clients);

        kontragentiMenu_supl.setText("\u0414\u043e\u0441\u0442\u0430\u0432\u0447\u0438\u0446\u0438");
        nomMenu_Kontragenti.add(kontragentiMenu_supl);

        kontragentiMenu_bank.setText("\u0411\u0430\u043d\u043a\u0438");
        nomMenu_Kontragenti.add(kontragentiMenu_bank);

        kontragentiMenu_obekti.setText("\u041e\u0431\u0441\u043b\u0443\u0436\u0432\u0430\u043d\u0438 \u043e\u0431\u0435\u043a\u0442\u0438");
        nomMenu_Kontragenti.add(kontragentiMenu_obekti);

        nomMenu.add(nomMenu_Kontragenti);

        nomMenu_Litsa.setText("\u041b\u0438\u0446\u0430");
        litsaMenu_groupe_litsa.setText("\u0413\u0440\u0443\u043f\u0438 \u043b\u0438\u0446\u0430");
        nomMenu_Litsa.add(litsaMenu_groupe_litsa);

        litsaMenu_in.setText("\u0412\u044a\u0442\u0440\u0435\u0448\u043d\u0438 \u043b\u0438\u0446\u0430");
        nomMenu_Litsa.add(litsaMenu_in);

        litsaMenu_out.setText("\u0412\u044a\u043d\u0448\u043d\u0438 \u043b\u0438\u0446\u0430");
        nomMenu_Litsa.add(litsaMenu_out);

        nomMenu.add(nomMenu_Litsa);

        nomMenu_object.setText("\u041e\u0431\u0435\u043a\u0442\u0438");
        objectMenu_groupe_object.setText("\u0413\u0440\u0443\u043f\u0438 \u043e\u0431\u0435\u043a\u0442\u0438");
        nomMenu_object.add(objectMenu_groupe_object);

        objectMenu_skl.setText("\u0421\u043a\u043b\u0430\u0434\u043e\u0432\u0435");
        nomMenu_object.add(objectMenu_skl);

        objectMenu_kasa.setText("\u041a\u0430\u0441\u0438");
        nomMenu_object.add(objectMenu_kasa);

        nomMenu.add(nomMenu_object);

        moneyMenu.setText("\u041f\u0430\u0440\u0438\u0447\u043d\u0438");
        moneyMenu_groupe.setText("\u0413\u0440\u0443\u043f\u0438 \u043f\u0430\u0440\u0438\u0447\u043d\u0438");
        moneyMenu.add(moneyMenu_groupe);

        moneyMenu_in.setText("\u041f\u0440\u0438\u0445\u043e\u0434\u0438");
        moneyMenu.add(moneyMenu_in);

        moneyMenu_out.setText("\u0420\u0430\u0437\u0445\u043e\u0434\u0438");
        moneyMenu.add(moneyMenu_out);

        moneyMenu_valutes.setText("\u0412\u0430\u043b\u0443\u0442\u0438");
        moneyMenu.add(moneyMenu_valutes);

        nomMenu.add(moneyMenu);

        nomMenu.add(jSeparator3);

        nomMenu_nasm.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
        nomMenu.add(nomMenu_nasm);

        nomMenu_obl.setText("\u041e\u0431\u043b\u0430\u0441\u0442\u0438");
        nomMenu.add(nomMenu_obl);

        nomMenu_con.setText("\u0414\u044a\u0440\u0436\u0430\u0432\u0438");
        nomMenu.add(nomMenu_con);

        menuBar.add(nomMenu);

        sprMenu.setText("\u0421\u041f\u0420\u0410\u0412\u041a\u0418");
        spravkiMenu_nal.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442");
        sprMenu.add(spravkiMenu_nal);

        balansMenu.setText("\u0411\u0430\u043b\u0430\u043d\u0441\u0438");
        balansMenu_stock.setText("\u0421\u0442\u043e\u043a\u043e\u0432");
        balansMenu.add(balansMenu_stock);

        balansMenu_kol.setText("\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u0435\u043d");
        balansMenu.add(balansMenu_kol);

        sprMenu.add(balansMenu);

        spravkiMenu_doc.setText("\u0414\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        sprMenu.add(spravkiMenu_doc);

        menuBar.add(sprMenu);

        sluMenu.setText("\u0421\u041b\u0423\u0416\u0415\u0411\u041d\u0418");
        sluMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sluMenuActionPerformed(evt);
            }
        });

        jMenuItem3.setText("\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u0424\u0438\u0440\u043c\u0430");
        sluMenu.add(jMenuItem3);

        jMenuItem2.setText("\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u043a\u0430 \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430");
        sluMenu.add(jMenuItem2);

        menuBar.add(sluMenu);

        helpMenu.setText("\u041f\u041e\u041c\u041e\u0429");
        contentMenuItem.setText("\u0421\u044a\u0434\u044a\u0440\u0436\u0430\u043d\u0438\u0435");
        helpMenu.add(contentMenuItem);

        aboutMenuItem.setText("\u0410\u0432\u0442\u043e\u0440\u0438");
        aboutMenuItem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                aboutMenuItemActionPerformed(evt);
            }
        });

        helpMenu.add(aboutMenuItem);

        jMenuItem1.setText("Item");
        helpMenu.add(jMenuItem1);

        menuBar.add(helpMenu);

        setJMenuBar(menuBar);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents

    private void sluMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sluMenuActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_sluMenuActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try{
            loadKlienti();} catch (java.sql.SQLException sql1){}
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void programMenu_connActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_programMenu_connActionPerformed
        loadConn();
        try {
            makeConn(getDbDriver(), getDbURL(), getDbUser(), getDbPass());
        } catch (java.sql.SQLException sql1){
            JOptionPane.showMessageDialog(null,"Възникнал проблем при осъществаване на връзка с базата.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
    }//GEN-LAST:event_programMenu_connActionPerformed
        
    private void exitMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_exitMenuActionPerformed
        
    }//GEN-LAST:event_exitMenuActionPerformed
    
    private void aboutMenuItemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_aboutMenuItemActionPerformed
        imakante.com.frmAbout salesAbout = new imakante.com.frmAbout(this, true);
        salesAbout.setVisible(true);
    }//GEN-LAST:event_aboutMenuItemActionPerformed
    
    private void nomMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nomMenuActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_nomMenuActionPerformed
    
    public static void main(String args[]) {
        
            try {
                String sysLook = javax.swing.UIManager.getSystemLookAndFeelClassName();
                javax.swing.UIManager.setLookAndFeel(sysLook);
                
            } catch (Exception err) {
                System.out.println("Error loading Theme:" + err.toString());
            }
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new sales_main().setVisible(true);
            }
        });
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenuItem aboutMenuItem;
    private javax.swing.JMenu balansMenu;
    private javax.swing.JMenuItem balansMenu_kol;
    private javax.swing.JMenuItem balansMenu_stock;
    private javax.swing.JMenuItem contentMenuItem;
    private javax.swing.JDesktopPane desktopPane;
    private javax.swing.JMenu docMenu;
    private javax.swing.JMenu docMenu_fak;
    private javax.swing.JMenuItem docMenu_nar;
    private javax.swing.JMenuItem docMenu_offer;
    private javax.swing.JMenu docMenu_porach;
    private javax.swing.JMenuItem docMenu_prod;
    private javax.swing.JMenu docMenu_prot;
    private javax.swing.JMenu docMenu_razp;
    private javax.swing.JMenuItem exitMenu;
    private javax.swing.JMenuItem fakMenu_dan;
    private javax.swing.JMenuItem fakMenu_opr;
    private javax.swing.JMenu helpMenu;
    private javax.swing.JButton jButton1;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JToolBar jToolBar1;
    private javax.swing.JMenu kasaMenu;
    private javax.swing.JMenuItem kasaMenu_dvi;
    private javax.swing.JMenuItem kasaMenu_nal;
    private javax.swing.JMenuItem kasaMenu_opis;
    private javax.swing.JMenu kasaMenu_order;
    private javax.swing.JMenuItem kontragentiMenu_Clients;
    private javax.swing.JMenuItem kontragentiMenu_bank;
    private javax.swing.JMenuItem kontragentiMenu_groupe;
    private javax.swing.JMenuItem kontragentiMenu_obekti;
    private javax.swing.JMenuItem kontragentiMenu_supl;
    private javax.swing.JMenuItem litsaMenu_groupe_litsa;
    private javax.swing.JMenuItem litsaMenu_in;
    private javax.swing.JMenuItem litsaMenu_out;
    private javax.swing.JMenuBar menuBar;
    private javax.swing.JMenu moneyMenu;
    private javax.swing.JMenuItem moneyMenu_groupe;
    private javax.swing.JMenuItem moneyMenu_in;
    private javax.swing.JMenuItem moneyMenu_out;
    private javax.swing.JMenuItem moneyMenu_valutes;
    private javax.swing.JMenu nomMenu;
    private javax.swing.JMenu nomMenu_Kontragenti;
    private javax.swing.JMenu nomMenu_Litsa;
    private javax.swing.JMenuItem nomMenu_con;
    private javax.swing.JMenuItem nomMenu_nasm;
    private javax.swing.JMenu nomMenu_object;
    private javax.swing.JMenuItem nomMenu_obl;
    private javax.swing.JMenu nomMenu_stock;
    private javax.swing.JMenuItem objectMenu_groupe_object;
    private javax.swing.JMenuItem objectMenu_kasa;
    private javax.swing.JMenuItem objectMenu_skl;
    private javax.swing.JMenuItem orderMenu_prih;
    private javax.swing.JMenuItem orderMenu_razh;
    private javax.swing.JMenuItem porachMenu_in;
    private javax.swing.JMenuItem porachMenu_out;
    private javax.swing.JMenu programMenu;
    private javax.swing.JMenuItem programMenuLock;
    private javax.swing.JMenuItem programMenuUnlock;
    private javax.swing.JMenuItem programMenu_conn;
    private javax.swing.JMenuItem programMenu_logout;
    private javax.swing.JMenuItem protMenu_brak;
    private javax.swing.JMenuItem protMenu_lipsa;
    private javax.swing.JMenuItem protMenu_preo;
    private javax.swing.JMenuItem protMenu_rev;
    private javax.swing.JMenuItem razpMenu_pol;
    private javax.swing.JMenuItem razpMenu_prehv;
    private javax.swing.JMenu sluMenu;
    private javax.swing.JMenu sprMenu;
    private javax.swing.JMenuItem spravkiMenu_doc;
    private javax.swing.JMenuItem spravkiMenu_nal;
    private javax.swing.JMenuItem stock_Menu_activ;
    private javax.swing.JMenuItem stock_Menu_group_stock;
    private javax.swing.JMenuItem stock_Menu_stock;
    // End of variables declaration//GEN-END:variables
    
    // main app parameters
    private static boolean logged = false; // for logging into app
    private java.sql.Connection dbConn = null; // connection
    private String dbName = null; // name of the db
    private String dbURL = null; // url of the db
    private String dbDriver = null; // driver name
    private String dbUser = null;  // user name
    private String dbPass = null; // user password
    private String firmName = null; // relative firm name
    
    public static java.util.HashMap colorHash; 
    public static java.util.HashMap fontHash;
    public static java.util.HashMap dimentionMap;
   
    // visual parameters
    //menu
    private java.awt.Font menuFont = new java.awt.Font("Tahoma", 1, 12); // menu font 
    private java.awt.Color menuBackColor = new java.awt.Color(224,223,227); // menu bakgoround color 
    private java.awt.Color menuForeColor = new java.awt.Color(0,0,0); // menu foreground color
    //submenu
    private java.awt.Font subFont = new java.awt.Font("Tahoma", 0, 11); //submenu font
    private java.awt.Color subBackColor = new java.awt.Color(224,223,227); // submenu bakgoround color 
    private java.awt.Color subForeColor = new java.awt.Color(0,0,0); // submenu foreground color
    
    //forms
    imakante.sales.FrmKlienti FormKlienti;
    
     private void initColorHash(){
    
    
    
    }
    
    private void loadConn(){
        imakante.sales.salesFrmConnection fconn = new salesFrmConnection(this);
        
        fconn.setVisible(true);
    }
      private void loadPaneForm() {
       
            javax.swing.JInternalFrame FormPane = new paneForm();
            desktopPane.add(FormPane);
            FormPane.setVisible(true);
            
        
    }
    private java.sql.Connection makeConn(String dbDriver,String dbURL,String dbUser, String dbPass) throws java.sql.SQLException {
        
        String DBDriver = dbDriver;
        String DBSource = dbURL;
        String DBUserName = dbUser;
        String DBPassword = dbPass;
        System.out.println(dbURL);
        System.out.println(dbUser);
        System.out.println(dbPass);
        
        try{
            Class.forName(DBDriver);
            setDbConn(DriverManager.getConnection(DBSource,DBUserName ,DBPassword));
        } catch(ClassNotFoundException e)  {
            System.err.println("Failed to load driver");
            e.printStackTrace();
            System.exit(1);
        } catch(SQLException e){
            System.err.println("Unable to connect");
            e.printStackTrace();
            System.exit(1);
        }
        if (getDbConn() != null){
            
        } else {
            JOptionPane.showMessageDialog(null,"Възникнал проблем при осъществаване на връзка с базата.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        }
        return getDbConn();
    }
    
    private void lockApp(){
    logged = false;
    }
    
    private void closeConn() {
        if (getDbConn() != null ){
            try {
                getDbConn().close();
            } catch(SQLException sq2){
            }}
        setDbName(null);
        setDbURL(null);
        setDbDriver(null);
        setDbUser(null);
        setDbPass(null);
    }
    
    private void loadKlienti() throws java.sql.SQLException {
        if (logged==true){
            FrmKlienti FormKlienti = new FrmKlienti(getDbConn());
            desktopPane.add(FormKlienti);
            FormKlienti.setVisible(true);
            
        } else {
            lockMessage();
        }
        
    }
 
   private void lockMessage(){
    JOptionPane.showMessageDialog(null,"Възникнал проблем при осъществаване на връзка с базата.","ИМАКАНТЕ",JOptionPane.WARNING_MESSAGE);
        
   }
    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public java.sql.Connection getDbConn() {
        return dbConn;
    }

    public void setDbConn(java.sql.Connection dbConn) {
        this.dbConn = dbConn;
    }

    public String getDbURL() {
        return dbURL;
    }

    public void setDbURL(String dbURL) {
        this.dbURL = dbURL;
    }

    public String getDbDriver() {
        return dbDriver;
    }

    public void setDbDriver(String dbDriver) {
        this.dbDriver = dbDriver;
    }

    public String getDbUser() {
        return dbUser;
    }

    public void setDbUser(String dbUser) {
        this.dbUser = dbUser;
    }

    public String getDbPass() {
        return dbPass;
    }

    public void setDbPass(String dbPass) {
        this.dbPass = dbPass;
    }

    public static boolean isLogged() {
        return logged;
    }

    public static void setLogged(boolean aLogged) {
        logged = aLogged;
    }

    public String getFirmName() {
        return firmName;
    }

    public void setFirmName(String firmName) {
        this.firmName = firmName;
    }
}
