/*
 * dlgFirms.java
 *
 * Created on Понеделник, 2006, Януари 30, 17:00
 */

package imakante.com;
import javax.swing.*;
import java.io.*;
import java.util.Properties;
import java.util.Enumeration;

/**
 *
 * @author  Todor Lukanov
 */
public class dlgFirms extends javax.swing.JDialog {
    /** Internal class for firm data */
    public class FirmInfo extends java.lang.Object {
        public int nID;
        public String sName;
        public String sDriver;
        public String sURL;
        // Constructors
        public FirmInfo() {
            nID = 0;
        }
        public FirmInfo(int n) {
            nID = n;
        }
        // toString method
        public String toString() {
            return sName;
        }
        // read from Properties
        public boolean loadProperties(java.util.Properties prop) {
            String sKey;
            // Check ID
            if (nID == 0) return false;
            // Read from properties
            sKey = "Name"+Integer.toString(nID);
            sName = prop.getProperty(sKey, "");
            if (sName == "") return false;
            sKey = "Driver"+Integer.toString(nID);
            sDriver = prop.getProperty(sKey, "");
            sKey = "URL"+Integer.toString(nID);
            sURL = prop.getProperty(sKey, "");
            return true;
        }
        // save to Properties
        public boolean saveProperties(java.util.Properties prop, int n) {
            String sKey;
            // Check ID
            if (n == 0) return false;
            // Read from properties
            sKey = "Name"+Integer.toString(n);
            prop.setProperty(sKey, sName);
            if (sName == "") return false;
            sKey = "Driver"+Integer.toString(n);
            prop.setProperty(sKey, sDriver);
            sKey = "URL"+Integer.toString(n);
            prop.setProperty(sKey, sURL);
            return true;
        }
    }
    
    // Private variables
    private DefaultListModel listModel;
    private String sFileName;
    private String sMsgTitle;
    private boolean bDirty;
    private int n;
    /** Creates new form dlgFirms */
    public dlgFirms(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        // Prepare list
        listModel = new DefaultListModel();
        jFirmList.setModel(listModel);
        // Init and fill properties
        loadProperties();
        // Init rest of variables
        sMsgTitle = imakante.com.pubMain.getMsgTitle();
    }
    
    // Property list related members
    /** Loads property list from file */
    private void loadProperties() {
        Properties prop;
        FileInputStream inStream;
        int i;
        FirmInfo info;
        try {
            prop = new Properties();
            sFileName = imakante.com.pubMain.getPropFile();
            // Check file name
            if (sFileName.length() != 0) { 
                // Open file
                inStream = new FileInputStream(sFileName);
                // Load from stream
                prop.loadFromXML(inStream);
                // Fill list
                n = Integer.valueOf(prop.getProperty("Firms"));
                for(i=1;i<=n;++i){
                    // Create FirmInfo and add to list control
                    info = new FirmInfo(i);
                    if (info.loadProperties(prop)){
                        listModel.addElement(info);
                    }
                }
                jFirmList.setSelectedIndex(0);
                jFirmList.ensureIndexIsVisible(0);
                inStream.close();
            }
        } catch (FileNotFoundException e){
            // Can't find property file
            //System.err.println("FileNotFoundException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Не откривам файла с настройките !",sMsgTitle,JOptionPane.INFORMATION_MESSAGE);
        } catch (IOException e){
            System.err.println("IOException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Проблем при четене на файла с настройките !",sMsgTitle,JOptionPane.ERROR_MESSAGE);
        } catch (Exception e){
            System.err.println("OtherException: " + e.getMessage());
        } 
        bDirty = false;
    }
    
