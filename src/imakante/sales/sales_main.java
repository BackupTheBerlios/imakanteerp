
package imakante.sales;

public class sales_main extends imakante.com.vcomponents.iFrame {
    
    private final static int MAX_GROUP = 7; // pokazva maximalniq broj na grupite;
    private final static int ID_STOCK = 0;
    private final static int ID_AKTIVI = 1;
    private final static int ID_CONTRAGENT = 2;
    private final static int ID_LICA = 3;
    private final static int ID_OBJECT = 4;
    private final static int ID_KASA = 5;
    private final static int ID_MONEY = 6;
    
    
    public sales_main(String title) {
        super(title);
        loadConn();
        initComponents();
//        setIconImage(frameIcon);
        this.setTitle("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415 - \u0421\u041a\u041b\u0410\u0414\u041e\u0412 \u041c\u041e\u0414\u0423\u041b    \u0432\u0435\u0440\u0441\u0438\u044f 0.7.2");
        //  loadPaneForm();
        // this.setVisible(true);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setSize(dim.width,dim.height-30);
        this.setLocation(0,0);
        imakante.com.NewMain.setB_SL(true);
        loadRightsArea();
        this.jlUserStatus.setText("\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b: " + imakante.com.NewMain.getUserName());
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        desktopPane = new javax.swing.JDesktopPane();
        jToolBar1 = new javax.swing.JToolBar();
        jButton2 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jButton9 = new javax.swing.JButton();
        jButton10 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jComboBox1 = new javax.swing.JComboBox();
        jPanel2 = new javax.swing.JPanel();
        jlUserStatus = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        menuBar = new javax.swing.JMenuBar();
        docMenu = new javax.swing.JMenu();
        docMenu_prod = new javax.swing.JMenuItem();
        docMenu_fak = new javax.swing.JMenu();
        fakMenu_dan = new javax.swing.JMenuItem();
        fakMenu_opr = new javax.swing.JMenuItem();
        docMenu_razp = new javax.swing.JMenu();
        razpMenu_pol = new javax.swing.JMenuItem();
        razpMenu_prehv = new javax.swing.JMenuItem();
        razMenu_vryst = new javax.swing.JMenuItem();
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
        kasiIbankiMenu = new javax.swing.JMenu();
        kasaMenu_order = new javax.swing.JMenu();
        orderMenu_prih = new javax.swing.JMenuItem();
        orderMenu_razh = new javax.swing.JMenuItem();
        kasaMOLMenu = new javax.swing.JMenu();
        kasaAvansMenu = new javax.swing.JMenuItem();
        kasaAvansOt4etMenu = new javax.swing.JMenuItem();
        kasaMenu_dvi = new javax.swing.JMenuItem();
        kasaMenu_nal = new javax.swing.JMenuItem();
        kasaMenu_opis = new javax.swing.JMenuItem();
        jSeparator11 = new javax.swing.JSeparator();
        bankaMenu_orderi = new javax.swing.JMenuItem();
        nomMenu = new javax.swing.JMenu();
        nomMenu_Litsa = new javax.swing.JMenu();
        litsaMenu_groupe_litsa = new javax.swing.JMenuItem();
        litsaMenu_in = new javax.swing.JMenuItem();
        nomMenu_Kontragenti = new javax.swing.JMenu();
        kontragentiMenu_groupe = new javax.swing.JMenuItem();
        kontragentiMenu_Kontr = new javax.swing.JMenuItem();
        kontragentiMenu_bank = new javax.swing.JMenuItem();
        kontragentiMenu_obekti = new javax.swing.JMenuItem();
        kontragentiMenu_typeobject = new javax.swing.JMenuItem();
        nomMenu_stock = new javax.swing.JMenu();
        stock_Menu_group_stock = new javax.swing.JMenuItem();
        stock_Menu_stock = new javax.swing.JMenuItem();
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
        nomMenu_Aktiv = new javax.swing.JMenu();
        aktiviMenu_grupi = new javax.swing.JMenuItem();
        aktiviMenu_Aktivi = new javax.swing.JMenuItem();
        jSeparator3 = new javax.swing.JSeparator();
        nomMenu_Geo = new javax.swing.JMenu();
        nomMenu_nasm = new javax.swing.JMenuItem();
        nomMenu_obl = new javax.swing.JMenuItem();
        nomMenu_con = new javax.swing.JMenuItem();
        jSeparator4 = new javax.swing.JSeparator();
        nomALevel = new javax.swing.JMenuItem();
        nomDisband = new javax.swing.JMenuItem();
        jSeparator12 = new javax.swing.JSeparator();
        nomMitProduct = new javax.swing.JMenuItem();
        sprMenu = new javax.swing.JMenu();
        spravkiMenu_nal_simpl = new javax.swing.JMenuItem();
        spravkiMenu_nal = new javax.swing.JMenuItem();
        spravkiMenu_nal_ext = new javax.swing.JMenuItem();
        jSeparator13 = new javax.swing.JSeparator();
        jMenuItem15 = new javax.swing.JMenuItem();
        jMenuItem14 = new javax.swing.JMenuItem();
        jMenuItem10 = new javax.swing.JMenuItem();
        jMenuItem35 = new javax.swing.JMenuItem();
        jMenuItem36 = new javax.swing.JMenuItem();
        jMenuItem34 = new javax.swing.JMenuItem();
        balansMenu = new javax.swing.JMenu();
        balansMenu_stock = new javax.swing.JMenuItem();
        balansMenu_kol = new javax.swing.JMenuItem();
        jMenu3 = new javax.swing.JMenu();
        spravkiMenu_doc = new javax.swing.JMenuItem();
        fakturiMenu = new javax.swing.JMenuItem();
        jSeparator2 = new javax.swing.JSeparator();
        jmPayments = new javax.swing.JMenu();
        jmiReportContragentPayments = new javax.swing.JMenuItem();
        jmiReportContragentGroupsPayments = new javax.swing.JMenuItem();
        jmDebts = new javax.swing.JMenu();
        jmiReportContragentDebts = new javax.swing.JMenuItem();
        jmiReportContragentGroupsDebts = new javax.swing.JMenuItem();
        jSeparator5 = new javax.swing.JSeparator();
        jMenuItem13 = new javax.swing.JMenuItem();
        jSeparator6 = new javax.swing.JSeparator();
        jMenuItem16 = new javax.swing.JMenuItem();
        jSeparator7 = new javax.swing.JSeparator();
        jMenuItem17 = new javax.swing.JMenuItem();
        jMenuItem18 = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();
        jMenuItem25 = new javax.swing.JMenuItem();
        jMenu1 = new javax.swing.JMenu();
        jMenuItem19 = new javax.swing.JMenuItem();
        jMenuItem20 = new javax.swing.JMenuItem();
        jMenuItem21 = new javax.swing.JMenuItem();
        jSeparator8 = new javax.swing.JSeparator();
        jMenuItem22 = new javax.swing.JMenuItem();
        jMenuItem23 = new javax.swing.JMenuItem();
        jMenuItem24 = new javax.swing.JMenuItem();
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
        jSeparator1 = new javax.swing.JSeparator();
        jMenuItem9 = new javax.swing.JMenuItem();
        jSeparator9 = new javax.swing.JSeparator();
        jMenuItem26 = new javax.swing.JMenuItem();
        jMenuItem29 = new javax.swing.JMenuItem();
        jMenuItem28 = new javax.swing.JMenuItem();
        jMenuItem27 = new javax.swing.JMenuItem();
        jMenuItem30 = new javax.swing.JMenuItem();
        jMenuItem31 = new javax.swing.JMenuItem();
        jMenuItem32 = new javax.swing.JMenuItem();
        jmiShellComands = new javax.swing.JMenuItem();
        jSeparator10 = new javax.swing.JSeparator();
        jMenuItem33 = new javax.swing.JMenuItem();
        helpMenu = new javax.swing.JMenu();
        contentMenuItem = new javax.swing.JMenuItem();
        aboutMenuItem = new javax.swing.JMenuItem();
        jMenuItem1 = new javax.swing.JMenuItem();
        programMenu = new javax.swing.JMenu();
        jMenuItem4 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415   \u041c\u041e\u0414\u0423\u041b: '\u0421\u041a\u041b\u0410\u0414 / \u041f\u0420\u041e\u0414\u0410\u0416\u0411\u0418'");
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

        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Group 4_ps.png")));
        jButton2.setToolTipText("\u041b\u0438\u0446\u0430");
        jButton2.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Group 4.png")));
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton2);

