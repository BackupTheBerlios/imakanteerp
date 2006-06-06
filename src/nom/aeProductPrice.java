
package nom;

import imakante.com.vcomponents.iInternalFrame;
import javax.swing.JOptionPane;
import java.math.*;
public class aeProductPrice extends imakante.com.vcomponents.iDialog {
    
    /** Creates new form aeProductPrice */
    public aeProductPrice(imakante.com.vcomponents.iInternalFrame frame, boolean modal,int id_price, boolean isnew) {
        
        super(frame, modal);
        this.myParent =(FrmProduct) frame;
        this.id_price = id_price;
        this.isNew = isnew;
        initComponents();
        if(!isNew) getDataByID();
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        splitMoney = myParent.getCountriesT().getMoney();
        for(int i=0;i<splitMoney.length;i++) {
            jComboBoxValuta.addItem(new String(splitMoney[i]));
            
        }
        
        if(selectComboBoxItem != 0) {
            
            selectComboBoxItem = getNewComboBoxIndex(selectComboBoxItem);
            
            jComboBoxValuta.setSelectedIndex(selectComboBoxItem);
        }
        this.setTitle("\u0414\u043E\u0441\u0442\u0430\u0432\u043D\u0430 \u0438 \u0446\u0435\u043D\u043E\u0432\u0430 \u043B\u0438\u0441\u0442\u0430");
        jTextDostPrice.requestFocus();
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jTextField1 = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextDostPrice = new javax.swing.JTextField();
        jTextFieldPrice1 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldPrice2 = new javax.swing.JTextField();
        jTextFieldPrice3 = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jTextFieldProcent1 = new javax.swing.JTextField();
        jTextFieldProcent2 = new javax.swing.JTextField();
        jTextFieldProcent3 = new javax.swing.JTextField();
        jComboBoxValuta = new javax.swing.JComboBox();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jTextFieldValue = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();

        jTextField1.setText("jTextField1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f \u043d\u0430 \u0446\u0435\u043d\u0438");
        jPanel1.setPreferredSize(new java.awt.Dimension(600, 33));
        jButtonSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButtonSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSaveActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonSave);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonClose);

        getContentPane().add(jPanel1, java.awt.BorderLayout.SOUTH);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setMinimumSize(new java.awt.Dimension(400, 150));
        jPanel2.setPreferredSize(new java.awt.Dimension(320, 200));
        jLabel1.setText("\u0414\u043e\u0441\u0442\u0430\u0432\u043d\u0430 \u0446\u0435\u043d\u0430:");

        jLabel2.setText("\u0426\u0435\u043d\u0430 1:");

        jLabel3.setText("\u0426\u0435\u043d\u0430 2:");

        jTextDostPrice.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextDostPrice.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextDostPrice.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextDostPriceKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextDostPriceKeyReleased(evt);
            }
        });

        jTextFieldPrice1.setEnabled(false);
        jTextFieldPrice1.setNextFocusableComponent(jTextFieldPrice2);
        jTextFieldPrice1.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPrice1.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice1FocusLost(evt);
            }
        });
        jTextFieldPrice1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice1KeyPressed(evt);
            }
        });

        jLabel4.setText("\u0426\u0435\u043d\u0430 3:");

        jTextFieldPrice2.setEnabled(false);
        jTextFieldPrice2.setNextFocusableComponent(jTextFieldPrice3);
        jTextFieldPrice2.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPrice2.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice2FocusLost(evt);
            }
        });
        jTextFieldPrice2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice2KeyPressed(evt);
            }
        });

        jTextFieldPrice3.setEnabled(false);
        jTextFieldPrice3.setNextFocusableComponent(jTextFieldValue);
        jTextFieldPrice3.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextFieldPrice3.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldPrice3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldPrice3FocusLost(evt);
            }
        });
        jTextFieldPrice3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldPrice3KeyPressed(evt);
            }
        });

        jLabel5.setText("\u0438\u043b\u0438");

        jLabel6.setText("\u0438\u043b\u0438");

        jLabel7.setText("\u0438\u043b\u0438");

        jTextFieldProcent1.setEnabled(false);
        jTextFieldProcent1.setNextFocusableComponent(jTextFieldProcent2);
        jTextFieldProcent1.setPreferredSize(new java.awt.Dimension(50, 20));
        jTextFieldProcent1.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldProcent1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldProcent1FocusLost(evt);
            }
        });
        jTextFieldProcent1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldProcent1KeyPressed(evt);
            }
        });

        jTextFieldProcent2.setEnabled(false);
        jTextFieldProcent2.setNextFocusableComponent(jTextFieldProcent3);
        jTextFieldProcent2.setPreferredSize(new java.awt.Dimension(50, 20));
        jTextFieldProcent1.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldProcent2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldProcent2FocusLost(evt);
            }
        });
        jTextFieldProcent2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldProcent2KeyPressed(evt);
            }
        });

        jTextFieldProcent3.setEnabled(false);
        jTextFieldProcent3.setNextFocusableComponent(jTextFieldValue);
        jTextFieldProcent3.setPreferredSize(new java.awt.Dimension(50, 20));
        jTextFieldProcent1.setInputVerifier(new imakante.com.InputDoubleVerifier());
        jTextFieldProcent3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextFieldProcent3FocusLost(evt);
            }
        });
        jTextFieldProcent3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldProcent3KeyPressed(evt);
            }
        });

        jComboBoxValuta.setEnabled(false);
        jComboBoxValuta.setPreferredSize(new java.awt.Dimension(70, 20));

        jLabel8.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jLabel9.setText("\u041a\u0443\u0440\u0441:");

        jLabel10.setText("%");

        jLabel11.setText("%");

        jLabel12.setText("%");

        jTextFieldValue.setEditable(false);
        jTextFieldValue.setText("1");
        jTextFieldValue.setNextFocusableComponent(jButtonSave);
        jTextFieldValue.setPreferredSize(new java.awt.Dimension(100, 20));
        jTextFieldValue.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldValueKeyPressed(evt);
            }
        });
        jTextFieldValue.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jTextFieldValueMousePressed(evt);
            }
        });

        jLabel13.setForeground(new java.awt.Color(204, 0, 51));
        jLabel13.setText("\u0426\u0435\u043d\u0438 \u0431\u0435\u0437 \u0414\u0414\u0421 \u0438 \u0442\u0430\u043a\u0441\u0438");

        jLabel14.setForeground(new java.awt.Color(0, 0, 153));
        jLabel14.setText("0.00");

        jLabel15.setForeground(new java.awt.Color(0, 0, 153));
        jLabel15.setText("0.00");

        jLabel16.setForeground(new java.awt.Color(0, 0, 153));
        jLabel16.setText("0.00");

        jLabel17.setText("\u0426\u0435\u043d\u0438 \u0441 \u0414\u0414\u0421");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(43, 43, 43)
                        .add(jLabel1)
                        .add(10, 10, 10)
                        .add(jTextDostPrice, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(196, 196, 196)
                        .add(jLabel13)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 79, Short.MAX_VALUE)
                        .add(jLabel17))
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(83, 83, 83)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jLabel8)
                            .add(jLabel4))
                        .add(10, 10, 10)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jTextFieldPrice3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(36, 36, 36)
                                .add(jLabel7))
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jComboBoxValuta, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(jLabel9)))
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(31, 31, 31)
                                .add(jTextFieldProcent3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(20, 20, 20)
                                .add(jLabel10)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 47, Short.MAX_VALUE)
                                .add(jLabel16))
                            .add(jPanel2Layout.createSequentialGroup()
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jTextFieldValue, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(84, 84, 84)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(jPanel2Layout.createSequentialGroup()
                                .add(jLabel3)
                                .add(10, 10, 10)
                                .add(jTextFieldPrice2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(36, 36, 36)
                                .add(jLabel6)
                                .add(31, 31, 31)
                                .add(jTextFieldProcent2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(20, 20, 20)
                                .add(jLabel12)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(jLabel15))
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel2Layout.createSequentialGroup()
                                .add(jLabel2)
                                .add(10, 10, 10)
                                .add(jTextFieldPrice1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(36, 36, 36)
                                .add(jLabel5)
                                .add(31, 31, 31)
                                .add(jTextFieldProcent1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(20, 20, 20)
                                .add(jLabel11)
                                .add(47, 47, 47)
                                .add(jLabel14)))))
                .add(132, 132, 132))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(94, 94, 94)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel13)
                    .add(jLabel17, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel1))
                    .add(jTextDostPrice, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(10, 10, 10)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel2))
                    .add(jTextFieldPrice1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel5))
                    .add(jTextFieldProcent1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel11)
                            .add(jLabel14))))
                .add(10, 10, 10)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel3))
                    .add(jTextFieldPrice2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel6))
                    .add(jTextFieldProcent2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel12)
                            .add(jLabel15))))
                .add(10, 10, 10)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel4))
                    .add(jTextFieldPrice3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jLabel7))
                    .add(jTextFieldProcent3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(3, 3, 3)
                        .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel10)
                            .add(jLabel16))))
                .add(35, 35, 35)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel8)
                    .add(jComboBoxValuta, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel9)
                    .add(jTextFieldValue, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(52, Short.MAX_VALUE))
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextFieldValueKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldValueKeyPressed
// TODO add your handling code here:
         String curs[] = null;
        try {
            java.sql.ResultSet r1 = myParent.getCountriesT().getShowConteinCurs();
            shContein= new showConteinCurs(myParent,true,r1,myParent.getCountriesT().getConn());
            id_curs = myParent.getTMPINT();
            curs = myParent.getCountriesT().getCurs(id_curs);
            jTextFieldValue.setText(curs[2]);
            selectComboBoxItem = Integer.parseInt(curs[1]);
            
            myParent.setTMPINT(0);
            jTextFieldValue.transferFocus();
        } catch(Exception e) {
            showMessage();
        }
    }//GEN-LAST:event_jTextFieldValueKeyPressed
    
    private void jTextFieldValueMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextFieldValueMousePressed
        
        String curs[] = null;
        try {
            java.sql.ResultSet r1 = myParent.getCountriesT().getShowConteinCurs();
            shContein= new showConteinCurs(myParent,true,r1,myParent.getCountriesT().getConn());
            id_curs = myParent.getTMPINT();
            curs = myParent.getCountriesT().getCurs(id_curs);
            jTextFieldValue.setText(curs[2]);
            selectComboBoxItem = Integer.parseInt(curs[1]);
            
            myParent.setTMPINT(0);
             jTextFieldValue.transferFocus();
        } catch(Exception e) {
            showMessage();
        }
        
    }//GEN-LAST:event_jTextFieldValueMousePressed
    
    private void jTextFieldProcent3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent3FocusLost
        try {
            
            p_p3 = Double.parseDouble(jTextFieldProcent3.getText());
            p3 = (p_p3/100)*p0 + p0;
            jTextFieldPrice3.setText( doubleRoundToString(6,p3));
            jTextFieldProcent3.setBackground(new java.awt.Color(255, 255, 255));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            jTextFieldProcent3.setBackground(new java.awt.Color(255, 204, 204));
            showMessage();
        }
        
    }//GEN-LAST:event_jTextFieldProcent3FocusLost
    
    private void jTextFieldProcent3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldProcent3KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p_p3 = Double.parseDouble(jTextFieldProcent3.getText());
                p3 = (p_p3/100)*p0 + p0;
                jTextFieldPrice3.setText( doubleRoundToString(6,p3));
                jTextFieldProcent3.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldProcent3.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldProcent3.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldProcent3KeyPressed
    
    private void jTextFieldPrice3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice3FocusLost
        try {
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p3 = Double.parseDouble(jTextFieldPrice3.getText());
            if(p3>=p0) p_p3 = (100 * (p3-p0)) / p0; else showMessage();
            jTextFieldProcent3.setText( doubleRoundToString(3,p_p3));
            jTextFieldPrice3.setBackground(new java.awt.Color(255, 255, 255));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            showMessage();
            jTextFieldPrice3.setBackground(new java.awt.Color(255, 204, 204));
        }
        
        
    }//GEN-LAST:event_jTextFieldPrice3FocusLost
    
    private void jTextFieldPrice3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice3KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p3 = Double.parseDouble(jTextFieldPrice3.getText());
                if (p3 >= p0) p_p3 = (100 * (p3-p0)) / p0;
                else showMessage();
                jTextFieldProcent3.setText( doubleRoundToString(3,p_p3));
                jTextFieldPrice3.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice3.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice3.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldPrice3KeyPressed
    
    private void jTextFieldProcent2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldProcent2KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p_p2 = Double.parseDouble(jTextFieldProcent2.getText());
                p2 = (p_p2/100)*p0 + p0;
                jTextFieldPrice2.setText( doubleRoundToString(6,p2));
                jTextFieldPrice2.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldProcent2.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice2.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldProcent2KeyPressed
    
    private void jTextFieldProcent2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent2FocusLost