    /** Save properties back to file if there are changes */
    private void saveProperties() {
        int i;
        FirmInfo info;
        Properties prop;
        FileOutputStream outStream;
        try {
            // Prepare properties object
            prop = new Properties();
            n = listModel.size();
            // Fill list
            prop.setProperty("Firms", Integer.toString(n));
            for(i=0;i<n;++i){
                // Read FirmInfo and add to properties
                info = (FirmInfo) listModel.get(i);
                info.saveProperties(prop, i+1);
            }
            // Save to stream
            outStream = new FileOutputStream(sFileName);
            prop.storeToXML(outStream, "Imakante Properties");//, "cp1251");
            outStream.close();
        } catch (FileNotFoundException e){
            // Can't open property file
            System.err.println("FileNotFoundException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Не мога да отворя(създам) файл с настройки !",sMsgTitle,JOptionPane.ERROR_MESSAGE);
        } catch (IOException e){
            System.err.println("IOException: " + e.getMessage());
            JOptionPane.showMessageDialog(null,"Не мога да запиша във файл !",sMsgTitle,JOptionPane.ERROR_MESSAGE);
        } catch (Exception e){
            System.err.println("OtherException: " + e.getMessage());
        }
    }
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jNameField = new javax.swing.JTextField();
        jDriverField = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jURLField = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jFirmList = new javax.swing.JList();
        jDriverButton = new javax.swing.JButton();
        jURLButton = new javax.swing.JButton();
        jSaveButton = new javax.swing.JButton();
        jNewButton = new javax.swing.JButton();
        jDelButton = new javax.swing.JButton();
        jExitButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0437\u0430 \u043e\u0442\u0434\u0435\u043b\u043d\u0438\u0442\u0435 \u0444\u0438\u0440\u043c\u0438");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        jPanel1.setName("\u0424\u0438\u0440\u043c\u0430");
        jLabel1.setText("\u0418\u043c\u0435 \u043d\u0430 \u0444\u0438\u0440\u043c\u0430");

        jNameField.setText("Name");

        jDriverField.setText("Driver");

        jLabel2.setText("\u0414\u0440\u0430\u0439\u0432\u0435\u0440");

        jURLField.setText("URL");

        jLabel3.setText("\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438");

        jFirmList.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jFirmList.setSelectionMode(javax.swing.ListSelectionModel.SINGLE_SELECTION);
        jFirmList.addListSelectionListener(new javax.swing.event.ListSelectionListener() {
            public void valueChanged(javax.swing.event.ListSelectionEvent evt) {
                jFirmListValueChanged(evt);
            }
        });

        jScrollPane1.setViewportView(jFirmList);

