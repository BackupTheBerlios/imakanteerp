
package imakante.salary;

import java.awt.event.KeyEvent;

public class frmFilterSastav extends javax.swing.JDialog {
    
    public frmFilterSastav(javax.swing.JFrame parent, boolean modal, String strINI) {
        super(parent, modal);
        
        valStr=strINI;
        
        initComponents();
        validateCheckBox();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

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
        jCheckBox13 = new javax.swing.JCheckBox();
        jCheckBox14 = new javax.swing.JCheckBox();
        jCheckBox15 = new javax.swing.JCheckBox();
        jCheckBox16 = new javax.swing.JCheckBox();
        jCheckBox17 = new javax.swing.JCheckBox();
        jCheckBox18 = new javax.swing.JCheckBox();
        jCheckBox19 = new javax.swing.JCheckBox();
        jCheckBox20 = new javax.swing.JCheckBox();
        jCheckBox21 = new javax.swing.JCheckBox();
        jCheckBox22 = new javax.swing.JCheckBox();
        jCheckBox23 = new javax.swing.JCheckBox();
        jCheckBox24 = new javax.swing.JCheckBox();
        jCheckBox25 = new javax.swing.JCheckBox();
        jCheckBox26 = new javax.swing.JCheckBox();
        jCheckBox27 = new javax.swing.JCheckBox();
        jCheckBox28 = new javax.swing.JCheckBox();
        jCheckBox29 = new javax.swing.JCheckBox();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0424\u0438\u043b\u0442\u044a\u0440 \u0437\u0430 \u0432\u0438\u0437\u0443\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044f \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430 \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b\u0438");
        setFont(new java.awt.Font("Tahoma", 0, 12));
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jCheckBox1.setText("id");
        jCheckBox1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel1.add(jCheckBox1, gridBagConstraints);

        jCheckBox2.setText("\u041d\u043e\u043c\u0435\u0440 \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b");
        jCheckBox2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jCheckBox2, gridBagConstraints);

