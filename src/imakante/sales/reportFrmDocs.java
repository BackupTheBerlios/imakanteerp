
package imakante.sales;

import java.awt.event.WindowEvent;

public class reportFrmDocs extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public reportFrmDocs(String title, imakante.com.vcomponents.iFrame parentFrame) {
        super(title);
        myFrame = parentFrame;
        prepareConn();
        prepareStm();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jCheckBox1 = new javax.swing.JCheckBox();
        jCheckBox2 = new javax.swing.JCheckBox();
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
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jCheckBox13 = new javax.swing.JCheckBox();
        jPanel3 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jCheckBox14 = new javax.swing.JCheckBox();
        jPanel4 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jTextField6 = new javax.swing.JTextField();
        jCheckBox15 = new javax.swing.JCheckBox();
        jPanel5 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jTextField7 = new javax.swing.JTextField();
        jTextField8 = new javax.swing.JTextField();
        jCheckBox16 = new javax.swing.JCheckBox();
        jPanel6 = new javax.swing.JPanel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jTextField9 = new javax.swing.JTextField();
        jTextField10 = new javax.swing.JTextField();
        jCheckBox17 = new javax.swing.JCheckBox();
        jPanel7 = new javax.swing.JPanel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        jTextField11 = new javax.swing.JTextField();
        jTextField12 = new javax.swing.JTextField();
        jCheckBox18 = new javax.swing.JCheckBox();
        jPanel8 = new javax.swing.JPanel();
        jLabel19 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jTextField13 = new javax.swing.JTextField();
        jTextField14 = new javax.swing.JTextField();
        jCheckBox19 = new javax.swing.JCheckBox();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u0437\u0430 \u0418\u0437\u0434\u0430\u0434\u0435\u043d\u0438 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u0422\u0438\u043f\u043e\u0432\u0435 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438"));
        jCheckBox1.setText("\u0414\u0430\u043d\u044a\u0447\u043d\u0438 \u0444\u0430\u043a\u0442\u0443\u0440\u0438");
        jCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox2.setText("\u041e\u043f\u0440\u043e\u0441\u0442\u0435\u043d\u0438 \u0444\u0430\u043a\u0442\u0443\u0440\u0438");
        jCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox2.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox3.setText("\u0420\u0430\u0437\u043f\u0438\u0441\u043a\u0438 \u043f\u043e \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u043d\u0435");
        jCheckBox3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox3.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox4.setText("\u0420\u0430\u0437\u043f\u0438\u0441\u043a\u0438 \u043f\u043e \u043f\u0440\u0435\u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435");
        jCheckBox4.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox4.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox5.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u043e\u0442 \u0440\u0435\u0432\u0438\u0437\u0438\u0438");
        jCheckBox5.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox5.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox6.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0437\u0430 \u0431\u0440\u0430\u043a");
        jCheckBox6.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox6.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox7.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0437\u0430 \u043b\u0438\u043f\u0441\u0438");
        jCheckBox7.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox7.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox8.setText("\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0437\u0430 \u043f\u0440\u0435\u043e\u0446\u0435\u043d\u043a\u0430");
        jCheckBox8.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox8.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox9.setText("\u041d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0438\u044f");
        jCheckBox9.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox9.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox10.setText("\u0412\u044a\u0442\u0440\u0435\u0448\u043d\u0438 \u043f\u043e\u0440\u044a\u0447\u043a\u0438");
        jCheckBox10.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox10.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox11.setText("\u0412\u044a\u043d\u0448\u043d\u0438 \u043f\u043e\u0440\u044a\u0447\u043a\u0438");
        jCheckBox11.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox11.setMargin(new java.awt.Insets(0, 0, 0, 0));

