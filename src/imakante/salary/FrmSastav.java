package imakante.salary;


public class FrmSastav extends javax.swing.JInternalFrame implements java.awt.event.WindowListener {
    javax.swing.JFrame JFParentFrame;
    public static java.sql.Connection cnCus;
    public static java.sql.Statement stCus;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    public static Object Content[][];
    public static int rowNum = 0;
    public static int total = 0;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    public static javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    public static final String Names[] = {"", "Номер на служител", "Име",
            "Презиме", "Фамилия", "ЕГН", "Дата на раждане", "Пол",
            "Номер на ЛК", "Издадена на", "Област", "Пощенски код",
            "Населено място", "Адрес на местоживеене","Домашен телфон",
            "Мобилен телефон", "Е-м@йл", "Номер на договора", "Дата на назначаване",
            "Дата на постъпване", "Дата на напускане", "Последен ден в осигуряване",
            "Основание на договора", "Срок на договора",
            "Дни стаж", "Месеци стаж", "Години стаж", "Категория работник", "Бележки" };
            public static imakante.com.CustomTableModel model;
            public static imakante.com.CustomTable jTable;
            
            java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
            public int lMonth;
            public int lYear;
            java.awt.Font fontP;
            
            public FrmSastav(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame,int pMonth, int pYear)
            throws java.sql.SQLException {
                super("Списък служители", false, true,true, true);
                
                setSize(900, 600);
                setLocation(20,20);
                JFParentFrame = getParentFrame;
                lMonth = pMonth;
                lYear = pYear;
                cnCus = srcCN;
                stCus = cnCus.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE, java.sql.ResultSet.CONCUR_READ_ONLY);
                strSQL = "SELECT Id, nomer, first, second, family, egn, DATE_FORMAT(`b_date`,'%Y-%m-%d') AS bdate, gender, "+
                        "nomer_LK, data_izd_LK, oblast, postcode, grad, address, telefon, "+
                        "mobilen, email, nomer_dogowor, DATE_FORMAT('data_naznach','%Y-%m-%d') AS nazdate, DATE_FORMAT('data_postypwane','%Y-%m-%d') AS postdate, "+
                        "DATE_FORMAT('data_napuskane','%Y-%m-%d') AS napudate, DATE_FORMAT('posl_den_w_osig','%Y-%m-%d') AS posddate, osnowanie_dog, srok_dog, d_st, "+
                        "m_st, g_st, kateg_rabotnik, belejki FROM main_ls WHERE nomer IS NOT NULL ORDER BY nomer ASC";
                try {
                    rsCus = stCus.executeQuery(strSQL);
                } catch (java.sql.SQLException e) {
                    javax.swing.JOptionPane.showMessageDialog(null,"Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.","ИМАКАНТЕ",
                            javax.swing.JOptionPane.WARNING_MESSAGE);
                }
                
                model = new imakante.com.CustomTableModel(cnCus, rsCus, Names);
                jTable = new imakante.com.CustomTable(model);
                