        jDriverButton.setText("...");
        jDriverButton.setToolTipText("\u0418\u0437\u0431\u043e\u0440 \u043e\u0442 \u0441\u043f\u0438\u0441\u044a\u043a");
        jDriverButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jDriverButtonActionPerformed(evt);
            }
        });

        jURLButton.setText("...");
        jURLButton.setToolTipText("\u0418\u0437\u0431\u043e\u0440 \u043e\u0442 \u0434\u0438\u0430\u043b\u043e\u0433");
        jURLButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jURLButtonActionPerformed(evt);
            }
        });

        jSaveButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imakante/images/SmallSave.png")));
        jSaveButton.setToolTipText("\u0417\u0430\u043f\u0438\u0441\u0432\u0430 \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u0442\u0435 \u0432 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u043d\u0430 \u0444\u0438\u0440\u043c\u0430\u0442\u0430");
        jSaveButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jSaveButtonActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 360, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jPanel1Layout.createSequentialGroup()
                                .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 78, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jURLField, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 245, Short.MAX_VALUE))
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                                .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 78, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jNameField, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 245, Short.MAX_VALUE))
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                                .add(jLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 78, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(jDriverField, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 245, Short.MAX_VALUE)))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                            .add(jURLButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 27, Short.MAX_VALUE)
                            .add(jDriverButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 27, Short.MAX_VALUE)
                            .add(jSaveButton, 0, 0, Short.MAX_VALUE))))
                .add(1, 1, 1))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 101, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 22, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jNameField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jSaveButton))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 22, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jDriverField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jDriverButton))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jURLField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 22, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jURLButton)))
        );

        jNewButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imakante/images/SmallNew.png")));
        jNewButton.setText("\u041d\u043e\u0432\u0430");
        jNewButton.setToolTipText("\u0421\u044a\u0437\u0434\u0430\u0432\u0430 \u0442\u0438\u043f\u043e\u0432\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0437\u0430 \u043d\u043e\u0432\u0430 \u0444\u0438\u0440\u043c\u0430");
        jNewButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jNewButtonActionPerformed(evt);
            }
        });

        jDelButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imakante/images/SmallErase.png")));
        jDelButton.setText("\u0418\u0437\u0442\u0440\u0438\u0439");
        jDelButton.setToolTipText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\u0442\u0435 \u0437\u0430 \u0438\u0437\u0431\u0440\u0430\u043d\u0430\u0442\u0430 \u0444\u0438\u0440\u043c\u0430");
        jDelButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jDelButtonActionPerformed(evt);
            }
        });

        jExitButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imakante/images/SmallExit.png")));
        jExitButton.setText("\u041a\u0440\u0430\u0439");
        jExitButton.setToolTipText("\u041a\u0440\u0430\u0439 \u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u0430");
        jExitButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jExitButtonActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 373, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                        .add(jNewButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 100, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jDelButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 106, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 52, Short.MAX_VALUE)
                        .add(jExitButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 109, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jNewButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jDelButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jExitButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 33, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        if (bDirty) {
            saveProperties();
        }
    }//GEN-LAST:event_formWindowClosed

    private void jExitButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jExitButtonActionPerformed
        if (bDirty) {
            saveProperties();
        }
        dispose();
    }//GEN-LAST:event_jExitButtonActionPerformed

    private void jDelButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jDelButtonActionPerformed
        String sKey;
        int index = jFirmList.getSelectedIndex();
        int i;
        try {
            // Delete from list
            listModel.remove(index);
            bDirty = true;
            // Adjust new selection
            i = listModel.size();
            if (index >= i) index = i-1;
            jFirmList.setSelectedIndex(index);
            jFirmList.ensureIndexIsVisible(index);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.err.println("dlgFirms>jDel...: " + e.getMessage());
        }
    }//GEN-LAST:event_jDelButtonActionPerformed

    private void jNewButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jNewButtonActionPerformed
        FirmInfo info;
        ++n;
        // Fill with defaults
        info = new FirmInfo(n);
        info.sName = "Примерна фирма";
        info.sDriver = "com.mysql.jdbc.Driver";
        info.sURL = "jdbc:mysql://localhost:3306/mida";
        // Add to list
        listModel.addElement(info);
        jFirmList.setSelectedValue(info, true);
        bDirty = true;
    }//GEN-LAST:event_jNewButtonActionPerformed

    private void jURLButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jURLButtonActionPerformed
        dlgURL dlg = new dlgURL(pubMain.mainJFrame, true);
        dlg.setURL(jURLField.getText());
        dlg.setVisible(true);
        jURLField.setText(dlg.getURL());
        dlg.dispose();
    }//GEN-LAST:event_jURLButtonActionPerformed

    private void jDriverButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jDriverButtonActionPerformed
        JOptionPane.showMessageDialog(null,"Все още не е готово. Моля напишете името на драйвера в полето .",sMsgTitle,JOptionPane.INFORMATION_MESSAGE);
    }//GEN-LAST:event_jDriverButtonActionPerformed

    private void jSaveButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jSaveButtonActionPerformed
        FirmInfo info;
        int index = jFirmList.getSelectedIndex();
        try {
            // Change info
            info = (FirmInfo) listModel.get(index);
            info.sName = jNameField.getText();
            info.sDriver = jDriverField.getText();
            info.sURL = jURLField.getText();
            // Repaint
            jFirmList.repaint(jFirmList.getVisibleRect());
            bDirty = true;
        } catch (NullPointerException e) {
            System.err.println("NullPointerException: " + e.getMessage());
        }
    }//GEN-LAST:event_jSaveButtonActionPerformed

    private void jFirmListValueChanged(javax.swing.event.ListSelectionEvent evt) {//GEN-FIRST:event_jFirmListValueChanged
        FirmInfo info;
        int index = jFirmList.getSelectedIndex();
        if (evt.getValueIsAdjusting() == false) {
            if (index != -1) {
                //Selection, set new data to controls.
                info = (FirmInfo) listModel.get(index);
                jNameField.setText(info.sName);
                jDriverField.setText(info.sDriver);
                jURLField.setText(info.sURL);
            } else {
                jNameField.setText("");
                jDriverField.setText("");
                jURLField.setText("");
            }
        }
    }//GEN-LAST:event_jFirmListValueChanged

       
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jDelButton;
    private javax.swing.JButton jDriverButton;
    private javax.swing.JTextField jDriverField;
    private javax.swing.JButton jExitButton;
    private javax.swing.JList jFirmList;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JTextField jNameField;
    private javax.swing.JButton jNewButton;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JButton jSaveButton;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JButton jURLButton;
    private javax.swing.JTextField jURLField;
    // End of variables declaration//GEN-END:variables
    
}
