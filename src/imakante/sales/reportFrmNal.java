
package imakante.sales;

import java.awt.event.WindowEvent;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class reportFrmNal extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public reportFrmNal(String title,imakante.com.vcomponents.iFrame frame, int levelx) {
        super(title);
        myframe = frame;
        this.levelx = levelx;
        prepareConn();     // zapazva connection
        prepareStm();
        initComponents();
        this.jLabel7.setText(""+this.levelx);
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jCheckBox1 = new javax.swing.JCheckBox();
        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jCheckBox2 = new javax.swing.JCheckBox();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        jCheckBox3 = new javax.swing.JCheckBox();
        jCheckBox4 = new javax.swing.JCheckBox();
        jCheckBox5 = new javax.swing.JCheckBox();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u041d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442\u0438");
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel1.setText("\u0421\u043a\u043b\u0430\u0434          \u043e\u0442:");

        jTextField1.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                jTextField1PropertyChange(evt);
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

        jLabel2.setText("\u0434\u043e:");

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

        jCheckBox1.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox1.setToolTipText("\u041f\u0440\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043e\u043f\u0446\u0438\u044f \u0432 \u0441\u043f\u0440\u0430\u0432\u043a\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u0432\u0437\u0438\u043c\u0430\u0442 \u043f\u0440\u0435\u0434\u0432\u0438\u0434 \u0441\u043a\u043b\u0430\u0434\u043e\u0432\u0435\u0442\u0435");
        jCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox1KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 139, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel2)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 152, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(19, 19, 19)
                .add(jCheckBox1)
                .addContainerGap(20, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jLabel1)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel2)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jCheckBox1))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel3.setText("\u0414\u043e\u0441\u0442\u0430\u0432\u0447\u0438\u043a  \u043e\u0442:");

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

        jLabel4.setText("\u0434\u043e:");

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

        jCheckBox2.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox2.setToolTipText("\u041f\u0440\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043e\u043f\u0446\u0438\u044f \u0432 \u0441\u043f\u0440\u0430\u0432\u043a\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u0438\u043c\u0430 \u0432 \u043f\u0440\u0435\u0434\u0432\u0438\u0434 \u0434\u043e\u0441\u0442\u0430\u0432\u0447\u0438\u043a\u0430 \u043d\u0430 \u0430\u0440\u0442\u0438\u043a\u0443\u043b\u0430");
        jCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox2.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox2KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jLabel3)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 139, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel4)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 152, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(20, 20, 20)
                .add(jCheckBox2)
                .addContainerGap(20, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jLabel3)
                .add(jTextField3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jLabel4)
                .add(jTextField4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(jCheckBox2))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
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

        jButton3.setText("\u0420\u0435\u0434\u0430\u043a\u0442\u043e\u0440 \u043d\u0430 \u0441\u043f\u0440\u0430\u0432\u043a\u0438");

        jButton4.setText("\u0417\u0430\u043f\u0430\u0437\u0438 \u0441\u043f\u0440\u0430\u0432\u043a\u0430");

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3Layout.createSequentialGroup()
                .add(jLabel7)
                .add(30, 30, 30)
                .add(jButton1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButton4)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 40, Short.MAX_VALUE)
                .add(jButton3)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jButton2)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                .add(jButton2)
                .add(jButton1)
                .add(jButton3)
                .add(jButton4)
                .add(jLabel7))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLabel5.setText("\u0410\u0440\u0442\u0438\u043a\u0443\u043b\u0438    \u043e\u0442:");

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

        jLabel6.setText("\u0434\u043e:");

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

        jCheckBox3.setText("\u041e\u0431\u043e\u0431\u0449\u0435\u043d\u0438");
        jCheckBox3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox3.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox3KeyPressed(evt);
            }
        });

        jCheckBox4.setSelected(true);
        jCheckBox4.setText("\u0410\u0440\u0442\u0438\u043a\u0443\u043b\u0438 \u043f\u043e \u043f\u0430\u0440\u0442\u0438\u0434\u0438");
        jCheckBox4.setToolTipText("\u041f\u0440\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0430 \u043e\u043f\u0446\u0438\u044f \u0432 \u0441\u043f\u0440\u0430\u0432\u043a\u0430\u0442\u0430 \u0441\u0435 \u043f\u043e\u0434\u0430\u0432\u0430\u0442 \u0430\u0440\u0442\u0438\u043a\u0443\u043b\u0438\u0442\u0435 \u043f\u043e \u043f\u0430\u0440\u0442\u0438\u0434\u0430");
        jCheckBox4.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox4.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCheckBox4ActionPerformed(evt);
            }
        });
        jCheckBox4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox4KeyPressed(evt);
            }
        });

        jCheckBox5.setText("\u0426\u0435\u043d\u0438 \u0431\u0435\u0437 \u0414\u0414\u0421");
        jCheckBox5.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jCheckBox5.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jCheckBox5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jCheckBox5KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jLabel5)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 138, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel6))
                    .add(jCheckBox4))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 153, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(22, 22, 22)
                        .add(jCheckBox3))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(jCheckBox5)))
                .addContainerGap(18, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel5)
                    .add(jTextField5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel6)
                    .add(jTextField6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jCheckBox3))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jCheckBox4)
                    .add(jCheckBox5))
                .addContainerGap())
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 52, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(30, Short.MAX_VALUE))
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-546)/2, (screenSize.height-236)/2, 546, 236);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField6FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusLost
        fLost(jTextField6);
    }//GEN-LAST:event_jTextField6FocusLost
    
    private void jTextField6FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField6FocusGained
        fGain(jTextField6);
    }//GEN-LAST:event_jTextField6FocusGained
    
    private void jTextField5FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusLost
        fLost(jTextField5);
    }//GEN-LAST:event_jTextField5FocusLost
    
    private void jTextField5FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField5FocusGained
        fGain(jTextField5);
    }//GEN-LAST:event_jTextField5FocusGained
    
    private void jTextField4FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusLost
        fLost(jTextField4);
    }//GEN-LAST:event_jTextField4FocusLost
    
    private void jTextField4FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField4FocusGained
        fGain(jTextField4);
    }//GEN-LAST:event_jTextField4FocusGained
    
    private void jTextField3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusLost
        fLost(jTextField3);
    }//GEN-LAST:event_jTextField3FocusLost
    
    private void jTextField3FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField3FocusGained
        fGain(jTextField3);
    }//GEN-LAST:event_jTextField3FocusGained
    
    private void jTextField2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusLost
        fLost(jTextField2);
    }//GEN-LAST:event_jTextField2FocusLost
    
    private void jTextField2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusGained
        fGain(jTextField2);
    }//GEN-LAST:event_jTextField2FocusGained
    
    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        fGain(jTextField1);
    }//GEN-LAST:event_jTextField1FocusGained
    
    private void jCheckBox5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox5KeyPressed
        jCheckBox5.transferFocus();
    }//GEN-LAST:event_jCheckBox5KeyPressed
    
    private void jCheckBox4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCheckBox4ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jCheckBox4ActionPerformed
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        fLost(jTextField1);
    }//GEN-LAST:event_jTextField1FocusLost
    
    private void jCheckBox4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox4KeyPressed
        
        jCheckBox4.transferFocus();
    }//GEN-LAST:event_jCheckBox4KeyPressed
    
    private void jCheckBox3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox3KeyPressed
        
        jCheckBox3.transferFocus();
    }//GEN-LAST:event_jCheckBox3KeyPressed
    
    private void jCheckBox2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox2KeyPressed
        
        jCheckBox2.transferFocus();
    }//GEN-LAST:event_jCheckBox2KeyPressed
    
    private void jCheckBox1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jCheckBox1KeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            jCheckBox1.transferFocus();
        }
    }//GEN-LAST:event_jCheckBox1KeyPressed
    
    private void jTextField6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField6KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField6();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField6.getText().equals("")){jTextField6.setText("999999999");jTextField6.transferFocus();}
        }
    }//GEN-LAST:event_jTextField6KeyPressed
    
    private void jTextField5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField5KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField5();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField5.getText().equals("")){jTextField5.setText("1");jTextField5.transferFocus();}
        }
    }//GEN-LAST:event_jTextField5KeyPressed
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField4();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField4.getText().equals("")){jTextField4.setText("999999999");jTextField4.transferFocus();}
        }
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField3();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField3.getText().equals("")){jTextField3.setText("1");jTextField3.transferFocus();}
        }
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        fillBlanck();
        if(checkFieldsInt()){
            processReport();}else {
            javax.swing.JOptionPane.showMessageDialog(null,
                    "\u041D\u0435\u043A\u043E\u0440\u0435\u043A\u0442\u043D\u0430 \u0441\u0442\u043E\u0439\u043D\u043E\u0441\u0442",
                    "\u0413\u0420\u0415\u0428\u041A\u0410 \u0412 \u0417\u0410\u042F\u0412\u041A\u0410\u0422\u0410!",
                    javax.swing.JOptionPane.ERROR_MESSAGE);
            }
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField2();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField2.getText().equals("")){jTextField2.setText("999999999");jTextField2.transferFocus();}
        }
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jTextField1PropertyChange(java.beans.PropertyChangeEvent evt) {//GEN-FIRST:event_jTextField1PropertyChange
// TODO add your handling code here:
    }//GEN-LAST:event_jTextField1PropertyChange
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField1();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jTextField1.getText().equals("")){jTextField1.setText("1");jTextField1.transferFocus();}else{jTextField1.transferFocus();}
            
        }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JCheckBox jCheckBox2;
    private javax.swing.JCheckBox jCheckBox3;
    private javax.swing.JCheckBox jCheckBox4;
    private javax.swing.JCheckBox jCheckBox5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    // End of variables declaration//GEN-END:variables
    private  imakante.com.vcomponents.iFrame myframe;
    
    private  java.sql.Connection conn;
    private java.sql.Statement stm;
    private  java.sql.ResultSet rs;
    
    private java.io.FileInputStream fs=null;
    private java.net.URL url=null;
    
    private java.util.HashMap hm = null;
    private int levelx = 3;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    private String idFCodeContr = "0";
    private String  idLastContr = "99999999999";
    private String[] Names= { "\u041a\u041e\u0414", "\u0418\u041c\u0415"};
    private  int intTransfer;
    private  int CompNumber = 0;
    
    private String strContragent = "SELECT "
            + "`rep_comm_nal`.`code_contragent` , `rep_comm_nal`.`name_n_contragent` "
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_contragent` LIKE  '%";
    
    private String strProduct = "SELECT "
            + "`rep_comm_nal`.`code_pm`, `rep_comm_nal`.`name_pm`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_pm` LIKE  '%";
    
    private String strStore = "SELECT "
            + "`rep_comm_nal`.`code_n_storage`, `rep_comm_nal`.`name_n_storage`"
            + "FROM `rep_comm_nal` WHERE `rep_comm_nal`.`code_n_storage` LIKE  '%";
    
    private String[] NamesQ= {"con"};
    private List namesQ = new ArrayList();
    private int nubColums = 0;
    private String qu =   "SELECT ";
    private String fileName="nal_simp_01.jasper";
    
    //METHODS
    
    private void prepareConn() {
        try{
            conn =  myframe.getConn();
            if(conn==null){System.out.println("conn problem");
            }
        }catch(Exception e){e.printStackTrace();}
    }
    
    private void prepareStm(){
        try {
            stm = conn.createStatement();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    private void initTable(String str , String[] names) {
        try {
            rs = stm.executeQuery(str);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        try {
            model = new imakante.com.CustomTableModel(getConn(), rs, names);
            table = new imakante.com.CustomTable(model);
            
        } catch(Exception e) { e.printStackTrace(); }
        
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {  }
    }
    
    private void constructDialod(String str, int rCompNumber, String[] names){
        this.CompNumber = rCompNumber;
        initTable(str, names );
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table, "\u0418\u0437\u0431\u043e\u0440", "","cod");
        td.setVisible(true);
        
    }
    
    
    
    
    private int getColumnIndex(String in) //test
    {
        
        int count = table.getColumnCount();
        for(int i=0; i < count; i++) {
            if(table.getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    
    
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
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
        if (CompNumber == 0){}
        if(CompNumber == 1){
            this.jTextField1.setText(""+this.intTransfer);}
        if(CompNumber == 2){
            this.jTextField2.setText(""+this.intTransfer);}
        if(CompNumber == 3){
            this.jTextField3.setText(""+this.intTransfer);}
        if(CompNumber == 4){
            this.jTextField4.setText(""+this.intTransfer);}
        if(CompNumber == 5){
            this.jTextField5.setText(""+this.intTransfer);}
        if(CompNumber == 6){
            this.jTextField6.setText(""+this.intTransfer);}
    }
    
    private void processField1() {
        String newString = strStore + this.jTextField1.getText() + "%'";
        constructDialod(newString, 1, Names);
        
    }
    
    private void processField2() {
        if(this.jTextField1.getText()==""){this.jTextField1.setText("0");}
        String newString = strStore + this.jTextField2.getText() + "%' AND `rep_comm_nal`.`code_n_storage` >= " + this.jTextField1.getText() + ";";
        constructDialod(newString, 2, Names);
    }
    
    private void processField5() {
        String newString =strProduct + this.jTextField5.getText() + "%'";
        constructDialod(newString, 5, Names);
        
    }
    
    private void processField6() {
        if(this.jTextField5.getText()==""){this.jTextField5.setText("0");}
        String newString = strProduct + this.jTextField6.getText() + "%' AND `rep_comm_nal`.`code_pm` >= " + this.jTextField5.getText() + ";";
        constructDialod(newString, 6, Names);
    }
    private void processField3() {
        String newString = strContragent + this.jTextField3.getText() + "%'";
        constructDialod(newString, 3, Names);
        
    }
    
    private void processField4() {
        if(this.jTextField3.getText()==""){this.jTextField3.setText("0");}
        String newString = strContragent + this.jTextField4.getText() + "%' AND `rep_comm_nal`.`code_contragent` >= " + this.jTextField3.getText() + ";";
        constructDialod(newString, 4, Names);
    }
    
    private void processReport(){
        String newString=qu;
        // namesQ = "";
        nubColums = 0;
        namesQ.add("con ");
        newString = newString + " DISTINCT CONCAT(rep_comm_nal.level ";
        this.nubColums = nubColums + 1;
        if (this.jCheckBox1.isSelected()==false){
            newString = newString + ",rep_comm_nal.code_n_storage ";
            
        }
        if (this.jCheckBox2.isSelected()==false){
            newString = newString + ",rep_comm_nal.code_contragent ";
            
        }
        if (this.jCheckBox3.isSelected()==false){
            newString = newString + ",rep_comm_nal.code_pm ";
            
        }
        if (this.jCheckBox4.isSelected()){
            newString = newString + ",rep_comm_nal.parcel_pc ";
            
        }
        newString = newString + ") AS con ";
        
        if (this.jCheckBox1.isSelected()==false){
            newString = newString
                    + ",rep_comm_nal.code_n_storage ";
            namesQ.add("\u041A\u043E\u0434 \u0441\u043A\u043B\u0430\u0434");
            this.nubColums = nubColums + 1;
        }
        
        if (this.jCheckBox2.isSelected()==false){
            
            newString = newString
                    +  ",rep_comm_nal.code_contragent "
                    + ",rep_comm_nal.name_n_contragent ";
            namesQ.add("\u041A\u043E\u0434 \u043A\u043E\u043D\u0442\u0440\u0430\u0433\u0435\u043D\u0442");
            this.nubColums = nubColums + 1;
            namesQ.add("\u0418\u043C\u0435 \u043A\u043E\u043D\u0442\u0440\u0430\u0433\u0435\u043D\u0442");
            this.nubColums = nubColums + 1;
        }
        
        if (this.jCheckBox3.isSelected()==false){
            
            newString = newString
                    + ",rep_comm_nal.code_pm "
                    + ",rep_comm_nal.name_pm "
                    + ",rep_comm_nal.barcod_pm ";
            
            namesQ.add("\u041A\u043E\u0434 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
            this.nubColums = nubColums + 1;
            namesQ.add("\u0418\u043C\u0435 \u043F\u0440\u043E\u0434\u0443\u043A\u0442");
            this.nubColums = nubColums + 1;
            namesQ.add("\u0411\u0430\u0440\u043A\u043E\u0434");
            this.nubColums = nubColums + 1;
            if(this.jCheckBox4.isSelected()){
                newString = newString
                        + ",rep_comm_nal.parcel_pc ";
                
                namesQ.add("\u043F\u0430\u0440\u0442\u0438\u0434\u0430");
                this.nubColums = nubColums + 1;
            }
        }
        newString = newString
                + ",SUM(rep_comm_nal.quant_nal), "
                + "SUM(rep_comm_nal.miarka3), "
                + "SUM(rep_comm_nal.miarka2), "
                + "SUM(rep_comm_nal.ostatak), "
                + "rep_comm_nal.price0_pp, "
                + "SUM(rep_comm_nal.TSENA0), "
                + "rep_comm_nal.price1_pp, "
                + "SUM(rep_comm_nal.TSENA1), "
                + "rep_comm_nal.price2_pp, "
                + "SUM(rep_comm_nal.TSENA2), "
                + "rep_comm_nal.price3_pp, "
                + "SUM(rep_comm_nal.TSENA3) "
                + " FROM "
                + " `rep_comm_nal` ";
        namesQ.add("\u041A\u043E\u043B\u0438\u0447\u0435\u0441\u0442\u0432\u043E");
        namesQ.add("\u041E\u043F\u0430\u043A\u043E\u0432\u043A\u0430 3");
        namesQ.add("\u041E\u043F\u0430\u043A\u043E\u0432\u043A\u0430 2");
        namesQ.add("\u041E\u0441\u0442\u0430\u0442\u044A\u043A");
        namesQ.add("\u0414\u043E\u0441\u0442\u0430\u0432\u043D\u0430 \u0446\u0435\u043D\u0430");
        namesQ.add("\u0421\u0442\u043E\u0439\u043D\u043E\u0441\u0442 \u0434\u043E\u0441\u0442\u0430\u0432\u043D\u0430");
        namesQ.add("\u041F\u044A\u0440\u0432\u0430 \u0446\u0435\u043D\u0430");
        namesQ.add("\u0421\u0442\u043E\u0439\u043D\u043E\u0441\u0442 \u043F\u043E \u043B\u0438\u0441\u0442\u0430 1");
        namesQ.add("\u0412\u0442\u043E\u0440\u0430 \u0446\u0435\u043D\u0430");
        namesQ.add("\u0421\u0442\u043E\u0439\u043D\u043E\u0441\u0442 \u043F\u043E \u043B\u0438\u0441\u0442\u0430 2");
        namesQ.add("\u0422\u0440\u0435\u0442\u0430 \u0446\u0435\u043D\u0430");
        namesQ.add("\u0421\u0442\u043E\u0439\u043D\u043E\u0441\u0442 \u043F\u043E \u043B\u0438\u0441\u0442\u0430 3");
        this.nubColums = nubColums + 10;
        try {
            newString = newString + " WHERE `rep_comm_nal`.`code_contragent` BETWEEN '" +
                    (Integer.parseInt(this.jTextField3.getText())-1) + "' AND '" + (Integer.parseInt(this.jTextField4.getText())+1) +
                    "' AND " + " `rep_comm_nal`.`code_pm` BETWEEN '" + (Integer.parseInt(this.jTextField5.getText())-1) +
                    "' AND '" + (Integer.parseInt(this.jTextField6.getText())+1) + "' AND " + " `rep_comm_nal`.`code_n_storage` BETWEEN '" +
                    (Integer.parseInt(this.jTextField1.getText())-1) + "' AND '" + (Integer.parseInt(this.jTextField2.getText())+1) + "' ";
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        
        if(levelx==3){
            newString = newString + " AND rep_comm_nal.level = 0";
        }
        
        if(levelx==2){
            newString = newString + " AND rep_comm_nal.level = 1";
        }
        if(levelx==1){
            newString = newString + " AND rep_comm_nal.level IN(0,1)";
        }
        newString = newString + " GROUP BY con ORDER BY rep_comm_nal.code_pm ASC";
        
        String[] Names = (String[]) namesQ.toArray(new String[this.nubColums]);
        //Create Dialog with print
        System.out.println(newString);
        
        if(this.jCheckBox1.isSelected() && this.jCheckBox4.isSelected()){
            if(jCheckBox5.isSelected()){
                fileName="nal_simp_01.jasper";}else{fileName="nal_simp_01DDS.jasper";}
        }
        if(this.jCheckBox2.isSelected() && this.jCheckBox4.isSelected()){
            if(jCheckBox5.isSelected()){
                fileName="nal_simp_01.jasper";}else{fileName="nal_simp_01DDS.jasper";}
        }
        if(this.jCheckBox3.isSelected() && this.jCheckBox4.isSelected()){
            if(jCheckBox5.isSelected()){
                fileName="nal_simp_01.jasper";}else{fileName="nal_simp_01DDS.jasper";}
        }
        if(this.jCheckBox1.isSelected() && this.jCheckBox4.isSelected()==false){
            if(jCheckBox5.isSelected()){
                fileName="nal_simp_03.jasper";}else{fileName="nal_simp_03DDS.jasper";}
        }
        if(this.jCheckBox2.isSelected() && this.jCheckBox4.isSelected()==false){
            if(jCheckBox5.isSelected()){
                fileName="nal_simp_02.jasper";}else{fileName="nal_simp_02DDS.jasper";}
        }
        if(this.jCheckBox3.isSelected() && this.jCheckBox4.isSelected()==false){
            if(jCheckBox5.isSelected()){
                fileName="nal_simp_03.jasper";}else{fileName="nal_simp_03DDS.jasper";}
        }
        try{
            initTable(newString, Names);
            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table,
                    myframe.getConn(), constructHash(), fileName, "\u0421\u043f\u0440\u0430\u0432\u043a\u0430 \u043d\u0430\u043b\u0438\u0447\u043d\u043e\u0441\u0442", "");
            td.setVisible(true);
        } catch (Exception  ex){
            ex.printStackTrace();
            constructDialod(newString, 0, Names);
            System.out.println("Ne moga da nameria faila  ");
        }
        
    }
    
    private void fillBlanck(){
        if(jTextField1.getText().equals("")){jTextField1.setText("1");}
        if(jTextField2.getText().equals("")){jTextField2.setText("999999999");}
        if(jTextField3.getText().equals("")){jTextField3.setText("1");}
        if(jTextField4.getText().equals("")){jTextField4.setText("999999999");}
        if(jTextField5.getText().equals("")){jTextField5.setText("1");}
        if(jTextField6.getText().equals("")){jTextField6.setText("999999999");}
    }
    
    
    private java.util.HashMap constructHash(){
        java.util.HashMap hmap = new java.util.HashMap();
        hmap.put("otsklad",jTextField1.getText());
        hmap.put("dosklad",jTextField2.getText());
        hmap.put("otkontragent",jTextField3.getText());
        hmap.put("dokontragent",jTextField4.getText());
        hmap.put("otprodukt",jTextField5.getText());
        hmap.put("doprodukt",jTextField6.getText());
        if(levelx==3){
            hmap.put("levex","0");
        }
        if(levelx==2){
            hmap.put("levex","1");
        }
        if(levelx==1){
            hmap.put("levex","0,1");
        }
        return hmap;
    }
    private boolean checkFieldsInt(){
        boolean check = false;
        try {
            
            int i = Integer.parseInt(jTextField1.getText());
            check = true;
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return false;
        }
        try {
            
            int i = Integer.parseInt(jTextField2.getText());
            check = true;
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return false;
        }
        try {
            
            int i = Integer.parseInt(jTextField3.getText());
            check = true;
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return false;
        }
        try {
            
            int i = Integer.parseInt(jTextField4.getText());
            check = true;
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return false;
        }
        try {
            
            int i = Integer.parseInt(jTextField5.getText());
            check = true;
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return false;
        }
        try {
            
            int i = Integer.parseInt(jTextField6.getText());
            check = true;
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return false;
        }
        return check;
    }
    
    private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, new java.awt.Color(255, 255, 255), null));
    }
}
