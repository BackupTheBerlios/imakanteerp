package imakante.salary;


import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import javax.swing.JDialog;
import java.awt.Dimension;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import java.awt.Rectangle;
import javax.swing.JScrollPane;
import javax.swing.BorderFactory;
import javax.swing.border.EtchedBorder;
import javax.swing.JCheckBox;
import javax.swing.JRadioButton;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JLabel;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;


public class FrmExport extends JDialog {
    private JPanel jPanel2 = new JPanel();
    private JPanel jPanel3 = new JPanel();
    private JPanel jPanel4 = new JPanel();
    private JCheckBox jCheckBox1 = new JCheckBox();
    private JCheckBox jCheckBox2 = new JCheckBox();
    private JPanel jPanel5 = new JPanel();
    private JRadioButton jRadioButton1 = new JRadioButton();
    private JRadioButton jRadioButton2 = new JRadioButton();
    private JRadioButton jRadioButton3 = new JRadioButton();
    private JButton jButton1 = new JButton();
    private JButton jButton2 = new JButton();
    private JTextField jTextField1 = new JTextField();
    private JLabel jLabel1 = new JLabel();
    public static CustomTableModel model;
    public static CustomTable jTable;
    public static java.sql.Connection cnCus;
    public static java.sql.Statement stCus;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    public  java.sql.Statement stmt;
    private JPanel jPanel1 = new JPanel();
    private JScrollPane jScrollPane1 = new JScrollPane();
    
    public FrmExport(java.sql.Connection srcCN) throws SQLException {
        cnCus = srcCN;
        stCus = cnCus.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);
        
        strSQL = "SHOW TABLE STATUS FROM `mida`";
        try {
            rsCus = stCus.executeQuery(strSQL);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null,"Error.","Imakante",JOptionPane.WARNING_MESSAGE);
        }
        model = new CustomTableModel(cnCus, rsCus, null);
        jTable = new CustomTable(model);
        try {
            this.setModal(true);
            jbInit();
        } catch(Exception e) {
            e.printStackTrace();
        }
        jScrollPane1.getViewport().add(jTable, null);
    }
    
    private void jbInit() throws Exception {
        this.setTitle("Export");
        this.setLocation(100, 100);
        this.setSize(new Dimension(509, 561));
        this.getContentPane().setLayout(null);
        jPanel2.setBounds(new Rectangle(15, 335, 470, 40));
        jPanel2.setLayout(null);
        jPanel2.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel3.setBounds(new Rectangle(15, 335, 470, 40));
        jPanel3.setLayout(null);
        jPanel3.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel4.setBounds(new Rectangle(15, 385, 470, 40));
        jPanel4.setLayout(null);
        jPanel4.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jCheckBox1.setText("to ZIP");
        jCheckBox1.setBounds(new Rectangle(85, 10, 165, 25));
        jCheckBox2.setText("to DES");
        jCheckBox2.setBounds(new Rectangle(275, 10, 150, 25));
        jPanel5.setBounds(new Rectangle(15, 435, 470, 40));
        jPanel5.setLayout(null);
        jPanel5.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jRadioButton1.setText("delemiterTAB");
        jRadioButton1.setBounds(new Rectangle(15, 10, 110, 25));
        jRadioButton2.setText("");
        jRadioButton2.setBounds(new Rectangle(140, 10, 160, 25));
        jRadioButton3.setText("");
        jRadioButton3.setBounds(new Rectangle(305, 10, 155, 25));
        jButton1.setText("");
        jButton1.setBounds(new Rectangle(125, 490, 115, 25));
        jButton1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton1_actionPerformed(e);
            }
        });
        
        jButton2.setText("");
        jButton2.setBounds(new Rectangle(280, 490, 115, 25));
        jButton2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                jButton2_actionPerformed(e);
            }
        });
        
        jTextField1.setText("");
        jTextField1.setBounds(new Rectangle(225, 10, 230, 20));
        jLabel1.setText("");
        jLabel1.setBounds(new Rectangle(10, 10, 195, 20));
        jPanel1.setBounds(new Rectangle(15, 15, 470, 315));
        jPanel1.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        jPanel1.setLayout(null);
        jScrollPane1.setBounds(new Rectangle(5, 5, 460, 305));
        jPanel2.add(jLabel1, null);
        jPanel2.add(jTextField1, null);
        jPanel2.add(jPanel3, null);
        jPanel4.add(jCheckBox2, null);
        jPanel4.add(jCheckBox1, null);
        jPanel5.add(jRadioButton3, null);
        jPanel5.add(jRadioButton2, null);
        jPanel5.add(jRadioButton1, null);
        jPanel1.add(jScrollPane1, null);
        this.getContentPane().add(jPanel1, null);
        this.getContentPane().add(jButton2, null);
        this.getContentPane().add(jButton1, null);
        this.getContentPane().add(jPanel5, null);
        this.getContentPane().add(jPanel4, null);
        this.getContentPane().add(jPanel2, null);
    }
    
    private void jButton1_actionPerformed(ActionEvent e) {
        
        if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
            try {
                stmt = cnCus.createStatement();
            } catch (SQLException esql) {
                System.out.println("Problem sas sydavaneto na statement");
                System.out.println(esql.getMessage());
            }
            // Export the data
            String filename = "c:\\\\temp\\\\" + jTextField1.getText() + ".txt";
            System.out.println(filename);
            String tablename = jTable.getValueAt(jTable.getSelectedRow(), 0).toString();
            System.out.println(tablename);
            String _fd = "SELECT * INTO OUTFILE \"" + filename + "\" FROM " + tablename;
            try {
                stmt.execute(_fd);
                JOptionPane.showMessageDialog(null,"������ � ��������." + filename,"������� " + tablename,
                        JOptionPane.INFORMATION_MESSAGE);
                
            }
            
            catch (SQLException esql) {
                System.out.println("Problem sas execute na statment");
                System.out.println(esql.getMessage());
            }
            
            
            if (jCheckBox1.isSelected()==true)   {
                
                
                // Create a buffer for reading the files
                byte[] buf = new byte[1024];
                
                try {
                    // Create the ZIP file
                    String outFilename = jTextField1.getText() + ".zip";
                    ZipOutputStream out = new ZipOutputStream(new FileOutputStream(outFilename));
                    
                    // Compress the files
                    
                    FileInputStream in = new FileInputStream(filename);
                    
                    // Add ZIP entry to output stream.
                    out.putNextEntry(new ZipEntry(filename));
                    
                    // Transfer bytes from the file to the ZIP file
                    int len;
                    while ((len = in.read(buf)) > 0) {
                        out.write(buf, 0, len);
                    }
                    
                    // Complete the entry
                    out.closeEntry();
                    in.close();
                    // }
                    
                    // Complete the ZIP file
                    out.close();
                } catch (IOException ioe) {
                    System.out.println("Probelm sas zip faila");
                }
            }
            
            
        }
        
    }
    
    private void jButton2_actionPerformed(ActionEvent e) {
        dispose();
    }
}