        jButton5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Contact_ps.png")));
        jButton5.setToolTipText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        jButton5.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Contact.png")));
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton5);

        jButton6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Objects 2_large_ps.png")));
        jButton6.setToolTipText("\u041f\u0440\u043e\u0434\u0443\u043a\u0442\u0438");
        jButton6.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Objects 2_large.png")));
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton6);

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/basket_put_16.png")));
        jButton1.setToolTipText("\u041f\u0440\u043e\u0434\u0430\u0436\u0431\u0430 (\u0421\u0442\u043e\u043a\u043e\u0432\u0430 \u0440\u0430\u0437\u043f\u0438\u0441\u043a\u0430)");
        jButton1.setMaximumSize(new java.awt.Dimension(45, 43));
        jButton1.setMinimumSize(new java.awt.Dimension(45, 43));
        jButton1.setPreferredSize(new java.awt.Dimension(45, 43));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton1);

        jButton7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/sum_16.png")));
        jButton7.setToolTipText("\u0414\u0430\u043d\u044a\u0447\u043d\u0430 \u0444\u0430\u043a\u0442\u0443\u0440\u0430");
        jButton7.setMaximumSize(new java.awt.Dimension(45, 43));
        jButton7.setMinimumSize(new java.awt.Dimension(45, 43));
        jButton7.setPreferredSize(new java.awt.Dimension(45, 43));
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton7);

        jButton8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/cart_add_16.png")));
        jButton8.setToolTipText("\u041f\u0440\u0438\u0435\u043c\u0430\u0442\u0435\u043b\u043d\u0430 \u0440\u0430\u0437\u043f\u0438\u0441\u043a\u0430");
        jButton8.setMaximumSize(new java.awt.Dimension(45, 43));
        jButton8.setMinimumSize(new java.awt.Dimension(45, 43));
        jButton8.setPreferredSize(new java.awt.Dimension(45, 43));
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton8);

        jButton9.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/cart_go_16.png")));
        jButton9.setToolTipText("\u041d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0435 \u0437\u0430 \u043f\u0440\u0435\u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435");
        jButton9.setMaximumSize(new java.awt.Dimension(45, 43));
        jButton9.setMinimumSize(new java.awt.Dimension(45, 43));
        jButton9.setPreferredSize(new java.awt.Dimension(45, 43));
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton9);

        jButton10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/rosette_16.png")));
        jButton10.setToolTipText("\u041e\u0444\u0435\u0440\u0442\u0430");
        jButton10.setMaximumSize(new java.awt.Dimension(45, 43));
        jButton10.setMinimumSize(new java.awt.Dimension(45, 43));
        jButton10.setPreferredSize(new java.awt.Dimension(45, 43));
        jButton10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton10ActionPerformed(evt);
            }
        });

        jToolBar1.add(jButton10);

        jButton4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Download_ps.png")));
        jButton4.setToolTipText("\u041e\u0431\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435");
        jButton4.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Download.png")));
        jToolBar1.add(jButton4);

        jButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Help File_ps.png")));
        jButton3.setToolTipText("\u041f\u043e\u043c\u043e\u0449");
        jButton3.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Help File.png")));
        jToolBar1.add(jButton3);

        jComboBox1.setToolTipText("\u041f\u0440\u0435\u0434\u0435\u0444\u0438\u043d\u0438\u0440\u0430\u043d\u0438 \u0441\u043f\u0440\u0430\u0432\u043a\u0438");

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(100, Short.MAX_VALUE)
                .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 179, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jToolBar1.add(jPanel1);

        getContentPane().add(jToolBar1, java.awt.BorderLayout.NORTH);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jPanel2.setPreferredSize(new java.awt.Dimension(100, 27));
        jlUserStatus.setForeground(new java.awt.Color(102, 102, 102));
        jlUserStatus.setText("\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b: ");

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Contact16.png")));
        jLabel1.setText("\u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442");

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Objects 2.png")));
        jLabel2.setText("\u043f\u0440\u043e\u0434\u0443\u043a\u0442");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jlUserStatus, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 297, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel1)
                .add(1, 1, 1)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 93, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel2)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 92, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(96, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jlUserStatus, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 23, Short.MAX_VALUE)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel1)
                .add(jLabel2)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        programMenu.setFont(menuFont);
        docMenu.setText("\u0414\u041e\u041a\u0423\u041c\u0415\u041d\u0422\u0418");
        docMenu_prod.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/basket_put_16.png")));
        docMenu_prod.setText("\u041f\u0440\u043e\u0434\u0430\u0436\u0431\u0438");
        docMenu_prod.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                docMenu_prodActionPerformed(evt);
            }
        });

        docMenu.add(docMenu_prod);

        docMenu_fak.setText("\u0424\u0430\u043a\u0442\u0443\u0440\u0438");
        fakMenu_dan.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/sum_16.png")));
        fakMenu_dan.setText("\u0414\u0430\u043d\u044a\u0447\u043d\u0438");
        fakMenu_dan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                fakMenu_danActionPerformed(evt);
            }
        });

        docMenu_fak.add(fakMenu_dan);

        fakMenu_opr.setText("\u041e\u043f\u0440\u043e\u0441\u0442\u0435\u043d\u0438");
        fakMenu_opr.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                fakMenu_oprActionPerformed(evt);
            }
        });

        docMenu_fak.add(fakMenu_opr);

        docMenu.add(docMenu_fak);

        docMenu_razp.setText("\u0420\u0430\u0437\u043f\u0438\u0441\u043a\u0438");
        razpMenu_pol.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/cart_add_16.png")));
        razpMenu_pol.setText("\u041f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u043d\u0435");
        razpMenu_pol.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                razpMenu_polActionPerformed(evt);
            }
        });

        docMenu_razp.add(razpMenu_pol);

        razpMenu_prehv.setText("\u041f\u0440\u0435\u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435");
        razpMenu_prehv.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                razpMenu_prehvActionPerformed(evt);
            }
        });

        docMenu_razp.add(razpMenu_prehv);

        razMenu_vryst.setText("\u0412\u0440\u044a\u0449\u0430\u043d\u0435");
        razMenu_vryst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                razMenu_vrystActionPerformed(evt);
            }
        });

        docMenu_razp.add(razMenu_vryst);

        docMenu.add(docMenu_razp);

        docMenu_nar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/cart_go_16.png")));
        docMenu_nar.setText("\u041d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0435");
        docMenu_nar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                docMenu_narActionPerformed(evt);
            }
        });

        docMenu.add(docMenu_nar);

        docMenu_prot.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438");
        protMenu_rev.setText("\u0420\u0435\u0432\u0438\u0437\u0438\u044f");
        docMenu_prot.add(protMenu_rev);

        protMenu_brak.setText("\u0411\u0440\u0430\u043a");
        protMenu_brak.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                protMenu_brakActionPerformed(evt);
            }
        });

        docMenu_prot.add(protMenu_brak);

        protMenu_lipsa.setText("\u041b\u0438\u043f\u0441\u0430");
        protMenu_lipsa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                protMenu_lipsaActionPerformed(evt);
            }
        });

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

        docMenu_offer.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/rosette_16.png")));
        docMenu_offer.setText("\u041e\u0444\u0435\u0440\u0442\u0438");
        docMenu_offer.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                docMenu_offerActionPerformed(evt);
            }
        });

        docMenu.add(docMenu_offer);

        menuBar.add(docMenu);

        kasiIbankiMenu.setText("\u041a\u0410\u0421\u0418 \u0438 \u0411\u0410\u041d\u041a\u0418");
        kasaMenu_order.setText("\u041e\u0440\u0434\u0435\u0440\u0438");
        orderMenu_prih.setText("\u041f\u0440\u0438\u0445\u043e\u0434\u043d\u0438");
        orderMenu_prih.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                orderMenu_prihActionPerformed(evt);
            }
        });

        kasaMenu_order.add(orderMenu_prih);

        orderMenu_razh.setText("\u0420\u0430\u0437\u0445\u043e\u0434\u043d\u0438");
        orderMenu_razh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                orderMenu_razhActionPerformed(evt);
            }
        });

        kasaMenu_order.add(orderMenu_razh);

        kasiIbankiMenu.add(kasaMenu_order);

        kasaMOLMenu.setText("\u041f\u043e\u0434\u043e\u0442\u0447\u0435\u0442\u043d\u0438 \u043b\u0438\u0446\u0430");
        kasaAvansMenu.setText("\u0410\u0432\u0430\u043d\u0441");
        kasaAvansMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kasaAvansMenuActionPerformed(evt);
            }
        });

        kasaMOLMenu.add(kasaAvansMenu);

        kasaAvansOt4etMenu.setText("\u0410\u0432\u0430\u043d\u0441\u043e\u0432 \u043e\u0442\u0447\u0435\u0442");
        kasaAvansOt4etMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kasaAvansOt4etMenuActionPerformed(evt);
            }
        });

        kasaMOLMenu.add(kasaAvansOt4etMenu);

        kasiIbankiMenu.add(kasaMOLMenu);

        kasaMenu_dvi.setText("\u0414\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u043c\u0435\u0436\u0434\u0443 \u043a\u0430\u0441\u0438");
        kasaMenu_dvi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kasaMenu_dviActionPerformed(evt);
            }
        });

        kasiIbankiMenu.add(kasaMenu_dvi);

        kasaMenu_nal.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442 \u0432 \u043a\u0430\u0441\u0438");
        kasaMenu_nal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kasaMenu_nalActionPerformed(evt);
            }
        });

        kasiIbankiMenu.add(kasaMenu_nal);

        kasaMenu_opis.setText("\u041e\u043f\u0438\u0441\u0432\u0430\u043d\u0435 \u043d\u0430 \u043a\u0443\u043f\u044e\u0440\u0438");
        kasaMenu_opis.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kasaMenu_opisActionPerformed(evt);
            }
        });

        kasiIbankiMenu.add(kasaMenu_opis);

        kasiIbankiMenu.add(jSeparator11);

        bankaMenu_orderi.setText("\u041f\u043b\u0430\u0442\u0435\u0436\u043d\u0438 \u043d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0438\u044f");
        bankaMenu_orderi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bankaMenu_orderiActionPerformed(evt);
            }
        });

        kasiIbankiMenu.add(bankaMenu_orderi);

        menuBar.add(kasiIbankiMenu);

        nomMenu.setText("\u041d\u041e\u041c\u0415\u041d\u041a\u041b\u0410\u0422\u0423\u0420\u0418");
        nomMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenuActionPerformed(evt);
            }
        });

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

        nomMenu_Kontragenti.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        kontragentiMenu_groupe.setText("\u0413\u0440\u0443\u043f\u0438 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
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

        nomMenu_stock.setText("\u0421\u0442\u043e\u043a\u043e\u0432\u0438");
        stock_Menu_group_stock.setText("\u0413\u0440\u0443\u043f\u0438 \u0441\u0442\u043e\u043a\u0438");
        stock_Menu_group_stock.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stock_Menu_group_stockActionPerformed(evt);
            }
        });

        nomMenu_stock.add(stock_Menu_group_stock);

        stock_Menu_stock.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Objects 2.png")));
        stock_Menu_stock.setText("\u0421\u0442\u043e\u043a\u0438");
        stock_Menu_stock.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stock_Menu_stockActionPerformed(evt);
            }
        });

        nomMenu_stock.add(stock_Menu_stock);

        nomMenu.add(nomMenu_stock);

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

        nomMenu.add(jSeparator3);

        nomMenu_Geo.setText("\u0413\u0435\u043e\u0433\u0440\u0430\u0444\u0441\u043a\u0438");
        nomMenu_nasm.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u0438 \u043c\u0435\u0441\u0442\u0430");
        nomMenu_nasm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenu_nasmActionPerformed(evt);
            }
        });

        nomMenu_Geo.add(nomMenu_nasm);

        nomMenu_obl.setText("\u041e\u0431\u043b\u0430\u0441\u0442\u0438");
        nomMenu_obl.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenu_oblActionPerformed(evt);
            }
        });

        nomMenu_Geo.add(nomMenu_obl);

        nomMenu_con.setText("\u0414\u044a\u0440\u0436\u0430\u0432\u0438");
        nomMenu_con.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenu_conActionPerformed(evt);
            }
        });

        nomMenu_Geo.add(nomMenu_con);

        nomMenu.add(nomMenu_Geo);

        nomMenu.add(jSeparator4);

        nomALevel.setText("\u0410\u043d\u0430\u043b\u0438\u0442\u0438\u0447\u043d\u0438 \u043d\u0438\u0432\u0430");
        nomALevel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomALevelActionPerformed(evt);
            }
        });

        nomMenu.add(nomALevel);

        nomDisband.setText("\u0420\u0430\u0437\u0444\u0430\u0441\u043e\u0432\u043a\u0438");
        nomDisband.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomDisbandActionPerformed(evt);
            }
        });

        nomMenu.add(nomDisband);

        nomMenu.add(jSeparator12);

        nomMitProduct.setText("\u041f\u0440\u043e\u0434\u0443\u043a\u0442\u0438 \u0441 \u041c\u0438\u0442\u043d\u0438\u0447\u0435\u0441\u043a\u0438 \u0442\u0430\u0440\u0438\u0444\u0438");
        nomMenu.add(nomMitProduct);

        menuBar.add(nomMenu);

        sprMenu.setText("\u0421\u041f\u0420\u0410\u0412\u041a\u0418");
        spravkiMenu_nal_simpl.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442 \u043e\u043f\u0440\u043e\u0441\u0442\u0435\u043d\u0430");
        spravkiMenu_nal_simpl.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                spravkiMenu_nal_simplActionPerformed(evt);
            }
        });

        sprMenu.add(spravkiMenu_nal_simpl);

        spravkiMenu_nal.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442");
        spravkiMenu_nal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                spravkiMenu_nalActionPerformed(evt);
            }
        });

        sprMenu.add(spravkiMenu_nal);

        spravkiMenu_nal_ext.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442 \u0440\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0430");
        sprMenu.add(spravkiMenu_nal_ext);

        sprMenu.add(jSeparator13);

        jMenuItem15.setText("\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0441\u0440\u043e\u043a\u043e\u0432\u0435 \u043d\u0430 \u0433\u043e\u0434\u043d\u043e\u0441\u0442");
        jMenuItem15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem15ActionPerformed(evt);
            }
        });

        sprMenu.add(jMenuItem15);

        jMenuItem14.setText("\u041f\u0440\u043e\u0434\u0430\u0436\u0431\u0438");
        sprMenu.add(jMenuItem14);

        jMenuItem10.setText("\u041f\u0440\u043e\u0444\u0438\u043b \u043d\u0430 \u0421\u0442\u043e\u043a\u0430");
        sprMenu.add(jMenuItem10);

        jMenuItem35.setText("\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u043d\u0438 \u043a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u0430 \u043d\u0430 \u0441\u0442\u043e\u043a\u0438");
        jMenuItem35.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem35ActionPerformed(evt);
            }
        });

        sprMenu.add(jMenuItem35);

        jMenuItem36.setText("\u0420\u0435\u0430\u043b\u0438\u0437\u0438\u0440\u0430\u043d\u0430 \u0440\u0435\u043d\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442");
        jMenuItem36.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem36ActionPerformed(evt);
            }
        });

        sprMenu.add(jMenuItem36);

        jMenuItem34.setText("\u0417\u0430\u043b\u043e\u0436\u0435\u043d\u0430 \u043f\u0440\u043e\u0434\u0443\u043a\u0442\u043e\u0432\u0430 \u0440\u0435\u043d\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442");
        sprMenu.add(jMenuItem34);

        balansMenu.setText("\u0411\u0430\u043b\u0430\u043d\u0441\u0438");
        balansMenu_stock.setText("\u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0435\u043d");
        balansMenu.add(balansMenu_stock);

        balansMenu_kol.setText("\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u0435\u043d");
        balansMenu.add(balansMenu_kol);

        sprMenu.add(balansMenu);

        jMenu3.setText("\u0414\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        spravkiMenu_doc.setText("\u0414\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        spravkiMenu_doc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                spravkiMenu_docActionPerformed(evt);
            }
        });

        jMenu3.add(spravkiMenu_doc);

        fakturiMenu.setText("\u0424\u0430\u043a\u0442\u0443\u0440\u0438");
        fakturiMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                fakturiMenuActionPerformed(evt);
            }
        });

        jMenu3.add(fakturiMenu);

        sprMenu.add(jMenu3);

        sprMenu.add(jSeparator2);

        jmPayments.setText("\u0420\u0430\u0437\u043f\u043b\u0430\u0449\u0430\u043d\u0438\u044f");
        jmiReportContragentPayments.setText("\u041f\u043e \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        jmiReportContragentPayments.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jmiReportContragentPaymentsActionPerformed(evt);
            }
        });

        jmPayments.add(jmiReportContragentPayments);

        jmiReportContragentGroupsPayments.setText("\u041f\u043e \u0433\u0440\u0443\u043f\u0438 \u043e\u0442 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        jmiReportContragentGroupsPayments.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jmiReportContragentGroupsPaymentsActionPerformed(evt);
            }
        });

        jmPayments.add(jmiReportContragentGroupsPayments);

        sprMenu.add(jmPayments);

        jmDebts.setText("\u0417\u0430\u0434\u044a\u043b\u0436\u0435\u043d\u0438\u044f");
        jmiReportContragentDebts.setText("\u041f\u043e \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        jmiReportContragentDebts.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jmiReportContragentDebtsActionPerformed(evt);
            }
        });

        jmDebts.add(jmiReportContragentDebts);

        jmiReportContragentGroupsDebts.setText("\u041f\u043e \u0433\u0440\u0443\u043f\u0438 \u043e\u0442 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438");
        jmiReportContragentGroupsDebts.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jmiReportContragentGroupsDebtsActionPerformed(evt);
            }
        });

        jmDebts.add(jmiReportContragentGroupsDebts);

        sprMenu.add(jmDebts);

        sprMenu.add(jSeparator5);

        jMenuItem13.setText("\u0414\u0414\u0421 \u0434\u043d\u0435\u0432\u043d\u0438\u0446\u0438");
        sprMenu.add(jMenuItem13);

        sprMenu.add(jSeparator6);

        jMenuItem16.setText("\u0422\u044a\u0440\u0436\u0438\u0449\u0435\u043d \u0434\u043d\u0435\u0432\u043d\u0438\u043a");
        sprMenu.add(jMenuItem16);

        sprMenu.add(jSeparator7);

        jMenuItem17.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u043d\u0438\u043c\u043a\u0430 \u043d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442");
        sprMenu.add(jMenuItem17);

        jMenuItem18.setText("\u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442 \u043f\u043e \u0441\u043d\u0438\u043c\u043a\u0430");
        sprMenu.add(jMenuItem18);

        menuBar.add(sprMenu);

        jMenu2.setText("\u0420\u0415\u0414\u0410\u041a\u0422\u041e\u0420");
        jMenuItem25.setText("\u0421\u0442\u0430\u0440\u0442\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0440\u0435\u0434\u0430\u043a\u0442\u043e\u0440");
        jMenu2.add(jMenuItem25);

        menuBar.add(jMenu2);

        jMenu1.setText("\u0421\u0418\u041d\u0425\u0420\u041e\u041d\u0418\u0417\u0410\u0426\u0418\u042f");
        jMenuItem19.setText("\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f \u043a\u044a\u043c PDA");
        jMenu1.add(jMenuItem19);

        jMenuItem20.setText("\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f \u043e\u0442 PDA");
        jMenu1.add(jMenuItem20);

        jMenuItem21.setText("\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043d\u0430 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u0437\u0430 PDA");
        jMenu1.add(jMenuItem21);

        jMenu1.add(jSeparator8);

        jMenuItem22.setText("\u0418\u043c\u043f\u043e\u0440\u0442 \u043e\u0442 \u043e\u0442\u0434\u0430\u043b\u0435\u0447\u0435\u043d\u0438 \u0441\u0442\u0430\u043d\u0446\u0438\u0438");
        jMenu1.add(jMenuItem22);

        jMenuItem23.setText("\u0415\u043a\u0441\u043f\u043e\u0440\u0442 \u043a\u044a\u043c \u043e\u0442\u0434\u0430\u043b\u0435\u0447\u0435\u043d\u0438 \u0441\u0442\u0430\u043d\u0446\u0438\u0438");
        jMenu1.add(jMenuItem23);

        jMenuItem24.setText("\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043d\u0430 \u043e\u0442\u0434\u0430\u043b\u0435\u0447\u0435\u043d\u0438 \u0441\u0442\u0430\u043d\u0446\u0438\u0438");
        jMenu1.add(jMenuItem24);

        menuBar.add(jMenu1);

        sluMenu.setText("\u0421\u041b\u0423\u0416\u0415\u0411\u041d\u0418");
        sluMenu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sluMenuActionPerformed(evt);
            }
        });

        jMenuItem3.setText("\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u0424\u0438\u0440\u043c\u0430");
        jMenuItem3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem3ActionPerformed(evt);
            }
        });

        sluMenu.add(jMenuItem3);

        jMenuItem2.setText("\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043d\u0430 \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430");
        sluMenu.add(jMenuItem2);

        nomMenu_DocType.setText("\u0422\u0438\u043f\u043e\u0432\u0435 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        nomMenu_DocType.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nomMenu_DocTypeActionPerformed(evt);
            }
        });

        sluMenu.add(nomMenu_DocType);

        jMenuItem6.setText("\u041d\u043e\u043c\u0435\u0440\u0430\u0446\u0438\u044f \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        jMenuItem6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem6ActionPerformed(evt);
            }
        });

        sluMenu.add(jMenuItem6);

        jMenuItem5.setText("\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0438");
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

        sluMenu.add(jSeparator1);

        jMenuItem9.setText("\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043d\u0430 \u0420\u0435\u0434\u0430\u043a\u0442\u043e\u0440\u0430 \u043d\u0430 \u0441\u043f\u0440\u0430\u0432\u043a\u0438");
        sluMenu.add(jMenuItem9);

        sluMenu.add(jSeparator9);

        jMenuItem26.setText("\u0420\u0435\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u044f \u043d\u0430 \u0431\u0430\u0437\u0430\u0442\u0430");
        sluMenu.add(jMenuItem26);

        jMenuItem29.setText("\u0410\u0440\u0445\u0438\u0432\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        sluMenu.add(jMenuItem29);

        jMenuItem28.setText("\u0418\u043c\u043f\u043b\u0435\u043c\u0435\u043d\u0442\u0430\u0440\u043d\u043e \u0430\u0440\u0445\u0438\u0432\u0438\u0440\u0430\u043d\u0435");
        sluMenu.add(jMenuItem28);

        jMenuItem27.setText("\u041f\u044a\u043b\u043d\u043e \u0430\u0440\u0445\u0438\u0432\u0438\u0440\u0430\u043d\u0435");
        sluMenu.add(jMenuItem27);

        jMenuItem30.setText("\u0414\u044a\u043c\u043f \u043d\u0430 \u0431\u0430\u0437\u0430\u0442\u0430");
        sluMenu.add(jMenuItem30);

        jMenuItem31.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u0438 \u043f\u043e \u0442\u0430\u0431\u043b\u0438\u0446\u0438\u0442\u0435");
        sluMenu.add(jMenuItem31);

        jMenuItem32.setText("\u0411\u0438\u0439\u043d \u0434\u0435\u043f\u043b\u043e\u0435\u0440");
        sluMenu.add(jMenuItem32);

        jmiShellComands.setText("\u041a\u043e\u043c\u0430\u043d\u0434\u0438 \u043a\u044a\u043c \u0414\u0411 \u041e\u0431\u0432\u0438\u0432\u043a\u0430\u0442\u0430");
        jmiShellComands.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jmiShellComandsActionPerformed(evt);
            }
        });

        sluMenu.add(jmiShellComands);

        sluMenu.add(jSeparator10);

        jMenuItem33.setText("\u0412\u044a\u043d\u0448\u043d\u043e\u0441\u0442 \u043d\u0430 \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430");
        sluMenu.add(jMenuItem33);

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
        setBounds((screenSize.width-757)/2, (screenSize.height-463)/2, 757, 463);
    }// </editor-fold>//GEN-END:initComponents
    
    private void spravkiMenu_nal_simplActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_spravkiMenu_nal_simplActionPerformed
        loadReportNalSimplLevel();
    }//GEN-LAST:event_spravkiMenu_nal_simplActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        levelDialog1 = new levelDialog(this, true, 4, stokavaRazpiskaArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.STOKOVA_RAZPISKA;
        int storagedocdacade = numberStorage;
        if(user != -1  && level != -1)
            loadFrmDocFacade("\u0421\u0422\u041e\u041a\u041e\u0412\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410", user, level, pricelist, doctype, storagedocdacade, false, null, null );
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        levelDialog1 = new levelDialog(this,true,202,danFaktArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.FAKTURA_DANACHNA;
        int storagedocdacade = numberStorage;
        System.out.println("Create DAN. Fak");
        System.out.println(isMakeDocByInputData);
        level=3;
        if(user!=-1  && level!=-1) {
            if(!isMakeDocByInputData) {
                dataIn = null;
                dataOut = null;
                
                loadFrmDocFacade("\u0424\u0410\u041a\u0422\u0423\u0420\u0410", user, level, pricelist, doctype, storagedocdacade, isMakeDocByInputData, dataIn, dataOut );
            } else {
                loadFrmDocFacade("\u0424\u0410\u041a\u0422\u0423\u0420\u0410", user, level, pricelist, doctype, storagedocdacade, isMakeDocByInputData, dataIn, dataOut );
            }
        }
    }//GEN-LAST:event_jButton7ActionPerformed
    
    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        levelDialog1 = new levelDialog(this,true,4,priematelnaRazpiskaArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.PRIEMATELNA_RAZPISKA;
        int storagedocdacade = numberStorage;
        if(user!=-1  && level!=-1) {
            loadFrmDocFacade("\u041f\u0420\u0418\u0415\u041c\u0410\u0422\u0415\u041b\u041d\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410", user, level, pricelist, doctype, storagedocdacade, false, null, null );
        }
    }//GEN-LAST:event_jButton8ActionPerformed
    
    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton9ActionPerformed
        levelDialog1 = new levelDialog(this,true,4,narezdaneZaPrehvylqneArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.NAREZDANE_ZA_PREHVYRQNE;
        int storagedocdacade = numberStorage;
        if(user!=-1  && level!=-1) {
            loadFrmDocFacade("\u041d\u0410\u0420\u0415\u0416\u0414\u0410\u041d\u0415 \u0417\u0410 \u041f\u0420\u0415\u0425\u0412\u042a\u0420\u041b\u042f\u041d\u0415", user, level, pricelist, doctype, storagedocdacade, false, null, null );
        }
    }//GEN-LAST:event_jButton9ActionPerformed
    
    private void jButton10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton10ActionPerformed
        levelDialog1 = new levelDialog(this,true,4,ofertaArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.OFERTA;
        int storagedocdacade = numberStorage;
        if(user!=-1  && level!=-1) {
            loadFrmDocFacade("\u041e\u0424\u0415\u0420\u0422\u0410", user, level, pricelist, doctype, storagedocdacade, false, null, null );
        }
    }//GEN-LAST:event_jButton10ActionPerformed
    
    private void jmiShellComandsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jmiShellComandsActionPerformed
        loadDBShellDialog();
    }//GEN-LAST:event_jmiShellComandsActionPerformed
    
    private void jmiReportContragentGroupsPaymentsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jmiReportContragentGroupsPaymentsActionPerformed
        loadGroupPaymentsReportLevel();
    }//GEN-LAST:event_jmiReportContragentGroupsPaymentsActionPerformed
    
    private void jmiReportContragentGroupsDebtsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jmiReportContragentGroupsDebtsActionPerformed
        loadGroupDebtsReportLevel();
    }//GEN-LAST:event_jmiReportContragentGroupsDebtsActionPerformed
    
    private void jmiReportContragentPaymentsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jmiReportContragentPaymentsActionPerformed
        loadPaymentsReportLevel();
    }//GEN-LAST:event_jmiReportContragentPaymentsActionPerformed
    
    private void jmiReportContragentDebtsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jmiReportContragentDebtsActionPerformed
        loadDebtsReportLevel();
    }//GEN-LAST:event_jmiReportContragentDebtsActionPerformed
    
    private void fakturiMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_fakturiMenuActionPerformed
        loadFakturiReport();
    }//GEN-LAST:event_fakturiMenuActionPerformed
    
    private void nomDisbandActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nomDisbandActionPerformed
        loadDisband();
    }//GEN-LAST:event_nomDisbandActionPerformed
    
    private void nomALevelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nomALevelActionPerformed
        loadAnLevel();
    }//GEN-LAST:event_nomALevelActionPerformed
    
    private void kasaMenu_opisActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kasaMenu_opisActionPerformed
        loadCopiuri();
    }//GEN-LAST:event_kasaMenu_opisActionPerformed
    
    private void razMenu_vrystActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_razMenu_vrystActionPerformed
        levelDialog1 = new levelDialog(this, true, 4, razpiskaVryshtane);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.RAZPISKA_ZA_VRYSHTANE;
        int storagedocdacade = numberStorage;
        if(user != -1 && level != -1)
            loadFrmDocFacade("\u0420\u0430\u0437\u043F\u0438\u0441\u043A\u0430 \u0437\u0430 \u0432\u0440\u044A\u0449\u0430\u043D\u0435", user, level, pricelist, doctype, storagedocdacade, false, null, null );
    }//GEN-LAST:event_razMenu_vrystActionPerformed
    
    private void docMenu_prodActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_docMenu_prodActionPerformed
        levelDialog1 = new levelDialog(this, true, 4, stokavaRazpiskaArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.STOKOVA_RAZPISKA;
        int storagedocdacade = numberStorage;
        if(user != -1  && level != -1)
            loadFrmDocFacade("\u0421\u0422\u041e\u041a\u041e\u0412\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410", user, level, pricelist, doctype, storagedocdacade, false, null, null );
    }//GEN-LAST:event_docMenu_prodActionPerformed
    
    private void jMenuItem3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem3ActionPerformed
        loadSlujParam();
    }//GEN-LAST:event_jMenuItem3ActionPerformed
    
    private void bankaMenu_orderiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bankaMenu_orderiActionPerformed
        this.loadPayingOrdersForm();
    }//GEN-LAST:event_bankaMenu_orderiActionPerformed
    
    private void balansMenu_kolActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_balansMenu_kolActionPerformed
        this.loadReportKolBalanceLevel();
    }//GEN-LAST:event_balansMenu_kolActionPerformed
    
    private void jMenuItem36ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem36ActionPerformed
        this.loadReportFRentabilnostLevel();
    }//GEN-LAST:event_jMenuItem36ActionPerformed
    
    private void jMenuItem35ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem35ActionPerformed
        this.loadReportStockOutLevel();
    }//GEN-LAST:event_jMenuItem35ActionPerformed
    
    private void jMenuItem15ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem15ActionPerformed
        this.loadReportParcelDateLevel();
    }//GEN-LAST:event_jMenuItem15ActionPerformed
    
    private void protMenu_lipsaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_protMenu_lipsaActionPerformed
        levelDialog1 = new levelDialog(this,true,4,lipsaArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.PROTOKOL_LIPSA;
        int storagedocdacade = 1;
        if(user!=-1  && level!=-1) {
            loadFrmDocFacade("\u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b \u0417\u0410 \u041b\u0418\u041f\u0421\u0410", user, level, pricelist, doctype, storagedocdacade, false, null, null );
        }
    }//GEN-LAST:event_protMenu_lipsaActionPerformed
    
    private void protMenu_brakActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_protMenu_brakActionPerformed
        levelDialog1 = new levelDialog(this,true,4,brakArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.BRAK;
        int storagedocdacade = numberStorage;
        if(user!=-1  && level!=-1) {
            loadFrmDocFacade("\u041f\u0420\u041e\u0422\u041e\u041a\u041e\u041b \u0417\u0410 \u0411\u0420\u0410\u041a", user, level, pricelist, doctype, storagedocdacade, false, null, null );
        }
    }//GEN-LAST:event_protMenu_brakActionPerformed
    
    private void spravkiMenu_docActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_spravkiMenu_docActionPerformed
        loadReportDocsLevel();
    }//GEN-LAST:event_spravkiMenu_docActionPerformed
    
    private void kasaMenu_nalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kasaMenu_nalActionPerformed
        loadCasaM();
    }//GEN-LAST:event_kasaMenu_nalActionPerformed
    
    private void kasaMenu_dviActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kasaMenu_dviActionPerformed
        this.loadLevelC2C();
    }//GEN-LAST:event_kasaMenu_dviActionPerformed
    
    private void kasaAvansOt4etMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kasaAvansOt4etMenuActionPerformed
        
    }//GEN-LAST:event_kasaAvansOt4etMenuActionPerformed
    
    private void kasaAvansMenuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kasaAvansMenuActionPerformed
        this.loadLevelAdveances();
    }//GEN-LAST:event_kasaAvansMenuActionPerformed
    
    private void docMenu_narActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_docMenu_narActionPerformed
        levelDialog1 = new levelDialog(this,true,4,narezdaneZaPrehvylqneArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.NAREZDANE_ZA_PREHVYRQNE;
        int storagedocdacade = numberStorage;
        if(user!=-1  && level!=-1) {
            loadFrmDocFacade("\u041d\u0410\u0420\u0415\u0416\u0414\u0410\u041d\u0415 \u0417\u0410 \u041f\u0420\u0415\u0425\u0412\u042a\u0420\u041b\u042f\u041d\u0415", user, level, pricelist, doctype, storagedocdacade, false, null, null );
        }
    }//GEN-LAST:event_docMenu_narActionPerformed
    
    private void razpMenu_polActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_razpMenu_polActionPerformed
        levelDialog1 = new levelDialog(this,true,4,priematelnaRazpiskaArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.PRIEMATELNA_RAZPISKA;
        int storagedocdacade = numberStorage;
        if(user!=-1  && level!=-1) {
            loadFrmDocFacade("\u041f\u0420\u0418\u0415\u041c\u0410\u0422\u0415\u041b\u041d\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410", user, level, pricelist, doctype, storagedocdacade, false, null, null );
        }
    }//GEN-LAST:event_razpMenu_polActionPerformed
    
    private void orderMenu_razhActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_orderMenu_razhActionPerformed
        this.loadLeveCasiOut();
    }//GEN-LAST:event_orderMenu_razhActionPerformed
    
    private void docMenu_offerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_docMenu_offerActionPerformed
        levelDialog1 = new levelDialog(this,true,4,ofertaArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.OFERTA;
        int storagedocdacade = numberStorage;
        if(user!=-1  && level!=-1) {
            loadFrmDocFacade("\u041e\u0424\u0415\u0420\u0422\u0410", user, level, pricelist, doctype, storagedocdacade, false, null, null );
        }
    }//GEN-LAST:event_docMenu_offerActionPerformed
    
    private void razpMenu_prehvActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_razpMenu_prehvActionPerformed
        
    }//GEN-LAST:event_razpMenu_prehvActionPerformed
    
    private void fakMenu_oprActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_fakMenu_oprActionPerformed
        levelDialog1 = new levelDialog(this,true,4,oprFaktArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.FAKTURA_OPROSTENA;
        int storagedocdacade = numberStorage;
        System.out.println("Create opr. Fak");
        System.out.println(isMakeDocByInputData);
        if(user!=-1  && level!=-1) {
            if(!isMakeDocByInputData) {
                dataIn = null;
                dataOut = null;
                level=3;
                loadFrmDocFacade("\u0424\u0410\u041a\u0422\u0423\u0420\u0410", user, level, pricelist, doctype, storagedocdacade, isMakeDocByInputData, dataIn, dataOut );
            } else {
                loadFrmDocFacade("\u0424\u0410\u041a\u0422\u0423\u0420\u0410", user, level, pricelist, doctype, storagedocdacade, isMakeDocByInputData, dataIn, dataOut );
            }
        }
    }//GEN-LAST:event_fakMenu_oprActionPerformed
    
    private void fakMenu_danActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_fakMenu_danActionPerformed
        
        levelDialog1 = new levelDialog(this,true,202,danFaktArea);
        levelDialog1.setVisible(true);
        int user = userID_ndtur; //2;
        int level = levelForWork;// 1;
        int pricelist = 1;
        int doctype = aeDocumentFacade.FAKTURA_DANACHNA;
        int storagedocdacade = numberStorage;
        System.out.println("Create DAN. Fak");
        System.out.println(isMakeDocByInputData);
        level=3;
        if(user!=-1  && level!=-1) {
            if(!isMakeDocByInputData) {
                dataIn = null;
                dataOut = null;
                
                loadFrmDocFacade("\u0424\u0410\u041a\u0422\u0423\u0420\u0410", user, level, pricelist, doctype, storagedocdacade, isMakeDocByInputData, dataIn, dataOut );
            } else {
                loadFrmDocFacade("\u0424\u0410\u041a\u0422\u0423\u0420\u0410", user, level, pricelist, doctype, storagedocdacade, isMakeDocByInputData, dataIn, dataOut );
            }
        }
        
    }//GEN-LAST:event_fakMenu_danActionPerformed
    
    private void orderMenu_prihActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_orderMenu_prihActionPerformed
        loadLevelKasi();
    }//GEN-LAST:event_orderMenu_prihActionPerformed
    
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
        loadImport();
    }//GEN-LAST:event_jMenuItem7ActionPerformed
    
    private void jMenuItem6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem6ActionPerformed
        loadNumDocuments();
    }//GEN-LAST:event_jMenuItem6ActionPerformed
    
    private void spravkiMenu_nalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_spravkiMenu_nalActionPerformed
        loadReportNalLevel();
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
        loadFrmContragent();
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
    
    private void kontragentiMenu_KontrActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kontragentiMenu_KontrActionPerformed
        loadFrmContragent();
    }//GEN-LAST:event_kontragentiMenu_KontrActionPerformed
    
    private void moneyMenu_groupeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_moneyMenu_groupeActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0418 \u041f\u0410\u0420\u0418\u0427\u041d\u0418", ID_MONEY);
    }//GEN-LAST:event_moneyMenu_groupeActionPerformed
    
    private void kasiMenu_grupiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kasiMenu_grupiActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0418 \u041a\u0410\u0421\u0410",ID_KASA);
    }//GEN-LAST:event_kasiMenu_grupiActionPerformed
    
    private void objectMenu_groupe_objectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_objectMenu_groupe_objectActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0418 \u0421\u041a\u041b\u0410\u0414\u041e\u0412\u0415", ID_OBJECT);
    }//GEN-LAST:event_objectMenu_groupe_objectActionPerformed
    
    private void litsaMenu_groupe_litsaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_litsaMenu_groupe_litsaActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0418 \u041b\u0418\u0426\u0410",ID_LICA);
    }//GEN-LAST:event_litsaMenu_groupe_litsaActionPerformed
    
    private void kontragentiMenu_groupeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kontragentiMenu_groupeActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0418 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422\u0418", ID_CONTRAGENT);
    }//GEN-LAST:event_kontragentiMenu_groupeActionPerformed
    
    private void aktiviMenu_grupiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_aktiviMenu_grupiActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0418 \u0410\u041a\u0422\u0418\u0412\u0418", ID_AKTIVI);
    }//GEN-LAST:event_aktiviMenu_grupiActionPerformed
    
    private void stock_Menu_group_stockActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_stock_Menu_group_stockActionPerformed
        loadFrmGroup("\u0413\u0420\u0423\u041f\u0418 \u0421\u0422\u041e\u041a\u0418", ID_STOCK);
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
    private javax.swing.JMenuItem bankaMenu_orderi;
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
    private javax.swing.JMenuItem fakturiMenu;
    private javax.swing.JMenu helpMenu;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem10;
    private javax.swing.JMenuItem jMenuItem13;
    private javax.swing.JMenuItem jMenuItem14;
    private javax.swing.JMenuItem jMenuItem15;
    private javax.swing.JMenuItem jMenuItem16;
    private javax.swing.JMenuItem jMenuItem17;
    private javax.swing.JMenuItem jMenuItem18;
    private javax.swing.JMenuItem jMenuItem19;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem20;
    private javax.swing.JMenuItem jMenuItem21;
    private javax.swing.JMenuItem jMenuItem22;
    private javax.swing.JMenuItem jMenuItem23;
    private javax.swing.JMenuItem jMenuItem24;
    private javax.swing.JMenuItem jMenuItem25;
    private javax.swing.JMenuItem jMenuItem26;
    private javax.swing.JMenuItem jMenuItem27;
    private javax.swing.JMenuItem jMenuItem28;
    private javax.swing.JMenuItem jMenuItem29;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JMenuItem jMenuItem30;
    private javax.swing.JMenuItem jMenuItem31;
    private javax.swing.JMenuItem jMenuItem32;
    private javax.swing.JMenuItem jMenuItem33;
    private javax.swing.JMenuItem jMenuItem34;
    private javax.swing.JMenuItem jMenuItem35;
    private javax.swing.JMenuItem jMenuItem36;
    private javax.swing.JMenuItem jMenuItem4;
    private javax.swing.JMenuItem jMenuItem5;
    private javax.swing.JMenuItem jMenuItem6;
    private javax.swing.JMenuItem jMenuItem7;
    private javax.swing.JMenuItem jMenuItem8;
    private javax.swing.JMenuItem jMenuItem9;
    private javax.swing.JMenuItem jMenuItem9DTUR;
    private javax.swing.JMenu jMenuTransfer;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator10;
    private javax.swing.JSeparator jSeparator11;
    private javax.swing.JSeparator jSeparator12;
    private javax.swing.JSeparator jSeparator13;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JSeparator jSeparator4;
    private javax.swing.JSeparator jSeparator5;
    private javax.swing.JSeparator jSeparator6;
    private javax.swing.JSeparator jSeparator7;
    private javax.swing.JSeparator jSeparator8;
    private javax.swing.JSeparator jSeparator9;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JToolBar jToolBar1;
    private javax.swing.JLabel jlUserStatus;
    private javax.swing.JMenu jmDebts;
    private javax.swing.JMenu jmPayments;
    private javax.swing.JMenuItem jmiReportContragentDebts;
    private javax.swing.JMenuItem jmiReportContragentGroupsDebts;
    private javax.swing.JMenuItem jmiReportContragentGroupsPayments;
    private javax.swing.JMenuItem jmiReportContragentPayments;
    private javax.swing.JMenuItem jmiShellComands;
    private javax.swing.JMenuItem kasaAvansMenu;
    private javax.swing.JMenuItem kasaAvansOt4etMenu;
    private javax.swing.JMenu kasaMOLMenu;
    private javax.swing.JMenuItem kasaMenu_dvi;
    private javax.swing.JMenuItem kasaMenu_nal;
    private javax.swing.JMenuItem kasaMenu_opis;
    private javax.swing.JMenu kasaMenu_order;
    private javax.swing.JMenu kasiIbankiMenu;
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
    private javax.swing.JMenuItem nomDisband;
    private javax.swing.JMenu nomMenu;
    private javax.swing.JMenu nomMenu_Aktiv;
    private javax.swing.JMenuItem nomMenu_DocType;
    private javax.swing.JMenu nomMenu_Geo;
    private javax.swing.JMenu nomMenu_Kontragenti;
    private javax.swing.JMenu nomMenu_Litsa;
    private javax.swing.JMenuItem nomMenu_con;
    private javax.swing.JMenu nomMenu_kasi;
    private javax.swing.JMenuItem nomMenu_nasm;
    private javax.swing.JMenu nomMenu_object;
    private javax.swing.JMenuItem nomMenu_obl;
    private javax.swing.JMenu nomMenu_stock;
    private javax.swing.JMenuItem nomMitProduct;
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
    private javax.swing.JMenuItem razMenu_vryst;
    private javax.swing.JMenuItem razpMenu_pol;
    private javax.swing.JMenuItem razpMenu_prehv;
    private javax.swing.JMenu sluMenu;
    private javax.swing.JMenu sprMenu;
    private javax.swing.JMenuItem spravkiMenu_doc;
    private javax.swing.JMenuItem spravkiMenu_nal;
    private javax.swing.JMenuItem spravkiMenu_nal_ext;
    private javax.swing.JMenuItem spravkiMenu_nal_simpl;
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
    private levelDialog levelDialog1 ;
    public boolean isStartFrmAnLevel = false;
    public boolean isStartFrmDisband = false;
    private nom.FrmContragent iFrmContragent;
    public boolean isStartFrmContragent = false; // FLAG dali da se startira FrmContagent,
    //promenq se i ot FrmContragent pri zatvarqne
    // na FrmContragent
    private infoFakturi fakturiRep;
    
    private nom.FrmProduct iFrmProduct;
    private static boolean isStartFrmProduct = false;
    
    private boolean levelActivate = false;
    public  static boolean isMakeDocByInputData = false;    //   \
    public  static  java.util.HashMap dataIn;                //    > I/O ot eaDocumentFacade
    public  static  java.util.ArrayList dataOut;             //   /
    private FrmDocumentFacade frmDocumentFacadeDialog;
    
    // private int currentLevel = 1;
    
    private static java.util.LinkedHashMap OrderArea = new java.util.LinkedHashMap(); //stokovi
    private static java.util.LinkedHashMap FaktArea = new java.util.LinkedHashMap(); // fakturi
    private static java.util.LinkedHashMap oprFaktArea = new java.util.LinkedHashMap(); // oprostena fakturi
    private static java.util.LinkedHashMap danFaktArea = new java.util.LinkedHashMap(); // dany4na fakturi
    private static java.util.LinkedHashMap brakArea = new java.util.LinkedHashMap();  // BRAK;
    private static java.util.LinkedHashMap lipsaArea = new java.util.LinkedHashMap();  // LIPSA;
    private static java.util.LinkedHashMap ofertaArea = new java.util.LinkedHashMap();  // OFERTA;
    private static java.util.LinkedHashMap proFormaArea = new java.util.LinkedHashMap();  // PROFORMA_FAKTURA;
    private static java.util.LinkedHashMap narezdaneZaPrehvylqneArea = new java.util.LinkedHashMap();  //NAREZDANE_ZA_PREHVYRQNE;
    private static java.util.LinkedHashMap stokavaRazpiskaArea = new java.util.LinkedHashMap();  // STOKOVA_RAZPISKA;
    private static java.util.LinkedHashMap priematelnaRazpiskaArea = new java.util.LinkedHashMap();  // PRIEMATELNA_RAZPISKA;
    private static java.util.LinkedHashMap razpiskaVryshtane = new java.util.LinkedHashMap();  // RAZPISKA_ZA_VRYSHTANE;
    
    public static int numberStorage = 1;
    
    private static java.util.LinkedHashMap casaInContrArea = new java.util.LinkedHashMap(); // prihodni orderi kasa kontragent
    private static java.util.LinkedHashMap casaOutContrArea = new java.util.LinkedHashMap(); // razhodni orderi kasa kontragent
    private static java.util.LinkedHashMap casaAdvances = new java.util.LinkedHashMap();    // avansi kym podot4etni lica
    private static java.util.LinkedHashMap casa2casa = new java.util.LinkedHashMap();       // dvijenie mejdu kasite
    
    public static int userID_ndtur = 0; // id na usera , koeto e ravno na id_ndtur
    public static int levelForWork = 0; // rabotno nivo
    
    java.net.URL frameIcon = sales_main.class.getResource("/images/imakante_ico.png");
    
    private void loadLevelDialog(int ModuleCode, java.util.LinkedHashMap hash){
        levelDialog lDialog = new levelDialog(this, true, ModuleCode, hash);
        lDialog.setVisible(true);
    }
    
    private void loadConn() {
        dbConn = imakante.com.NewMain.getConnection();
    }
    
    private void loadProba() {
        
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
    public void loadSlujParam(){
        imakante.com.FrmFirmParam firmparam = new imakante.com.FrmFirmParam(this,true,this.getConn());
        
        // desktopPane.add(firmparam);
        firmparam.setVisible(true);
    }
    public void loadRightsArea() {
        System.out.println("loadRightsArea");
        System.out.println("User"+imakante.com.NewMain.getUserId());
        String StrQ = "SELECT n_doc_type_user_rights.id_ndtur, sl_doc_type_num.area_number_sdtn " +
                "FROM n_doc_type_user_rights " +
                "Inner Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = n_doc_type_user_rights.id_sdtn " +
                "Inner Join n_type_doc ON n_type_doc.id_ntd = sl_doc_type_num.id_ntd " +
                "WHERE n_doc_type_user_rights.id_um = " + imakante.com.NewMain.getUserId() +
                " AND n_type_doc.code_ntd = ";
        
        try {
            int i = 0;
            stm = this.dbConn.createStatement();
            rs = stm.executeQuery(StrQ + "'1'");
            while(rs.next()) {
                getOrderArea().put(rs.getInt("id_ndtur"),new String(rs.getString("area_number_sdtn")));
            }
            i = 0;
            rs = stm.executeQuery(StrQ + "'4'");
            while(rs.next()) {
                getFaktArea().put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
            }
            rs = stm.executeQuery(StrQ + "'701'");
            while(rs.next()) {
                casaInContrArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println(" adsds" + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'702'");
            while(rs.next()) {
                casaOutContrArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println(" adsds" + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'703'");
            while(rs.next()) {
                casaAdvances.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("703: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'704'");
            while(rs.next()) {
                casa2casa.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("704: " + rs.getString("area_number_sdtn"));
            }
            //=========
            rs = stm.executeQuery(StrQ + "'800'"); // BRAK
            while(rs.next()) {
                brakArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("BRAK: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'900'"); // LIPSA
            while(rs.next()) {
                lipsaArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("LIPSA: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'1000'"); // OFERTA
            while(rs.next()) {
                ofertaArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("OFERTA: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'10'"); // PROFORMA_FAKTURA
            while(rs.next()) {
                proFormaArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("PROFORMA_FAKTURA: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'500'"); // NAREZDANE_ZA_PREHVYRQNE
            while(rs.next()) {
                narezdaneZaPrehvylqneArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("NAREZDANE_ZA_PREHVYRQNE: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'100'"); // STOKOVA_RAZPISKA
            while(rs.next()) {
                stokavaRazpiskaArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("STOKOVA_RAZPISKA: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'1100'"); // RAZPISKA_ZA_VRYSHTANE
            while(rs.next()) {
                razpiskaVryshtane.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("RAZPISKA_ZA_VRYSHTANE: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'600'"); // PRIEMATELNA_RAZPISKA
            while(rs.next()) {
                priematelnaRazpiskaArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("PRIEMATELNA_RAZPISKA: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'202'"); // dany4na faktura
            while(rs.next()) {
                danFaktArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("FAKTURA - DANYCHNA: " + rs.getString("area_number_sdtn"));
            }
            rs = stm.executeQuery(StrQ + "'201'"); // oprostena faktura
            while(rs.next()) {
                oprFaktArea.put(rs.getInt("id_ndtur"), new String(rs.getString("area_number_sdtn")));
                System.out.println("FAKTURA - OPROSTENA: " + rs.getString("area_number_sdtn"));
            }
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        try {
            rs.close();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        try {
            stm.close();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    //METHODS FOR LOAD FORMS
    /*
     *
     */
    // Prihodni kasowi peracii
    private void loadLevelKasi(){
        if (!this.casaInContrArea.isEmpty()){
            imakante.sales.levelDialog level = new imakante.sales.levelDialog(this, true, 701, casaInContrArea);
            //  desktopPane.add(level);
            level.setVisible(true);
        } else {
            System.out.println("Empty hash");
            imakante.com.MessagePane.MissingBook();
        }
    }
    
    public void loadKassss(int l, int ndt) {
        imakante.sales.FrmCaseOperation cs = new imakante.sales.FrmCaseOperation("\u041f\u0420\u0418\u0425\u041e\u0414\u041d\u0418 \u041e\u0420\u0414\u0415\u0420\u0418", this, l, ndt);
        desktopPane.add(cs);
        cs.setVisible(true);
    }
    // Razhodni kasowi operacii
    private void loadLeveCasiOut(){
        if (!this.casaOutContrArea.isEmpty()) {
            imakante.sales.levelDialog level = new imakante.sales.levelDialog(this, true, 702, casaOutContrArea);
            //  desktopPane.add(level);
            level.setVisible(true);
        } else {
            System.out.println("Empty hash");
            imakante.com.MessagePane.MissingBook();
        }
    }
    
    public void loadCasaOut(int l, int ndt){
        imakante.sales.FrmCaseOperationOut cso = new imakante.sales.FrmCaseOperationOut("\u0420\u0430\u0437\u0445\u043e\u0434\u043d\u0438 \u043a\u0430\u0441\u043e\u0432\u0438 \u043e\u0440\u0434\u0435\u0440\u0438", this, l, ndt);
        desktopPane.add(cso);
        cso.setVisible(true);
    }
    // Awansowi pla6taniq kym podot4etni lica (MOL)
    private void loadLevelAdveances() {
        if (!this.casaAdvances.isEmpty()) {
            imakante.sales.levelDialog level = new imakante.sales.levelDialog(this, true, 703, casaAdvances);
            // desktopPane.add(level);
            level.setVisible(true);
        } else {
            System.out.println("Empty hash!");
            imakante.com.MessagePane.MissingBook();
        }
    }
    
    public void loadAdvances(int l, int ndt) {
        imakante.sales.FrmCaseOpAdvances adv = new imakante.sales.FrmCaseOpAdvances("\u0410\u0432\u0430\u043d\u0441\u043e\u0432\u0438 \u043f\u043b\u0430\u0449\u0430\u043d\u0438\u044f \u043a\u044a\u043c \u041c\u041e\u041b", this, l, ndt);
        desktopPane.add(adv);
        adv.setVisible(true);
    }
    // Dwijenie mejdu kasite
    private void loadLevelC2C() {
        if (!this.casa2casa.isEmpty()) {
            imakante.sales.levelDialog level = new imakante.sales.levelDialog(this, true, 704, casa2casa);
            // desktopPane.add(level);
            level.setVisible(true);
        } else {
            System.out.println("Empty hash!");
            imakante.com.MessagePane.MissingBook();
        }
    }
    
    public void loadC2C(int l, int ndt) {
        imakante.sales.FrmC2COperation c2c = new imakante.sales.FrmC2COperation("\u0414\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u043c\u0435\u0436\u0434\u0443 \u043a\u0430\u0441\u0438\u0442\u0435", this, l, ndt);
        desktopPane.add(c2c);
        c2c.setVisible(true);
    }
    private void loadCasaM(){
        imakante.sales.FrmNalCasa nalcasa = new imakante.sales.FrmNalCasa("\u041d\u0410\u041b\u0418\u0427\u041d\u041e\u0421\u0422 \u041a\u0410\u0421\u0418", this, 1);
        desktopPane.add(nalcasa);
        nalcasa.setVisible(true);
    }
    
    private void loadLevelImport(){
        
    }
    
    private void loadPayingOrdersForm() {
        imakante.sales.FrmPayingOrders porders = new imakante.sales.FrmPayingOrders("\u041f\u043b\u0430\u0442\u0435\u0436\u043d\u0438 \u041d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0438\u044f", this);
        desktopPane.add(porders);
        porders.setVisible(true);
    }
    
    //PRODUCTS
    private void loadFrmProducts() {
        if(!isIsStartFrmProduct()) {
            setIsStartFrmProduct(true);
            iFrmProduct = new nom.FrmProduct("\u041d\u041e\u041c\u0415\u041d\u041a\u041b\u0410\u0422\u0423\u0420\u0410 \u0421\u0422\u041e\u041a\u0418",0, this,0);
            desktopPane.add(iFrmProduct);
            try {
                iFrmProduct.setMaximum(true);
            } catch (java.beans.PropertyVetoException ex) {
                ex.printStackTrace();
            }
            iFrmProduct.setVisible(true);
            
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
    // tipove razhodi
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
    //PARICHNI - EXCHANGE RATE
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
        nom.FrmDoctype DocType = new nom.FrmDoctype("\u0422\u0438\u043F\u043E\u0432\u0435 \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442\u0438", this);
        desktopPane.add(DocType);
        try {
            DocType.setMaximum(true);
        } catch (java.beans.PropertyVetoException ex) { ex.printStackTrace(); }
        DocType.setVisible(true);
    }
    
    private void loadDTUR() {
        nom.FrmDoctypeUserRights DTUR = new nom.FrmDoctypeUserRights("\u041F\u0440\u0430\u0432\u0430 \u0432\u044A\u0440\u0445\u0443 \u043A\u043E\u0447\u0430\u043D\u0438", this);
        desktopPane.add(DTUR);
        try {
            DTUR.setMaximum(true);
        } catch (java.beans.PropertyVetoException pve) {
            System.out.println("Problem setMax");
            pve.printStackTrace(); }
        DTUR.setVisible(true);
    }
    
    private void loadNumDocuments() {
        imakante.sales.FrmNumDoc DocNums = new imakante.sales.FrmNumDoc("\u0422\u0438\u043F\u043E\u0432\u0435 \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442\u0438\u041D\u043E\u043C\u0435\u0440\u0430\u0446\u0438\u044F ", this);
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
    
    private void loadDBShellDialog() {
        String user = "";
        try {
            user = this.getConn().getMetaData().getUserName();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        if (user.startsWith("root") || user.startsWith("imakante")) {
            imakante.com.SQLQueryFetcher shell = new imakante.com.SQLQueryFetcher(this, true);
            desktopPane.add(shell);
            shell.setVisible(true);
        } else
            imakante.com.MessagePane.AdminOnly();
    }
    
// ENCAPS METHODS FORM CONTROL
    public static boolean isIsStartFrmProduct() {
        return isStartFrmProduct;
    }
    
    public static void setIsStartFrmProduct(boolean bool) {
        isStartFrmProduct = bool;
    }
    
    private void loadReportNalSimplLevel(){
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true,9000);
        
        levDSec.setVisible(true);
    }
    public void loadReportNalSimpl(int i) {
        imakante.sales.reportFrmNalSimpl repNalSimpl = new imakante.sales.reportFrmNalSimpl("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442\u0438", this, i);
        desktopPane.add(repNalSimpl);
        repNalSimpl.setVisible(true);
    }
    public void loadReportNal(int i) {
        imakante.sales.reportFrmNal repNal = new imakante.sales.reportFrmNal("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442\u0438", this, i);
        desktopPane.add(repNal);
        repNal.setVisible(true);
    }
    
    private void loadReportNalLevel(){
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true,9001);
        
        levDSec.setVisible(true);
    }
    public void loadReportParcelDate(int i) {
        imakante.sales.reportParcelDate repNal = new imakante.sales.reportParcelDate("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442\u0438", this, i);
        desktopPane.add(repNal);
        repNal.setVisible(true);
    }
    
    private void loadReportParcelDateLevel(){
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true,9002);
        
        levDSec.setVisible(true);
    }
    public void loadReportKolBalance(int i) {
        imakante.sales.reportColBalans repNal = new imakante.sales.reportColBalans("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442\u0438", this, i);
        desktopPane.add(repNal);
        repNal.setVisible(true);
    }
    private void loadReportKolBalanceLevel(){
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true,9010);
        
        levDSec.setVisible(true);
    }
    public void loadReportStockOut(int i) {
        imakante.sales.reportStockOut stockOut = new imakante.sales.reportStockOut("\u041C\u0438\u043D\u0438\u043C\u0430\u043B\u043D\u0438 \u041A\u043E\u043B\u0438\u0447\u0435\u0441\u0442\u0432\u0430", this, i);
        desktopPane.add(stockOut);
        stockOut.setVisible(true);
    }
    
    private void loadReportStockOutLevel(){
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true,9003);
        levDSec.setVisible(true);
    }
    public void loadReportFRentabilnost(int i) {
        imakante.sales.reportFRentabilnost rentabilnost = new imakante.sales.reportFRentabilnost("Справка заложена рентабилност", this, i);
        desktopPane.add(rentabilnost);
        rentabilnost.setVisible(true);
    }
    
    private void loadReportFRentabilnostLevel(){
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true,9004);
        levDSec.setVisible(true);
    }
    
    public void loadReportDocs(int i) {
        imakante.sales.reportFrmDocs repDox = new imakante.sales.reportFrmDocs("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u0437\u0430 \u0418\u0437\u0434\u0430\u0434\u0435\u043d\u0438 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438", this,i);
        desktopPane.add(repDox);
        repDox.setVisible(true);
    }
    private void loadReportDocsLevel() {
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true, 9050);
        levDSec.setVisible(true);
    }
    
    public void loadPaymentsReport(int i) {
        imakante.sales.reportFrmPayments payments = new imakante.sales.reportFrmPayments("\u0420\u0410\u0417\u041f\u041b\u0410\u0429\u0410\u041d\u0418\u042f \u041d\u0410 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422", this, i);
        desktopPane.add(payments);
        payments.setVisible(true);
    }
    
    private void loadPaymentsReportLevel() {
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true, 9060);
        levDSec.setVisible(true);
    }
    
    public void loadGroupPaymentsReport(int i) {
        imakante.sales.reportFrmGroupPayments GRpayments = new imakante.sales.reportFrmGroupPayments("\u0420\u0410\u0417\u041f\u041b\u0410\u0429\u0410\u041d\u0418\u042f \u041d\u0410 \u0413\u0420\u0423\u041f\u0410 \u041e\u0422 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422\u0418", this, i);
        desktopPane.add(GRpayments);
        GRpayments.setVisible(true);
    }
    
    private void loadGroupPaymentsReportLevel() {
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true, 9061);
        levDSec.setVisible(true);
    }
    
    public void loadDebtsReport(int i) {
        imakante.sales.reportFrmDebts debts = new imakante.sales.reportFrmDebts("\u0417\u0410\u0414\u042a\u041b\u0416\u0415\u041d\u0418\u042f \u041d\u0410 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422", this, i);
        desktopPane.add(debts);
        debts.setVisible(true);
    }
    
    private void loadDebtsReportLevel() {
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true, 9062);
        levDSec.setVisible(true);
    }
    
    public void loadGroupDebtsReport(int i) {
        imakante.sales.reportFrmGroupDebts GRdebts = new imakante.sales.reportFrmGroupDebts("\u0417\u0410\u0414\u042a\u041b\u0416\u0415\u041d\u0418\u042f \u041d\u0410 \u0413\u0420\u0423\u041f\u0410 \u041e\u0422 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422\u0418", this, i);
        desktopPane.add(GRdebts);
        GRdebts.setVisible(true);
    }
    
    private void loadGroupDebtsReportLevel() {
        imakante.sales.levelDialogSimple levDSec = new imakante.sales.levelDialogSimple(this, true, 9063);
        levDSec.setVisible(true);
    }
    
    public static java.util.LinkedHashMap getOrderArea() {
        return OrderArea;
    }
    
    public  void setOrderArea(java.util.LinkedHashMap OrderArea) {
        this.OrderArea = OrderArea;
    }
    
    public static java.util.LinkedHashMap getFaktArea() {
        return FaktArea;
    }
    
    public  void setFaktArea(java.util.LinkedHashMap FaktArea) {
        this.FaktArea = FaktArea;
    }
    private void loadFrmDocFacade(String title, int user, int level, int pricelist, int doctype, int storagedocdacade, boolean makeDocByInputData,
            java.util.HashMap dataIn, java.util.ArrayList dataOut) {
        try {
            frmDocumentFacadeDialog = new FrmDocumentFacade(title, user, level, pricelist, doctype, storagedocdacade, isMakeDocByInputData, dataIn, dataOut,this);
            desktopPane.add(frmDocumentFacadeDialog);
            try {
                frmDocumentFacadeDialog.setMaximum(true);
                
            } catch(java.beans.PropertyVetoException pvex) {  }
            
        } catch(Exception e) {
            
        }
        frmDocumentFacadeDialog.setVisible(true)  ;
    }
    
    private void loadCopiuri() {
        imakante.sales.FrmCopiuri frmCop = new imakante.sales.FrmCopiuri("\u041f\u0430\u0440\u0438\u0447\u043d\u0438 \u043e\u043f\u0438\u0441\u0438 ",this);
        desktopPane.add(frmCop);
        frmCop.setVisible(true);
    }
    
    private void  loadAnLevel() {
        if(!isStartFrmAnLevel) {
            isStartFrmAnLevel = true;
            nom.FrmAnLevel anLevelD = new nom.FrmAnLevel("\u0410\u043d\u0430\u043b\u0438\u0442\u0438\u0447\u043d\u0438 \u043d\u0438\u0432\u0430",this);
            desktopPane.add(anLevelD);
            anLevelD.setVisible(true);
        }
    }
    private void  loadDisband() {
        
        if(!isStartFrmDisband) {
            isStartFrmDisband = true;
            nom.FrmDisband ddisband = new nom.FrmDisband("\u0420\u0430\u0437\u0444\u0430\u0441\u043e\u0432\u043a\u0430",this);
            desktopPane.add(ddisband);
            ddisband.setVisible(true);
        }
        
    }
    private void loadFakturiReport() {
        fakturiRep = new infoFakturi("Справка за издадени фактури",getConn());
        desktopPane.add(fakturiRep);
        fakturiRep.setVisible(true);
    }
}
