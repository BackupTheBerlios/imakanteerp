/*
 * ID GROUP:
 * 0:Stoki;
 * 1:Aktivi;
 * 2:Contragent;
 * 3:Lica;
 * 4:Skladowe;
 * 5:Kasa;
 * 6:Pari;
 */
package imakante.sales;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import nom.FrmProduct;

//>>>>>>> 1.24

//<<<<<<< sales_main.java
//public class sales_main extends imakante.com.vcomponents.iFrame implements  java.awt.event.WindowListener, Runnable {

//    public void sales_main(java.sql.Connection con) {
//=======

public class sales_main extends imakante.com.vcomponents.iFrame {
    private final static int MAX_GROUP=7; // pokazva maximalniq broj na grupite;
    private final static int ID_STOCK = 0;
    private final static int ID_AKTIVI = 1;
    private final static int ID_CONTRAGENT = 2;
    private final static int ID_LICA = 3;
    private final static int ID_OBJECT = 4;
    private final static int ID_KASA = 5;
    private final static int ID_MONEY = 6;
    
    
    
    
    public sales_main() {
        super();
        loadConn();
        initComponents();
        this.setTitle("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415 - \u0421\u041a\u041b\u0410\u0414\u041e\u0412 \u041c\u041e\u0414\u0423\u041b    \u0432\u0435\u0440\u0441\u0438\u044f 0.5.6");
        //  loadPaneForm();
        // this.setVisible(true);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setSize(dim.width,dim.height-30);
        this.setLocation(0,0);
        imakante.com.NewMain.setB_SL(true);
        loadRightsArea();
    }
    
    public void run(){
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        desktopPane = new javax.swing.JDesktopPane();
        jToolBar1 = new javax.swing.JToolBar();
        jButton1 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        menuBar = new javax.swing.JMenuBar();
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
        nomMenu_Aktiv = new javax.swing.JMenu();
        aktiviMenu_grupi = new javax.swing.JMenuItem();
        aktiviMenu_Aktivi = new javax.swing.JMenuItem();
        nomMenu_Kontragenti = new javax.swing.JMenu();
        kontragentiMenu_groupe = new javax.swing.JMenuItem();
        kontragentiMenu_Kontr = new javax.swing.JMenuItem();
        kontragentiMenu_bank = new javax.swing.JMenuItem();
        kontragentiMenu_obekti = new javax.swing.JMenuItem();
        kontragentiMenu_typeobject = new javax.swing.JMenuItem();
        nomMenu_Litsa = new javax.swing.JMenu();
        litsaMenu_groupe_litsa = new javax.swing.JMenuItem();
        litsaMenu_in = new javax.swing.JMenuItem();
        nomMenu_object = new javax.swing.JMenu();
        objectMenu_groupe_object = new javax.swing.JMenuItem();
        objectMenu_skl = new javax.swing.JMenuItem();
        nomMenu_kasi = new javax.swing.JMenu();
        kasiMenu_grupi = new javax.swing.JMenuItem();
        kasiMenu_kasi = new javax.swing.JMenuItem();
        moneyMenu = new javax.swing.JMenu();
        moneyMenu_groupe = new javax.swing.JMenuItem();
        moneyMenu_in = new javax.swing.JMenuItem();
        moneyMenu_out = new javax.swing.JMenuItem();
        moneyMenu_valutes = new javax.swing.JMenuItem();
        monyMenu_rates = new javax.swing.JMenuItem();
        jSeparator3 = new javax.swing.JSeparator();
        nomMenu_nasm = new javax.swing.JMenuItem();
        nomMenu_obl = new javax.swing.JMenuItem();
        nomMenu_con = new javax.swing.JMenuItem();
        jSeparator4 = new javax.swing.JSeparator();
        nomALevel = new javax.swing.JMenuItem();
        sprMenu = new javax.swing.JMenu();
        spravkiMenu_nal = new javax.swing.JMenuItem();
        balansMenu = new javax.swing.JMenu();
        balansMenu_stock = new javax.swing.JMenuItem();
        balansMenu_kol = new javax.swing.JMenuItem();
        spravkiMenu_doc = new javax.swing.JMenuItem();
        sluMenu = new javax.swing.JMenu();
        jMenuItem3 = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();
        nomMenu_DocType = new javax.swing.JMenuItem();
        jMenuItem6 = new javax.swing.JMenuItem();
        jMenuItem5 = new javax.swing.JMenuItem();
        jMenuItem9DTUR = new javax.swing.JMenuItem();
        jMenuTransfer = new javax.swing.JMenu();
        jMenuItem7 = new javax.swing.JMenuItem();
        jMenuItem8 = new javax.swing.JMenuItem();
        helpMenu = new javax.swing.JMenu();
        contentMenuItem = new javax.swing.JMenuItem();
        aboutMenuItem = new javax.swing.JMenuItem();
        jMenuItem1 = new javax.swing.JMenuItem();
        programMenu = new javax.swing.JMenu();
        jMenuItem4 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415 \u0422\u044a\u0440\u0433\u043e\u0432\u0441\u043a\u0438 \u043c\u043e\u0434\u0443\u043b");
        setBackground(new java.awt.Color(153, 153, 153));
        setFont(new java.awt.Font("Tahoma", 1, 12));
        setName("frameSale");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        getContentPane().add(desktopPane, java.awt.BorderLayout.CENTER);

        jButton1.setIcon(new javax.swing.ImageIcon("C:\\REA\\src\\midass\\openfile.gif"));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton1);

