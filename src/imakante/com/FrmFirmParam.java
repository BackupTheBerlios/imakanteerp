
package imakante.com;

import java.sql.SQLException;

public class FrmFirmParam extends javax.swing.JDialog  {
    
    public FrmFirmParam(imakante.sales.sales_main parent, boolean modal,java.sql.Connection Connection) {
        super(parent, modal);
        frame = parent;
        conn = Connection;
        initComponents();
        getParam();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jtfBul = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jtfDan = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jtfData_r = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jtfData_c = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jtfAddress = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jtfNm = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jtfCode = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jtfTel = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jtfEmail = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        jtfNkid = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jtfBoss = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        jtfAcc = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();
        jtfWeb = new javax.swing.JTextField();
        jTextField1 = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jLabel19 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jLabel20 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        jLabel21 = new javax.swing.JLabel();
        jTextField7 = new javax.swing.JTextField();
        jLabel22 = new javax.swing.JLabel();
        jTextField8 = new javax.swing.JTextField();
        jLabel23 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        jTextField9 = new javax.swing.JTextField();
        jTextField10 = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0424\u0438\u0440\u043c\u0435\u043d\u0438 \u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438");
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0424\u0438\u0440\u043c\u0435\u043d\u0438 \u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"));
        jLabel1.setText("\u0418\u043c\u0435 \u043d\u0430 \u0444\u0438\u0440\u043c\u0430\u0442\u0430:");

        jtfName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfNameFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfNameFocusLost(evt);
            }
        });
        jtfName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfNameKeyPressed(evt);
            }
        });

        jLabel2.setText("\u0418\u041d:");

        jtfBul.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfBulFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfBulFocusLost(evt);
            }
        });
        jtfBul.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfBulKeyPressed(evt);
            }
        });

        jLabel3.setText("\u0414\u0430\u043d\u044a\u0447\u0435\u043d \u043d\u043e\u043c\u0435\u0440:");

        jtfDan.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfDanFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfDanFocusLost(evt);
            }
        });
        jtfDan.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfDanKeyPressed(evt);
            }
        });

        jLabel4.setText("\u0414\u0430\u0442\u0430 \u0434\u0430\u043d\u044a\u0447\u043d\u0430 \u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f:");

        jtfData_r.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfData_rFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfData_rFocusLost(evt);
            }
        });
        jtfData_r.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfData_rKeyPressed(evt);
            }
        });

        jLabel5.setText("\u0414\u0430\u0442\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f:");

        jtfData_c.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfData_cFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfData_cFocusLost(evt);
            }
        });
        jtfData_c.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfData_cKeyPressed(evt);
            }
        });

        jLabel6.setText("\u0410\u0434\u0440\u0435\u0441:");

        jtfAddress.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfAddressFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfAddressFocusLost(evt);
            }
        });
        jtfAddress.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfAddressKeyPressed(evt);
            }
        });

        jLabel7.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e:");

        jtfNm.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfNmFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfNmFocusLost(evt);
            }
        });
        jtfNm.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfNmKeyPressed(evt);
            }
        });

        jLabel8.setText("\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434:");

        jtfCode.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfCodeFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfCodeFocusLost(evt);
            }
        });
        jtfCode.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfCodeKeyPressed(evt);
            }
        });

        jLabel9.setText("T\u0435\u043b\u0435\u0444\u043e\u043d:");

        jtfTel.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfTelFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfTelFocusLost(evt);
            }
        });
        jtfTel.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfTelKeyPressed(evt);
            }
        });

        jLabel10.setText("e-mail:");

        jtfEmail.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfEmailFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfEmailFocusLost(evt);
            }
        });
        jtfEmail.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfEmailKeyPressed(evt);
            }
        });

        jLabel11.setText("\u041d\u041a\u0418\u0414:");

        jtfNkid.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfNkidFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfNkidFocusLost(evt);
            }
        });
        jtfNkid.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfNkidKeyPressed(evt);
            }
        });

        jLabel12.setText("\u0418\u043c\u0435 \u0443\u043f\u0440\u0430\u0432\u0438\u0442\u0435\u043b:");

        jtfBoss.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfBossFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfBossFocusLost(evt);
            }
        });
        jtfBoss.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfBossKeyPressed(evt);
            }
        });

        jLabel13.setText("\u0418\u043c\u0435 \u0441\u0447\u0435\u0442\u043e\u0432\u043e\u0434\u0438\u0442\u0435\u043b:");

        jtfAcc.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfAccFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfAccFocusLost(evt);
            }
        });
        jtfAcc.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfAccKeyPressed(evt);
            }
        });

        jLabel14.setText("Web:");

        jtfWeb.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfWebFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfWebFocusLost(evt);
            }
        });
        jtfWeb.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfWebKeyPressed(evt);
            }
        });

        jTextField1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField1FocusLost(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jLabel15.setText("\u0415\u0413\u041d \u0443\u043f\u0440\u0430\u0432\u0438\u0442\u0435\u043b:");

        jLabel16.setText("\u041d\u041b\u041a:");

        jTextField2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField2FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField2FocusLost(evt);
            }
        });
        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        jLabel17.setText("\u0411\u0430\u043d\u043a\u0430 \u0440\u0430\u0437\u043f\u043b\u0430\u0449\u0430\u0442\u0435\u043b\u043d\u0430 \u0441\u043c\u0435\u0442\u043a\u0430:");

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

        jLabel18.setText("IBAN:");

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

        jLabel19.setText("BIC:");

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

        jLabel20.setText("\u0411\u0430\u043d\u043a\u0430 \u0414\u0414\u0421 \u0441\u043c\u0435\u0442\u043a\u0430:");

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

        jLabel21.setText("IBAN:");

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

        jLabel22.setText("BIC:");

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

        jLabel23.setText("\u0412\u0430\u043b\u0443\u0442\u0430 \u0440\u0430\u0437\u043f\u043b\u0430\u0449\u0430\u0442\u0435\u043b\u043d\u0430:");

        jLabel24.setText("\u0412\u0430\u043b\u0443\u0442\u0430 \u0414\u0414\u0421:");

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

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel23)
                    .add(jLabel21)
                    .add(jLabel20)
                    .add(jLabel18)
                    .add(jLabel17)
                    .add(jLabel13)
                    .add(jLabel12)
                    .add(jLabel11)
                    .add(jLabel9)
                    .add(jLabel7)
                    .add(jLabel6)
                    .add(jLabel4)
                    .add(jLabel2)
                    .add(jLabel1)
                    .add(jLabel15))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                        .add(jtfName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 485, Short.MAX_VALUE)
                        .add(jPanel1Layout.createSequentialGroup()
                            .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                .add(jPanel1Layout.createSequentialGroup()
                                    .add(jtfData_r, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 147, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .add(jLabel5))
                                .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                                    .add(jtfBul, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 224, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                    .add(jLabel3)))
                            .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                            .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                .add(jtfData_c, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 179, Short.MAX_VALUE)
                                .add(jtfDan))))
                    .add(jtfAddress, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 493, Short.MAX_VALUE)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jtfNkid)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jtfTel)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jtfNm, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 223, Short.MAX_VALUE))
                        .add(13, 13, 13)
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jLabel8)
                            .add(jLabel10)
                            .add(jLabel14))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jtfEmail, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 176, Short.MAX_VALUE)
                            .add(jtfCode, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 176, Short.MAX_VALUE)
                            .add(jtfWeb, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 176, Short.MAX_VALUE)))
                    .add(jtfBoss, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 493, Short.MAX_VALUE)
                    .add(jtfAcc, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 493, Short.MAX_VALUE)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 224, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(65, 65, 65)
                        .add(jLabel16)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jTextField2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 175, Short.MAX_VALUE))
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 493, Short.MAX_VALUE)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 225, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(68, 68, 68)
                        .add(jLabel19)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jTextField5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 175, Short.MAX_VALUE))
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 493, Short.MAX_VALUE)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(jTextField9)
                            .add(jTextField7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 223, Short.MAX_VALUE))
                        .add(23, 23, 23)
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel22)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel24))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTextField10, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 177, Short.MAX_VALUE)
                            .add(jTextField8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 177, Short.MAX_VALUE))))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1)
                    .add(jtfName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jtfBul, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3)
                    .add(jtfDan, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel4)
                    .add(jtfData_r, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel5)
                    .add(jtfData_c, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel6)
                    .add(jtfAddress, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel7)
                    .add(jtfNm, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel8)
                    .add(jtfCode, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel9)
                    .add(jtfTel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel10)
                    .add(jtfEmail, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel11)
                    .add(jtfNkid, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel14)
                    .add(jtfWeb, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel12)
                    .add(jtfBoss, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(7, 7, 7)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel15)
                    .add(jLabel16)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel13)
                    .add(jtfAcc, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel17)
                    .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel18)
                    .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel19)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel20)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel21)
                    .add(jTextField7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel22))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel23)
                    .add(jLabel24)
                    .add(jTextField9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jButton1.setText("\u0417\u0430\u043f\u0430\u0437\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("\u0418\u0437\u0445\u043e\u0434");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(530, Short.MAX_VALUE)
                .add(jButton1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButton2)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jButton2)
                    .add(jButton1))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 676, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-684)/2, (screenSize.height-481)/2, 684, 481);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField10KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField10KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField10KeyPressed
    
    private void jTextField9KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField9KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField9KeyPressed
    
    private void jTextField8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField8KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField8KeyPressed
    
    private void jTextField7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField7KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField7KeyPressed
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jTextField5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField5KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField5KeyPressed
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jtfAccKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfAccKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfAccKeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jtfBossKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfBossKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfBossKeyPressed
    
    private void jtfWebKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfWebKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfWebKeyPressed
    
    private void jtfNkidKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfNkidKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfNkidKeyPressed
    
    private void jtfEmailKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfEmailKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfEmailKeyPressed
    
    private void jtfTelKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfTelKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfTelKeyPressed
    
    private void jtfCodeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfCodeKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfCodeKeyPressed
    
    private void jtfNmKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfNmKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfNmKeyPressed
    
    private void jtfAddressKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfAddressKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfAddressKeyPressed
    
    private void jtfData_cKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfData_cKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfData_cKeyPressed
    
    private void jtfData_rKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfData_rKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfData_rKeyPressed
    
    private void jtfDanKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfDanKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfDanKeyPressed
    
    private void jtfBulKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfBulKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfBulKeyPressed
    
    private void jtfNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfNameKeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jtfNameKeyPressed
    
    private void jTextField10FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField10FocusLost
        fLost(jTextField10);
    }//GEN-LAST:event_jTextField10FocusLost
    
    private void jTextField9FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField9FocusLost
        fLost(jTextField9);
    }//GEN-LAST:event_jTextField9FocusLost
    
    private void jTextField8FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField8FocusLost
        fLost(jTextField8);
    }//GEN-LAST:event_jTextField8FocusLost
    
    private void jTextField7FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusLost
        fLost(jTextField7);
    }//GEN-LAST:event_jTextField7FocusLost
    
    private void jTextField6FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusLost
        fLost(jTextField6);
    }//GEN-LAST:event_jTextField6FocusLost
    
    private void jTextField5FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusLost
        fLost(jTextField5);
    }//GEN-LAST:event_jTextField5FocusLost
    
    private void jTextField4FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusLost
        fLost(jTextField4);
    }//GEN-LAST:event_jTextField4FocusLost
    
    private void jTextField3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusLost
        fLost(jTextField3);
    }//GEN-LAST:event_jTextField3FocusLost
    
    private void jtfAccFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfAccFocusLost
        fLost(jtfAcc);
    }//GEN-LAST:event_jtfAccFocusLost
    
    private void jTextField2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusLost
        fLost(jTextField2);
    }//GEN-LAST:event_jTextField2FocusLost
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        fLost(jTextField1);
    }//GEN-LAST:event_jTextField1FocusLost
    
    private void jtfBossFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfBossFocusLost
        fLost(jtfBoss);
    }//GEN-LAST:event_jtfBossFocusLost
    
    private void jtfWebFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfWebFocusLost
        fLost(jtfWeb);
    }//GEN-LAST:event_jtfWebFocusLost
    
    private void jtfNkidFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfNkidFocusLost
        fLost(jtfNkid);
    }//GEN-LAST:event_jtfNkidFocusLost
    
    private void jtfEmailFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfEmailFocusLost
        fLost(jtfEmail);
    }//GEN-LAST:event_jtfEmailFocusLost
    
    private void jtfTelFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfTelFocusLost
        fLost(jtfTel);
    }//GEN-LAST:event_jtfTelFocusLost
    
    private void jtfCodeFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfCodeFocusLost
        fLost(jtfCode);
    }//GEN-LAST:event_jtfCodeFocusLost
    
    private void jtfNmFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfNmFocusLost
        fLost(jtfNm);
    }//GEN-LAST:event_jtfNmFocusLost
    
    private void jtfAddressFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfAddressFocusLost
        fLost(jtfAddress);
    }//GEN-LAST:event_jtfAddressFocusLost
    
    private void jtfData_cFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfData_cFocusLost
        fLost(jtfData_c);
    }//GEN-LAST:event_jtfData_cFocusLost
    
    private void jtfData_rFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfData_rFocusLost
        fLost(jtfData_r);
    }//GEN-LAST:event_jtfData_rFocusLost
    
    private void jtfDanFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfDanFocusLost
        fLost(jtfDan);
    }//GEN-LAST:event_jtfDanFocusLost
    
    private void jtfBulFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfBulFocusLost
        fLost(jtfBul);
    }//GEN-LAST:event_jtfBulFocusLost
    
    private void jtfNameFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfNameFocusLost
        fLost(jtfName);
    }//GEN-LAST:event_jtfNameFocusLost
    
    private void jTextField10FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField10FocusGained
        fGain(jTextField10);
    }//GEN-LAST:event_jTextField10FocusGained
    
    private void jTextField9FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField9FocusGained
        fGain(jTextField9);
    }//GEN-LAST:event_jTextField9FocusGained
    
    private void jTextField8FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField8FocusGained
        fGain(jTextField8);
    }//GEN-LAST:event_jTextField8FocusGained
    
    private void jTextField7FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField7FocusGained
        fGain(jTextField7);
    }//GEN-LAST:event_jTextField7FocusGained
    
    private void jTextField6FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusGained
        fGain(jTextField6);
    }//GEN-LAST:event_jTextField6FocusGained
    
    private void jTextField5FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusGained
        fGain(jTextField5);
    }//GEN-LAST:event_jTextField5FocusGained
    
    private void jTextField4FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusGained
        fGain(jTextField4);
    }//GEN-LAST:event_jTextField4FocusGained
    
    private void jTextField3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusGained
        fGain(jTextField3);
    }//GEN-LAST:event_jTextField3FocusGained
    
    private void jtfAccFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfAccFocusGained
        fGain(jtfAcc);
    }//GEN-LAST:event_jtfAccFocusGained
    
    private void jTextField2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusGained
        fGain(jTextField2);
    }//GEN-LAST:event_jTextField2FocusGained
    
    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        fGain(jTextField1);
    }//GEN-LAST:event_jTextField1FocusGained
    
    private void jtfBossFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfBossFocusGained
        fGain(jtfBoss);
    }//GEN-LAST:event_jtfBossFocusGained
    
    private void jtfWebFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfWebFocusGained
        fGain(jtfWeb);
    }//GEN-LAST:event_jtfWebFocusGained
    
    private void jtfNkidFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfNkidFocusGained
        fGain(jtfNkid);
    }//GEN-LAST:event_jtfNkidFocusGained
    
    private void jtfEmailFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfEmailFocusGained
        fGain(jtfEmail);
    }//GEN-LAST:event_jtfEmailFocusGained
    
    private void jtfTelFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfTelFocusGained
        fGain(jtfTel);
    }//GEN-LAST:event_jtfTelFocusGained
    
    private void jtfCodeFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfCodeFocusGained
        fGain(jtfCode);
    }//GEN-LAST:event_jtfCodeFocusGained
    
    private void jtfNmFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfNmFocusGained
        fGain(jtfNm);
    }//GEN-LAST:event_jtfNmFocusGained
    
    private void jtfAddressFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfAddressFocusGained
        fGain(jtfAddress);
    }//GEN-LAST:event_jtfAddressFocusGained
    
    private void jtfData_cFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfData_cFocusGained
        fGain(jtfData_c);
    }//GEN-LAST:event_jtfData_cFocusGained
    
    private void jtfData_rFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfData_rFocusGained
        fGain(jtfData_r);
    }//GEN-LAST:event_jtfData_rFocusGained
    
    private void jtfDanFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfDanFocusGained
        fGain(jtfDan);
    }//GEN-LAST:event_jtfDanFocusGained
    
    private void jtfBulFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfBulFocusGained
        fGain(jtfBul);
    }//GEN-LAST:event_jtfBulFocusGained
    
    private void jtfNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfNameFocusGained
        fGain(jtfName);
    }//GEN-LAST:event_jtfNameFocusGained
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        close();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        changeParam();
        close();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
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
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField10;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JTextField jTextField9;
    private javax.swing.JTextField jtfAcc;
    private javax.swing.JTextField jtfAddress;
    private javax.swing.JTextField jtfBoss;
    private javax.swing.JTextField jtfBul;
    private javax.swing.JTextField jtfCode;
    private javax.swing.JTextField jtfDan;
    private javax.swing.JTextField jtfData_c;
    private javax.swing.JTextField jtfData_r;
    private javax.swing.JTextField jtfEmail;
    private javax.swing.JTextField jtfName;
    private javax.swing.JTextField jtfNkid;
    private javax.swing.JTextField jtfNm;
    private javax.swing.JTextField jtfTel;
    private javax.swing.JTextField jtfWeb;
    // End of variables declaration//GEN-END:variables
    private imakante.sales.sales_main frame;
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    private int id = 0;
    
    private String selectQ =
            " SELECT " +
            "`ls_sluj`.`Id` AS `id`, " +
            "`ls_sluj`.`name_firm` AS `name`, " +
            "`ls_sluj`.`dan_nom` AS `dan`, " +
            "`ls_sluj`.`bul` AS `bul`, " +
            "`ls_sluj`.`address` AS `address`, " +
            "`ls_sluj`.`nam_boss` AS `boss`, " +
            "`ls_sluj`.`nam_acc` AS `acc`, " +
            "`ls_sluj`.`nkid` AS `nkid`, " +
            "`ls_sluj`.`telefon` AS `tel`, " +
            "`ls_sluj`.`data_reg_dds` AS `data_r`, " +
            "`ls_sluj`.`data_c` AS `data_c`, " +
            "`ls_sluj`.`nm` AS `nm`, " +
            "`ls_sluj`.`postcode` AS `code`, " +
            "`ls_sluj`.`email` AS `email`, " +
            "`ls_sluj`.`web` AS `web` ," +
            "`ls_sluj`.`boss_egn` AS `boss_egn` ," +
            "`ls_sluj`.`boss_nlk` AS `boss_nlk` ," +
            "`ls_sluj`.`bankR` AS `bankR` ," +
            "`ls_sluj`.`ibanR` AS `ibanR` ," +
            "`ls_sluj`.`bicR` AS `bicR` ," +
            "`ls_sluj`.`bankD` AS `bankD`, " +
            "`ls_sluj`.`ibanD` AS `ibanD` ," +
            "`ls_sluj`.`bicD` AS `bicD` ," +
            "`ls_sluj`.`valr` AS `valr` ," +
            "`ls_sluj`.`vald` AS `vald` " +
            
            "FROM "+
            "`ls_sluj`";
    
    private void getParam(){
        System.out.println("ot get na Slujebni");
        try {
            stm = conn.createStatement();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        
        try {
            rs = stm.executeQuery(selectQ);
            while(rs.next()){
                id = rs.getInt("id");
                jtfName.setText(rs.getString("name"));
                jtfDan.setText(rs.getString("dan"));
                jtfBul.setText(rs.getString("bul"));
                jtfAddress.setText(rs.getString("address"));
                jtfBoss.setText(rs.getString("boss"));
                jtfAcc.setText(rs.getString("acc"));
                jtfNkid.setText(rs.getString("nkid"));
                jtfTel.setText(rs.getString("tel"));
                jtfData_r.setText(rs.getString("data_r"));
                jtfData_c.setText(rs.getString("data_c"));
                jtfNm.setText(rs.getString("nm"));
                jtfCode.setText(rs.getString("code"));
                jtfEmail.setText(rs.getString("email"));
                jtfWeb.setText(rs.getString("web"));
                jTextField1.setText(rs.getString("boss_egn"));
                jTextField2.setText(rs.getString("boss_nlk"));
                jTextField3.setText(rs.getString("bankR"));
                jTextField4.setText(rs.getString("ibanR"));
                jTextField5.setText(rs.getString("bicR"));
                jTextField6.setText(rs.getString("bankD"));
                jTextField7.setText(rs.getString("ibanD"));
                jTextField8.setText(rs.getString("bicD"));
                jTextField9.setText(rs.getString("valr"));
                jTextField10.setText(rs.getString("vald"));
            }
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    private void changeParam() {
        System.out.println("ot set na Slujebni");
        if (id==0){
            try {
            stm.execute(
                    "INSERT INTO `ls_sluj` (`Id`,`name_firm`,`dan_nom`,`bul`,`address`,`nam_boss`,`nam_acc`,`nkid`,`telefon`,`data_reg_dds`,`data_c`,`nm`,`postcode`,`email`,`web`,`boss_egn`,`boss_nlk`,`bankR`,`ibanR`,`bicR`,`bankD`,`ibanD`,`bicD`,`valr`,`vald`) "
                    + "VALUES ('1'," 
                    + jtfName.getText() + "," 
                    + jtfDan.getText() + "," 
                    + jtfBul.getText() + "," 
                    + jtfAddress.getText() + "," 
                    + jtfBoss.getText() + "," 
                    + jtfAcc.getText() + "," 
                    + jtfNkid.getText() + "," 
                    + jtfTel.getText() + "," 
                    + jtfData_r.getText() + "," 
                    + jtfData_c.getText() + "," 
                    + jtfNm.getText() + "," 
                    + jtfCode.getText() + "," 
                    + jtfEmail.getText() + "," 
                    + jtfWeb.getText() + "," 
                    + jTextField1.getText() + "," 
                    + jTextField2.getText() + "," 
                    + jTextField3.getText() + "," 
                    + jTextField4.getText() + "," 
                    + jTextField5.getText() + "," 
                    + jTextField6.getText() + "," 
                    + jTextField7.getText() + "," 
                    + jTextField8.getText() + "," 
                    + jTextField9.getText() + "," 
                    + jTextField10.getText() + ")");
                    } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        } else{
            try {
                stm.execute("UPDATE `mida`.`ls_sluj` SET " +
                        "`ls_sluj`.name_firm = '" + jtfName.getText() + "', " +
                        "`ls_sluj`.dan_nom = '" + jtfDan.getText() + "', " +
                        "`ls_sluj`.bul = '" + jtfBul.getText() + "', " +
                        "`ls_sluj`.address = '" + jtfAddress.getText() + "', " +
                        "`ls_sluj`.nam_boss = '" + jtfBoss.getText() + "', " +
                        "`ls_sluj`.nam_acc = '" + jtfAcc.getText() + "', " +
                        "`ls_sluj`.nkid = '" + jtfNkid.getText() + "', " +
                        "`ls_sluj`.telefon = '" + jtfTel.getText() + "', " +
                        "`ls_sluj`.data_reg_dds = '" + jtfData_r.getText() + "', " +
                        "`ls_sluj`.data_c = '" + jtfData_c.getText() + "', " +
                        "`ls_sluj`.nm = '" + jtfNm.getText() + "', " +
                        "`ls_sluj`.postcode = '" + jtfCode.getText() + "', " +
                        "`ls_sluj`.email = '" + jtfEmail.getText() + "', " +
                        "`ls_sluj`.web = '" + jtfWeb.getText() + "', " +
                        "`ls_sluj`.boss_egn = '" + jTextField1.getText() + "', " +
                        "`ls_sluj`.boss_nlk = '" + jTextField2.getText() + "', " +
                        "`ls_sluj`.bankR = '" + jTextField3.getText() + "', " +
                        "`ls_sluj`.ibanR ='" + jTextField4.getText() + "', " +
                        "`ls_sluj`.bicR = '" + jTextField5.getText() + "', " +
                        "`ls_sluj`.bankD = '" + jTextField6.getText() + "', " +
                        "`ls_sluj`.ibanD = '" + jTextField7.getText() + "', " +
                        "`ls_sluj`.bicD = '" + jTextField8.getText() + "', " +
                        "`ls_sluj`.valr = '" + jTextField9.getText() + "', " +
                        "`ls_sluj`.vald = '" + jTextField10.getText() + "' " +
                        "WHERE `mida`.`ls_sluj`.Id = " + id);
            } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        }
    }
    
    private void close(){
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
        this.dispose();
    }
    
    private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 255, 255), null));
    }
}
