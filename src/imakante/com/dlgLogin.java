
package imakante.com;

public class dlgLogin extends javax.swing.JDialog {
    
    private java.util.Properties prop = new java.util.Properties();
    
    /** Creates new form dlgLogin */
    
    public dlgLogin(imakante.com.NewMain frame, boolean modal) {
        super(frame, modal);
        inframe = frame;
        initComponents();
        fillCombo();
        jUserTxtField.requestFocus();
    }
    private void locateConfig(){
    fileConfig = inframe.getUser_home()+"//imakante.xml";
    }
    
    /** Helper private method that fills combo*/
        
    private void fillCombo() {
        java.io.FileInputStream inStream = null;
        int i, n;
        String s, sKey;
        try {
            //// Try to load properties from file
            // Prepare
            inStream = new java.io.FileInputStream(fileConfig);
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
        } catch (java.io.FileNotFoundException e){
            System.err.println("FileNotFoundException: " + e.getMessage());
            javax.swing.JOptionPane.showMessageDialog(null,"Не откривам 'imakante.xml' !",
                    imakante.com.NewMain.getMsgTitle(),javax.swing.JOptionPane.ERROR_MESSAGE);
        } catch (SecurityException e){
            System.err.println("SecurityException: " + e.getMessage());
            javax.swing.JOptionPane.showMessageDialog(null,"Нямам право на достъп до 'imakante.xml' !",
                    imakante.com.NewMain.getMsgTitle(),javax.swing.JOptionPane.ERROR_MESSAGE);
        } catch (java.util.InvalidPropertiesFormatException e){
            System.err.println("InvalidPropertiesFormatException: " + e.getMessage());
            javax.swing.JOptionPane.showMessageDialog(null,"Некоректен формат !",
                    imakante.com.NewMain.getMsgTitle(),javax.swing.JOptionPane.ERROR_MESSAGE);
        } catch (java.io.IOException e){
            System.err.println("IOException: " + e.getMessage());
            javax.swing.JOptionPane.showMessageDialog(null,"Не мога да прочета настройките !",
                    imakante.com.NewMain.getMsgTitle(),javax.swing.JOptionPane.ERROR_MESSAGE);
        } catch (NullPointerException e){
            System.err.println("NullPointerException: " + e.getMessage());
            javax.swing.JOptionPane.showMessageDialog(null,"Не мога да отворя файла !",
                    imakante.com.NewMain.getMsgTitle(),javax.swing.JOptionPane.ERROR_MESSAGE);
        } catch (Exception e){
            System.err.println("OtherException: " + e.getMessage());
        }
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jInfoPanel = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabelCombo = new javax.swing.JComboBox();
        jUserTxtField = new javax.swing.JTextField();
        jPassField = new javax.swing.JPasswordField();
        jLoginBtn = new javax.swing.JButton();
        jCancelBtn = new javax.swing.JButton();

        getContentPane().setLayout(new java.awt.GridBagLayout());

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0412\u0440\u044a\u0437\u043a\u0430 \u0441 \u0431\u0430\u0437\u0430\u0442\u0430 \u0434\u0430\u043d\u043d\u0438");
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setModal(true);
        setResizable(false);
        jInfoPanel.setLayout(null);

        jInfoPanel.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED)));
        jLabel1.setText("\u0424\u0438\u0440\u043c\u0430 :");
        jInfoPanel.add(jLabel1);
        jLabel1.setBounds(12, 12, 98, 20);

        jLabel2.setText("\u041e\u043f\u0435\u0440\u0430\u0442\u043e\u0440 :");
        jInfoPanel.add(jLabel2);
        jLabel2.setBounds(12, 50, 98, 20);

        jLabel3.setText("\u041f\u0430\u0440\u043e\u043b\u0430 :");
        jInfoPanel.add(jLabel3);
        jLabel3.setBounds(12, 86, 98, 20);

        jLabelCombo.setToolTipText("\u0424\u0438\u0440\u043c\u0438 \u0432 \u0431\u0430\u0437\u0430\u0442\u0430 \u0434\u0430\u043d\u043d\u0438");
        jInfoPanel.add(jLabelCombo);
        jLabelCombo.setBounds(132, 10, 212, 22);

        jUserTxtField.setText("root");
        jInfoPanel.add(jUserTxtField);
        jUserTxtField.setBounds(132, 50, 210, 22);

        jInfoPanel.add(jPassField);
        jPassField.setBounds(132, 84, 210, 22);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.ipadx = 351;
        gridBagConstraints.ipady = 119;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 8, 0, 10);
        getContentPane().add(jInfoPanel, gridBagConstraints);

        jLoginBtn.setText("\u0412\u0445\u043e\u0434");
        jLoginBtn.setToolTipText("\u0412\u0445\u043e\u0434 \u0432 \u0441\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430");
        jLoginBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jLoginBtnActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 73;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(8, 10, 13, 0);
        getContentPane().add(jLoginBtn, gridBagConstraints);

        jCancelBtn.setText("\u041e\u0442\u043a\u0430\u0437");
        jCancelBtn.setToolTipText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f \u0434\u0438\u0430\u043b\u043e\u0433\u0430");
        jCancelBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCancelBtnActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 67;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(8, 84, 13, 0);
        getContentPane().add(jCancelBtn, gridBagConstraints);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-370)/2, (screenSize.height-201)/2, 370, 201);
    }// </editor-fold>//GEN-END:initComponents

    private void jLoginBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jLoginBtnActionPerformed
        String DBDriver;
        String DBSource;
        String DBUserName;
        String DBPassword;
        String sKey;
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
                dbConn = java.sql.DriverManager.getConnection(DBSource, DBUserName, DBPassword);
                // Save info to pubMain
                imakante.com.NewMain.setConnection(dbConn);
                imakante.com.NewMain.setUser(DBUserName);
                imakante.com.NewMain.setPassword(DBPassword);
                // Close dialog
                this.dispose();
            } else {
                javax.swing.JOptionPane.showMessageDialog(null,"Моля изберете фирма и опитайте отново !",
                        imakante.com.NewMain.getMsgTitle(),javax.swing.JOptionPane.WARNING_MESSAGE);
            }
        } catch(ClassNotFoundException e)  {
            System.err.println("JDBC Driver: " + e.getMessage());
        } catch(java.sql.SQLException e){
            System.err.println("Unable to connect");
            System.err.println("SQLException: " + e.getMessage());
            javax.swing.JOptionPane.showMessageDialog(null,"Възникна проблем при опита за връзка с базата.",
                    imakante.com.NewMain.getMsgTitle(),javax.swing.JOptionPane.WARNING_MESSAGE);
            e.printStackTrace();
        }
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
    private javax.swing.JPasswordField jPassField;
    private javax.swing.JTextField jUserTxtField;
    // End of variables declaration//GEN-END:variables
    private imakante.com.NewMain inframe;
    private String fileConfig;
}