// TODO add your handling code here:
        try {
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p_p2 = Double.parseDouble(jTextFieldProcent2.getText());
            p2 = (p_p2/100)*p0 + p0;
            jTextFieldPrice2.setText( doubleRoundToString(6,p2));
            jTextFieldProcent2.setBackground(new java.awt.Color(255, 255, 255));
        } catch(Exception e) {
            showMessage();
            jTextFieldProcent2.setBackground(new java.awt.Color(255, 204, 204));
        }
    }//GEN-LAST:event_jTextFieldProcent2FocusLost
    
    
    private void jTextFieldPrice2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice2FocusLost
        try {
// TODO add your handling code here:
            
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p2 = Double.parseDouble(jTextFieldPrice2.getText());
            if(p2 >= p0)  p_p2 = (100 * (p2-p0)) / p0;
            else showMessage();
            jTextFieldProcent2.setText( doubleRoundToString(3,p_p2));
            jTextFieldPrice2.setBackground(new java.awt.Color(255, 255, 255));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            showMessage();
            jTextFieldPrice2.setBackground(new java.awt.Color(255, 204, 204));
        }
        
    }//GEN-LAST:event_jTextFieldPrice2FocusLost
    
    private void jTextFieldPrice2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice2KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p2 = Double.parseDouble(jTextFieldPrice2.getText());
                if(p2 > p0)p_p2 = (100 * (p2-p0)) / p0;
                else showMessage();
                jTextFieldProcent2.setText( doubleRoundToString(3,p_p2));
                jTextFieldPrice2.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice2.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice2.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldPrice2KeyPressed
    
    
    private void jTextFieldProcent1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldProcent1KeyPressed
