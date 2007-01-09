
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
            for(i = 1; i <= n; ++i) {
                sKey = "Name" + String.valueOf(i);
                s = prop.getProperty(sKey);
                jLabelCombo.addItem(s);
                path2reports = "path2reports" + String.valueOf(i); // map key to rep dir
                System.out.println(" p2p " + path2reports);
                
                
                // TODO da se izwli4at i ostanalite konfiguracionni parametri, koito sa nowi za imakante.xml
                
                
                
            }
        } catch (FileNotFoundException e) {
            System.err.println("FileNotFoundException: " + e.getMessage()); //ne otkrivam imakante.xml!
            imakante.com.MessagePane.Error("\u041D\u0435 \u043E\u0442\u043A\u0440\u0438\u0432\u0430\u043C imakante.xml!");
        } catch (SecurityException e) {
            System.err.println("SecurityException: " + e.getMessage()); // nqmam prawo na dostyp do imakante.xml!
            imakante.com.MessagePane.Error("\u041D\u044F\u043C\u0430\u043C \u043F\u0440\u0430\u0432\u043E \u043D\u0430 " +
                    "\u0434\u043E\u0441\u0442\u044A\u043F \u0434\u043E imakante.xml!");
        } catch (InvalidPropertiesFormatException e) {
            System.err.println("InvalidPropertiesFormatException: " + e.getMessage());  // nekorekten fajlow format!
            imakante.com.MessagePane.Error("\u041D\u0435\u043A\u043E\u0440\u0435\u043A\u0442\u0435\u043D \u0444\u0430\u0439\u043B\u043E\u0432 " +
                    "\u0444\u043E\u0440\u043C\u0430\u0442!");
        } catch (IOException e) {
            System.err.println("IOException: " + e.getMessage());   // Ne moga da pro4eta nastroikite!
            imakante.com.MessagePane.Error("\u041D\u0435 \u043C\u043E\u0433\u0430 \u0434\u0430 \u043F\u0440\u043E\u0447\u0435\u0442\u0430 " +
                    "\u043D\u0430\u0441\u0442\u0440\u043E\u0439\u043A\u0438\u0442\u0435!");
        } catch (NullPointerException e) {
            System.err.println("NullPointerException: " + e.getMessage());  // Ne moga da otworq faila!
            imakante.com.MessagePane.Error("\u041D\u0435 \u043C\u043E\u0433\u0430 \u0434\u0430 \u043E\u0442\u0432\u043E\u0440\u044F " +
                    "\u0444\u0430\u0439\u043B\u0430!");
        } catch (Exception e) {
            System.err.println("OtherException: " + e.getMessage());    // NEIZWESTNA GRE6KA!
            imakante.com.MessagePane.Error("\u041D\u0415\u0418\u0417\u0412\u0415\u0421\u0422\u041D\u0410 \u0413\u0420\u0415\u0428\u041A\u0410!");
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
        jButton1 = new javax.swing.JButton();
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
        jLabel1.setForeground(new java.awt.Color(204, 255, 255));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel1.setText("\u0424\u0438\u0440\u043c\u0430 :");

        jLabel2.setForeground(new java.awt.Color(204, 255, 255));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel2.setText("\u041e\u043f\u0435\u0440\u0430\u0442\u043e\u0440 :");

        jLabel3.setForeground(new java.awt.Color(204, 255, 255));
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel3.setText("\u041f\u0430\u0440\u043e\u043b\u0430 :");

        jLabelCombo.setToolTipText("\u0424\u0438\u0440\u043c\u0438 \u0432 \u0431\u0430\u0437\u0430\u0442\u0430 \u0434\u0430\u043d\u043d\u0438");
        jLabelCombo.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jLabelComboFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jLabelComboFocusLost(evt);
            }
        });
        jLabelCombo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jLabelComboKeyPressed(evt);
            }
        });

        jUserTxtField.setText("imakante");
        jUserTxtField.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jUserTxtFieldFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jUserTxtFieldFocusLost(evt);
            }
        });
        jUserTxtField.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jUserTxtFieldKeyPressed(evt);
            }
        });

        jPassField.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jPassFieldFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jPassFieldFocusLost(evt);
            }
        });
        jPassField.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jPassFieldKeyPressed(evt);
            }
        });

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Add 2.png")));
        jButton1.setToolTipText("\u0414\u043e\u0431\u0430\u0432\u0438 \u0431\u0430\u0437\u0430 \u0434\u0430\u043d\u043d\u0438 \u0437\u0430 \u0424\u0438\u0440\u043c\u0430");
        jButton1.setMargin(new java.awt.Insets(3, 3, 3, 3));

        org.jdesktop.layout.GroupLayout jInfoPanelLayout = new org.jdesktop.layout.GroupLayout(jInfoPanel);
        jInfoPanel.setLayout(jInfoPanelLayout);
        jInfoPanelLayout.setHorizontalGroup(
            jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jInfoPanelLayout.createSequentialGroup()
                .addContainerGap()
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel1)
                    .add(jLabel3)
                    .add(jLabel2))
                .add(17, 17, 17)
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jUserTxtField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 210, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabelCombo, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 212, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPassField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 210, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 38, Short.MAX_VALUE)
                .add(jButton1)
                .addContainerGap())
        );

        jInfoPanelLayout.linkSize(new java.awt.Component[] {jLabel1, jLabel2, jLabel3}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        jInfoPanelLayout.linkSize(new java.awt.Component[] {jLabelCombo, jPassField, jUserTxtField}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        jInfoPanelLayout.setVerticalGroup(
            jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jInfoPanelLayout.createSequentialGroup()
                .addContainerGap()
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabelCombo, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jButton1)
                    .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(18, 18, 18)
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jUserTxtField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 22, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(14, 14, 14)
                .add(jInfoPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jPassField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 22, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel2.setBackground(new java.awt.Color(43, 137, 194));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jLoginBtn.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLoginBtn.setForeground(new java.awt.Color(0, 51, 153));
        jLoginBtn.setText("\u0412\u0425\u041e\u0414");
        jLoginBtn.setToolTipText("\u0412\u0445\u043e\u0434 \u0432 \u0441\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430");
        jLoginBtn.setMaximumSize(new java.awt.Dimension(80, 23));
        jLoginBtn.setMinimumSize(new java.awt.Dimension(80, 23));
        jLoginBtn.setPreferredSize(new java.awt.Dimension(80, 23));
        jLoginBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jLoginBtnActionPerformed(evt);
            }
        });

        jPanel2.add(jLoginBtn);

        jCancelBtn.setFont(new java.awt.Font("Tahoma", 1, 11));
        jCancelBtn.setForeground(new java.awt.Color(0, 51, 153));
        jCancelBtn.setText("\u041e\u0422\u041a\u0410\u0417");
        jCancelBtn.setToolTipText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f \u0434\u0438\u0430\u043b\u043e\u0433\u0430");
        jCancelBtn.setMaximumSize(new java.awt.Dimension(80, 23));
        jCancelBtn.setMinimumSize(new java.awt.Dimension(80, 23));
        jCancelBtn.setPreferredSize(new java.awt.Dimension(80, 23));
        jCancelBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCancelBtnActionPerformed(evt);
            }
        });

        jPanel2.add(jCancelBtn);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 393, Short.MAX_VALUE))
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(8, 8, 8)
                        .add(jInfoPanel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jInfoPanel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-417)/2, (screenSize.height-265)/2, 417, 265);
    }// </editor-fold>//GEN-END:initComponents

    private void jLabelComboFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jLabelComboFocusGained
        fGain(jLabelCombo);
    }//GEN-LAST:event_jLabelComboFocusGained

    private void jLabelComboFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jLabelComboFocusLost
        fLost(jLabelCombo);
    }//GEN-LAST:event_jLabelComboFocusLost

    private void jUserTxtFieldFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jUserTxtFieldFocusGained
        jUserTxtField.selectAll();
        fGain(jUserTxtField);
    }//GEN-LAST:event_jUserTxtFieldFocusGained

    private void jUserTxtFieldFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jUserTxtFieldFocusLost
        fLost(jUserTxtField);
    }//GEN-LAST:event_jUserTxtFieldFocusLost

    private void jPassFieldFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jPassFieldFocusGained
        jPassField.selectAll();
        fGain(jPassField);
    }//GEN-LAST:event_jPassFieldFocusGained

    private void jPassFieldFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jPassFieldFocusLost
        fLost(jPassField);
    }//GEN-LAST:event_jPassFieldFocusLost
    
    private void jPassFieldKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPassFieldKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER)
            jPassField.transferFocus();
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE)
            jPassField.setText("");
    }//GEN-LAST:event_jPassFieldKeyPressed
    
    private void jUserTxtFieldKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jUserTxtFieldKeyPressed
        if(evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER)
            jUserTxtField.transferFocus();
        else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE)
            jUserTxtField.setText("");
    }//GEN-LAST:event_jUserTxtFieldKeyPressed
    
    private void jLabelComboKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jLabelComboKeyPressed
        if(evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER)
            jLabelCombo.transferFocus();
    }//GEN-LAST:event_jLabelComboKeyPressed
                
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
                sKey = "Driver" + String.valueOf(nIndex + 1);
                DBDriver = prop.getProperty(sKey);
                sKey = "URL" + String.valueOf(nIndex + 1);
                DBSource = prop.getProperty(sKey);
                path = prop.getProperty(path2reports);
                System.out.println(" patia e " + path);
                DBUserName = jUserTxtField.getText();
                DBPassword = new String(jPassField.getPassword());
                // Login
                Class.forName(DBDriver);
                dbConn = DriverManager.getConnection(DBSource, DBUserName, DBPassword);
                if(dbConn!=null){
                    // Save info to pubMain
                    NewMain.setConnection(dbConn);
                    NewMain.setUser(DBUserName);
                    NewMain.setPassword(DBPassword);
                    stm = dbConn.createStatement();
                    NewMain.setPathrep(path); // SET static literal in NewMain for path to report directory
                    rs = stm.executeQuery("SELECT id_um, name_um FROM user_master WHERE acc_user = '"+ DBUserName+"'");
                    while(rs.next()){
                        userId = rs.getInt("id_um");
                        NewMain.setUserId(userId);
                        userName = rs.getString("name_um");
                        NewMain.setUserName(userName);
                        NewMain.changeUserLable("\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b: " + userName);
                    }
                    NewMain.setParamFirm();}else{
                    JOptionPane.showMessageDialog(null,"Моля изберете фирма и опитайте отново !",sMsgTitle,JOptionPane.WARNING_MESSAGE);
                    }
            } else {
                JOptionPane.showMessageDialog(null,"Моля изберете фирма и опитайте отново !",sMsgTitle,JOptionPane.WARNING_MESSAGE);
            }
        } catch(ClassNotFoundException e)  {
            buttonRelease();
            System.err.println("JDBC Driver: " + e.getMessage());
            
        } catch(SQLException e){
            buttonRelease();
            System.err.println("Unable to connect");
            System.err.println("SQLException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Възникна проблем при опита за връзка с базата.",sMsgTitle,JOptionPane.WARNING_MESSAGE);
            e.printStackTrace();
            
        } catch (Exception e){
            buttonRelease();
            JOptionPane.showMessageDialog(null,"Възникна проблем при опита за връзка с базата.",sMsgTitle,JOptionPane.WARNING_MESSAGE);
            this.jUserTxtField.requestFocus();
            
        }
        // Close dialog
        
        this.dispose();
    }//GEN-LAST:event_jLoginBtnActionPerformed
    
    private void jCancelBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCancelBtnActionPerformed
        this.dispose();
        buttonRelease();
    }//GEN-LAST:event_jCancelBtnActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
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
    
    private java.sql.Statement stm;
    private String path2reports = ""; // key for report dir
    private String path = ""; // path for report dir
    
    private void buttonRelease() {
        NewMain.setB_SL(false);
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