        jCheckBox3.setText("\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043e \u0438\u043c\u0435");
        jCheckBox3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox3KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jCheckBox3, gridBagConstraints);

        jCheckBox4.setText("\u041f\u0440\u0435\u0437 \u0438\u043c\u0435");
        jCheckBox4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox4KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jCheckBox4, gridBagConstraints);

        jCheckBox5.setText("\u0424\u0430\u043c\u0438\u043b\u0438\u044f");
        jCheckBox5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox5KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jCheckBox5, gridBagConstraints);

        jCheckBox6.setText("\u0415\u0413\u041d");
        jCheckBox6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox6KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jCheckBox6, gridBagConstraints);

        jCheckBox7.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u0440\u0430\u0436\u0434\u0430\u043d\u0435");
        jCheckBox7.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox7KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jCheckBox7, gridBagConstraints);

        jCheckBox8.setText("\u041f\u043e\u043b");
        jCheckBox8.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox8KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanel1.add(jCheckBox8, gridBagConstraints);

        jCheckBox9.setText("\u041d\u043e\u043c\u0435\u0440 \u043d\u0430 \u041b\u041a");
        jCheckBox9.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox9KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 10, 5);
        jPanel1.add(jCheckBox9, gridBagConstraints);

        jCheckBox10.setText("\u0418\u0437\u0434\u0430\u0434\u0435\u043d\u0430 \u043d\u0430");
        jCheckBox10.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox10KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jPanel1.add(jCheckBox10, gridBagConstraints);

        jCheckBox11.setText("\u041e\u0431\u043b\u0430\u0441\u0442");
        jCheckBox11.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox11KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox11, gridBagConstraints);

        jCheckBox12.setText("\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434");
        jCheckBox12.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox12KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox12, gridBagConstraints);

        jCheckBox13.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
        jCheckBox13.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox13KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox13, gridBagConstraints);

        jCheckBox14.setText("\u0410\u0434\u0440\u0435\u0441 \u043d\u0430 \u043c\u0435\u0441\u0442\u043e\u0436\u0438\u0432\u0435\u0435\u043d\u0435");
        jCheckBox14.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox14KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox14, gridBagConstraints);

        jCheckBox15.setText("\u0414\u043e\u043c\u0430\u0448\u0435\u043d \u0442\u0435\u043b\u0435\u0444\u043e\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox15, gridBagConstraints);

        jCheckBox16.setText("\u041c\u043e\u0431\u0438\u043b\u0435\u043d \u0442\u0435\u043b\u0435\u0444\u043e\u043d");
        jCheckBox16.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox16KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox16, gridBagConstraints);

        jCheckBox17.setText("\u0435-\u043c@\u0438\u043b");
        jCheckBox17.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox17KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox17, gridBagConstraints);

        jCheckBox18.setText("\u041d\u043e\u043c\u0435\u0440 \u043d\u0430 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0430");
        jCheckBox18.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox18KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 5);
        jPanel1.add(jCheckBox18, gridBagConstraints);

        jCheckBox19.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043d\u0430\u0437\u043d\u0430\u0447\u0430\u0432\u0430\u043d\u0435");
        jCheckBox19.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox19KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jPanel1.add(jCheckBox19, gridBagConstraints);

        jCheckBox20.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043f\u043e\u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435 ");
        jCheckBox20.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox20KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox20, gridBagConstraints);

        jCheckBox21.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043d\u0430\u043f\u0443\u0441\u043a\u0430\u043d\u0435");
        jCheckBox21.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox21KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox21, gridBagConstraints);

        jCheckBox22.setText("\u041f\u043e\u0441\u043b\u0435\u0434\u0435\u043d \u0434\u0435\u043d \u043d\u0430 \u043e\u0441\u0438\u0433\u0443\u0440\u044f\u0432\u0430\u043d\u0435");
        jCheckBox22.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox22KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox22, gridBagConstraints);

        jCheckBox23.setText("\u041e\u0441\u043d\u043e\u0432\u0430\u043d\u0438\u0435 \u043d\u0430 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0430");
        jCheckBox23.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox23KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox23, gridBagConstraints);

        jCheckBox24.setText("\u0421\u0440\u043e\u043a \u043d\u0430 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0430");
        jCheckBox24.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox24KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox24, gridBagConstraints);

        jCheckBox25.setText("\u0414\u043d\u0438 \u0441\u0442\u0430\u0436");
        jCheckBox25.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox25KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox25, gridBagConstraints);

        jCheckBox26.setText("\u041c\u0435\u0441\u0435\u0446\u0438 \u0421\u0442\u0430\u0436");
        jCheckBox26.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox26KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jCheckBox26, gridBagConstraints);

        jCheckBox27.setText("\u0413\u043e\u0434\u0438\u043d\u0438 \u0421\u0442\u0430\u0436");
        jCheckBox27.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox27KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 5);
        jPanel1.add(jCheckBox27, gridBagConstraints);

        jCheckBox28.setText("\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u043a");
        jCheckBox28.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox28KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jPanel1.add(jCheckBox28, gridBagConstraints);

        jCheckBox29.setText("\u0411\u0435\u043b\u0435\u0436\u043a\u0438");
        jCheckBox29.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox29KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanel1.add(jCheckBox29, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041f\u0440\u0438\u043b\u043e\u0436\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jButton1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton1KeyPressed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u041e\u0442\u043a\u0430\u0437");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton2KeyPressed(evt);
            }
        });

        jPanel2.add(jButton2);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jCheckBox29KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox29KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox29.transferFocus();}
    }//GEN-LAST:event_jCheckBox29KeyPressed
    
    private void jCheckBox28KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox28KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox28.transferFocus();}
    }//GEN-LAST:event_jCheckBox28KeyPressed
    
    private void jCheckBox27KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox27KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox27.transferFocus();}
    }//GEN-LAST:event_jCheckBox27KeyPressed
    
    private void jCheckBox26KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox26KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox26.transferFocus();}
    }//GEN-LAST:event_jCheckBox26KeyPressed
    
    private void jCheckBox25KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox25KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox25.transferFocus();}
    }//GEN-LAST:event_jCheckBox25KeyPressed
    
    private void jCheckBox24KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox24KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox24.transferFocus();}
    }//GEN-LAST:event_jCheckBox24KeyPressed
    
    private void jCheckBox23KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox23KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox23.transferFocus();}
    }//GEN-LAST:event_jCheckBox23KeyPressed
    
    private void jCheckBox22KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox22KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox22.transferFocus();}
    }//GEN-LAST:event_jCheckBox22KeyPressed
    
    private void jCheckBox21KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox21KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox21.transferFocus();}
    }//GEN-LAST:event_jCheckBox21KeyPressed
    
    private void jCheckBox20KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox20KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox20.transferFocus();}
    }//GEN-LAST:event_jCheckBox20KeyPressed
    
    private void jCheckBox19KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox19KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox19.transferFocus();}
    }//GEN-LAST:event_jCheckBox19KeyPressed
    
    private void jCheckBox18KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox18KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox18.transferFocus();}
    }//GEN-LAST:event_jCheckBox18KeyPressed
    
    private void jCheckBox17KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox17KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox17.transferFocus();}
    }//GEN-LAST:event_jCheckBox17KeyPressed
    
    private void jCheckBox16KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox16KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox15.transferFocus();}
    }//GEN-LAST:event_jCheckBox16KeyPressed
    
    private void jCheckBox14KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox14KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox14.transferFocus();}
    }//GEN-LAST:event_jCheckBox14KeyPressed
    
    private void jCheckBox13KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox13KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox13.transferFocus();}
    }//GEN-LAST:event_jCheckBox13KeyPressed
    
    private void jCheckBox12KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox12KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox12.transferFocus();}
    }//GEN-LAST:event_jCheckBox12KeyPressed
    
    private void jCheckBox11KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox11KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox11.transferFocus();}
    }//GEN-LAST:event_jCheckBox11KeyPressed
    
    private void jCheckBox10KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox10KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox10.transferFocus();}
    }//GEN-LAST:event_jCheckBox10KeyPressed
    
    private void jCheckBox9KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox9KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox9.transferFocus();}
    }//GEN-LAST:event_jCheckBox9KeyPressed
    
    private void jCheckBox8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox8KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox8.transferFocus();}
    }//GEN-LAST:event_jCheckBox8KeyPressed
    
    private void jCheckBox7KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox7KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox7.transferFocus();}
    }//GEN-LAST:event_jCheckBox7KeyPressed
    
    private void jCheckBox6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox6KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox6.transferFocus();}
    }//GEN-LAST:event_jCheckBox6KeyPressed
    
    private void jCheckBox5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox5KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox5.transferFocus();}
    }//GEN-LAST:event_jCheckBox5KeyPressed
    
    private void jCheckBox4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox4KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox4.transferFocus();}
    }//GEN-LAST:event_jCheckBox4KeyPressed
    
    private void jCheckBox3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox3KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox3.transferFocus();}
    }//GEN-LAST:event_jCheckBox3KeyPressed
    
    private void jCheckBox2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox2.transferFocus();}
    }//GEN-LAST:event_jCheckBox2KeyPressed
    
    private void jCheckBox1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jCheckBox1.transferFocus();}
    }//GEN-LAST:event_jCheckBox1KeyPressed
    
    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton2.doClick();}
    }//GEN-LAST:event_jButton2KeyPressed
    
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick();}
    }//GEN-LAST:event_jButton1KeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        sendFilter();
        imakante.salary.FrmNSastav.initNames(valStr);
        imakante.salary.FrmNSastav.repaintTable();
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed
    
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
    private javax.swing.JCheckBox jCheckBox20;
    private javax.swing.JCheckBox jCheckBox21;
    private javax.swing.JCheckBox jCheckBox22;
    private javax.swing.JCheckBox jCheckBox23;
    private javax.swing.JCheckBox jCheckBox24;
    private javax.swing.JCheckBox jCheckBox25;
    private javax.swing.JCheckBox jCheckBox26;
    private javax.swing.JCheckBox jCheckBox27;
    private javax.swing.JCheckBox jCheckBox28;
    private javax.swing.JCheckBox jCheckBox29;
    private javax.swing.JCheckBox jCheckBox3;
    private javax.swing.JCheckBox jCheckBox4;
    private javax.swing.JCheckBox jCheckBox5;
    private javax.swing.JCheckBox jCheckBox6;
    private javax.swing.JCheckBox jCheckBox7;
    private javax.swing.JCheckBox jCheckBox8;
    private javax.swing.JCheckBox jCheckBox9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
    String valStr;
    
    
    
    protected void validateCheckBox(){
        
        if(Integer.parseInt((String.valueOf(valStr.charAt(0))))==1){jCheckBox1.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(1))))==1){jCheckBox2.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(2))))==1){jCheckBox3.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(3))))==1){jCheckBox4.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(4))))==1){jCheckBox5.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(5))))==1){jCheckBox6.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(6))))==1){jCheckBox7.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(7))))==1){jCheckBox8.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(8))))==1){jCheckBox9.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(9))))==1){jCheckBox10.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(10))))==1){jCheckBox11.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(11))))==1){jCheckBox12.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(12))))==1){jCheckBox13.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(13))))==1){jCheckBox14.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(14))))==1){jCheckBox15.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(15))))==1){jCheckBox16.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(16))))==1){jCheckBox17.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(17))))==1){jCheckBox18.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(18))))==1){jCheckBox19.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(19))))==1){jCheckBox20.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(20))))==1){jCheckBox21.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(21))))==1){jCheckBox22.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(22))))==1){jCheckBox23.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(23))))==1){jCheckBox24.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(24))))==1){jCheckBox25.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(25))))==1){jCheckBox26.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(26))))==1){jCheckBox27.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(27))))==1){jCheckBox28.setSelected(true);}
        if(Integer.parseInt((String.valueOf(valStr.charAt(28))))==1){jCheckBox29.setSelected(true);}
    }
    protected void sendFilter(){
        valStr="";
        if(jCheckBox1.isSelected()){valStr="1";}else{valStr="0";}
        if(jCheckBox2.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox3.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox4.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox5.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox6.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox7.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox8.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox9.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox10.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox11.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox12.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox13.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox14.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox15.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox16.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox17.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox18.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox19.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox20.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox21.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox22.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox23.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox24.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox25.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox26.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox27.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox28.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        if(jCheckBox29.isSelected()){valStr=valStr+"1";}else{valStr=valStr+"0";}
        
    }
    
}