// TODO add your handling code here:
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p_p1 = Double.parseDouble(jTextFieldProcent1.getText());
                p1 = (p_p1/100)*p0 + p0;
                jTextFieldPrice1.setText( doubleRoundToString(6,p1));
                jTextFieldProcent1.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldProcent1.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldProcent1.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldProcent1KeyPressed
    
    private void jTextFieldProcent1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldProcent1FocusLost
        try {
// TODO add your handling code here:
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p_p1 = Double.parseDouble(jTextFieldProcent1.getText());
            p1 =(p_p1/100);
            p1 = p1*p0 + p0;
            jTextFieldPrice1.setText( doubleRoundToString(6,p1));
            jTextFieldProcent1.setBackground(new java.awt.Color(255, 255, 255));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            jTextFieldProcent1.setBackground(new java.awt.Color(255, 204, 204));
        }
    }//GEN-LAST:event_jTextFieldProcent1FocusLost
    
    private void jTextFieldPrice1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldPrice1FocusLost
        try {
            
            p0 = Double.parseDouble(jTextDostPrice.getText());
            p1 = Double.parseDouble(jTextFieldPrice1.getText());
            if(p1 >= p0) p_p1 = (100 * (p1-p0)) / p0;
            else showMessage();
            
            jTextFieldProcent1.setText( doubleRoundToString(3,p_p1));
            jTextFieldProcent1.setBackground(new java.awt.Color(255, 255, 255));
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            showMessage();
            jTextFieldPrice1.setBackground(new java.awt.Color(255, 204, 204));
            jTextFieldPrice1.requestFocus();
        }
        
    }//GEN-LAST:event_jTextFieldPrice1FocusLost
    
    private void jTextFieldPrice1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldPrice1KeyPressed
