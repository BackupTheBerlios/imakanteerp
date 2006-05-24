
package imakante.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.util.Properties;
import java.util.InvalidPropertiesFormatException;
import javax.swing.*;
import javax.swing.event.*;
import java.io.*;
import java.lang.*;

public class dlgLogin extends javax.swing.JDialog {
    
    private String sMsgTitle;
    private Properties prop = new Properties();
    
    private ResultSet rs;
    /** Creates new form dlgLogin */
    public dlgLogin(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        fillCombo();
        jUserTxtField.requestFocus();
        jUserTxtField.selectAll();
        sMsgTitle = imakante.com.pubMain.getMsgTitle();
    }
    
    /** Helper private method that fills combo*/
    private void fillCombo() {
        FileInputStream inStream = null;
        int i, n;
        String s, sKey;
        try {
            //// Try to load properties from file
            // Prepare
            s = pubMain.getPropFile();
            inStream = new FileInputStream(s);
            // Load from stream
            prop.loadFromXML(inStream);
            // Close file
            inStream.close();
            // Fill combo
            n = Integer.valueOf(prop.getProperty("Firms"));
            for(i=1;i<=n;++i) {
                sKey = "Name"+String.valueOf(i);
                s = prop.getProperty(sKey);
                jLabelCombo.addItem(s);
            }
        } catch (FileNotFoundException e){
            System.err.println("FileNotFoundException: " + e.getMessage());
            //ne otkrivam imakante.xml!
            JOptionPane.showMessageDialog(null,"Не откривам imakante.xml!",sMsgTitle,JOptionPane.ERROR_MESSAGE);
        } catch (SecurityException e){
            System.err.println("SecurityException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Нямам право на достъп до imakante.xml !",sMsgTitle,JOptionPane.ERROR_MESSAGE);
        } catch (InvalidPropertiesFormatException e){
            System.err.println("InvalidPropertiesFormatException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Некоректен формат !",sMsgTitle,JOptionPane.ERROR_MESSAGE);
        } catch (IOException e){
            System.err.println("IOException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Не мога да прочета настройките !",sMsgTitle,JOptionPane.ERROR_MESSAGE);
        } catch (NullPointerException e){
            System.err.println("NullPointerException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Не мога да отворя файла !",sMsgTitle,JOptionPane.ERROR_MESSAGE);
        } catch (Exception e){
            System.err.println("OtherException: " + e.getMessage());
        }
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jInfoPanel = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabelCombo = new javax.swing.JComboBox();
        jUserTxtField = new javax.swing.JTextField();
        jPassField = new javax.swing.JPasswordField();
        jPanel2 = new javax.swing.JPanel();
        jLoginBtn = new javax.swing.JButton();
        jCancelBtn = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0412\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430 \u0434\u0430\u043d\u043d\u0438");
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setLocationByPlatform(true);
        setModal(true);
        setResizable(false);
        jPanel1.setBackground(new java.awt.Color(25, 103, 150));
        jInfoPanel.setBackground(new java.awt.Color(43, 136, 193));
        jInfoPanel.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createTitledBorder("")));
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14));
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("\u0424\u0438\u0440\u043c\u0430 :");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14));
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("\u041e\u043f\u0435\u0440\u0430\u0442\u043e\u0440 :");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14));
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("\u041f\u0430\u0440\u043e\u043b\u0430 :");

        jLabelCombo.setToolTipText("\u0424\u0438\u0440\u043c\u0438 \u0432 \u0431\u0430\u0437\u0430\u0442\u0430 \u0434\u0430\u043d\u043d\u0438");
        jLabelCombo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jLabelComboActionPerformed(evt);
            }
        });
        jLabelCombo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jLabelComboKeyPressed(evt);
            }
        });

        jUserTxtField.setText("root");
        jUserTxtField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jUserTxtFieldActionPerformed(evt);
            }
        });
        jUserTxtField.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jUserTxtFieldKeyPressed(evt);
            }
        });

        jPassField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jPassFieldActionPerformed(evt);
            }
        });
        jPassField.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jPassFieldKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jInfoPanelLayout = new org.jdesktop.layout.GroupLayout(jInfoPanel);
        jInfoPanel.setLayout(jInfoPanelLayout);
        jInfoPanelLayout.setHorizontalGroup(
            jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jInfoPanelLayout.createSequentialGroup()
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel3)
                    .add(jLabel1)
                    .add(jLabel2))
                .add(27, 27, 27)
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jUserTxtField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 210, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabelCombo, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 212, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPassField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 210, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(12, Short.MAX_VALUE))
        );
        jInfoPanelLayout.setVerticalGroup(
            jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jInfoPanelLayout.createSequentialGroup()
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabelCombo, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(18, 18, 18)
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jUserTxtField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 22, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(14, 14, 14)
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPassField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 22, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel2.setBackground(new java.awt.Color(43, 137, 194));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLoginBtn.setText("\u0412\u0445\u043e\u0434");
        jLoginBtn.setToolTipText("\u0412\u0445\u043e\u0434 \u0432 \u0441\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430");
        jLoginBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jLoginBtnActionPerformed(evt);
            }
        });

        jCancelBtn.setText("\u041e\u0442\u043a\u0430\u0437");
        jCancelBtn.setToolTipText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f \u0434\u0438\u0430\u043b\u043e\u0433\u0430");
        jCancelBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCancelBtnActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(55, 55, 55)
                .add(jLoginBtn, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 116, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jCancelBtn, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 117, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(54, 54, 54))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLoginBtn)
                    .add(jCancelBtn))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jInfoPanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 354, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jInfoPanel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 40, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 205, Short.MAX_VALUE)
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-382)/2, (screenSize.height-239)/2, 382, 239);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jPassFieldKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPassFieldKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jPassField.transferFocus();
        }
    }//GEN-LAST:event_jPassFieldKeyPressed
    
    private void jUserTxtFieldKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jUserTxtFieldKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jUserTxtField.transferFocus();
        }
    }//GEN-LAST:event_jUserTxtFieldKeyPressed
    
    private void jLabelComboKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jLabelComboKeyPressed
        if(java.awt.event.KeyEvent.VK_ENTER== evt.getKeyCode()){
            jLabelCombo.transferFocus();
        }
    }//GEN-LAST:event_jLabelComboKeyPressed
    
    private void jPassFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jPassFieldActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jPassFieldActionPerformed
    
    private void jUserTxtFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jUserTxtFieldActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jUserTxtFieldActionPerformed
    
    private void jLabelComboActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jLabelComboActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jLabelComboActionPerformed
    
    private void jLoginBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jLoginBtnActionPerformed
        String DBDriver;
        String DBSource;
        String DBUserName;
        String DBPassword;
        String sKey;
        int userId = 0;
        String userName = "";
        java.sql.Connection dbConn = null;
        int nIndex = jLabelCombo.getSelectedIndex();
        try {
            if (nIndex != -1) {
                // Prepare connection info
                sKey = "Driver"+String.valueOf(nIndex+1);
                DBDriver = prop.getProperty(sKey);
                sKey = "URL"+String.valueOf(nIndex+1);
                DBSource = prop.getProperty(sKey);
                DBUserName = jUserTxtField.getText();
                DBPassword = new String(jPassField.getPassword());
                // Login
                Class.forName(DBDriver);
                dbConn = DriverManager.getConnection(DBSource, DBUserName, DBPassword);
                // Save info to pubMain
                NewMain.setConnection(dbConn);
                NewMain.setUser(DBUserName);
                NewMain.setPassword(DBPassword);
                stm = dbConn.createStatement();
                rs = stm.executeQuery("SELECT id_um, name_um FROM user_master WHERE acc_user = '"+ DBUserName+"'");
                while(rs.next()){
                    userId = rs.getInt("id_um");
                    NewMain.setUserId(userId);
                    userName = rs.getString("name_um");
                    NewMain.setUserName(userName);
                }
                NewMain.setParamFirm();
            } else {
                JOptionPane.showMessageDialog(null,"Моля изберете фирма и опитайте отново !",sMsgTitle,JOptionPane.WARNING_MESSAGE);
            }
        } catch(ClassNotFoundException e)  {
            System.err.println("JDBC Driver: " + e.getMessage());
        } catch(SQLException e){
            System.err.println("Unable to connect");
            System.err.println("SQLException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Възникна проблем при опита за връзка с базата.",sMsgTitle,JOptionPane.WARNING_MESSAGE);
            e.printStackTrace();
        } catch (Exception e){
            JOptionPane.showMessageDialog(null,"Възникна проблем при опита за връзка с базата.",sMsgTitle,JOptionPane.WARNING_MESSAGE);
            this.jUserTxtField.requestFocus();
        }
        // Close dialog
        this.dispose();
    }//GEN-LAST:event_jLoginBtnActionPerformed
    
    private void jCancelBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCancelBtnActionPerformed
        this.dispose();
    }//GEN-LAST:event_jCancelBtnActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jCancelBtn;
    private javax.swing.JPanel jInfoPanel;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JComboBox jLabelCombo;
    private javax.swing.JButton jLoginBtn;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPasswordField jPassField;
    private javax.swing.JTextField jUserTxtField;
    // End of variables declaration//GEN-END:variables
    private  java.sql.Statement stm;
}