        jCheckBox12.setText("\u041e\u0444\u0435\u0440\u0442\u0438");
        jCheckBox12.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox12.setMargin(new java.awt.Insets(0, 0, 0, 0));

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jCheckBox1)
                    .add(jCheckBox5)
                    .add(jCheckBox9))
                .add(23, 23, 23)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jCheckBox2)
                    .add(jCheckBox6)
                    .add(jCheckBox10))
                .add(20, 20, 20)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jCheckBox3)
                    .add(jCheckBox7)
                    .add(jCheckBox11))
                .add(20, 20, 20)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jCheckBox12)
                    .add(jCheckBox8)
                    .add(jCheckBox4))
                .addContainerGap(22, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jCheckBox1)
                    .add(jCheckBox2)
                    .add(jCheckBox3)
                    .add(jCheckBox4))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jCheckBox5)
                    .add(jCheckBox6)
                    .add(jCheckBox7)
                    .add(jCheckBox8))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jCheckBox9)
                    .add(jCheckBox10)
                    .add(jCheckBox11)
                    .add(jCheckBox12))
                .addContainerGap(13, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel1.setText("\u0421\u041a\u041b\u0410\u0414");

        jLabel2.setText("\u043e\u0442:");

        jLabel3.setText("\u0434\u043e:");

        jTextField1.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField1.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField1FocusGained(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jTextField2.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField2.setPreferredSize(new java.awt.Dimension(120, 20));
        jTextField2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField2FocusGained(evt);
            }
        });
        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        jCheckBox13.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox13.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox13.setMargin(new java.awt.Insets(0, 0, 0, 0));

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCheckBox13, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(74, 74, 74))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1)
                    .add(jLabel2)
                    .add(jLabel3)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox13))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel4.setText("\u041a\u041b\u0418\u0415\u041d\u0422");

        jLabel5.setText("\u043e\u0442:");

        jLabel6.setText("\u0434\u043e:");

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

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCheckBox14, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(74, 74, 74))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel4)
                    .add(jLabel5)
                    .add(jLabel6)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox14))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel7.setText("\u0421\u0422\u041e\u041a\u0410");

        jLabel8.setText("\u043e\u0442:");

        jLabel9.setText("\u0434\u043e:");

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

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCheckBox15, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(74, 74, 74))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel7)
                    .add(jLabel8)
                    .add(jLabel9)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox15))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jPanel5.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel10.setText("\u0414\u041e\u0421\u0422\u0410\u0412\u0427\u0418\u041a");

        jLabel11.setText("\u043e\u0442:");

        jLabel12.setText("\u0434\u043e:");

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

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel10, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel12, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCheckBox16, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(74, 74, 74))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel10)
                    .add(jLabel11)
                    .add(jLabel12)
                    .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox16))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jPanel6.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel13.setText("\u0414\u0418\u0421\u0422\u0420\u0418\u0411\u0423\u0422\u041e\u0420");

        jLabel14.setText("\u043e\u0442:");

        jLabel15.setText("\u0434\u043e:");

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

        org.jdesktop.layout.GroupLayout jPanel6Layout = new org.jdesktop.layout.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel13, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel14, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel15, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField10, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCheckBox17, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(74, 74, 74))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel13)
                    .add(jLabel14)
                    .add(jLabel15)
                    .add(jTextField9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox17))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jPanel7.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel16.setText("\u041e\u041f\u0415\u0420\u0410\u0422\u041e\u0420");

        jLabel17.setText("\u043e\u0442:");

        jLabel18.setText("\u0434\u043e:");

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

        org.jdesktop.layout.GroupLayout jPanel7Layout = new org.jdesktop.layout.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel16, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel17, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel18, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField12, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCheckBox18, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(74, 74, 74))
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel16)
                    .add(jLabel17)
                    .add(jLabel18)
                    .add(jTextField11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox18))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel8.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jLabel19.setText("\u0421\u041f\u0415\u0414\u0418\u0422\u041e\u0420");

        jLabel20.setText("\u043e\u0442:");

        jLabel21.setText("\u0434\u043e:");

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

        org.jdesktop.layout.GroupLayout jPanel8Layout = new org.jdesktop.layout.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .add(54, 54, 54)
                .add(jLabel19, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 74, Short.MAX_VALUE)
                .add(22, 22, 22)
                .add(jLabel20, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField13, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(38, 38, 38)
                .add(jLabel21, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 17, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField14, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 120, Short.MAX_VALUE)
                .add(29, 29, 29)
                .add(jCheckBox19, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(74, 74, 74))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel19)
                    .add(jLabel20)
                    .add(jLabel21)
                    .add(jTextField13, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox19))
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

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                        .add(jButton1)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jButton2)))
                .addContainerGap())
        );

        layout.linkSize(new java.awt.Component[] {jButton1, jButton2}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
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
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton2)
                    .add(jButton1))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        jTextField1.selectAll();
    }//GEN-LAST:event_jTextField1FocusGained

    private void jTextField2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusGained
        jTextField2.selectAll();
    }//GEN-LAST:event_jTextField2FocusGained

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

    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField1.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField1.getText().equals("")) {
                jTextField1.setText("1");
                jTextField1.transferFocus();
            } else jTextField1.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField1();
    }//GEN-LAST:event_jTextField1KeyPressed

    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField2.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField2.getText().equals("")) {
                jTextField2.setText("999999999");
                jTextField2.transferFocus();
            } else jTextField2.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField2();
    }//GEN-LAST:event_jTextField2KeyPressed

    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField3.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField3.getText().equals("")) {
                jTextField3.setText("1");
                jTextField3.transferFocus();
            } else jTextField3.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField3();
    }//GEN-LAST:event_jTextField3KeyPressed

    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField4.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField4.getText().equals("")) {
                jTextField4.setText("999999999");
                jTextField4.transferFocus();
            } else jTextField4.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField4();
    }//GEN-LAST:event_jTextField4KeyPressed

    private void jTextField5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField5KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField5.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField5.getText().equals("")) {
                jTextField5.setText("1");
                jTextField5.transferFocus();
            } else jTextField5.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField5();
    }//GEN-LAST:event_jTextField5KeyPressed

    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField6.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField6.getText().equals("")) {
                jTextField6.setText("999999999");
                jTextField6.transferFocus();
            } else jTextField6.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField6();
    }//GEN-LAST:event_jTextField6KeyPressed

    private void jTextField7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField7KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField7.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField7.getText().equals("")) {
                jTextField7.setText("1");
                jTextField7.transferFocus();
            } else jTextField7.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField7();
    }//GEN-LAST:event_jTextField7KeyPressed

    private void jTextField8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField8KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField8.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField8.getText().equals("")) {
                jTextField8.setText("999999999");
                jTextField8.transferFocus();
            } else jTextField8.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField8();
    }//GEN-LAST:event_jTextField8KeyPressed

    private void jTextField9KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField9KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField9.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField9.getText().equals("")) {
                jTextField9.setText("1");
                jTextField9.transferFocus();
            } else jTextField9.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField9();
    }//GEN-LAST:event_jTextField9KeyPressed

    private void jTextField10KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField10KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField10.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField10.getText().equals("")) {
                jTextField10.setText("999999999");
                jTextField10.transferFocus();
            } else jTextField10.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField10();
    }//GEN-LAST:event_jTextField10KeyPressed

    private void jTextField11KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField11KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField11.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField11.getText().equals("")) {
                jTextField11.setText("1");
                jTextField11.transferFocus();
            } else jTextField11.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField11();
    }//GEN-LAST:event_jTextField11KeyPressed

    private void jTextField12KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField12KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField12.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField12.getText().equals("")) {
                jTextField12.setText("999999999");
                jTextField12.transferFocus();
            } else jTextField12.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField12();
    }//GEN-LAST:event_jTextField12KeyPressed

    private void jTextField13KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField13KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField13.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField13.getText().equals("")) {
                jTextField13.setText("1");
                jTextField13.transferFocus();
            } else jTextField13.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField13();
    }//GEN-LAST:event_jTextField13KeyPressed

    private void jTextField14KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField14KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) jTextField14.setText("");
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
            if (jTextField14.getText().equals("")) {
                jTextField14.setText("999999999");
                jTextField14.transferFocus();
            } else jTextField14.transferFocus();
        }
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) processField14();
    }//GEN-LAST:event_jTextField14KeyPressed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        fillBlanck();
        processReport();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
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
    private javax.swing.JCheckBox jCheckBox2;
    private javax.swing.JCheckBox jCheckBox3;
    private javax.swing.JCheckBox jCheckBox4;
    private javax.swing.JCheckBox jCheckBox5;
    private javax.swing.JCheckBox jCheckBox6;
    private javax.swing.JCheckBox jCheckBox7;
    private javax.swing.JCheckBox jCheckBox8;
    private javax.swing.JCheckBox jCheckBox9;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
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
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField10;
    private javax.swing.JTextField jTextField11;
    private javax.swing.JTextField jTextField12;
    private javax.swing.JTextField jTextField13;
    private javax.swing.JTextField jTextField14;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JTextField jTextField9;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iFrame myFrame;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    
    private  int intTransfer;
    private  int CompNumber = 0;
    private String[] Names = { "\u041a\u041e\u0414", "\u0418\u041c\u0415" };
    private String[] NamesQ = {  };
    
    private String strStore;
    private String strClient;
    private String strProduct;
    private String strSupplier;
    private String strDistributor;
    private String strOperator;
    private String strSpeditor;
    
    public void windowOpened(WindowEvent e) {
    }
    public void windowClosing(WindowEvent e) {
    }
    public void windowClosed(WindowEvent e) {
    }
    public void windowIconified(WindowEvent e) {
    }
    public void windowDeiconified(WindowEvent e) {
    }
    public void windowActivated(WindowEvent e) {
    }
    public void windowDeactivated(WindowEvent e) {
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
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table);
        td.setVisible(true);
    }
    
    private void fillBlanck() {
        if(jTextField1.getText() == "") jTextField1.setText("1");
        if(jTextField2.getText() == "") jTextField2.setText("999999999");
        if(jTextField3.getText() == "") jTextField3.setText("1");
        if(jTextField4.getText() == "") jTextField4.setText("999999999");
        if(jTextField5.getText() == "") jTextField5.setText("1");
        if(jTextField6.getText() == "") jTextField6.setText("999999999");
        if(jTextField7.getText() == "") jTextField7.setText("1");
        if(jTextField8.getText() == "") jTextField8.setText("999999999");
        if(jTextField9.getText() == "") jTextField9.setText("1");
        if(jTextField10.getText() == "") jTextField10.setText("999999999");
        if(jTextField11.getText() == "") jTextField11.setText("1");
        if(jTextField12.getText() == "") jTextField12.setText("999999999");
        if(jTextField13.getText() == "") jTextField13.setText("1");
        if(jTextField14.getText() == "") jTextField14.setText("999999999");
    }

    private void processReport() {
        
    }

    private void processField1() {
        String newString = strStore + this.jTextField1.getText() + "%'";
        constructDialod(newString, 1, Names);
    }

    private void processField2() {
        if(this.jTextField1.getText() == "") this.jTextField1.setText("0");
        String newString = strStore + this.jTextField2.getText() + "%' AND ........... >= " + this.jTextField1.getText() + ";";
        constructDialod(newString, 2, Names);
    }

    private void processField3() {
        String newString = strClient + this.jTextField3.getText() + "%'";
        constructDialod(newString, 3, Names);
    }

    private void processField4() {
        if(this.jTextField3.getText() == "") this.jTextField3.setText("0");
        String newString = strClient + this.jTextField4.getText() + "%' AND ........... >= " + this.jTextField3.getText() + ";";
        constructDialod(newString, 4, Names);
    }

    private void processField5() {
        String newString = strProduct + this.jTextField5.getText() + "%'";
        constructDialod(newString, 5, Names);
    }

    private void processField6() {
        if(this.jTextField5.getText() == "") this.jTextField5.setText("0");
        String newString = strProduct + this.jTextField6.getText() + "%' AND ........... >= " + this.jTextField5.getText() + ";";
        constructDialod(newString, 6, Names);
    }

    private void processField7() {
        String newString = strSupplier + this.jTextField7.getText() + "%'";
        constructDialod(newString, 7, Names);
    }

    private void processField8() {
        if(this.jTextField7.getText() == "") this.jTextField7.setText("0");
        String newString = strSupplier + this.jTextField8.getText() + "%' AND ........... >= " + this.jTextField7.getText() + ";";
        constructDialod(newString, 8, Names);
    }

    private void processField9() {
        String newString = strDistributor + this.jTextField9.getText() + "%'";
        constructDialod(newString, 9, Names);
    }

    private void processField10() {
        if(this.jTextField9.getText() == "") this.jTextField9.setText("0");
        String newString = strDistributor + this.jTextField10.getText() + "%' AND .......... >= " + this.jTextField9.getText() + ";";
        constructDialod(newString, 10, Names);
    }

    private void processField11() {
        String newString = strOperator + this.jTextField11.getText() + "%'";
        constructDialod(newString, 11, Names);
    }

    private void processField12() {
        if(this.jTextField11.getText() == "") this.jTextField11.setText("0");
        String newString = strOperator + this.jTextField12.getText() + "%' AND .......... >= " + this.jTextField11.getText() + ";";
        constructDialod(newString, 12, Names);
    }

    private void processField13() {
        String newString = strSpeditor + this.jTextField13.getText() + "%'";
        constructDialod(newString, 13, Names);
    }

    private void processField14() {
        if(this.jTextField13.getText() == "") this.jTextField13.setText("0");
        String newString = strSpeditor + this.jTextField14.getText() + "%' AND .......... >= " + this.jTextField13.getText() + ";";
        constructDialod(newString, 14, Names);
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
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
}