        jButton6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Objects 2_large_ps.png")));
        jButton6.setToolTipText("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430 \u043f\u0440\u043e\u0434\u0443\u043a\u0442\u0438");
        jButton6.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Objects 2_large.png")));
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton6);

        jButton5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Contact_ps.png")));
        jButton5.setToolTipText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        jButton5.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Contact.png")));
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton5);

        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Group 4_ps.png")));
        jButton2.setToolTipText("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0438 \u041b\u0438\u0446\u0430");
        jButton2.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Group 4.png")));
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton2);

        jButton4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Download_ps.png")));
        jButton4.setToolTipText("\u041e\u0431\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435");
        jButton4.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Download.png")));
        jToolBar1.add(jButton4);

        jButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Help File_ps.png")));
        jButton3.setToolTipText("\u041f\u043e\u043c\u043e\u0449");
        jButton3.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Help File.png")));
        jToolBar1.add(jButton3);

        getContentPane().add(jToolBar1, java.awt.BorderLayout.NORTH);

        programMenu.setFont(menuFont);
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
        stock_Menu_group_stock.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stock_Menu_group_stockActionPerformed(evt);
            }
        });

        nomMenu_stock.add(stock_Menu_group_stock);

        stock_Menu_stock.setText("\u0421\u0442\u043e\u043a\u0430");
        stock_Menu_stock.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stock_Menu_stockActionPerformed(evt);
            }
        });

        nomMenu_stock.add(stock_Menu_stock);

        nomMenu.add(nomMenu_stock);

        nomMenu_Aktiv.setText("\u0410\u043a\u0442\u0438\u0432\u0438");
        aktiviMenu_grupi.setText("\u0413\u0440\u0443\u043f\u0438 \u0430\u043a\u0442\u0438\u0432\u0438");
        aktiviMenu_grupi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                aktiviMenu_grupiActionPerformed(evt);
            }
        });

        nomMenu_Aktiv.add(aktiviMenu_grupi);

        aktiviMenu_Aktivi.setText("\u0410\u043a\u0442\u0438\u0432\u0438");
        nomMenu_Aktiv.add(aktiviMenu_Aktivi);

        nomMenu.add(nomMenu_Aktiv);

        nomMenu_Kontragenti.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        kontragentiMenu_groupe.setText("\u0413\u0440\u0443\u043f\u0438");
        kontragentiMenu_groupe.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kontragentiMenu_groupeActionPerformed(evt);
            }
        });

        nomMenu_Kontragenti.add(kontragentiMenu_groupe);

        kontragentiMenu_Kontr.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Contact16.png")));
        kontragentiMenu_Kontr.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        kontragentiMenu_Kontr.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kontragentiMenu_KontrActionPerformed(evt);
            }
        });

        nomMenu_Kontragenti.add(kontragentiMenu_Kontr);

        kontragentiMenu_bank.setText("\u0411\u0430\u043d\u043a\u0438");
        kontragentiMenu_bank.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kontragentiMenu_bankActionPerformed(evt);
            }
        });

        nomMenu_Kontragenti.add(kontragentiMenu_bank);

        kontragentiMenu_obekti.setText("\u041e\u0431\u0441\u043b\u0443\u0436\u0432\u0430\u043d\u0438 \u043e\u0431\u0435\u043a\u0442\u0438");
        nomMenu_Kontragenti.add(kontragentiMenu_obekti);

        kontragentiMenu_typeobject.setText("\u0422\u0438\u043f\u043e\u0432\u0435 \u043e\u0431\u0435\u043a\u0442\u0438");
        nomMenu_Kontragenti.add(kontragentiMenu_typeobject);

        nomMenu.add(nomMenu_Kontragenti);

        nomMenu_Litsa.setText("\u041b\u0438\u0446\u0430");
        litsaMenu_groupe_litsa.setText("\u0413\u0440\u0443\u043f\u0438 \u043b\u0438\u0446\u0430");
        litsaMenu_groupe_litsa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                litsaMenu_groupe_litsaActionPerformed(evt);
            }
        });

        nomMenu_Litsa.add(litsaMenu_groupe_litsa);

        litsaMenu_in.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Group416.png")));
        litsaMenu_in.setText("\u041b\u0438\u0446\u0430");
        litsaMenu_in.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                litsaMenu_inActionPerformed(evt);
            }
        });

        nomMenu_Litsa.add(litsaMenu_in);

        nomMenu.add(nomMenu_Litsa);

        nomMenu_object.setText("\u0421\u043a\u043b\u0430\u0434\u043e\u0432\u0435");
        objectMenu_groupe_object.setText("\u0413\u0440\u0443\u043f\u0438 \u0441\u043a\u043b\u0430\u0434\u043e\u0432\u0435");
        objectMenu_groupe_object.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                objectMenu_groupe_objectActionPerformed(evt);
            }
        });

        nomMenu_object.add(objectMenu_groupe_object);

        objectMenu_skl.setText("\u0421\u043a\u043b\u0430\u0434\u043e\u0432\u0435");
        objectMenu_skl.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                objectMenu_sklActionPerformed(evt);
            }
        });

        nomMenu_object.add(objectMenu_skl);

        nomMenu.add(nomMenu_object);

        nomMenu_kasi.setText("\u041a\u0430\u0441\u0438");
        kasiMenu_grupi.setText("\u0413\u0440\u0443\u043f\u0438 \u043a\u0430\u0441\u0438");
        kasiMenu_grupi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kasiMenu_grupiActionPerformed(evt);
            }
        });

        nomMenu_kasi.add(kasiMenu_grupi);

        kasiMenu_kasi.setText("\u041a\u0430\u0441\u0438");
        kasiMenu_kasi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kasiMenu_kasiActionPerformed(evt);
            }
        });

        nomMenu_kasi.add(kasiMenu_kasi);

        nomMenu.add(nomMenu_kasi);

        moneyMenu.setText("\u041f\u0430\u0440\u0438\u0447\u043d\u0438");
        moneyMenu_groupe.setText("\u0413\u0440\u0443\u043f\u0438 \u043f\u0430\u0440\u0438\u0447\u043d\u0438");
        moneyMenu_groupe.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                moneyMenu_groupeActionPerformed(evt);
            }
        });

        moneyMenu.add(moneyMenu_groupe);

        moneyMenu_in.setText("\u041f\u0440\u0438\u0445\u043e\u0434\u0438");
        moneyMenu_in.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                moneyMenu_inActionPerformed(evt);
            }
        });

        moneyMenu.add(moneyMenu_in);

        moneyMenu_out.setText("\u0420\u0430\u0437\u0445\u043e\u0434\u0438");
        moneyMenu_out.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                moneyMenu_outActionPerformed(evt);
            }
        });

        moneyMenu.add(moneyMenu_out);

        moneyMenu_valutes.setText("\u0412\u0430\u043b\u0443\u0442\u0438");
        moneyMenu_valutes.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                moneyMenu_valutesActionPerformed(evt);
            }
        });

        moneyMenu.add(moneyMenu_valutes);

        monyMenu_rates.setText("\u041a\u0443\u0440\u0441\u043e\u0432\u0435");
        monyMenu_rates.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                monyMenu_ratesActionPerformed(evt);
            }
        });

        moneyMenu.add(monyMenu_rates);

        nomMenu.add(moneyMenu);

        nomMenu.add(jSeparator3);

        nomMenu_nasm.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
        nomMenu_nasm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenu_nasmActionPerformed(evt);
            }
        });

        nomMenu.add(nomMenu_nasm);

        nomMenu_obl.setText("\u041e\u0431\u043b\u0430\u0441\u0442\u0438");
        nomMenu_obl.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenu_oblActionPerformed(evt);
            }
        });

        nomMenu.add(nomMenu_obl);

        nomMenu_con.setText("\u0414\u044a\u0440\u0436\u0430\u0432\u0438");
        nomMenu_con.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenu_conActionPerformed(evt);
            }
        });

        nomMenu.add(nomMenu_con);

        nomMenu.add(jSeparator4);

        nomALevel.setText("\u0410\u043d\u0430\u043b\u0438\u0442\u0438\u0447\u043d\u0438 \u043d\u0438\u0432\u0430");
        nomMenu.add(nomALevel);

        menuBar.add(nomMenu);

        sprMenu.setText("\u0421\u041f\u0420\u0410\u0412\u041a\u0418");
        spravkiMenu_nal.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442");
        spravkiMenu_nal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                spravkiMenu_nalActionPerformed(evt);
            }
        });

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

        nomMenu_DocType.setText("\u0422\u0438\u043f\u043e\u0432\u0435 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        nomMenu_DocType.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenu_DocTypeActionPerformed(evt);
            }
        });

        sluMenu.add(nomMenu_DocType);

        jMenuItem6.setText("\u0414\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438 \u043d\u043e\u043c\u0435\u0440\u0430\u0446\u0438\u044f");
        jMenuItem6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem6ActionPerformed(evt);
            }
        });

        sluMenu.add(jMenuItem6);

        jMenuItem5.setText("\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0438");
        sluMenu.add(jMenuItem5);

        jMenuItem9DTUR.setText("\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0441\u043a\u0438 \u043f\u0440\u0430\u0432\u0430 \u0432\u044a\u0440\u0445\u0443 \u043a\u043e\u0447\u0430\u043d\u0438");
        jMenuItem9DTUR.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem9DTURActionPerformed(evt);
            }
        });

        sluMenu.add(jMenuItem9DTUR);

        jMenuTransfer.setText("\u0422\u0440\u0430\u043d\u0441\u0444\u0435\u0440");
        jMenuItem7.setText("\u0418\u043c\u043f\u043e\u0440\u0442 \u0421\u041a\u041b");
        jMenuItem7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem7ActionPerformed(evt);
            }
        });

        jMenuTransfer.add(jMenuItem7);

        jMenuItem8.setText("\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u044f SKL1 ");
        jMenuItem8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem8ActionPerformed(evt);
            }
        });

        jMenuTransfer.add(jMenuItem8);

        sluMenu.add(jMenuTransfer);

        menuBar.add(sluMenu);

        helpMenu.setText("\u041f\u041e\u041c\u041e\u0429");
        contentMenuItem.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Help16.png")));
        contentMenuItem.setText("\u0421\u044a\u0434\u044a\u0440\u0436\u0430\u043d\u0438\u0435");
        helpMenu.add(contentMenuItem);

        aboutMenuItem.setText("\u0410\u0432\u0442\u043e\u0440\u0438");
        aboutMenuItem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                aboutMenuItemActionPerformed(evt);
            }
        });

        helpMenu.add(aboutMenuItem);

        jMenuItem1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Download16.png")));
        jMenuItem1.setText("\u041e\u0431\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435");
        helpMenu.add(jMenuItem1);

        menuBar.add(helpMenu);

        programMenu.setText("\u041f\u0420\u041e\u0413\u0420\u0410\u041c\u0410");
        jMenuItem4.setFont(new java.awt.Font("Tahoma", 1, 11));
        jMenuItem4.setText("\u0418\u0417\u0425\u041e\u0414");
        jMenuItem4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem4ActionPerformed(evt);
            }
        });

        programMenu.add(jMenuItem4);

        menuBar.add(programMenu);

        setJMenuBar(menuBar);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-757)/2, (screenSize.height-448)/2, 757, 448);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jMenuItem9DTURActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem9DTURActionPerformed
        loadDTUR();
    }//GEN-LAST:event_jMenuItem9DTURActionPerformed
    
    private void kontragentiMenu_bankActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kontragentiMenu_bankActionPerformed
        loadBankAcc();
    }//GEN-LAST:event_kontragentiMenu_bankActionPerformed
    
    private void jMenuItem8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem8ActionPerformed
        this.loadKorect();
    }//GEN-LAST:event_jMenuItem8ActionPerformed
    
    private void jMenuItem7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem7ActionPerformed
        this.loadLevelImport();
    }//GEN-LAST:event_jMenuItem7ActionPerformed
    
    private void jMenuItem6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem6ActionPerformed
        loadNumDocuments();
    }//GEN-LAST:event_jMenuItem6ActionPerformed
    
    private void spravkiMenu_nalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_spravkiMenu_nalActionPerformed
        loadReportNal();
    }//GEN-LAST:event_spravkiMenu_nalActionPerformed
    
    private void moneyMenu_outActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_moneyMenu_outActionPerformed
        loadExpens();
    }//GEN-LAST:event_moneyMenu_outActionPerformed
    
    private void moneyMenu_inActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_moneyMenu_inActionPerformed
        loadIncome();
    }//GEN-LAST:event_moneyMenu_inActionPerformed
    
    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        loadFrmProducts();
    }//GEN-LAST:event_jButton6ActionPerformed
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        try{
            loadKlienti();
        } catch (java.sql.SQLException sql1) {}
    }//GEN-LAST:event_jButton5ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        loadPerson();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void nomMenu_DocTypeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nomMenu_DocTypeActionPerformed
        loadTypeDocuments();
    }//GEN-LAST:event_nomMenu_DocTypeActionPerformed
    
    private void stock_Menu_stockActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_stock_Menu_stockActionPerformed
        loadFrmProducts();
    }//GEN-LAST:event_stock_Menu_stockActionPerformed
    
    private void monyMenu_ratesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_monyMenu_ratesActionPerformed
        loadExRates();
    }//GEN-LAST:event_monyMenu_ratesActionPerformed
    
    private void objectMenu_sklActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_objectMenu_sklActionPerformed
        loadStorage();
    }//GEN-LAST:event_objectMenu_sklActionPerformed
    
    private void litsaMenu_inActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_litsaMenu_inActionPerformed
        loadPerson();
    }//GEN-LAST:event_litsaMenu_inActionPerformed
    
    private void kasiMenu_kasiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kasiMenu_kasiActionPerformed
        loadCasa();
    }//GEN-LAST:event_kasiMenu_kasiActionPerformed
    
    private void nomMenu_nasmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nomMenu_nasmActionPerformed
        loadNM();
    }//GEN-LAST:event_nomMenu_nasmActionPerformed
    
    private void nomMenu_oblActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nomMenu_oblActionPerformed
        loadOblasti();
    }//GEN-LAST:event_nomMenu_oblActionPerformed
    
    private void moneyMenu_valutesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_moneyMenu_valutesActionPerformed
        loadFrmMoney();
    }//GEN-LAST:event_moneyMenu_valutesActionPerformed
    
    private void nomMenu_conActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nomMenu_conActionPerformed
        nom.FrmCountry Country = new nom.FrmCountry("", this);
        desktopPane.add(Country);
        Country.setVisible(true);
    }//GEN-LAST:event_nomMenu_conActionPerformed
    
    private void jMenuItem4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem4ActionPerformed
        imakante.com.NewMain.setB_SL(false);
        this.dispose();
    }//GEN-LAST:event_jMenuItem4ActionPerformed
    //<<<<<<< sales_main.java
    
