
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
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jCheckBox13 = new javax.swing.JCheckBox();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jXDatePicker2 = new org.jdesktop.swingx.JXDatePicker();
        jPanel3 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jCheckBox14 = new javax.swing.JCheckBox();
        jPanel4 = new javax.swing.JPanel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jTextField6 = new javax.swing.JTextField();
        jCheckBox15 = new javax.swing.JCheckBox();
        jPanel5 = new javax.swing.JPanel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jTextField7 = new javax.swing.JTextField();
        jTextField8 = new javax.swing.JTextField();
        jCheckBox16 = new javax.swing.JCheckBox();
        jPanel6 = new javax.swing.JPanel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jTextField9 = new javax.swing.JTextField();
        jTextField10 = new javax.swing.JTextField();
        jCheckBox17 = new javax.swing.JCheckBox();
        jPanel7 = new javax.swing.JPanel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        jTextField11 = new javax.swing.JTextField();
        jTextField12 = new javax.swing.JTextField();
        jCheckBox18 = new javax.swing.JCheckBox();
        jPanel8 = new javax.swing.JPanel();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jTextField13 = new javax.swing.JTextField();
        jTextField14 = new javax.swing.JTextField();
        jCheckBox19 = new javax.swing.JCheckBox();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel9 = new javax.swing.JPanel();
        jLabel23 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        jTextField15 = new javax.swing.JTextField();
        jTextField16 = new javax.swing.JTextField();
        jCheckBox20 = new javax.swing.JCheckBox();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jLabel25 = new javax.swing.JLabel();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0418\u0417\u0414\u0410\u0414\u0415\u041d\u0418 \u0414\u041e\u041a\u0423\u041c\u0415\u041d\u0422\u0418");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u0422\u0438\u043f\u043e\u0432\u0435 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438"));
        jCheckBox1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jCheckBox1.setText("\u0424\u0430\u043a\u0442\u0443\u0440\u0438");
        jCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox1KeyPressed(evt);
            }
        });

        jCheckBox3.setText("\u0420\u0430\u0437\u043f\u0438\u0441\u043a\u0438 \u043f\u043e \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u043d\u0435");
        jCheckBox3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox3.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox3KeyPressed(evt);
            }
        });

        jCheckBox4.setText("\u0420\u0430\u0437\u043f\u0438\u0441\u043a\u0438 \u043f\u043e \u043f\u0440\u0435\u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435");
        jCheckBox4.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox4.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox4KeyPressed(evt);
            }
        });

        jCheckBox5.setFont(new java.awt.Font("Tahoma", 1, 11));
        jCheckBox5.setText("\u041f\u0440\u043e\u0434\u0430\u0436\u0431\u0438");
        jCheckBox5.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox5.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox5KeyPressed(evt);
            }
        });

        jCheckBox6.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0437\u0430 \u0431\u0440\u0430\u043a");
        jCheckBox6.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox6.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox6KeyPressed(evt);
            }
        });

        jCheckBox7.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0437\u0430 \u043b\u0438\u043f\u0441\u0438");
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
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 206, Short.MAX_VALUE)
                .add(jButton5)
                .addContainerGap())
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0414\u0410\u0422\u0410"));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel2.setText("\u041e\u0422");

        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel3.setText("\u0414\u041e");

        jCheckBox13.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox13.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox13.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox13.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox13KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 22, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 23, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox13)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel2)
                    .add(jLabel3)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox13))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0421\u041a\u041b\u0410\u0414"));
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel5.setText("\u041e\u0422");

        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel6.setText("\u0414\u041e");

        jTextField3.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField3.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField3FocusGained(evt);
            }
        });
        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        jTextField4.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField4.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField4.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField4FocusGained(evt);
            }
        });
        jTextField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField4KeyPressed(evt);
            }
        });

        jCheckBox14.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox14.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox14.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox14.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox14KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 17, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 114, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 16, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 114, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox14)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel5)
                    .add(jLabel6)
                    .add(jCheckBox14)
                    .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041a\u041b\u0418\u0415\u041d\u0422"));
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel8.setText("\u041e\u0422");

        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel9.setText("\u0414\u041e");

        jTextField5.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField5.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField5.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField5FocusGained(evt);
            }
        });
        jTextField5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField5KeyPressed(evt);
            }
        });

        jTextField6.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField6.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField6.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField6FocusGained(evt);
            }
        });
        jTextField6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField6KeyPressed(evt);
            }
        });

        jCheckBox15.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox15.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox15.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox15.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox15KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 118, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 19, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 107, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox15)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel8)
                    .add(jLabel9)
                    .add(jCheckBox15)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0421\u0422\u041e\u041a\u0410"));
        jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel11.setText("\u041e\u0422");

        jLabel12.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel12.setText("\u0414\u041e");

        jTextField7.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField7.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField7.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField7FocusGained(evt);
            }
        });
        jTextField7.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField7KeyPressed(evt);
            }
        });

        jTextField8.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField8.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField8.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField8FocusGained(evt);
            }
        });
        jTextField8.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField8KeyPressed(evt);
            }
        });

        jCheckBox16.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox16.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox16.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox16.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox16KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 19, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 119, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel12, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 20, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 102, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(9, 9, 9)
                .add(jCheckBox16)
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel11)
                    .add(jCheckBox16)
                    .add(jTextField8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel12)
                    .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel6.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0414\u041e\u0421\u0422\u0410\u0412\u0427\u0418\u041a"));
        jLabel14.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel14.setText("\u041e\u0422");

        jLabel15.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel15.setText("\u0414\u041e");

        jTextField9.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField9.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField9.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField9FocusGained(evt);
            }
        });
        jTextField9.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField9KeyPressed(evt);
            }
        });

        jTextField10.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField10.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField10.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField10FocusGained(evt);
            }
        });
        jTextField10.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField10KeyPressed(evt);
            }
        });

        jCheckBox17.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox17.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox17.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox17.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox17KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel6Layout = new org.jdesktop.layout.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel14, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 21, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 120, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel15, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 21, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 101, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox17)
                .addContainerGap())
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel14)
                    .add(jCheckBox17)
                    .add(jTextField10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel15)
                    .add(jTextField9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel7.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0414\u0418\u0421\u0422\u0420\u0418\u0411\u0423\u0422\u041e\u0420"));
        jLabel17.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel17.setText("\u041e\u0422");

        jLabel18.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel18.setText("\u0414\u041e");

        jTextField11.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField11.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField11.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField11FocusGained(evt);
            }
        });
        jTextField11.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField11KeyPressed(evt);
            }
        });

        jTextField12.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField12.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField12.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField12FocusGained(evt);
            }
        });
        jTextField12.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField12KeyPressed(evt);
            }
        });

        jCheckBox18.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox18.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox18.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox18.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox18KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel7Layout = new org.jdesktop.layout.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel17, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 21, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 120, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel18, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 21, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 101, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox18)
                .addContainerGap())
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .add(jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel17)
                    .add(jCheckBox18)
                    .add(jTextField12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel18)
                    .add(jTextField11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel8.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041e\u041f\u0415\u0420\u0410\u0422\u041e\u0420"));
        jLabel20.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel20.setText("\u041e\u0422");

        jLabel21.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel21.setText("\u0414\u041e");

        jTextField13.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField13.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField13.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField13FocusGained(evt);
            }
        });
        jTextField13.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField13KeyPressed(evt);
            }
        });

        jTextField14.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField14.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField14.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField14FocusGained(evt);
            }
        });
        jTextField14.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField14KeyPressed(evt);
            }
        });

        jCheckBox19.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox19.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox19.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox19.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox19KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel8Layout = new org.jdesktop.layout.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel20, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 18, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField13, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(6, 6, 6)
                .add(jLabel21, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 20, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 103, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox19)
                .addContainerGap())
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .add(jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel20)
                    .add(jCheckBox19)
                    .add(jTextField14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel21)
                    .add(jTextField13, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
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

        jPanel9.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0421\u041f\u0415\u0414\u0418\u0422\u041e\u0420"));
        jLabel23.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel23.setText("\u041e\u0422");

        jLabel24.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel24.setText("\u0414\u041e");

        jTextField15.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField15.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField15.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField15FocusGained(evt);
            }
        });
        jTextField15.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField15KeyPressed(evt);
            }
        });

        jTextField16.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField16.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField16.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField16FocusGained(evt);
            }
        });
        jTextField16.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField16KeyPressed(evt);
            }
        });

        jCheckBox20.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox20.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox20.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox20.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox20KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel9Layout = new org.jdesktop.layout.GroupLayout(jPanel9);
        jPanel9.setLayout(jPanel9Layout);
        jPanel9Layout.setHorizontalGroup(
            jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel23, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 18, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField15, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(5, 5, 5)
                .add(jLabel24, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 20, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField16, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 104, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCheckBox20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 71, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel9Layout.setVerticalGroup(
            jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel9Layout.createSequentialGroup()
                .add(jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel23)
                    .add(jCheckBox20)
                    .add(jTextField16, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel24)
                    .add(jTextField15, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

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

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, layout.createSequentialGroup()
                        .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel4, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel3, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .add(jPanel9, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel8, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED))
                    .add(layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(jLabel25, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 15, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 90, Short.MAX_VALUE)
                        .add(jButton1)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton3)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton4)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton2)))
                .addContainerGap())
        );

        layout.linkSize(new java.awt.Component[] {jButton1, jButton2}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, layout.createSequentialGroup()
                        .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton2)
                    .add(jLabel25)
                    .add(jButton4)
                    .add(jButton3)
                    .add(jButton1))
                .addContainerGap(13, Short.MAX_VALUE))
        );
        setBounds(100, 20, 601, 583);
    }// </editor-fold>//GEN-END:initComponents
    
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
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField16.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField16.getText().equals("")) {
                jTextField16.setText("999999999");
                jTextField16.transferFocus();
            } else jTextField16.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField16();
    }//GEN-LAST:event_jTextField16KeyPressed
    
    private void jTextField16FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField16FocusGained
        jTextField16.selectAll();
    }//GEN-LAST:event_jTextField16FocusGained
    
    private void jTextField15KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField15KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField15.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField15.getText().equals("")) {
                jTextField15.setText("1");
                jTextField15.transferFocus();
            } else jTextField15.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField15();
    }//GEN-LAST:event_jTextField15KeyPressed
    
    private void jTextField15FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField15FocusGained
        jTextField15.selectAll();
    }//GEN-LAST:event_jTextField15FocusGained
    
    private void jTextField3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusGained
        jTextField3.selectAll();
    }//GEN-LAST:event_jTextField3FocusGained
    
    private void jTextField4FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusGained
        jTextField4.selectAll();
    }//GEN-LAST:event_jTextField4FocusGained
    
    private void jTextField5FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusGained
        jTextField5.selectAll();
    }//GEN-LAST:event_jTextField5FocusGained
    
    private void jTextField6FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusGained
        jTextField6.selectAll();
    }//GEN-LAST:event_jTextField6FocusGained
    
    private void jTextField7FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusGained
        jTextField7.selectAll();
    }//GEN-LAST:event_jTextField7FocusGained
    
    private void jTextField8FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField8FocusGained
        jTextField8.selectAll();
    }//GEN-LAST:event_jTextField8FocusGained
    
    private void jTextField9FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField9FocusGained
        jTextField9.selectAll();
    }//GEN-LAST:event_jTextField9FocusGained
    
    private void jTextField10FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField10FocusGained
        jTextField10.selectAll();
    }//GEN-LAST:event_jTextField10FocusGained
    
    private void jTextField11FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField11FocusGained
        jTextField11.selectAll();
    }//GEN-LAST:event_jTextField11FocusGained
    
    private void jTextField12FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField12FocusGained
        jTextField12.selectAll();
    }//GEN-LAST:event_jTextField12FocusGained
    
    private void jTextField13FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField13FocusGained
        jTextField13.selectAll();
    }//GEN-LAST:event_jTextField13FocusGained
    
    private void jTextField14FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField14FocusGained
        jTextField14.selectAll();
    }//GEN-LAST:event_jTextField14FocusGained
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField3.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField3.getText().equals("")) {
                jTextField3.setText("1");
                jTextField3.transferFocus();
            } else jTextField3.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField3();
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField4.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField4.getText().equals("")) {
                jTextField4.setText("999999999");
                jTextField4.transferFocus();
            } else jTextField4.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField4();
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jTextField5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField5KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField5.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField5.getText().equals("")) {
                jTextField5.setText("1");
                jTextField5.transferFocus();
            } else jTextField5.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField5();
    }//GEN-LAST:event_jTextField5KeyPressed
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField6.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField6.getText().equals("")) {
                jTextField6.setText("999999999");
                jTextField6.transferFocus();
            } else jTextField6.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField6();
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jTextField7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField7KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField7.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField7.getText().equals("")) {
                jTextField7.setText("1");
                jTextField7.transferFocus();
            } else jTextField7.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField7();
    }//GEN-LAST:event_jTextField7KeyPressed
    
    private void jTextField8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField8KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField8.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField8.getText().equals("")) {
                jTextField8.setText("999999999");
                jTextField8.transferFocus();
            } else jTextField8.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField8();
    }//GEN-LAST:event_jTextField8KeyPressed
    
    private void jTextField9KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField9KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField9.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField9.getText().equals("")) {
                jTextField9.setText("1");
                jTextField9.transferFocus();
            } else jTextField9.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField9();
    }//GEN-LAST:event_jTextField9KeyPressed
    
    private void jTextField10KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField10KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField10.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField10.getText().equals("")) {
                jTextField10.setText("999999999");
                jTextField10.transferFocus();
            } else jTextField10.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField10();
    }//GEN-LAST:event_jTextField10KeyPressed
    
    private void jTextField11KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField11KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField11.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField11.getText().equals("")) {
                jTextField11.setText("1");
                jTextField11.transferFocus();
            } else jTextField11.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField11();
    }//GEN-LAST:event_jTextField11KeyPressed
    
    private void jTextField12KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField12KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField12.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField12.getText().equals("")) {
                jTextField12.setText("999999999");
                jTextField12.transferFocus();
            } else jTextField12.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField12();
    }//GEN-LAST:event_jTextField12KeyPressed
    
    private void jTextField13KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField13KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField13.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField13.getText().equals("")) {
                jTextField13.setText("1");
                jTextField13.transferFocus();
            } else jTextField13.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField13();
    }//GEN-LAST:event_jTextField13KeyPressed
    
    private void jTextField14KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField14KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField14.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField14.getText().equals("")) {
                jTextField14.setText("999999999");
                jTextField14.transferFocus();
            } else jTextField14.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField14();
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
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
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
    private int CompNumber = 0;
    private String[] Names = { "\u041a\u041e\u0414", "\u0418\u041c\u0415" };
    private String[] NamesQ = { "\u041D\u043E\u043C\u0435\u0440\u0430\u0442\u043E\u0440" };
    java.text.SimpleDateFormat formatterG = new java.text.SimpleDateFormat("yyyy-MM-dd");
    
    private String strStore = "SELECT rep_documents.code_store, rep_documents.name_store " +
            "FROM rep_documents WHERE rep_documents.code_store LIKE '%";
    private String strClient = "SELECT rep_documents.code_client, rep_documents.name_client " +
            "FROM rep_documents WHERE rep_documents.code_client LIKE '%";
    private String strProduct = "SELECT rep_documents.code_product, rep_documents.name_product " +
            "FROM rep_documents WHERE rep_documents.code_product LIKE '%";
    private String strSupplier = "SELECT rep_documents.code_dostavchik, rep_documents.name_dostavchik " +
            "FROM rep_documents WHERE rep_documents.code_dostavchik LIKE '%";
    private String strDistributor = "SELECT rep_documents.code_distributor, rep_documents.name_distributor " +
            "FROM rep_documents WHERE rep_documents.code_distributor LIKE '%";
    private String strOperator = "SELECT rep_documents.code_operator, name_operator " +
            "FROM rep_documents WHERE rep_documents.code_operator LIKE '%";
    private String strSpeditor = "SELECT rep_documents.code_speditor, rep_documents.name_speditor " +
            "FROM rep_documents WHERE rep_documents.code_speditor LIKE '%";
    private String qu = "SELECT ";
    private String reportFile = null;
    private java.util.HashMap hm = null;
    
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
        if(jTextField3.getText().equals("")) jTextField3.setText("1");
        if(jTextField4.getText().equals("")) jTextField4.setText("999999999");
        if(jTextField5.getText().equals("")) jTextField5.setText("1");
        if(jTextField6.getText().equals("")) jTextField6.setText("999999999");
        if(jTextField7.getText().equals("")) jTextField7.setText("1");
        if(jTextField8.getText().equals("")) jTextField8.setText("999999999");
        if(jTextField9.getText().equals("")) jTextField9.setText("1");
        if(jTextField10.getText().equals("")) jTextField10.setText("999999999");
        if(jTextField11.getText().equals("")) jTextField11.setText("1");
        if(jTextField12.getText().equals("")) jTextField12.setText("999999999");
        if(jTextField13.getText().equals("")) jTextField13.setText("1");
        if(jTextField14.getText().equals("")) jTextField14.setText("999999999");
        if(jTextField15.getText().equals("")) jTextField15.setText("1");
        if(jTextField16.getText().equals("")) jTextField16.setText("999999999");
    }
    
    private void processReport() {
        String newString = qu;
        newString = newString + " DISTINCT CONCAT(rep_documents.level_df";
        java.util.List namesQ = new java.util.ArrayList();
        namesQ.add("\u041D\u043E\u043C\u0435\u0440\u0430\u0442\u043E\u0440");
        int nubColums = 0;
        nubColums =+ 1;
        if (this.jCheckBox13.isSelected())
            this.setReportFile("report_Documents.jasper");
        else if (this.jCheckBox14.isSelected())
            this.setReportFile("report_Documents2RazbivkaSklad.jasper");
        else if (this.jCheckBox15.isSelected())
            this.setReportFile("report_Documents2RazbivkaKlienti.jasper");
        else if (this.jCheckBox16.isSelected())
            this.setReportFile("report_Documents2RazbivkaProd.jasper");
        else if (this.jCheckBox17.isSelected())
            this.setReportFile("report_Documents.jasper");
        else if (this.jCheckBox18.isSelected())
            this.setReportFile("report_Documents2RazbivkaDistributor.jasper");
        else if (this.jCheckBox19.isSelected())
            this.setReportFile("report_Documents2RazbivkaOperator.jasper");
        else if (this.jCheckBox20.isSelected())
            this.setReportFile("report_Documents.jasper");
        else this.setReportFile("report_Documents.jasper");
        if (!this.jCheckBox13.isSelected()) newString = newString + ", IFNULL(rep_documents.date_edition_df, 0)";
        if (!this.jCheckBox14.isSelected()) newString = newString + ", IFNULL(rep_documents.code_store, 0)";
        if (!this.jCheckBox15.isSelected()) newString = newString + ", IFNULL(rep_documents.code_client, 0)";
        if (!this.jCheckBox16.isSelected()) newString = newString + ", IFNULL(rep_documents.code_product, 0)";
        if (!this.jCheckBox17.isSelected()) newString = newString + ", IFNULL(rep_documents.code_dostavchik, 0)";
        if (!this.jCheckBox18.isSelected()) newString = newString + ", IFNULL(rep_documents.code_distributor, 0)";
        if (!this.jCheckBox19.isSelected()) newString = newString + ", IFNULL(rep_documents.code_operator, 0)";
        if (!this.jCheckBox20.isSelected()) newString = newString + ", IFNULL(rep_documents.code_speditor, 0)";
        newString = newString + ") AS con, rep_documents.number_df, rep_documents.type_df";
        namesQ.add("\u041D\u043E\u043C\u0435\u0440 \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442");
        namesQ.add("\u0422\u0438\u043F \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442");
        nubColums =+ 2;
        if (!this.jCheckBox13.isSelected()) {
            newString = newString + ", rep_documents.date_edition_df";
            namesQ.add("\u0414\u0430\u0442\u0430");
            nubColums =+ 1;
        }
        if (!this.jCheckBox14.isSelected()) {
            newString = newString + ", rep_documents.code_store, rep_documents.name_store";
            namesQ.add("\u041A\u043E\u0434 \u0441\u043A\u043B\u0430\u0434");
            nubColums =+ 1;
            namesQ.add("\u0418\u043C\u0435 \u0441\u043A\u043B\u0430\u0434");
            nubColums =+ 1;
        }
        if (!this.jCheckBox15.isSelected()) {
            newString = newString + ", rep_documents.code_client, rep_documents.name_client";
            namesQ.add("\u041A\u043E\u0434 \u043A\u043B\u0438\u0435\u043D\u0442");
            nubColums =+ 1;
            namesQ.add("\u0418\u043C\u0435 \u043A\u043B\u0438\u0435\u043D\u0442");
            nubColums =+ 1;
        }
        if (!this.jCheckBox16.isSelected()) {
            newString = newString + ", rep_documents.code_product, rep_documents.name_product";
            namesQ.add("\u041A\u043E\u0434 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
            nubColums =+ 1;
            namesQ.add("\u0418\u043C\u0435 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
            nubColums =+ 1;
        }
        if (!this.jCheckBox17.isSelected()) {
            newString = newString + ", rep_documents.code_dostavchik, rep_documents.name_dostavchik";
            namesQ.add("\u041A\u043E\u0434 \u0434\u043E\u0441\u0442\u0430\u0432\u0447\u0438\u043A");
            nubColums =+ 1;
            namesQ.add("\u0418\u043C\u0435 \u0434\u043E\u0441\u0442\u0430\u0432\u0447\u0438\u043A");
            nubColums =+ 1;
        }
        if (!this.jCheckBox18.isSelected()) {
            newString = newString + ", rep_documents.code_distributor, rep_documents.name_distributor";
            namesQ.add("\u041A\u043E\u0434 \u0434\u0438\u0441\u0442\u0440\u0438\u0431\u0443\u0442\u043E\u0440");
            nubColums =+ 1;
            namesQ.add("\u0418\u043C\u0435 \u0434\u0438\u0441\u0442\u0440\u0438\u0431\u0443\u0442\u043E\u0440");
            nubColums =+ 1;
        }
        if (!this.jCheckBox19.isSelected()) {
            newString = newString + ", rep_documents.code_operator, rep_documents.name_operator";
            namesQ.add("\u041A\u043E\u0434 \u043E\u043F\u0435\u0440\u0430\u0442\u043E\u0440");
            nubColums =+ 1;
            namesQ.add("\u0418\u043C\u0435 \u043E\u043F\u0435\u0440\u0430\u0442\u043E\u0440");
            nubColums =+ 1;
        }
        if (!this.jCheckBox20.isSelected()) {
            newString = newString + ", rep_documents.code_speditor, rep_documents.name_speditor";
            namesQ.add("\u041A\u043E\u0434 \u0441\u043F\u0435\u0434\u0438\u0442\u043E\u0440");
            nubColums =+ 1;
            namesQ.add("\u0418\u043C\u0435 \u0441\u043F\u0435\u0434\u0438\u0442\u043E\u0440");
            nubColums =+ 1;
        }
        newString = newString + ", rep_documents.total_df, rep_documents.dds_df, rep_documents.date_pay_df " +
                "FROM rep_documents";
        namesQ.add("\u0421\u0443\u043C\u0430 \u0434\u043E\u043A\u0443\u043C\u0435\u043D\u0442");
        namesQ.add("\u0421\u0443\u043C\u0430 \u043D\u0430 \u0414\u0414\u0421");
        namesQ.add("\u0414\u0430\u0442\u0430 \u043D\u0430 \u043F\u043B\u0430\u0449\u0430\u043D\u0435");
        nubColums =+ 3;
        String typeDoc = " rep_documents.type_df IN(000";
        if (this.jCheckBox1.isSelected()) typeDoc = typeDoc + ", 202";
        if (this.jCheckBox3.isSelected()) typeDoc = typeDoc + ", 600";
        if (this.jCheckBox4.isSelected()) typeDoc = typeDoc + ", 700";
        if (this.jCheckBox5.isSelected()) typeDoc = typeDoc + ", 100";
        if (this.jCheckBox6.isSelected()) typeDoc = typeDoc + ", 800";
        if (this.jCheckBox7.isSelected()) typeDoc = typeDoc + ", 900";
        if (this.jCheckBox8.isSelected()) typeDoc = typeDoc + "";
        if (this.jCheckBox9.isSelected()) typeDoc = typeDoc + ", 500";
        if (this.jCheckBox10.isSelected()) typeDoc = typeDoc + "";
        if (this.jCheckBox11.isSelected()) typeDoc = typeDoc + "";
        if (this.jCheckBox12.isSelected()) typeDoc = typeDoc + "";
        typeDoc = typeDoc + ")";
        try {
            newString = newString + " WHERE " + typeDoc +
                    "  AND rep_documents.date_edition_df BETWEEN '" + (String)formatterG.format(this.jXDatePicker1.getDate()) +
                    "' AND '" + (String)formatterG.format(this.jXDatePicker2.getDate()) +
                    "' AND rep_documents.code_store BETWEEN '" + (Integer.parseInt(jTextField3.getText()) - 1) +
                    "' AND '" + (Integer.parseInt(jTextField4.getText()) + 1) +
                    "' AND rep_documents.code_client BETWEEN '" + (Integer.parseInt(jTextField5.getText()) - 1) +
                    "' AND '" + (Integer.parseInt(jTextField6.getText()) + 1) +
                    "' AND rep_documents.code_product BETWEEN '" + (Integer.parseInt(jTextField7.getText()) - 1) +
                    "' AND '" + (Integer.parseInt(jTextField8.getText()) + 1) +
                    "' AND rep_documents.code_dostavchik BETWEEN '" + (Integer.parseInt(jTextField9.getText()) - 1) +
                    "' AND '" + (Integer.parseInt(jTextField10.getText()) + 1) +
                    "' AND rep_documents.code_distributor BETWEEN '" + (Integer.parseInt(jTextField11.getText()) - 1) +
                    "' AND '" + (Integer.parseInt(jTextField12.getText()) + 1) +
                    "' AND rep_documents.code_operator BETWEEN '" + (Integer.parseInt(jTextField13.getText()) - 1) +
                    "' AND '" + (Integer.parseInt(jTextField14.getText()) + 1) +
                    "' AND rep_documents.code_speditor BETWEEN '" + (Integer.parseInt(jTextField15.getText()) - 1) +
                    "' AND '" + (Integer.parseInt(jTextField16.getText()) + 1) + "' ";
        } catch (NumberFormatException ex) { ex.printStackTrace(); }
        if(levelx == 3) newString = newString + " AND rep_documents.level_df = 0";
        if(levelx == 2) newString = newString + " AND rep_documents.level_df = 1";
        if(levelx == 1) newString = newString + " AND rep_documents.level_df IN(0,1)";
        newString = newString + " GROUP BY con ORDER BY rep_documents.date_edition_df ASC";
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
        if(this.jTextField3.getText() == "") this.jTextField3.setText("0");
        String newString = strStore + this.jTextField4.getText() + "%' AND rep_documents.code_store >= " + this.jTextField3.getText() + ";";
        constructDialod(newString, 4, Names);
    }
    
    private void processField5() {
        String newString = strClient + this.jTextField5.getText() + "%'";
        constructDialod(newString, 5, Names);
    }
    
    private void processField6() {
        if(this.jTextField5.getText() == "") this.jTextField5.setText("0");
        String newString = strClient + this.jTextField6.getText() + "%' AND rep_documents.code_client >= " + this.jTextField5.getText() + ";";
        constructDialod(newString, 6, Names);
    }
    
    private void processField7() {
        String newString = strProduct + this.jTextField7.getText() + "%'";
        constructDialod(newString, 7, Names);
    }
    
    private void processField8() {
        if(this.jTextField7.getText() == "") this.jTextField7.setText("0");
        String newString = strProduct + this.jTextField8.getText() + "%' AND rep_documents.code_product >= " + this.jTextField7.getText() + ";";
        constructDialod(newString, 8, Names);
    }
    
    private void processField9() {
        String newString = strSupplier + this.jTextField9.getText() + "%'";
        constructDialod(newString, 9, Names);
    }
    
    private void processField10() {
        if(this.jTextField9.getText() == "") this.jTextField9.setText("0");
        String newString = strSupplier + this.jTextField10.getText() + "%' AND rep_documents.code_dostavchik >= " + this.jTextField9.getText() + ";";
        constructDialod(newString, 10, Names);
    }
    
    private void processField11() {
        String newString = strDistributor + this.jTextField11.getText() + "%'";
        constructDialod(newString, 11, Names);
    }
    
    private void processField12() {
        if(this.jTextField11.getText() == "") this.jTextField11.setText("0");
        String newString = strDistributor + this.jTextField12.getText() + "%' AND rep_documents.code_distributor >= " + this.jTextField11.getText() + ";";
        constructDialod(newString, 12, Names);
    }
    
    private void processField13() {
        String newString = strOperator + this.jTextField13.getText() + "%'";
        constructDialod(newString, 13, Names);
    }
    
    private void processField14() {
        if(this.jTextField13.getText() == "") this.jTextField13.setText("0");
        String newString = strOperator + this.jTextField14.getText() + "%' AND rep_documents.code_operator >= " + this.jTextField13.getText() + ";";
        constructDialod(newString, 14, Names);
    }
    
    private void processField15() {
        String newString = strSpeditor + this.jTextField15.getText() + "%'";
        constructDialod(newString, 15, Names);
    }
    
    private void processField16() {
        if(this.jTextField15.getText() == "") this.jTextField15.setText("0");
        String newString = strSpeditor + this.jTextField16.getText() + "%' AND rep_documents.code_speditor >= " + this.jTextField15.getText() + ";";
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
    
}