                try {
                    jbInit();
                } catch(Exception e) {
                    e.printStackTrace();
                }
              //  jScrollPane1.getViewport().add(jTable, null);
            }
            
            private void jbInit() throws Exception {
                jPanel1 = new javax.swing.JPanel();
                jScrollPane1 = new javax.swing.JScrollPane();
                jPanel2 = new javax.swing.JPanel();
                jButton1 = new javax.swing.JButton();
                jButton2 = new javax.swing.JButton();
                jButton3 = new javax.swing.JButton();
                jButton4 = new javax.swing.JButton();
                jButton5 = new javax.swing.JButton();
                jButton6 = new javax.swing.JButton();
                jButton7 = new javax.swing.JButton();
                
                jPanel1.setLayout(new java.awt.BorderLayout());
                
                jPanel1.setBorder(new javax.swing.border.EtchedBorder());
                jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);
                jScrollPane1.getViewport().add(jTable);
                getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);
                
                jPanel2.setBorder(new javax.swing.border.EtchedBorder());
                jButton1.setText("\u041d\u043e\u0432 \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b");
                jButton1.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton1ActionPerformed(evt);
                    }
                });
                
                jPanel2.add(jButton1);
                
                jButton2.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
                jButton2.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton2ActionPerformed(evt);
                    }
                });
                
                jPanel2.add(jButton2);
                
                jButton3.setText("\u041f\u0435\u0447\u0430\u0442 \u0441\u043f\u0438\u0441\u044a\u043a");
                jButton3.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton3ActionPerformed(evt);
                    }
                });
                
                jPanel2.add(jButton3);
                
                jButton4.setText("\u041f\u0435\u0447\u0430\u0442 \u043a\u0430\u0440\u0442\u043e\u043d");
                jButton4.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton4ActionPerformed(evt);
                    }
                });
                
                jPanel2.add(jButton4);
                
                jButton5.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
                jButton5.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton5ActionPerformed(evt);
                    }
                });
                
                jPanel2.add(jButton5);
                
                jButton6.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
                jButton6.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton6ActionPerformed(evt);
                    }
                });
                
                jPanel2.add(jButton6);
                
                jButton7.setText("\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435");
                jButton7.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        jButton7ActionPerformed(evt);
                    }
                });
                
                jPanel2.add(jButton7);
                
                getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);
                
                pack();
            }
            
            private void jButton1ActionPerformed(java.awt.event.ActionEvent e) {
                javax.swing.JDialog JDAdd = new frmAddLitse(true, JFParentFrame, cnCus, "", lMonth, lYear);
                JDAdd.setVisible(true);
            }
            
            private void jButton2ActionPerformed(java.awt.event.ActionEvent e)
            
            {
                try{
                    if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                        javax.swing.JDialog JDEdit = new frmAddLitse(false,
                                JFParentFrame, cnCus,
                                "SELECT Id, nomer, first, second, family, egn, b_date, gender, "+
                                "nomer_LK, data_izd_LK, oblast, postcode, grad, address, telefon, "+
                                "mobilen, email, nomer_dogowor, data_naznach, data_postypwane, "+
                                "data_napuskane, posl_den_w_osig, osnowanie_dog, srok_dog, d_st, "+
                                "m_st, g_st, kateg_rabotnik, belejki FROM main_ls WHERE id = " + jTable.getValueAt(jTable.getSelectedRow(), 0), lMonth, lYear);
                        JDEdit.setVisible(true);}
                } catch (Exception sqlE) {
                    if (sqlE.getMessage() != null) {
                        System.out.println(sqlE.getMessage());
                    } else {
                        javax.swing.JOptionPane.showMessageDialog(null,
                                "Моля изберете запис.","Не е избран запис",
                                javax.swing.JOptionPane.INFORMATION_MESSAGE);
                    }
                }
            }
            private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {
                
            }
            
            private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {
                 try {
                    if (jTable.getValueAt(jTable.getSelectedRow(),
                            jTable.getSelectedColumn()) != null) {
                       int index = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                       try{
                       stCus.executeUpdate("UPDATE main_ls SET nomer = NULL WHERE id = " + index);
                       }catch(java.sql.SQLException sqle){}
                        try{
                       stCus.executeUpdate("UPDATE lsresult SET nomer = NULL WHERE id = " + index + "AND pmonth =" + lMonth + "AND pyear = " + lYear );
                       }catch(java.sql.SQLException sqle){}
                    } else {
                        javax.swing.JOptionPane.showMessageDialog(null,
                                "Записът е променян. Моля натиснете бутон 'Опресни'!",
                                "Не е избран запис",
                                javax.swing.JOptionPane.WARNING_MESSAGE);
                    }
                    
                    
                } catch (Exception sqlE) {
                    if (sqlE.getMessage() != null) {
                        System.out.println(sqlE.getMessage());
                    } else {
                        javax.swing.JOptionPane.showMessageDialog(null,
                                "Моля изберете запис.",
                                "Не е избран зпис",
                                javax.swing.JOptionPane.INFORMATION_MESSAGE);
                    }
                }
            }
            
            
            
            private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {
                
            }
            private void jButton3_actionPerformed(java.awt.event.ActionEvent e) {
            }
            
            private void jButton4ActionPerformed(java.awt.event.ActionEvent e) {
                try {
                    if (jTable.getValueAt(jTable.getSelectedRow(),
                            jTable.getSelectedColumn()) != null) {
                       int index = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                       try{
                       stCus.executeUpdate("UPDATE main_ls SET nomer = NULL WHERE id = " + index);
                       }catch(java.sql.SQLException sqle){}
                        try{
                       stCus.executeUpdate("UPDATE lsresult SET nomer = NULL WHERE id = " + index + "AND pmonth =" + lMonth + "AND pyear = " + lYear );
                       }catch(java.sql.SQLException sqle){}
                    } else {
                        javax.swing.JOptionPane.showMessageDialog(null,
                                "Записът е променян. Моля натиснете бутон 'Опресни'!",
                                "Не е избран запис",
                                javax.swing.JOptionPane.WARNING_MESSAGE);
                    }
                    
                    
                } catch (Exception sqlE) {
                    if (sqlE.getMessage() != null) {
                        System.out.println(sqlE.getMessage());
                    } else {
                        javax.swing.JOptionPane.showMessageDialog(null,
                                "Моля изберете запис.",
                                "Не е избран зпис",
                                javax.swing.JOptionPane.INFORMATION_MESSAGE);
                    }
                }
            }
            
            
            private void jButton5_actionPerformed(java.awt.event.ActionEvent e) {
            }
            
            private void jButton7ActionPerformed(java.awt.event.ActionEvent e) {
                reloadRecord();
            }
            
            public static void reloadRecord() {
                try{
                    rsCus.close();
                    stCus.close();
                    stCus = cnCus.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                            java.sql.ResultSet.CONCUR_UPDATABLE);
                    
                    try {
                        rsCus = stCus.executeQuery(strSQL);
                    } catch (java.sql.SQLException e) {javax.swing.JOptionPane.showMessageDialog(null,
                            "Грешка ИЛС-С02Р  Възникнал проблем при осъществаване на връзка с базата.\n Моля въведете стойност в рамките 1 - 12.","ИМАКАНТЕ",
                            javax.swing.JOptionPane.WARNING_MESSAGE);}
                    
                    jScrollPane1.getViewport().remove(jTable);
                    model = new imakante.com.CustomTableModel(cnCus, rsCus, Names);
                    jTable = new imakante.com.CustomTable(model);
                    jScrollPane1.getViewport().add(jTable);
                    jScrollPane1.repaint();
                    
                } catch (Exception e){}
            }
            protected void UnloadWindow(){
                try {
                    rsCus.close();
                    stCus.close();
                } catch(java.sql.SQLException e) {
                    javax.swing.JOptionPane.showMessageDialog(null,
                            "Грешка ИЛС-С03Р  Възникнал проблем при затваряне на ресурси.\n",
                            "ИМАКАНТЕ",javax.swing.JOptionPane.WARNING_MESSAGE);
                }
                this.dispose();
                
            }
            
            
            public void windowOpened(java.awt.event.WindowEvent e){
            }
            public void windowClosing(java.awt.event.WindowEvent e){
                UnloadWindow();
            }
            public void windowClosed(java.awt.event.WindowEvent e){
            }
            public void windowIconified(java.awt.event.WindowEvent e){
            }
            public void windowDeiconified(java.awt.event.WindowEvent e){
            }
            public void windowActivated(java.awt.event.WindowEvent e){
            }
            public void windowDeactivated(java.awt.event.WindowEvent e){
            }
}