// TODO add your handling code here:
        
        if(evt.getKeyCode()==evt.VK_ENTER) {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p1 = Double.parseDouble(jTextFieldPrice1.getText());
                if (p1 >= p0 ) p_p1 = (100 * (p1-p0)) / p0;
                else showMessage();
                
                jTextFieldProcent1.setText( doubleRoundToString(3,p_p1));
                jTextFieldPrice1.setBackground(new java.awt.Color(255, 255, 255));
                jTextFieldPrice1.transferFocus();
            } catch(NumberFormatException e) {
                showMessage();
                jTextFieldPrice1.setBackground(new java.awt.Color(255, 204, 204));
            }
            
        }
    }//GEN-LAST:event_jTextFieldPrice1KeyPressed
    
    private void jTextDostPriceKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextDostPriceKeyPressed
// TODO add your handling code here:
        if(jTextDostPrice.getText().length()>0) {
            jTextFieldPrice1.setEnabled(true);
            jTextFieldPrice2.setEnabled(true);
            jTextFieldPrice3.setEnabled(true);
            jTextFieldProcent3.setEnabled(true);
            jTextFieldProcent2.setEnabled(true);
            jTextFieldProcent1.setEnabled(true);
            p0 = Double.parseDouble(jTextDostPrice.getText());
            if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){jTextFieldPrice1.requestFocus();}
        }
    }//GEN-LAST:event_jTextDostPriceKeyPressed
    
    private void jTextDostPriceKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextDostPriceKeyReleased
// TODO add your handling code here:
    }//GEN-LAST:event_jTextDostPriceKeyReleased
    
    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