//=======
    
    private void kontragentiMenu_KontrActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kontragentiMenu_KontrActionPerformed
        loadFrmContragent();
    }//GEN-LAST:event_kontragentiMenu_KontrActionPerformed
    
    private void moneyMenu_groupeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_moneyMenu_groupeActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0410 \u041f\u0410\u0420\u0418\u0427\u041d\u0418",ID_MONEY);
    }//GEN-LAST:event_moneyMenu_groupeActionPerformed
    
    private void kasiMenu_grupiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kasiMenu_grupiActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0410 \u041a\u0410\u0421\u0410",ID_KASA);
    }//GEN-LAST:event_kasiMenu_grupiActionPerformed
    
    private void objectMenu_groupe_objectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_objectMenu_groupe_objectActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0410 \u0421\u041a\u041b\u0410\u0414\u041e\u0412\u0415",ID_OBJECT);
    }//GEN-LAST:event_objectMenu_groupe_objectActionPerformed
    
    private void litsaMenu_groupe_litsaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_litsaMenu_groupe_litsaActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0410 \u041b\u0418\u0426\u0410",ID_LICA);
    }//GEN-LAST:event_litsaMenu_groupe_litsaActionPerformed
    
    private void kontragentiMenu_groupeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kontragentiMenu_groupeActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0410 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422",ID_CONTRAGENT);
    }//GEN-LAST:event_kontragentiMenu_groupeActionPerformed
    
    private void aktiviMenu_grupiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_aktiviMenu_grupiActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0410 \u0410\u041a\u0422\u0418\u0412\u0418",ID_AKTIVI);
    }//GEN-LAST:event_aktiviMenu_grupiActionPerformed
    
    private void stock_Menu_group_stockActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_stock_Menu_group_stockActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0410 \u0421\u0422\u041e\u041a\u0418",ID_STOCK);
    }//GEN-LAST:event_stock_Menu_group_stockActionPerformed
    
    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        imakante.com.NewMain.setB_SL(false);
        System.out.println("end sales_main-formWindowClosing");
    }//GEN-LAST:event_formWindowClosing
    
    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        System.out.println("end sales_main-formWindowClosed");
    }//GEN-LAST:event_formWindowClosed
    
    private void sluMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sluMenuActionPerformed
        
    }//GEN-LAST:event_sluMenuActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try{
            loadKlienti();
        } catch (java.sql.SQLException sql1) {}
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void aboutMenuItemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_aboutMenuItemActionPerformed
        
    }//GEN-LAST:event_aboutMenuItemActionPerformed
    
    private void nomMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nomMenuActionPerformed
        
    }//GEN-LAST:event_nomMenuActionPerformed
    
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenuItem aboutMenuItem;
    private javax.swing.JMenuItem aktiviMenu_Aktivi;
    private javax.swing.JMenuItem aktiviMenu_grupi;
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
    private javax.swing.JMenuItem fakMenu_dan;
    private javax.swing.JMenuItem fakMenu_opr;
    private javax.swing.JMenu helpMenu;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JMenuItem jMenuItem4;
    private javax.swing.JMenuItem jMenuItem5;
    private javax.swing.JMenuItem jMenuItem6;
    private javax.swing.JMenuItem jMenuItem7;
    private javax.swing.JMenuItem jMenuItem8;
    private javax.swing.JMenuItem jMenuItem9DTUR;
    private javax.swing.JMenu jMenuTransfer;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JSeparator jSeparator4;
    private javax.swing.JToolBar jToolBar1;
    private javax.swing.JMenu kasaMenu;
    private javax.swing.JMenuItem kasaMenu_dvi;
    private javax.swing.JMenuItem kasaMenu_nal;
    private javax.swing.JMenuItem kasaMenu_opis;
    private javax.swing.JMenu kasaMenu_order;
    private javax.swing.JMenuItem kasiMenu_grupi;
    private javax.swing.JMenuItem kasiMenu_kasi;
    private javax.swing.JMenuItem kontragentiMenu_Kontr;
    private javax.swing.JMenuItem kontragentiMenu_bank;
    private javax.swing.JMenuItem kontragentiMenu_groupe;
    private javax.swing.JMenuItem kontragentiMenu_obekti;
    private javax.swing.JMenuItem kontragentiMenu_typeobject;
    private javax.swing.JMenuItem litsaMenu_groupe_litsa;
    private javax.swing.JMenuItem litsaMenu_in;
    private javax.swing.JMenuBar menuBar;
    private javax.swing.JMenu moneyMenu;
    private javax.swing.JMenuItem moneyMenu_groupe;
    private javax.swing.JMenuItem moneyMenu_in;
    private javax.swing.JMenuItem moneyMenu_out;
    private javax.swing.JMenuItem moneyMenu_valutes;
    private javax.swing.JMenuItem monyMenu_rates;
    private javax.swing.JMenuItem nomALevel;
    private javax.swing.JMenu nomMenu;
    private javax.swing.JMenu nomMenu_Aktiv;
    private javax.swing.JMenuItem nomMenu_DocType;
    private javax.swing.JMenu nomMenu_Kontragenti;
    private javax.swing.JMenu nomMenu_Litsa;
    private javax.swing.JMenuItem nomMenu_con;
    private javax.swing.JMenu nomMenu_kasi;
    private javax.swing.JMenuItem nomMenu_nasm;
    private javax.swing.JMenu nomMenu_object;
    private javax.swing.JMenuItem nomMenu_obl;
    private javax.swing.JMenu nomMenu_stock;
    private javax.swing.JMenuItem objectMenu_groupe_object;
    private javax.swing.JMenuItem objectMenu_skl;
    private javax.swing.JMenuItem orderMenu_prih;
    private javax.swing.JMenuItem orderMenu_razh;
    private javax.swing.JMenuItem porachMenu_in;
    private javax.swing.JMenuItem porachMenu_out;
    private javax.swing.JMenu programMenu;
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
    private javax.swing.JMenuItem stock_Menu_group_stock;
    private javax.swing.JMenuItem stock_Menu_stock;
    // End of variables declaration//GEN-END:variables
    
    // main app parameters
    private static boolean logged = false; // for logging into app
    private java.sql.Connection dbConn = null; // connection
    private java.sql.Statement stm = null; //Statement
    private java.sql.ResultSet rs = null;  //ResultSet
    
    // testovi stoinosti za DB
    private String dbName = "mida"; // name of the db
    private String dbURL = "jdbc:mysql://127.0.0.1:3306/mida"; // url of the db
    private String dbDriver = "com.mysql.jdbc.Driver"; // driver name
    private String dbUser = "javauser";  // user name
    private String dbPass = "javadude"; // user password
    // end  testovi stoinosti za DB
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
    private nom.FrmGroup iFormGroup[] = new nom.FrmGroup[MAX_GROUP];
    public boolean isStartFrmGroup[] = new boolean[MAX_GROUP];
    
    private nom.FrmContragent iFrmContragent;
    public boolean isStartFrmContragent = false; // FLAG dali da se startira FrmContagent,
    //promenq se i ot FrmContragent pri zatvarqne
    // na FrmContragent
    
    private FrmProduct iFrmProduct;
    private static boolean isStartFrmProduct = false;
    
    private boolean levelActivate = false;
    private int currentLevel = 1;
    
    private static LinkedHashMap OrderArea = new LinkedHashMap();
    private static LinkedHashMap FaktArea = new LinkedHashMap();
    
    private void loadLevelDialog(int ModuleCode, LinkedHashMap hash){
        levelDialog lDialog = new levelDialog(this, true, ModuleCode, hash);
        lDialog.setVisible(true);
    }
    
    private void loadConn(){
        dbConn = imakante.com.NewMain.getConnection();
    }
    private void loadProba(){
        
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
            setDbConn(java.sql.DriverManager.getConnection(DBSource, DBUserName, DBPassword));
        } catch(ClassNotFoundException e)  {
            System.err.println("Failed to load driver");
            e.printStackTrace();
            System.exit(1);
        } catch(java.sql.SQLException e){
            System.err.println("Unable to connect");
            e.printStackTrace();
            System.exit(1);
        }
        if (getDbConn() != null){
            
        } else { }
        return getDbConn();
    }
    
    private void lockApp(){
        logged = false;
    }
    
    private void closeConn() {
        if (getDbConn() != null ){
            try {
                getDbConn().close();
            } catch(java.sql.SQLException sq2){
            }}
        setDbName(null);
        setDbURL(null);
        setDbDriver(null);
        setDbUser(null);
        setDbPass(null);
    }
    
    private void loadKlienti() throws java.sql.SQLException {
        
    }
    
    private void lockMessage(){
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
    
    private void loadGrProduct() {
        
    }
    
    
    
    public java.sql.Connection getConn() {
        return getDbConn();
    }
    private void loadFrmGroup(String title, int nm) {
        if((nm < MAX_GROUP)&& (!isStartFrmGroup[nm]))
            
        {
            try {
                iFormGroup[nm] = new nom.FrmGroup(title,this,nm);
                desktopPane.add(iFormGroup[nm]);
                try {
                    iFormGroup[nm].setMaximum(true);
                } catch (java.beans.PropertyVetoException ex) {
                    ex.printStackTrace();
                }
                iFormGroup[nm].setVisible(true);
                isStartFrmGroup[nm] = true;
            } catch(Exception e) {
                System.out.println("E R R o R");
            }
        }
    }
    //METHODS FOR LOADING USER RIGHTS FOR AREA DOCUMENTS
    
    private void loadRightsArea(){
        String StrQ = "SELECT " +
                "`n_doc_type_user_rights`.`id_ndtur`, " +
                "`sl_doc_type_num`.`area_number_sdtn` " +
                "FROM " +
                "`n_doc_type_user_rights` " +
                "Inner Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `n_doc_type_user_rights`.`id_sdtn` " +
                "Inner Join `n_type_doc` ON `n_type_doc`.`id_ntd` = `sl_doc_type_num`.`id_ntd` " +
                " WHERE " +
                "`n_doc_type_user_rights`.`id_um` = " +
                imakante.com.NewMain.getUserId() +
                " AND " +
                "`n_type_doc`.`code_ntd` =";
        
        try {
            int i = 0;
            stm = this.dbConn.createStatement();
            rs = stm.executeQuery(
                    StrQ + "'1'"
                    );
            while(rs.next()){
                
                getOrderArea().put(rs.getInt("id_ndtur"),new String(rs.getString("area_number_sdtn")));
                
            }
            i = 0;
            rs = stm.executeQuery(
                    StrQ + "'4'"
                    );
            while(rs.next()){
                
                getFaktArea().put(rs.getInt("id_ndtur"),new String(rs.getString("area_number_sdtn")));;
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        try {
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        try {
            stm.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
    }
    
    //METHODS FOR LOAD FORMS
    /*
     *
     */
    
    
    private void loadLevelImport(){
        if (!this.getOrderArea().isEmpty()){
        imakante.sales.levelDialog level = new imakante.sales.levelDialog(this, true, 1, this.getOrderArea());
      //  desktopPane.add(level);
        level.setVisible(true); }
        else{System.out.println("Empty hash");};
        
    }
    
    //PRODUCTS
    
    private void loadFrmProducts() {
        if(!isIsStartFrmProduct()) {
            iFrmProduct = new nom.FrmProduct("\u041d\u041e\u041c\u0415\u041d\u041a\u041b\u0410\u0422\u0423\u0420\u0410 \u0421\u0422\u041e\u041a\u0418",0,0);
            desktopPane.add(iFrmProduct);
            try {
                iFrmProduct.setMaximum(true);
            } catch (java.beans.PropertyVetoException ex) {
                ex.printStackTrace();
            }
            iFrmProduct.setVisible(true);
            setIsStartFrmProduct(true);
        }else{
            try {
                iFrmProduct.grabFocus();
                try {
                    iFrmProduct.setMaximum(true);
                } catch (java.beans.PropertyVetoException ex) {
                    ex.printStackTrace();
                }
            } finally {
            }
        }
    }
    
    //KONTRAGENTI
    private void loadFrmContragent() {
        if(!isStartFrmContragent) {
            iFrmContragent = new nom.FrmContragent("\u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422\u0418",this,0);
            desktopPane.add(iFrmContragent);
            try {
                iFrmContragent.setMaximum(true);
            } catch (java.beans.PropertyVetoException ex) {
                ex.printStackTrace();
            }
            iFrmContragent.setVisible(true);
            isStartFrmContragent = true;
        }
    }
    //BANK
    private void loadBankAcc(){
        nom.FrmBankAccounts bank = new nom.FrmBankAccounts("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430 \u041a\u0430\u0441\u0438", this);
        desktopPane.add(bank);
        try {
            bank.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) {
            ex.printStackTrace();
        }
        bank.setVisible(true);
    }
    //kasi
    private void loadCasa(){
        nom.FrmCasa Casa = new nom.FrmCasa("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430 \u041a\u0430\u0441\u0438", this);
        desktopPane.add(Casa);
        try {
            Casa.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) {
            ex.printStackTrace();
        }
        Casa.setVisible(true);
    }
    //storages
    private void loadStorage(){
        nom.FrmStorage Storage = new nom.FrmStorage("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430 \u0421\u043a\u043b\u0430\u0434\u043e\u0432\u0435", this);
        desktopPane.add(Storage);
        try {
            Storage.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) {
            ex.printStackTrace();
        }
        Storage.setVisible(true);
    }
    
    //PARICHNI MONEY
    private void loadFrmMoney() {
        nom.FrmMoney Money = new nom.FrmMoney("\u041f\u0410\u0420\u0418\u0427\u041d\u0418", this);
        desktopPane.add(Money);
        try {
            Money.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) {
            ex.printStackTrace();
        }
        Money.setVisible(true);
    }
    //PARICHNI INCOME
    private void loadIncome() {
        nom.FrmIncom Income = new nom.FrmIncom("\u041a\u0443\u0440\u0441\u043e\u0432\u0435 \u043d\u0430 \u0432\u0430\u043b\u0443\u0442\u0438", this);
        desktopPane.add(Income);
        try {
            Income.setMaximum(true);
        } catch(java.beans.PropertyVetoException pvex) {
            pvex.printStackTrace();
        }
        Income.setVisible(true);
    }
    private void loadExpens() {
        nom.FrmExpens Expens = new nom.FrmExpens("\u041a\u0443\u0440\u0441\u043e\u0432\u0435 \u043d\u0430 \u0432\u0430\u043b\u0443\u0442\u0438", this);
        desktopPane.add(Expens);
        try {
            Expens.setMaximum(true);
        } catch(java.beans.PropertyVetoException pvex) {
            pvex.printStackTrace();
        }
        Expens.setVisible(true);
    }
    //PARICHNI EXCHANGE RATE
    private void loadExRates() {
        imakante.sales.FrmExchangeRate Rates = new imakante.sales.FrmExchangeRate("\u041a\u0443\u0440\u0441\u043e\u0432\u0435 \u043d\u0430 \u0432\u0430\u043b\u0443\u0442\u0438", this);
        desktopPane.add(Rates);
        try {
            Rates.setMaximum(true);
        } catch(java.beans.PropertyVetoException pvex) {
            pvex.printStackTrace();
        }
        Rates.setVisible(true);
    }
    
    //OBLASTI
    private void loadOblasti(){
        nom.FrmOblast oblast = new nom.FrmOblast("\u041e\u0411\u041b\u0410\u0421\u0422\u0418", this);
        desktopPane.add(oblast);
        try {
            oblast.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) {
            ex.printStackTrace();
        }
        oblast.setVisible(true);
        
    }
    
    //NASELENI MESTA
    private void loadNM(){
        nom.FrmNaseleniMesta nm = new nom.FrmNaseleniMesta("\u041d\u0410\u0421\u0415\u041b\u0415\u041d\u0418 \u041c\u0415\u0421\u0422\u0410",this);
        desktopPane.add(nm);
        try {
            nm.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) {
            ex.printStackTrace();
        }
        nm.setVisible(true);
    }
    
    // LICA
    private void loadPerson() {
        nom.FrmPerson pers = new nom.FrmPerson("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0438 \u041b\u0438\u0446\u0430", this);
        desktopPane.add(pers);
        try {
            pers.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) {
            ex.printStackTrace();
        }
        
        pers.setVisible(true);
    }
    
    // TYPE DOCUMENTS & NUMBERING
    private void loadTypeDocuments(){
        nom.FrmDoctype DocType = new nom.FrmDoctype("tipove dokumenti", this);
        desktopPane.add(DocType);
        try {
            DocType.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) { ex.printStackTrace(); }
        DocType.setVisible(true);
    }
    
    private void loadDTUR() {
        nom.FrmDoctypeUserRights DTUR = new nom.FrmDoctypeUserRights("prawa wyrhu kochani", this);
        desktopPane.add(DTUR);
        try {
            DTUR.setMaximum(true);
        } catch (java.beans.PropertyVetoException pve) {
            System.out.println("Problem setMax");
            pve.printStackTrace(); }
        DTUR.setVisible(true);
    }
    
    private void loadNumDocuments() {
        imakante.sales.FrmNumDoc DocNums = new imakante.sales.FrmNumDoc("nomeracii na dokumenti", this);
        desktopPane.add(DocNums);
        try {
            DocNums.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) {ex.printStackTrace();}
        DocNums.setVisible(true);
    }
    
    public void  loadImport(){
        
        imakante.sales.importFrmSklB imp = new imakante.sales.importFrmSklB();
        desktopPane.add(imp);
        imp.setVisible(true);
    }
    
    private void  loadKorect(){
        
        imakante.sales.FrmImpExpSKL imp = new imakante.sales.FrmImpExpSKL();
        desktopPane.add(imp);
        imp.setVisible(true);
    }
    
// ENCAPS METHODS FORM CONTROL
    public static boolean isIsStartFrmProduct() {
        return isStartFrmProduct;
    }
    
    public static void setIsStartFrmProduct(boolean bool) {
        isStartFrmProduct = bool;
    }
    
    private void loadReportNal() {
        imakante.sales.reportFrmNal repNal = new imakante.sales.reportFrmNal("nalichnost", this);
        desktopPane.add(repNal);
        repNal.setVisible(true);
    }
    
    public static LinkedHashMap getOrderArea() {
        return OrderArea;
    }
    
    public  void setOrderArea(LinkedHashMap OrderArea) {
        this.OrderArea = OrderArea;
    }
    
    public static LinkedHashMap getFaktArea() {
        return FaktArea;
    }
    
    public  void setFaktArea(LinkedHashMap FaktArea) {
        this.FaktArea = FaktArea;
    }
}
