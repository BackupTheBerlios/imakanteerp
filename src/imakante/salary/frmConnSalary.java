
package imakante.salary;
import javax.swing.JOptionPane;

public class frmConnSalary extends java.awt.Dialog {
    
    /** Creates new form frmNConnection */
    public frmConnSalary(salary_main m, boolean modal) {
        super(m, modal);
        main = m;
        dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
                
        try{
            java.io.BufferedReader in = new java.io.BufferedReader(new java.io.InputStreamReader(new
                    java.io.FileInputStream("c:/salary.ini"), "cp1251"));
            if (in == null){
                JOptionPane.showMessageDialog(null,"��������� ������� ��� ������ �� ���� salary.ini .\n ���� ��������� ���������� ����.","��������",JOptionPane.WARNING_MESSAGE);
                
            } else {
                while ((lineStr = in.readLine()) != null) {
                    
                    i++;
                    fint = fint + lineStr;
                }
                names =fint.split("!");
                sd = names.length;
                
            }}catch(java.io.IOException iox){}
        
        initComponents();
       x = (((dim.width)-(this.getSize().width))/2);
       y = (((dim.height)-(this.getSize().height))/2);
       
        this.setLocation(x,y);
        
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;
        
        panel1 = new java.awt.Panel();
        label1 = new java.awt.Label();
        label2 = new java.awt.Label();
        choice1 = new java.awt.Choice();
        label3 = new java.awt.Label();
        textField1 = new java.awt.TextField();
        jPasswordField1 = new javax.swing.JPasswordField();
        panel2 = new java.awt.Panel();
        button1 = new java.awt.Button();
        button2 = new java.awt.Button();
        
        setFont(new java.awt.Font("Tahoma", 0, 12));
        setLocationRelativeTo(this);
        setResizable(false);
        setTitle("\u0412\u0420\u042a\u0417\u041a\u0410 \u0421 \u0411\u0410\u0417\u0410");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                closeDialog(evt);
            }
        });
        
        panel1.setLayout(new java.awt.GridBagLayout());
        
        panel1.setBackground(new java.awt.Color(240, 240, 240));
        label1.setFont(new java.awt.Font("Tahoma", 0, 12));
        label1.setText("\u0411\u0430\u0437\u0430 \u0434\u0430\u043d\u043d\u0438 \u0444\u0438\u0440\u043c\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 40, 5, 20);
        panel1.add(label1, gridBagConstraints);
        
        label2.setFont(new java.awt.Font("Tahoma", 0, 12));
        label2.setText("\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 5, 20);
        panel1.add(label2, gridBagConstraints);
        
        for (int j=0; j<names.length; j=j+3)  {
            
            choice1.addItem(names[j]);
            
        }
        choice1.setFont(new java.awt.Font("Tahoma", 0, 12));
        
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 5, 40);
        panel1.add(choice1, gridBagConstraints);
        
        label3.setFont(new java.awt.Font("Tahoma", 0, 12));
        label3.setText("\u041f\u0430\u0440\u043e\u043b\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 40, 10, 20);
        panel1.add(label3, gridBagConstraints);
        
        textField1.setFont(new java.awt.Font("Tahoma", 0, 12));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 40);
        panel1.add(textField1, gridBagConstraints);
        
        jPasswordField1.setFont(new java.awt.Font("Tahoma", 0, 12));
        jPasswordField1.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 10, 40);
        panel1.add(jPasswordField1, gridBagConstraints);
        
        add(panel1, java.awt.BorderLayout.CENTER);
        
        panel2.setBackground(new java.awt.Color(240, 240, 240));
        button1.setActionCommand("\u0412\u0425\u041e\u0414");
        button1.setFont(new java.awt.Font("Tahoma", 0, 12));
        button1.setLabel("\u0412\u0425\u041e\u0414");
        button1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                button1ActionPerformed(evt);
            }
        });
        
        panel2.add(button1);
        
        button2.setLabel("\u0418\u0417\u0425\u041e\u0414");
        button2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                button2ActionPerformed(evt);
            }
        });
        
        panel2.add(button2);
        
        add(panel2, java.awt.BorderLayout.SOUTH);
        
        pack();
    }
    // </editor-fold>
    
    private void button2ActionPerformed(java.awt.event.ActionEvent evt) {
        System.exit(0);
    }
    
    private void button1ActionPerformed(java.awt.event.ActionEvent evt) {
        int selectedIntCombo = choice1.getSelectedIndex();
        lDBDriver = names[(selectedIntCombo*3) + 1];
        lDBSource =  names[(selectedIntCombo*3) + 2];
        lDBUser = textField1.getText();
        lDBPass = new String(jPasswordField1.getPassword());
        main.setDBDriver(lDBDriver);
        System.out.println(lDBDriver);
        main.setDBSource(lDBSource);
        System.out.println(lDBSource);
        main.setUser(lDBUser);
        System.out.println(lDBUser);
        main.setPass(lDBPass);
        System.out.println(lDBPass);
        String firmName = (String)choice1.getSelectedItem();
        main.setFirm(firmName);
        main.setNFirm(firmName);
        dispose();
    }
    
    /** Closes the dialog */
    private void closeDialog(java.awt.event.WindowEvent evt) {
        setVisible(false);
        dispose();
        System.exit(0);
    }
    
    
    
    // Variables declaration - do not modify
    private java.awt.Button button1;
    private java.awt.Button button2;
    private java.awt.Choice choice1;
    private javax.swing.JPasswordField jPasswordField1;
    private java.awt.Label label1;
    private java.awt.Label label2;
    private java.awt.Label label3;
    private java.awt.Panel panel1;
    private java.awt.Panel panel2;
    private java.awt.TextField textField1;
    // End of variables declaration
    public salary_main main = null;
    public String lDBDriver = null;
    public String lDBSource = null;
    public String lDBUser = null;
    public String lDBPass =null;
    public int sd;
    String[] drivers;
    String[] names, urls;
    public String fint ="",lineStr;
    public java.awt.Dimension dim;
    int i, x, y;
}