// TODO add your handling code here:
        if(p0==0 && p1==0 && p2==0 && p3==0 && id_curs==0) {
            showMessage();
        } else {
            try {
                p0 = Double.parseDouble(jTextDostPrice.getText());
                p1 = Double.parseDouble(jTextFieldPrice1.getText());
                p2 = Double.parseDouble(jTextFieldPrice2.getText());
                p3 = Double.parseDouble(jTextFieldPrice3.getText());
            } catch(Exception e) {
                showMessage();
            }
            if(isNew) {
                
                // myParent.setId_PP(myParent.getCountriesT().setNewPrice(p0,p1,p2,p3,id_curs));
                myParent.setNewPrice(p0,p1,p2,p3,id_curs);
                
                jButtonClose.doClick();
            } else {
                // myParent.getCountriesT().updateProductPrice(id_price,p0,p1,p2,p3,id_curs);
                myParent.setNewPrice(p0,p1,p2,p3,id_curs);
                
                jButtonClose.doClick();
            }
            
        }
        
    }//GEN-LAST:event_jButtonSaveActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    /**
     * @param args the command line arguments
     */
  /*  public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                //new aeProductPrice(new javax.swing.JFrame(), true).setVisible(true);
            }
        });
    }*/
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonSave;
    private javax.swing.JComboBox jComboBoxValuta;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextDostPrice;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextFieldPrice1;
    private javax.swing.JTextField jTextFieldPrice2;
    private javax.swing.JTextField jTextFieldPrice3;
    private javax.swing.JTextField jTextFieldProcent1;
    private javax.swing.JTextField jTextFieldProcent2;
    private javax.swing.JTextField jTextFieldProcent3;
    private javax.swing.JTextField jTextFieldValue;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private nom.FrmProduct myParent;
    private int id_price=0, id_curs=0;
    private double p0=0,p1=0,p2=0,p3=0;
    private double p_p1=0,p_p2=0,p_p3=0;
    private boolean isNew = false;
    private String splitMoney[] = null;
    private int selectComboBoxItem;
    private showConteinCurs shContein;
    //---------------END My Variables
//---------------START MyFunction
    
    
    private void getDataByID() {
        String prices[] = new String[4];
        String curs[] = null;
        if(id_price>0) {
            prices = myParent.getCountriesT().getProductPrice(id_price);
        } else {
            prices = myParent.getNewPrice();
        }
        
        jTextDostPrice.setText(prices[0]);
        jTextFieldPrice1.setText(prices[1]);
        jTextFieldPrice2.setText(prices[2]);
        jTextFieldPrice3.setText(prices[3]);
        id_curs = Integer.parseInt(prices[4]);
        curs = myParent.getCountriesT().getCurs(id_curs);
        jTextFieldValue.setText(curs[2]);
        selectComboBoxItem = Integer.parseInt(curs[1]);
        
        jTextFieldPrice1.setEnabled(true);
        jTextFieldPrice2.setEnabled(true);
        jTextFieldPrice3.setEnabled(true);
        jTextFieldProcent1.setEnabled(true);
        jTextFieldProcent2.setEnabled(true);
        jTextFieldProcent3.setEnabled(true);
        
        p0 = Double.parseDouble(jTextDostPrice.getText());
        
        p1 = Double.parseDouble(jTextFieldPrice1.getText());
        
        p_p1 = (100 * (p1-p0)) / p0;
        jTextFieldProcent1.setText( doubleRoundToString(3,p_p1));
        
        p2 = Double.parseDouble(jTextFieldPrice2.getText());
        p_p2 = (100 * (p2-p0)) / p0 ;
        
        jTextFieldProcent2.setText( doubleRoundToString(3,p_p2));
        
        p3 = Double.parseDouble(jTextFieldPrice3.getText());
        p_p3 = (100 * (p3-p0)) / p0;
        jTextFieldProcent3.setText( doubleRoundToString(3,p_p3));
        
        
        
    }
    private void showMessage() {
        JOptionPane.showMessageDialog(this,"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043a\u043e\u0440\u0435\u043a\u043d\u043e \u0434\u0430\u043d\u043d\u0438\u0442\u0435");
        
    }
    private int getNewComboBoxIndex(int oldindex) //OK
    {
        int newindex= 0;
        for(int i = 0; i < myParent.getCountriesT().getIndexConnOfIdMoney().length; i++) {
            if(myParent.getCountriesT().getIndexConnOfIdMoney()[i]==oldindex) {
                newindex = i;
                break;
            }
        }
        return newindex;
    }
    private String doubleRoundToString(int digit, double indouble) {
        String newDouble = new String();
        double r = indouble;
        BigDecimal bd = new BigDecimal(r);
        bd = bd.setScale(digit,BigDecimal.ROUND_HALF_UP);
        r = bd.doubleValue();
        return newDouble.valueOf(r);
    }
}// end class
