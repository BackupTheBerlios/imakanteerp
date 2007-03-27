
package imakante.sales;

public class reportFrmDocs extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public reportFrmDocs(String title, imakante.com.vcomponents.iFrame parentFrame, int levelx) {
        super(title);
        myFrame = parentFrame;
        this.levelx = levelx;
        prepareConn();
        prepareStm();
        initComponents();
        this.jLabel25.setText("" + this.levelx);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jCheckBox1 = new javax.swing.JCheckBox();
        jCheckBox3 = new javax.swing.JCheckBox();
        jCheckBox4 = new javax.swing.JCheckBox();
        jCheckBox5 = new javax.swing.JCheckBox();
        jCheckBox6 = new javax.swing.JCheckBox();
        jCheckBox7 = new javax.swing.JCheckBox();
        jCheckBox8 = new javax.swing.JCheckBox();
        jCheckBox9 = new javax.swing.JCheckBox();
        jCheckBox10 = new javax.swing.JCheckBox();
        jCheckBox11 = new javax.swing.JCheckBox();
        jCheckBox12 = new javax.swing.JCheckBox();
        jButton5 = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jLabel25 = new javax.swing.JLabel();
        jPanel10 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        jTextField15 = new javax.swing.JTextField();
        jTextField13 = new javax.swing.JTextField();
        jTextField11 = new javax.swing.JTextField();
        jTextField9 = new javax.swing.JTextField();
        jTextField7 = new javax.swing.JTextField();
        jTextField5 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jTextField16 = new javax.swing.JTextField();
        jTextField14 = new javax.swing.JTextField();
        jTextField12 = new javax.swing.JTextField();
        jTextField10 = new javax.swing.JTextField();
        jTextField8 = new javax.swing.JTextField();
        jTextField6 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jXDatePicker2 = new org.jdesktop.swingx.JXDatePicker();
        jCheckBox20 = new javax.swing.JCheckBox();
        jCheckBox19 = new javax.swing.JCheckBox();
        jCheckBox18 = new javax.swing.JCheckBox();
        jCheckBox17 = new javax.swing.JCheckBox();
        jCheckBox16 = new javax.swing.JCheckBox();
        jCheckBox15 = new javax.swing.JCheckBox();
        jCheckBox14 = new javax.swing.JCheckBox();
        jCheckBox13 = new javax.swing.JCheckBox();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0418\u0417\u0414\u0410\u0414\u0415\u041d\u0418 \u0414\u041e\u041a\u0423\u041c\u0415\u041d\u0422\u0418");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u0422\u0438\u043f\u043e\u0432\u0435 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION));
        jCheckBox1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jCheckBox1.setText("\u0424\u0430\u043a\u0442\u0443\u0440\u0438");
        jCheckBox1.setToolTipText("\u0422\u0438\u043f: 202");
        jCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox1KeyPressed(evt);
            }
        });

        jCheckBox3.setText("\u0420\u0430\u0437\u043f\u0438\u0441\u043a\u0438 \u0437\u0430 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u043d\u0435");
        jCheckBox3.setToolTipText("\u0422\u0438\u043f: 600");
        jCheckBox3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox3.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox3KeyPressed(evt);
            }
        });

        jCheckBox4.setText("\u0420\u0430\u0437\u043f\u0438\u0441\u043a\u0438 \u0437\u0430 \u043f\u0440\u0435\u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435");
        jCheckBox4.setToolTipText("\u0422\u0438\u043f: 700");
        jCheckBox4.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox4.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox4KeyPressed(evt);
            }
        });

        jCheckBox5.setFont(new java.awt.Font("Tahoma", 1, 11));
        jCheckBox5.setSelected(true);
        jCheckBox5.setText("\u041f\u0440\u043e\u0434\u0430\u0436\u0431\u0438");
        jCheckBox5.setToolTipText("\u0422\u0438\u043f: 100");
        jCheckBox5.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox5.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox5KeyPressed(evt);
            }
        });

        jCheckBox6.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0437\u0430 \u0431\u0440\u0430\u043a");
        jCheckBox6.setToolTipText("\u0422\u0438\u043f: 800");
        jCheckBox6.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox6.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox6KeyPressed(evt);
            }
        });

        jCheckBox7.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0437\u0430 \u043b\u0438\u043f\u0441\u0438");
        jCheckBox7.setToolTipText("\u0422\u0438\u043f: 900");
        jCheckBox7.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox7.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox7.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox7KeyPressed(evt);
            }
        });

        jCheckBox8.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0437\u0430 \u043f\u0440\u0435\u043e\u0446\u0435\u043d\u043a\u0430");
        jCheckBox8.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox8.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox8.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox8KeyPressed(evt);
            }
        });

        jCheckBox9.setText("\u041d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0438\u044f");
        jCheckBox9.setToolTipText("\u0422\u0438\u043f: 500");
        jCheckBox9.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox9.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox9.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox9KeyPressed(evt);
            }
        });

        jCheckBox10.setText("\u0412\u044a\u0442\u0440\u0435\u0448\u043d\u0438 \u043f\u043e\u0440\u044a\u0447\u043a\u0438");
        jCheckBox10.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox10.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox10.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox10KeyPressed(evt);
            }
        });

        jCheckBox11.setText("\u0412\u044a\u043d\u0448\u043d\u0438 \u043f\u043e\u0440\u044a\u0447\u043a\u0438");
        jCheckBox11.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox11.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox11.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox11KeyPressed(evt);
            }
        });

        jCheckBox12.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b \u043e\u0442 \u0440\u0435\u0432\u0438\u0437\u0438\u0438");
        jCheckBox12.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox12.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox12.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox12KeyPressed(evt);
            }
        });

        jButton5.setFont(new java.awt.Font("Tahoma", 1, 12));
        jButton5.setText("\u0412\u0421\u0418\u0427\u041a\u0418");
        jButton5.setToolTipText("\u0418\u0437\u0431\u0435\u0440\u0438 \u0432\u0441\u0438\u0447\u043a\u0438 \u0442\u0438\u043f\u043e\u0432\u0435 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                        .add(jCheckBox1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox12, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox10, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(jCheckBox11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .add(jButton5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 149, Short.MAX_VALUE))
                .addContainerGap())
        );

        jPanel1Layout.linkSize(new java.awt.Component[] {jCheckBox1, jCheckBox10, jCheckBox11, jCheckBox12, jCheckBox3, jCheckBox4, jCheckBox5, jCheckBox6, jCheckBox7, jCheckBox8, jCheckBox9}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jCheckBox1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox5)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox3)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox4)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox6)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox7)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox8)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox12)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox9)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox10)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox11)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 63, Short.MAX_VALUE)
                .add(jButton5)
                .addContainerGap())
        );

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jButton1.setText("\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u0430\u0439");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("\u041e\u0442\u043a\u0430\u0437");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("\u0417\u0430\u043f\u0430\u0437\u0438 \u0441\u043f\u0440\u0430\u0432\u043a\u0430");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setText("\u0420\u0435\u0434\u0430\u043a\u0442\u043e\u0440 \u043d\u0430 \u0441\u043f\u0440\u0430\u0432\u043a\u0438");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jLabel25.setFont(new java.awt.Font("Tahoma", 1, 10));

        jPanel10.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u041a\u0440\u0438\u0442\u0435\u0440\u0438\u0438", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel2.setText("\u0414\u0410\u0422\u0410");

        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel5.setText("\u0421\u041a\u041b\u0410\u0414");

        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel8.setText("\u041a\u041b\u0418\u0415\u041d\u0422");

        jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel11.setText("\u0421\u0422\u041e\u041a\u0410");

        jLabel14.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel14.setText("\u0414\u041e\u0421\u0422\u0410\u0412\u0427\u0418\u041a");

        jLabel17.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel17.setText("\u0414\u0418\u0421\u0422\u0420\u0418\u0411\u0423\u0422\u041e\u0420");

        jLabel20.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel20.setText("\u041e\u041f\u0415\u0420\u0410\u0422\u041e\u0420");

        jLabel23.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel23.setText("\u0421\u041f\u0415\u0414\u0418\u0422\u041e\u0420");

        jTextField15.setBackground(new java.awt.Color(204, 204, 255));
        jTextField15.setToolTipText("\u041e\u0422");
        jTextField15.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField15.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField15.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField15.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField15FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField15FocusLost(evt);
            }
        });
        jTextField15.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField15KeyPressed(evt);
            }
        });

        jTextField13.setBackground(new java.awt.Color(204, 204, 255));
        jTextField13.setToolTipText("\u041e\u0422");
        jTextField13.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField13.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField13.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField13.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField13FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField13FocusLost(evt);
            }
        });
        jTextField13.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField13KeyPressed(evt);
            }
        });

        jTextField11.setBackground(new java.awt.Color(204, 204, 255));
        jTextField11.setToolTipText("\u041e\u0422");
        jTextField11.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField11.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField11.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField11.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField11FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField11FocusLost(evt);
            }
        });
        jTextField11.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField11KeyPressed(evt);
            }
        });

        jTextField9.setBackground(new java.awt.Color(204, 204, 255));
        jTextField9.setToolTipText("\u041e\u0422");
        jTextField9.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField9.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField9.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField9.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField9FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField9FocusLost(evt);
            }
        });
        jTextField9.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField9KeyPressed(evt);
            }
        });

        jTextField7.setBackground(new java.awt.Color(204, 204, 255));
        jTextField7.setToolTipText("\u041e\u0422");
        jTextField7.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField7.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField7.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField7.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField7FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField7FocusLost(evt);
            }
        });
        jTextField7.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField7KeyPressed(evt);
            }
        });

        jTextField5.setBackground(new java.awt.Color(204, 204, 255));
        jTextField5.setToolTipText("\u041e\u0422");
        jTextField5.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField5.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField5.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField5.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField5FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField5FocusLost(evt);
            }
        });
        jTextField5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField5KeyPressed(evt);
            }
        });

        jTextField3.setBackground(new java.awt.Color(204, 204, 255));
        jTextField3.setToolTipText("\u041e\u0422");
        jTextField3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField3.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField3.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField3FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField3FocusLost(evt);
            }
        });
        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        jXDatePicker1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jXDatePicker1.setToolTipText("\u041e\u0422");

        jTextField16.setBackground(new java.awt.Color(204, 204, 255));
        jTextField16.setToolTipText("\u0414\u041e");
        jTextField16.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField16.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField16.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField16.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField16FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField16FocusLost(evt);
            }
        });
        jTextField16.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField16KeyPressed(evt);
            }
        });

        jTextField14.setBackground(new java.awt.Color(204, 204, 255));
        jTextField14.setToolTipText("\u0414\u041e");
        jTextField14.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField14.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField14.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField14.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField14FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField14FocusLost(evt);
            }
        });
        jTextField14.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField14KeyPressed(evt);
            }
        });

        jTextField12.setBackground(new java.awt.Color(204, 204, 255));
        jTextField12.setToolTipText("\u0414\u041e");
        jTextField12.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField12.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField12.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField12.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField12FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField12FocusLost(evt);
            }
        });
        jTextField12.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField12KeyPressed(evt);
            }
        });

        jTextField10.setBackground(new java.awt.Color(204, 204, 255));
        jTextField10.setToolTipText("\u0414\u041e");
        jTextField10.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField10.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField10.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField10.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField10FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField10FocusLost(evt);
            }
        });
        jTextField10.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField10KeyPressed(evt);
            }
        });

        jTextField8.setBackground(new java.awt.Color(204, 204, 255));
        jTextField8.setToolTipText("\u0414\u041e");
        jTextField8.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField8.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField8.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField8.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField8FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField8FocusLost(evt);
            }
        });
        jTextField8.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField8KeyPressed(evt);
            }
        });

        jTextField6.setBackground(new java.awt.Color(204, 204, 255));
        jTextField6.setToolTipText("\u0414\u041e");
        jTextField6.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField6.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField6.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField6.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField6FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField6FocusLost(evt);
            }
        });
        jTextField6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField6KeyPressed(evt);
            }
        });

        jTextField4.setBackground(new java.awt.Color(204, 204, 255));
        jTextField4.setToolTipText("\u0414\u041e");
        jTextField4.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jTextField4.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField4.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField4.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField4FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField4FocusLost(evt);
            }
        });
        jTextField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField4KeyPressed(evt);
            }
        });

        jXDatePicker2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jXDatePicker2.setToolTipText("\u0414\u041e");

        jCheckBox20.setToolTipText("\u041e\u0411\u041e\u0411\u0429\u0415\u041d\u0418");
        jCheckBox20.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox20.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox20.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox20KeyPressed(evt);
            }
        });

        jCheckBox19.setToolTipText("\u041e\u0411\u041e\u0411\u0429\u0415\u041d\u0418");
        jCheckBox19.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox19.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox19.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox19KeyPressed(evt);
            }
        });

        jCheckBox18.setToolTipText("\u041e\u0411\u041e\u0411\u0429\u0415\u041d\u0418");
        jCheckBox18.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox18.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox18.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox18KeyPressed(evt);
            }
        });

        jCheckBox17.setToolTipText("\u041e\u0411\u041e\u0411\u0429\u0415\u041d\u0418");
        jCheckBox17.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox17.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox17.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox17KeyPressed(evt);
            }
        });

        jCheckBox16.setToolTipText("\u041e\u0411\u041e\u0411\u0429\u0415\u041d\u0418");
        jCheckBox16.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox16.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox16.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox16KeyPressed(evt);
            }
        });

        jCheckBox15.setToolTipText("\u041e\u0411\u041e\u0411\u0429\u0415\u041d\u0418");
        jCheckBox15.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox15.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox15.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox15KeyPressed(evt);
            }
        });

        jCheckBox14.setToolTipText("\u041e\u0411\u041e\u0411\u0429\u0415\u041d\u0418");
        jCheckBox14.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox14.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox14.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox14KeyPressed(evt);
            }
        });

        jCheckBox13.setToolTipText("\u041e\u0411\u041e\u0411\u0429\u0415\u041d\u0418");
        jCheckBox13.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox13.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox13.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox13KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel10Layout = new org.jdesktop.layout.GroupLayout(jPanel10);
        jPanel10.setLayout(jPanel10Layout);
        jPanel10Layout.setHorizontalGroup(
            jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel10Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel10Layout.createSequentialGroup()
                        .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jLabel5)
                            .add(jLabel8)
                            .add(jLabel11)
                            .add(jLabel14)
                            .add(jLabel17, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 85, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jLabel20)
                            .add(jLabel23))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTextField13, 0, 0, Short.MAX_VALUE)
                            .add(jTextField11, 0, 0, Short.MAX_VALUE)
                            .add(jTextField9, 0, 0, Short.MAX_VALUE)
                            .add(jTextField7, 0, 0, Short.MAX_VALUE)
                            .add(jTextField5, 0, 0, Short.MAX_VALUE)
                            .add(jTextField3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
                            .add(jTextField15, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)))
                    .add(jPanel10Layout.createSequentialGroup()
                        .add(jLabel2)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 116, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                    .add(jTextField16, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jTextField14, 0, 0, Short.MAX_VALUE)
                    .add(jTextField12, 0, 0, Short.MAX_VALUE)
                    .add(jTextField10, 0, 0, Short.MAX_VALUE)
                    .add(jTextField8, 0, 0, Short.MAX_VALUE)
                    .add(jTextField6, 0, 0, Short.MAX_VALUE)
                    .add(jTextField4, 0, 0, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jCheckBox20)
                    .add(jCheckBox19)
                    .add(jCheckBox18)
                    .add(jCheckBox17)
                    .add(jCheckBox16)
                    .add(jCheckBox15)
                    .add(jCheckBox14)
                    .add(jCheckBox13))
                .addContainerGap())
        );

        jPanel10Layout.linkSize(new java.awt.Component[] {jLabel11, jLabel14, jLabel17, jLabel2, jLabel20, jLabel23, jLabel5, jLabel8}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        jPanel10Layout.setVerticalGroup(
            jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel10Layout.createSequentialGroup()
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox13))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel5)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox14))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel8)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox15))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel11)
                    .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox16))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel14)
                    .add(jTextField9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox17))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel17)
                    .add(jTextField11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox18, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 18, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel20)
                    .add(jTextField13, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox19))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel23)
                    .add(jTextField15, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField16, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox20))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jPanel10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                .add(layout.createSequentialGroup()
                                    .add(jButton1)
                                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                    .add(jButton2))
                                .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                                    .add(jButton4)
                                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                    .add(jButton3)))))
                    .add(layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(jLabel25, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 15, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        layout.linkSize(new java.awt.Component[] {jButton1, jButton2, jButton3, jButton4}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(layout.createSequentialGroup()
                        .add(jPanel10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jButton2)
                            .add(jButton1))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jButton3)
                            .add(jButton4)))
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .add(261, 261, 261)
                .add(jLabel25))
        );
        setBounds(100, 20, 599, 418);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusLost
        fLost(jTextField3);
    }//GEN-LAST:event_jTextField3FocusLost
    
    private void jTextField4FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusLost
        fLost(jTextField4);
    }//GEN-LAST:event_jTextField4FocusLost
    
    private void jTextField5FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusLost
        fLost(jTextField5);
    }//GEN-LAST:event_jTextField5FocusLost
    
    private void jTextField6FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusLost
        fLost(jTextField6);
    }//GEN-LAST:event_jTextField6FocusLost
    
    private void jTextField7FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusLost
        fLost(jTextField7);
    }//GEN-LAST:event_jTextField7FocusLost
    
    private void jTextField8FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField8FocusLost
        fLost(jTextField8);
    }//GEN-LAST:event_jTextField8FocusLost
    
    private void jTextField9FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField9FocusLost
        fLost(jTextField9);
    }//GEN-LAST:event_jTextField9FocusLost
    
    private void jTextField10FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField10FocusLost
        fLost(jTextField10);
    }//GEN-LAST:event_jTextField10FocusLost
    
    private void jTextField11FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField11FocusLost
        fLost(jTextField11);
    }//GEN-LAST:event_jTextField11FocusLost
    
    private void jTextField12FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField12FocusLost
        fLost(jTextField12);
    }//GEN-LAST:event_jTextField12FocusLost
    
    private void jTextField13FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField13FocusLost
        fLost(jTextField13);
    }//GEN-LAST:event_jTextField13FocusLost
    
    private void jTextField14FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField14FocusLost
        fLost(jTextField14);
    }//GEN-LAST:event_jTextField14FocusLost
    
    private void jTextField15FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField15FocusLost
        fLost(jTextField15);
    }//GEN-LAST:event_jTextField15FocusLost
    
    private void jTextField16FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField16FocusLost
        fLost(jTextField16);
    }//GEN-LAST:event_jTextField16FocusLost
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        selectAllTypes();
    }//GEN-LAST:event_jButton5ActionPerformed
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jCheckBox1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox1.transferFocus(); }
    }//GEN-LAST:event_jCheckBox1KeyPressed
    
    private void jCheckBox3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox3KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox3.transferFocus(); }
    }//GEN-LAST:event_jCheckBox3KeyPressed
    
    private void jCheckBox4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox4KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox4.transferFocus(); }
    }//GEN-LAST:event_jCheckBox4KeyPressed
    
    private void jCheckBox5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox5KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox5.transferFocus(); }
    }//GEN-LAST:event_jCheckBox5KeyPressed
    
    private void jCheckBox6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox6KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox6.transferFocus(); }
    }//GEN-LAST:event_jCheckBox6KeyPressed
    
    private void jCheckBox7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox7KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox7.transferFocus(); }
    }//GEN-LAST:event_jCheckBox7KeyPressed
    
    private void jCheckBox8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox8KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox8.transferFocus(); }
    }//GEN-LAST:event_jCheckBox8KeyPressed
    
    private void jCheckBox9KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox9KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox9.transferFocus(); }
    }//GEN-LAST:event_jCheckBox9KeyPressed
    
    private void jCheckBox10KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox10KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox10.transferFocus(); }
    }//GEN-LAST:event_jCheckBox10KeyPressed
    
    private void jCheckBox11KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox11KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox11.transferFocus(); }
    }//GEN-LAST:event_jCheckBox11KeyPressed
    
    private void jCheckBox12KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox12KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox12.transferFocus(); }
    }//GEN-LAST:event_jCheckBox12KeyPressed
    
    private void jCheckBox20KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox20KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox20.transferFocus(); }
    }//GEN-LAST:event_jCheckBox20KeyPressed
    
    private void jCheckBox19KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox19KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox19.transferFocus(); }
    }//GEN-LAST:event_jCheckBox19KeyPressed
    
    private void jCheckBox18KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox18KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox18.transferFocus(); }
    }//GEN-LAST:event_jCheckBox18KeyPressed
    
    private void jCheckBox17KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox17KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox17.transferFocus(); }
    }//GEN-LAST:event_jCheckBox17KeyPressed
    
    private void jCheckBox16KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox16KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox16.transferFocus(); }
    }//GEN-LAST:event_jCheckBox16KeyPressed
    
    private void jCheckBox15KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox15KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox15.transferFocus(); }
    }//GEN-LAST:event_jCheckBox15KeyPressed
    
    private void jCheckBox14KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox14KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox14.transferFocus(); }
    }//GEN-LAST:event_jCheckBox14KeyPressed
    
    private void jCheckBox13KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox13KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jCheckBox13.transferFocus(); }
    }//GEN-LAST:event_jCheckBox13KeyPressed
    
    private void jTextField16KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField16KeyPressed
        fillToField(evt, jTextField16);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField16();
    }//GEN-LAST:event_jTextField16KeyPressed
    
    private void jTextField16FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField16FocusGained
        fGain(jTextField16);
        jTextField16.selectAll();
    }//GEN-LAST:event_jTextField16FocusGained
    
    private void jTextField15KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField15KeyPressed
        fillFromField(evt, jTextField15);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField15();
    }//GEN-LAST:event_jTextField15KeyPressed
    
    private void jTextField15FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField15FocusGained
        fGain(jTextField15);
        jTextField15.selectAll();
    }//GEN-LAST:event_jTextField15FocusGained
    
    private void jTextField3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusGained
        fGain(jTextField3);
        jTextField3.selectAll();
    }//GEN-LAST:event_jTextField3FocusGained
    
    private void jTextField4FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusGained
        fGain(jTextField4);
        jTextField4.selectAll();
    }//GEN-LAST:event_jTextField4FocusGained
    
    private void jTextField5FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusGained
        fGain(jTextField5);
        jTextField5.selectAll();
    }//GEN-LAST:event_jTextField5FocusGained
    
    private void jTextField6FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusGained
        fGain(jTextField6);
        jTextField6.selectAll();
    }//GEN-LAST:event_jTextField6FocusGained
    
    private void jTextField7FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusGained
        fGain(jTextField7);
        jTextField7.selectAll();
    }//GEN-LAST:event_jTextField7FocusGained
    
    private void jTextField8FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField8FocusGained
        fGain(jTextField8);
        jTextField8.selectAll();
    }//GEN-LAST:event_jTextField8FocusGained
    
    private void jTextField9FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField9FocusGained
        fGain(jTextField9);
        jTextField9.selectAll();
    }//GEN-LAST:event_jTextField9FocusGained
    
    private void jTextField10FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField10FocusGained
        fGain(jTextField10);
        jTextField10.selectAll();
    }//GEN-LAST:event_jTextField10FocusGained
    
    private void jTextField11FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField11FocusGained
        fGain(jTextField11);
        jTextField11.selectAll();
    }//GEN-LAST:event_jTextField11FocusGained
    
    private void jTextField12FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField12FocusGained
        fGain(jTextField12);
        jTextField12.selectAll();
    }//GEN-LAST:event_jTextField12FocusGained
    
    private void jTextField13FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField13FocusGained
        fGain(jTextField13);
        jTextField13.selectAll();
    }//GEN-LAST:event_jTextField13FocusGained
    
    private void jTextField14FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField14FocusGained
        fGain(jTextField14);
        jTextField14.selectAll();
    }//GEN-LAST:event_jTextField14FocusGained
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        fillFromField(evt, jTextField3);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField3();
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        fillToField(evt, jTextField4);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField4();
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jTextField5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField5KeyPressed
        fillFromField(evt, jTextField5);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField5();
    }//GEN-LAST:event_jTextField5KeyPressed
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        fillToField(evt, jTextField6);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField6();
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jTextField7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField7KeyPressed
        fillFromField(evt, jTextField7);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField7();
    }//GEN-LAST:event_jTextField7KeyPressed
    
    private void jTextField8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField8KeyPressed
        fillToField(evt, jTextField8);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField8();
    }//GEN-LAST:event_jTextField8KeyPressed
    
    private void jTextField9KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField9KeyPressed
        fillFromField(evt, jTextField9);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField9();
    }//GEN-LAST:event_jTextField9KeyPressed
    
    private void jTextField10KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField10KeyPressed
        fillToField(evt, jTextField10);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField10();
    }//GEN-LAST:event_jTextField10KeyPressed
    
    private void jTextField11KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField11KeyPressed
        fillFromField(evt, jTextField11);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField11();
    }//GEN-LAST:event_jTextField11KeyPressed
    
    private void jTextField12KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField12KeyPressed
        fillToField(evt, jTextField12);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField12();
    }//GEN-LAST:event_jTextField12KeyPressed
    
    private void jTextField13KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField13KeyPressed
        fillFromField(evt, jTextField13);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField13();
    }//GEN-LAST:event_jTextField13KeyPressed
    
    private void jTextField14KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField14KeyPressed
        fillToField(evt, jTextField14);
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField14();
    }//GEN-LAST:event_jTextField14KeyPressed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        if (anyBoxChecked()) {
            fillBlanck();
            processReport();
        } else {
            javax.swing.JOptionPane.showMessageDialog(null,
                    "\u0418\u0437\u0431\u0435\u0440\u0435\u0442\u0435 \u043F\u043E\u043D\u0435 \u0435\u0434\u0438\u043D \u0442\u0438\u043F \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442\u0438!",
                    "\u0413\u0420\u0415\u0428\u041A\u0410 \u0412 \u0417\u0410\u042F\u0412\u041A\u0410\u0422\u0410!",
                    javax.swing.JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JCheckBox jCheckBox10;
    private javax.swing.JCheckBox jCheckBox11;
    private javax.swing.JCheckBox jCheckBox12;
    private javax.swing.JCheckBox jCheckBox13;
    private javax.swing.JCheckBox jCheckBox14;
    private javax.swing.JCheckBox jCheckBox15;
    private javax.swing.JCheckBox jCheckBox16;
    private javax.swing.JCheckBox jCheckBox17;
    private javax.swing.JCheckBox jCheckBox18;
    private javax.swing.JCheckBox jCheckBox19;
    private javax.swing.JCheckBox jCheckBox20;
    private javax.swing.JCheckBox jCheckBox3;
    private javax.swing.JCheckBox jCheckBox4;
    private javax.swing.JCheckBox jCheckBox5;
    private javax.swing.JCheckBox jCheckBox6;
    private javax.swing.JCheckBox jCheckBox7;
    private javax.swing.JCheckBox jCheckBox8;
    private javax.swing.JCheckBox jCheckBox9;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JTextField jTextField10;
    private javax.swing.JTextField jTextField11;
    private javax.swing.JTextField jTextField12;
    private javax.swing.JTextField jTextField13;
    private javax.swing.JTextField jTextField14;
    private javax.swing.JTextField jTextField15;
    private javax.swing.JTextField jTextField16;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JTextField jTextField9;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker2;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iFrame myFrame;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    private int levelx = 3;
    private int intTransfer;
    private long longTransfer;
    private int CompNumber = 0;
    private String[] Names = { "\u041a\u041e\u0414", "\u0418\u041c\u0415" };
    private String[] NamesQ = { "\u041D\u043E\u043C\u0435\u0440\u0430\u0442\u043E\u0440" };
    java.text.SimpleDateFormat formatterG = new java.text.SimpleDateFormat("yyyy-MM-dd");
    
    private String strStore = "SELECT DISTINCT r.code_store, r.name_store " +
            "FROM rep_documents_new r WHERE r.code_store LIKE '%";
    private String strClient = "SELECT DISTINCT r.code_client, r.name_client " +
            "FROM rep_documents_new r WHERE r.code_client LIKE '%";
    private String strProduct = "SELECT DISTINCT r.code_product, r.name_product " +
            "FROM rep_documents_new r WHERE r.code_product LIKE '%";
    private String strSupplier = "SELECT DISTINCT r.code_dostavchik, r.name_dostavchik " +
            "FROM rep_documents_new r WHERE r.code_dostavchik LIKE '%";
    private String strDistributor = "SELECT DISTINCT r.code_distributor, r.name_distributor " +
            "FROM rep_documents_new r WHERE r.code_distributor LIKE '%";
    private String strOperator = "SELECT DISTINCT r.code_operator, name_operator " +
            "FROM rep_documents_new r WHERE r.code_operator LIKE '%";
    private String strSpeditor = "SELECT DISTINCT r.code_speditor, r.name_speditor " +
            "FROM rep_documents_new r WHERE r.code_speditor LIKE '%";
    private String qu = "SELECT ";
    private String reportFile = null;
    
    public void windowOpened(java.awt.event.WindowEvent e) {
    }
    public void windowClosing(java.awt.event.WindowEvent e) {
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
    
    private void prepareConn() {
        try{
            conn =  myFrame.getConn();
            if(conn == null) System.out.println("conn problem");
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void prepareStm() {
        try {
            stm = conn.createStatement();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    private void initTable(String str , String[] names) {
        try {
            rs = stm.executeQuery(str);
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        try {
            model = new imakante.com.CustomTableModel(getConn(), rs, names);
            table = new imakante.com.CustomTable(model);
        } catch(Exception e) { e.printStackTrace(); }
        try {
            table.setEditingRow(0);
        } catch(Exception ex) { ex.printStackTrace(); }
    }
    
    private void constructDialod(String str, int rCompNumber, String[] names) {
        this.CompNumber = rCompNumber;
        initTable(str, names);
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table, "\u0418\u0437\u0431\u043e\u0440", "","cod");
        td.setVisible(true);
    }
    
    private boolean anyBoxChecked() {
        if (this.jCheckBox1.isSelected() ||
                this.jCheckBox3.isSelected() || this.jCheckBox4.isSelected() ||
                this.jCheckBox5.isSelected() || this.jCheckBox6.isSelected() ||
                this.jCheckBox7.isSelected() || this.jCheckBox8.isSelected() ||
                this.jCheckBox9.isSelected() || this.jCheckBox10.isSelected() ||
                this.jCheckBox11.isSelected() || this.jCheckBox12.isSelected()) return true;
        else return false;
    }
    
    private void fillBlanck() {
        if(jTextField3.getText().equals("")) jTextField3.setText("0");
        if(jTextField4.getText().equals("")) jTextField4.setText("999999999");
        if(jTextField5.getText().equals("")) jTextField5.setText("0");
        if(jTextField6.getText().equals("")) jTextField6.setText("999999999");
        if(jTextField7.getText().equals("")) jTextField7.setText("0");
        if(jTextField8.getText().equals("")) jTextField8.setText("999999999");
        if(jTextField9.getText().equals("")) jTextField9.setText("0");
        if(jTextField10.getText().equals("")) jTextField10.setText("999999999");
        if(jTextField11.getText().equals("")) jTextField11.setText("0");
        if(jTextField12.getText().equals("")) jTextField12.setText("999999999");
        if(jTextField13.getText().equals("")) jTextField13.setText("0");
        if(jTextField14.getText().equals("")) jTextField14.setText("999999999");
        if(jTextField15.getText().equals("")) jTextField15.setText("0");
        if(jTextField16.getText().equals("")) jTextField16.setText("999999999");
    }
    
    private void processReport() {
        String newString = qu;
        newString = newString + " DISTINCT CONCAT(r.level_df";
        java.util.List namesQ = new java.util.ArrayList();
        java.util.HashMap hm = new java.util.HashMap();
        namesQ.add("\u041D\u043E\u043C\u0435\u0440\u0430\u0442\u043E\u0440");
        int nubColums = 0;
        if (jXDatePicker1.getDateInMillis() <= jXDatePicker2.getDateInMillis()) {
            nubColums =+ 1;
            if (this.jCheckBox13.isSelected())
                this.setReportFile("report_DocumentsRazbiwkaDati.jasper");
            else if (this.jCheckBox14.isSelected())
                this.setReportFile("report_DocumentsRazbiwkaSkladowe.jasper");
            else if (this.jCheckBox15.isSelected())
                this.setReportFile("report_DocumentsRazbiwkaKlienti.jasper");
            else if (this.jCheckBox16.isSelected())
                this.setReportFile("report_DocumentsRazbiwkaStoki.jasper");
            else if (this.jCheckBox17.isSelected())
                this.setReportFile("report_DocumentsRazbiwkaDostaw4ici.jasper");
            else if (this.jCheckBox18.isSelected())
                this.setReportFile("report_DocumentsRazbiwkaDistributori.jasper");
            else if (this.jCheckBox19.isSelected())
                this.setReportFile("report_DocumentsRazbiwkaOperatori.jasper");
            else if (this.jCheckBox20.isSelected())
                this.setReportFile("report_DocumentsRazbiwkaSpeditori.jasper");
//            else if (this.jCheckBox15.isSelected() && this.jCheckBox16.isSelected())
//                this.setReportFile("report_DocumentsRazbiwka                                           .jasper");
            else this.setReportFile("report_Documents.jasper");
            if (!this.jCheckBox13.isSelected()) newString = newString + ", IFNULL(r.date_edition_df, 0)";
            if (!this.jCheckBox14.isSelected()) newString = newString + ", IFNULL(r.code_store, 0)";
            if (!this.jCheckBox15.isSelected()) newString = newString + ", IFNULL(r.code_client, 0)";
            if (!this.jCheckBox16.isSelected()) newString = newString + ", IFNULL(r.code_product, 0)";
            if (!this.jCheckBox17.isSelected()) newString = newString + ", IFNULL(r.code_dostavchik, 0)";
            if (!this.jCheckBox18.isSelected()) newString = newString + ", IFNULL(r.code_distributor, 0)";
            if (!this.jCheckBox19.isSelected()) newString = newString + ", IFNULL(r.code_operator, 0)";
            if (!this.jCheckBox20.isSelected()) newString = newString + ", IFNULL(r.code_speditor, 0)";
            newString = newString + ") AS con, r.number_df, r.type_df";
            namesQ.add("\u041D\u043E\u043C\u0435\u0440 \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442");
            namesQ.add("\u0422\u0438\u043F \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442");
            nubColums =+ 2;
            if (!this.jCheckBox13.isSelected()) {
                newString = newString + ", r.date_edition_df";
                namesQ.add("\u0414\u0430\u0442\u0430");
                nubColums =+ 1;
            }
            if (!this.jCheckBox14.isSelected()) {
                newString = newString + ", r.code_store, r.name_store";
                namesQ.add("\u041A\u043E\u0434 \u0441\u043A\u043B\u0430\u0434");
                nubColums =+ 1;
                namesQ.add("\u0418\u043C\u0435 \u0441\u043A\u043B\u0430\u0434");
                nubColums =+ 1;
            }
            if (!this.jCheckBox15.isSelected()) {
                newString = newString + ", r.code_client, r.name_client";
                namesQ.add("\u041A\u043E\u0434 \u043A\u043B\u0438\u0435\u043D\u0442");
                nubColums =+ 1;
                namesQ.add("\u0418\u043C\u0435 \u043A\u043B\u0438\u0435\u043D\u0442");
                nubColums =+ 1;
            }
            if (!this.jCheckBox16.isSelected()) {
                newString = newString + ", r.code_product, r.name_product";
                namesQ.add("\u041A\u043E\u0434 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
                nubColums =+ 1;
                namesQ.add("\u0418\u043C\u0435 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
                nubColums =+ 1;
            }
            if (!this.jCheckBox17.isSelected()) {
                newString = newString + ", r.code_dostavchik, r.name_dostavchik";
                namesQ.add("\u041A\u043E\u0434 \u0434\u043E\u0441\u0442\u0430\u0432\u0447\u0438\u043A");
                nubColums =+ 1;
                namesQ.add("\u0418\u043C\u0435 \u0434\u043E\u0441\u0442\u0430\u0432\u0447\u0438\u043A");
                nubColums =+ 1;
            }
            if (!this.jCheckBox18.isSelected()) {
                newString = newString + ", r.code_distributor, r.name_distributor";
                namesQ.add("\u041A\u043E\u0434 \u0434\u0438\u0441\u0442\u0440\u0438\u0431\u0443\u0442\u043E\u0440");
                nubColums =+ 1;
                namesQ.add("\u0418\u043C\u0435 \u0434\u0438\u0441\u0442\u0440\u0438\u0431\u0443\u0442\u043E\u0440");
                nubColums =+ 1;
            }
            if (!this.jCheckBox19.isSelected()) {
                newString = newString + ", r.code_operator, r.name_operator";
                namesQ.add("\u041A\u043E\u0434 \u043E\u043F\u0435\u0440\u0430\u0442\u043E\u0440");
                nubColums =+ 1;
                namesQ.add("\u0418\u043C\u0435 \u043E\u043F\u0435\u0440\u0430\u0442\u043E\u0440");
                nubColums =+ 1;
            }
            if (!this.jCheckBox20.isSelected()) {
                newString = newString + ", r.code_speditor, r.name_speditor";
                namesQ.add("\u041A\u043E\u0434 \u0441\u043F\u0435\u0434\u0438\u0442\u043E\u0440");
                nubColums =+ 1;
                namesQ.add("\u0418\u043C\u0435 \u0441\u043F\u0435\u0434\u0438\u0442\u043E\u0440");
                nubColums =+ 1;
            }
            newString = newString + ", r.total_df, r.dds_df, r.date_pay_df " +
                    "FROM rep_documents_new r";
            namesQ.add("\u0421\u0443\u043C\u0430 \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442");
            namesQ.add("\u0421\u0443\u043C\u0430 \u043D\u0430 \u0414\u0414\u0421");
            namesQ.add("\u0414\u0430\u0442\u0430 \u043D\u0430 \u043F\u043B\u0430\u0449\u0430\u043D\u0435");
            nubColums =+ 3;
            String doctypeList = "000";
            String typeDoc = " r.type_df IN(000";
            if (this.jCheckBox1.isSelected()) {
                doctypeList += ", 202";
                typeDoc += ", 202";
            }
            if (this.jCheckBox3.isSelected()) {
                doctypeList += ", 600";
                typeDoc += ", 600";
            }
            if (this.jCheckBox4.isSelected()) {
                doctypeList += ", 700";
                typeDoc += ", 700";
            }
            if (this.jCheckBox5.isSelected()) {
                doctypeList += ", 100";
                typeDoc += ", 100";
            }
            if (this.jCheckBox6.isSelected()) {
                doctypeList += ", 800";
                typeDoc += ", 800";
            }
            if (this.jCheckBox7.isSelected()) {
                doctypeList += ", 900";
                typeDoc += ", 900";
            }
            if (this.jCheckBox8.isSelected()) {
                doctypeList += "";
                typeDoc += "";
            }
            if (this.jCheckBox9.isSelected()) {
                doctypeList += ", 500";
                typeDoc += ", 500";
            }
            if (this.jCheckBox10.isSelected()) {
                doctypeList += "";
                typeDoc += "";
            }
            if (this.jCheckBox11.isSelected()) {
                doctypeList += "";
                typeDoc += "";
            }
            if (this.jCheckBox12.isSelected()) {
                doctypeList += "";
                typeDoc += "";
            }
            typeDoc += ")";
            System.out.println("Document types list: " + doctypeList);
            hm.put("doctypeList", doctypeList);
            try {
                newString = newString + " WHERE " + typeDoc +
                        "  AND r.date_edition_df BETWEEN '" + (String)formatterG.format(this.jXDatePicker1.getDate()) +
                        "' AND '" + (String)formatterG.format(this.jXDatePicker2.getDate()) +
                        "' AND r.code_store BETWEEN '" + Integer.parseInt(jTextField3.getText()) +
                        "' AND '" + Integer.parseInt(jTextField4.getText()) +
                        "' AND r.code_client BETWEEN '" + Integer.parseInt(jTextField5.getText()) +
                        "' AND '" + Integer.parseInt(jTextField6.getText()) +
                        "' AND r.code_product BETWEEN '" + Integer.parseInt(jTextField7.getText()) +
                        "' AND '" + Integer.parseInt(jTextField8.getText()) +
                        "' AND r.code_dostavchik BETWEEN '" + Integer.parseInt(jTextField9.getText()) +
                        "' AND '" + Integer.parseInt(jTextField10.getText()) +
                        "' AND r.code_distributor BETWEEN '" + Integer.parseInt(jTextField11.getText()) +
                        "' AND '" + Integer.parseInt(jTextField12.getText()) +
                        "' AND r.code_operator BETWEEN '" + Integer.parseInt(jTextField13.getText()) +
                        "' AND '" + Integer.parseInt(jTextField14.getText()) +
                        "' AND r.code_speditor BETWEEN '" + Integer.parseInt(jTextField15.getText()) +
                        "' AND '" + Integer.parseInt(jTextField16.getText()) + "' ";
                
                hm.put("otdata", (String)formatterG.format(this.jXDatePicker1.getDate()));
                hm.put("dodata", (String)formatterG.format(this.jXDatePicker2.getDate()));
                hm.put("otsklad", jTextField3.getText());
                hm.put("dosklad", jTextField4.getText());
                hm.put("otklient", jTextField5.getText());
                hm.put("doklient", jTextField6.getText());
                hm.put("otstoka", jTextField7.getText());
                hm.put("dostoka", jTextField8.getText());
                hm.put("otdostavchik", jTextField9.getText());
                hm.put("dodostavchik", jTextField10.getText());
                hm.put("otdistributor", jTextField11.getText());
                hm.put("dodistributor", jTextField12.getText());
                hm.put("otoperator", jTextField13.getText());
                hm.put("dooperator", jTextField14.getText());
                hm.put("otspeditor", jTextField15.getText());
                hm.put("dospeditor", jTextField16.getText());
                
            } catch (NumberFormatException ex) { ex.printStackTrace(); }
            String level = "";
            if(levelx == 3) {
                level = "003";
                hm.put("levelBoth", "");
                hm.put("levelReal", "");
                hm.put("levelVirtual", level);
            }
            if(levelx == 2) {
                level = "002";
                hm.put("levelBoth", "");
                hm.put("levelReal", level);
                hm.put("levelVirtual", "");
            }
            if(levelx == 1) {
                level = "003 OR r.level_df = 002 OR r.level_df = 001";
                hm.put("levelBoth", "001");
                hm.put("levelReal", "002");
                hm.put("levelVirtual", "003");
            }
            newString = newString + " AND (r.level_df = " + level + ") GROUP BY con ORDER BY r.date_edition_df ASC";
            String[] Names = (String[]) namesQ.toArray(new String[nubColums]);
            System.out.println(newString);
            try {
                initTable(newString, Names);
                imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table,
                        myFrame.getConn(), hm, getReportFile(), "\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u0438\u0437\u0434\u0430\u0434\u0435\u043d\u0438 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438", "");
                td.setVisible(true);
            } catch (Exception  ex) {
                ex.printStackTrace();
                constructDialod(newString, 0, Names);
                System.out.println("I CAN NOT FIND THE FILE SPECIFIED!");
            }
        } else {
            // Nekorekten izbor na period!
            imakante.com.MessagePane.Error("\u041D\u0435\u043A\u043E\u0435\u0440\u043A\u0442\u0435\u043D " +
                    "\u0438\u0437\u0431\u043E\u0440 \u043D\u0430 \u043F\u0435\u0440\u0438\u043E\u0434!");
        }
    }
    
    private void fillFromField(java.awt.event.KeyEvent evt, javax.swing.JTextField jtf) {
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jtf.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jtf.getText().equals("")) {
                jtf.setText("0");
                jtf.transferFocus();
            } else jtf.transferFocus();
        }
    }
    
    private void fillToField(java.awt.event.KeyEvent evt, javax.swing.JTextField jtf) {
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jtf.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jtf.getText().equals("")) {
                jtf.setText("999999999");
                jtf.transferFocus();
            } else jtf.transferFocus();
        }
    }
    
    private void selectAllTypes() {
        if (!this.jCheckBox1.isSelected())
            this.jCheckBox1.setSelected(true);
        else this.jCheckBox1.setSelected(false);
        if (!this.jCheckBox3.isSelected())
            this.jCheckBox3.setSelected(true);
        else this.jCheckBox3.setSelected(false);
        if (!this.jCheckBox4.isSelected())
            this.jCheckBox4.setSelected(true);
        else this.jCheckBox4.setSelected(false);
        if (!this.jCheckBox5.isSelected())
            this.jCheckBox5.setSelected(true);
        else this.jCheckBox5.setSelected(false);
        if (!this.jCheckBox6.isSelected())
            this.jCheckBox6.setSelected(true);
        else this.jCheckBox6.setSelected(false);
        if (!this.jCheckBox7.isSelected())
            this.jCheckBox7.setSelected(true);
        else this.jCheckBox7.setSelected(false);
        if (!this.jCheckBox8.isSelected())
            this.jCheckBox8.setSelected(true);
        else this.jCheckBox8.setSelected(false);
        if (!this.jCheckBox9.isSelected())
            this.jCheckBox9.setSelected(true);
        else this.jCheckBox9.setSelected(false);
        if (!this.jCheckBox10.isSelected())
            this.jCheckBox10.setSelected(true);
        else this.jCheckBox10.setSelected(false);
        if (!this.jCheckBox11.isSelected())
            this.jCheckBox11.setSelected(true);
        else this.jCheckBox11.setSelected(false);
        if (!this.jCheckBox12.isSelected())
            this.jCheckBox12.setSelected(true);
        else this.jCheckBox12.setSelected(false);
    }
    
    private void processField3() {
        String newString = strStore + this.jTextField3.getText() + "%'";
        constructDialod(newString, 3, Names);
    }
    
    private void processField4() {
        if(this.jTextField3.getText().equals(""))
            this.jTextField3.setText("0");
        String newString = strStore + this.jTextField4.getText() + "%' AND r.code_store >= "
                + this.jTextField3.getText() + " ORDER BY r.code_store ASC;";
        constructDialod(newString, 4, Names);
    }
    
    private void processField5() {
        String newString = strClient + this.jTextField5.getText() + "%'";
        constructDialod(newString, 5, Names);
    }
    
    private void processField6() {
        if(this.jTextField5.getText().equals(""))
            this.jTextField5.setText("0");
        String newString = strClient + this.jTextField6.getText() + "%' AND r.code_client >= "
                + this.jTextField5.getText() + " ORDER BY r.code_client ASC;";
        constructDialod(newString, 6, Names);
    }
    
    private void processField7() {
        String newString = strProduct + this.jTextField7.getText() + "%'";
        constructDialod(newString, 7, Names);
    }
    
    private void processField8() {
        if(this.jTextField7.getText().equals(""))
            this.jTextField7.setText("0");
        String newString = strProduct + this.jTextField8.getText() + "%' AND r.code_product >= "
                + this.jTextField7.getText() + " ORDER BY r.code_product ASC;";
        constructDialod(newString, 8, Names);
    }
    
    private void processField9() {
        String newString = strSupplier + this.jTextField9.getText() + "%'";
        constructDialod(newString, 9, Names);
    }
    
    private void processField10() {
        if(this.jTextField9.getText().equals(""))
            this.jTextField9.setText("0");
        String newString = strSupplier + this.jTextField10.getText() + "%' AND r.code_dostavchik >= "
                + this.jTextField9.getText() + " ORDER BY r.code_dostavchik ASC;";
        constructDialod(newString, 10, Names);
    }
    
    private void processField11() {
        String newString = strDistributor + this.jTextField11.getText() + "%'";
        constructDialod(newString, 11, Names);
    }
    
    private void processField12() {
        if(this.jTextField11.getText().equals(""))
            this.jTextField11.setText("0");
        String newString = strDistributor + this.jTextField12.getText() + "%' AND r.code_distributor >= "
                + this.jTextField11.getText() + " ORDER BY r.code_distributor ASC;";
        constructDialod(newString, 12, Names);
    }
    
    private void processField13() {
        String newString = strOperator + this.jTextField13.getText() + "%'";
        constructDialod(newString, 13, Names);
    }
    
    private void processField14() {
        if(this.jTextField13.getText().equals(""))
            this.jTextField13.setText("0");
        String newString = strOperator + this.jTextField14.getText() + "%' AND r.code_operator >= "
                + this.jTextField13.getText() + " ORDER BY r.code_operator ASC;";
        constructDialod(newString, 14, Names);
    }
    
    private void processField15() {
        String newString = strSpeditor + this.jTextField15.getText() + "%'";
        constructDialod(newString, 15, Names);
    }
    
    private void processField16() {
        if(this.jTextField15.getText().equals(""))
            this.jTextField15.setText("0");
        String newString = strSpeditor + this.jTextField16.getText() + "%' AND r.code_speditor >= "
                + this.jTextField15.getText() + "ORDER BY r.code_speditor ASC;";
        constructDialod(newString, 16, Names);
    }
    
    public String[] getNames() {
        return Names;
    }
    
    public void setNames(String[] Names) {
        this.Names = Names;
    }
    
    public int getIntTransfer() {
        return intTransfer;
    }
    
    public void setIntTransfer(int intTransfer) {
        this.intTransfer = intTransfer;
        if (CompNumber == 0) {  }
        if (CompNumber == 3) jTextField3.setText("" + this.intTransfer);
        if (CompNumber == 4) jTextField4.setText("" + this.intTransfer);
        if (CompNumber == 5) jTextField5.setText("" + this.intTransfer);
        if (CompNumber == 6) jTextField6.setText("" + this.intTransfer);
        if (CompNumber == 7) jTextField7.setText("" + this.intTransfer);
        if (CompNumber == 8) jTextField8.setText("" + this.intTransfer);
        if (CompNumber == 9) jTextField9.setText("" + this.intTransfer);
        if (CompNumber == 10) jTextField10.setText("" + this.intTransfer);
        if (CompNumber == 11) jTextField11.setText("" + this.intTransfer);
        if (CompNumber == 12) jTextField12.setText("" + this.intTransfer);
        if (CompNumber == 13) jTextField13.setText("" + this.intTransfer);
        if (CompNumber == 14) jTextField14.setText("" + this.intTransfer);
        if (CompNumber == 15) jTextField15.setText("" + this.intTransfer);
        if (CompNumber == 16) jTextField16.setText("" + this.intTransfer);
    }
    
    public long getLongTransfer() {
        return longTransfer;
    }
    
    public void setLongTransfer(long longTransfer) {
        this.longTransfer = longTransfer;
        if (CompNumber == 0) {  }
        if (CompNumber == 3) jTextField3.setText("" + this.longTransfer);
        if (CompNumber == 4) jTextField4.setText("" + this.longTransfer);
        if (CompNumber == 5) jTextField5.setText("" + this.longTransfer);
        if (CompNumber == 6) jTextField6.setText("" + this.longTransfer);
        if (CompNumber == 7) jTextField7.setText("" + this.longTransfer);
        if (CompNumber == 8) jTextField8.setText("" + this.longTransfer);
        if (CompNumber == 9) jTextField9.setText("" + this.longTransfer);
        if (CompNumber == 10) jTextField10.setText("" + this.longTransfer);
        if (CompNumber == 11) jTextField11.setText("" + this.longTransfer);
        if (CompNumber == 12) jTextField12.setText("" + this.longTransfer);
        if (CompNumber == 13) jTextField13.setText("" + this.longTransfer);
        if (CompNumber == 14) jTextField14.setText("" + this.longTransfer);
        if (CompNumber == 15) jTextField15.setText("" + this.longTransfer);
        if (CompNumber == 16) jTextField16.setText("" + this.longTransfer);
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public String getReportFile() {
        return reportFile;
    }
    
    public void setReportFile(String reportFile) {
        this.reportFile = reportFile;
    }
    
    private void fGain(javax.swing.JComponent jtf) {
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf) {
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 255, 255), null));
    }
    
}
