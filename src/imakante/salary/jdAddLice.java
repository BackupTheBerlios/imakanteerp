/*
 * jdAddLice.java
 *
 * Created on Четвъвтък, 2005, Юли 21, 18:46
 */
package imakante.salary;

/**
 *
 * @author  jp
 */
public class jdAddLice extends javax.swing.JDialog {
    
    java.sql.Connection cnAEC;
    java.sql.Statement stAEC;
    java.sql.ResultSet rsAEC;
    
    boolean ADDING_STATE;
    public int lMonth, lYear;
    
    public jdAddLice(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jtpDataInput = new javax.swing.JTabbedPane();
        jpPerson = new javax.swing.JPanel();
        jlNumber = new javax.swing.JLabel();
        jtfNumber = new javax.swing.JTextField();
        jlIDCard = new javax.swing.JLabel();
        jtfIDCard = new javax.swing.JTextField();
        jlIDCDate = new javax.swing.JLabel();
        jtfIDCDate = new javax.swing.JTextField();
        jsNums2Names = new javax.swing.JSeparator();
        jlName = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jlMName = new javax.swing.JLabel();
        jtfMName = new javax.swing.JTextField();
        jlFNmae = new javax.swing.JLabel();
        jtfFName = new javax.swing.JTextField();
        jsNames2Birth = new javax.swing.JSeparator();
        jlEGN = new javax.swing.JLabel();
        jtfEGN = new javax.swing.JTextField();
        jlBDate = new javax.swing.JLabel();
        jtfBDate = new javax.swing.JTextField();
        jlGender = new javax.swing.JLabel();
        jcbGender = new javax.swing.JComboBox();
        jpPicture = new javax.swing.JPanel();
        jlPic = new javax.swing.JLabel();
        jpWhereabouts = new javax.swing.JPanel();
        jlArea = new javax.swing.JLabel();
        jtfArea = new javax.swing.JTextField();
        jlPCode = new javax.swing.JLabel();
        jtfPCode = new javax.swing.JTextField();
        jlCity = new javax.swing.JLabel();
        jtfCity = new javax.swing.JTextField();
        jlAddress = new javax.swing.JLabel();
        jtfAddress = new javax.swing.JTextField();
        jsHabitat2Comm = new javax.swing.JSeparator();
        jlPhone = new javax.swing.JLabel();
        jtfPhone = new javax.swing.JTextField();
        jlMobile = new javax.swing.JLabel();
        jtfMobile = new javax.swing.JTextField();
        jlEmail = new javax.swing.JLabel();
        jtfEmail = new javax.swing.JTextField();
        jpWorker = new javax.swing.JPanel();
        jlContractNum = new javax.swing.JLabel();
        jtfContractNum = new javax.swing.JTextField();
        jlAssignDate = new javax.swing.JLabel();
        jtfAssignDate = new javax.swing.JTextField();
        jlSignonDate = new javax.swing.JLabel();
        jtfSignonDate = new javax.swing.JTextField();
        jlGrounds = new javax.swing.JLabel();
        jtfGorunds = new javax.swing.JTextField();
        jlTerm = new javax.swing.JLabel();
        jtfTerm = new javax.swing.JTextField();
        jlQuitDate = new javax.swing.JLabel();
        jtfQuitDate = new javax.swing.JTextField();
        jlLastInsDate = new javax.swing.JLabel();
        jtfLastInsDate = new javax.swing.JTextField();
        jsDates2Payment = new javax.swing.JSeparator();
        jlPosition = new javax.swing.JLabel();
        jtfPosition = new javax.swing.JTextField();
        jlSalary = new javax.swing.JLabel();
        jtfSalary = new javax.swing.JTextField();
        jlTypeEmp = new javax.swing.JLabel();
        jtfTypeEmp = new javax.swing.JTextField();
        jsPayment2Exts = new javax.swing.JSeparator();
        jpLOS = new javax.swing.JPanel();
        jlLOSDays = new javax.swing.JLabel();
        jtfLOSDays = new javax.swing.JTextField();
        jlLOSMonths = new javax.swing.JLabel();
        jtfLOSMonths = new javax.swing.JTextField();
        jlLOSYears = new javax.swing.JLabel();
        jtfLOSYears = new javax.swing.JTextField();
        jlNotes = new javax.swing.JLabel();
        jspNotes = new javax.swing.JScrollPane();
        jtaNotes = new javax.swing.JTextArea();
        jpButtons = new javax.swing.JPanel();
        jbAdd = new javax.swing.JButton();
        jbChange = new javax.swing.JButton();
        jbQuit = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jpPerson.setLayout(new java.awt.GridBagLayout());

        jpPerson.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jlNumber.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlNumber.setText("\u2116");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 4;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpPerson.add(jlNumber, gridBagConstraints);

        jtfNumber.setColumns(5);
        jtfNumber.setFont(new java.awt.Font("Tahoma", 0, 11));
        jtfNumber.setMinimumSize(new java.awt.Dimension(10, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jtfNumber, gridBagConstraints);

        jlIDCard.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlIDCard.setText("\u2116 \u043d\u0430 \u041b\u041a");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpPerson.add(jlIDCard, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.ipadx = 55;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jtfIDCard, gridBagConstraints);

        jlIDCDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlIDCDate.setText("\u0418\u0437\u0434\u0430\u0434\u0435\u043d\u0430 \u043d\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpPerson.add(jlIDCDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.ipadx = 60;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpPerson.add(jtfIDCDate, gridBagConstraints);

        jsNums2Names.setPreferredSize(new java.awt.Dimension(3, 5));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jpPerson.add(jsNums2Names, gridBagConstraints);

        jlName.setText("\u0418\u043c\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jlName, gridBagConstraints);

        jtfName.setColumns(12);
        jtfName.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jtfName, gridBagConstraints);

        jlMName.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlMName.setText("\u041f\u0440\u0435\u0437\u0438\u043c\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jlMName, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jtfMName, gridBagConstraints);

        jlFNmae.setText("\u0424\u0430\u043c\u0438\u043b\u0438\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpPerson.add(jlFNmae, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.ipadx = 120;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpPerson.add(jtfFName, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jpPerson.add(jsNames2Birth, gridBagConstraints);

        jlEGN.setText("\u0415\u0413\u041d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jlEGN, gridBagConstraints);

        jtfEGN.setColumns(8);
        jtfEGN.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 10);
        jpPerson.add(jtfEGN, gridBagConstraints);

        jlBDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u0440\u0430\u0436\u0434\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jlBDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.ipadx = 60;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 10);
        jpPerson.add(jtfBDate, gridBagConstraints);

        jlGender.setText("\u041f\u043e\u043b");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpPerson.add(jlGender, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.ipadx = 30;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jpPerson.add(jcbGender, gridBagConstraints);

        jpPicture.setLayout(new java.awt.GridBagLayout());

        jpPicture.setBorder(new javax.swing.border.BevelBorder(javax.swing.border.BevelBorder.RAISED));
        jlPic.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlPic.setText("\u0421\u043d\u0438\u043c\u043a\u0430");
        jlPic.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jpPicture.add(jlPic, new java.awt.GridBagConstraints());

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridheight = 6;
        gridBagConstraints.ipadx = 70;
        gridBagConstraints.ipady = 120;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jpPicture, gridBagConstraints);

        jtpDataInput.addTab("\u041b\u0438\u0447\u043d\u0438 \u0434\u0430\u043d\u043d\u0438", jpPerson);

        jpWhereabouts.setLayout(new java.awt.GridBagLayout());

        jpWhereabouts.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jlArea.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlArea.setText("\u041e\u0431\u043b\u0430\u0441\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpWhereabouts.add(jlArea, gridBagConstraints);

        jtfArea.setColumns(20);
        jtfArea.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(6, 20, 6, 10);
        jpWhereabouts.add(jtfArea, gridBagConstraints);

        jlPCode.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlPCode.setText("\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWhereabouts.add(jlPCode, gridBagConstraints);

        jtfPCode.setColumns(4);
        jtfPCode.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWhereabouts.add(jtfPCode, gridBagConstraints);

        jlCity.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlCity.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpWhereabouts.add(jlCity, gridBagConstraints);

        jtfCity.setColumns(25);
        jtfCity.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpWhereabouts.add(jtfCity, gridBagConstraints);

        jlAddress.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlAddress.setText("\u0410\u0434\u0440\u0435\u0441");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWhereabouts.add(jlAddress, gridBagConstraints);

        jtfAddress.setColumns(60);
        jtfAddress.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWhereabouts.add(jtfAddress, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jpWhereabouts.add(jsHabitat2Comm, gridBagConstraints);

        jlPhone.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlPhone.setText("\u0414\u043e\u043c\u0430\u0448\u0435\u043d \u0442\u0435\u043b\u0435\u0444\u043e\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpWhereabouts.add(jlPhone, gridBagConstraints);

        jtfPhone.setColumns(15);
        jtfPhone.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 10);
        jpWhereabouts.add(jtfPhone, gridBagConstraints);

        jlMobile.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlMobile.setText("\u041c\u043e\u0431\u0438\u043b\u0435\u043d \u0442\u0435\u043b\u0435\u0444\u043e\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWhereabouts.add(jlMobile, gridBagConstraints);

        jtfMobile.setColumns(15);
        jtfMobile.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 10);
        jpWhereabouts.add(jtfMobile, gridBagConstraints);

        jlEmail.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlEmail.setText("\u0415\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u0430 \u043f\u043e\u0449\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpWhereabouts.add(jlEmail, gridBagConstraints);

        jtfEmail.setColumns(25);
        jtfEmail.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jpWhereabouts.add(jtfEmail, gridBagConstraints);

        jtpDataInput.addTab("\u041c\u0435\u0441\u0442\u043e\u0436\u0438\u0432\u0435\u0435\u043d\u0435 \u0438 \u041a\u043e\u043c\u0443\u043d\u0438\u043a\u0430\u0446\u0438\u044f", jpWhereabouts);

        jpWorker.setLayout(new java.awt.GridBagLayout());

        jpWorker.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jpWorker.setRequestFocusEnabled(false);
        jlContractNum.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlContractNum.setText("\u2116 \u0434\u043e\u0433\u043e\u0432\u043e\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(20, 10, 5, 5);
        jpWorker.add(jlContractNum, gridBagConstraints);

        jtfContractNum.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 60;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 5);
        jpWorker.add(jtfContractNum, gridBagConstraints);

        jlAssignDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlAssignDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043d\u0430\u043f\u0443\u0441\u043a\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jpWorker.add(jlAssignDate, gridBagConstraints);

        jtfAssignDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfAssignDate, gridBagConstraints);

        jlSignonDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlSignonDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043f\u043e\u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWorker.add(jlSignonDate, gridBagConstraints);

        jtfSignonDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWorker.add(jtfSignonDate, gridBagConstraints);

        jlGrounds.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlGrounds.setText("\u041e\u0441\u043d\u043e\u0432\u0430\u043d\u0438\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 5, 5);
        jpWorker.add(jlGrounds, gridBagConstraints);

        jtfGorunds.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 25, 5, 20);
        jpWorker.add(jtfGorunds, gridBagConstraints);

        jlTerm.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlTerm.setText("\u0421\u0440\u043e\u043a \u043d\u0430 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jpWorker.add(jlTerm, gridBagConstraints);

        jtfTerm.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWorker.add(jtfTerm, gridBagConstraints);

        jlQuitDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlQuitDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043d\u0430\u043f\u0443\u0441\u043a\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jpWorker.add(jlQuitDate, gridBagConstraints);

        jtfQuitDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWorker.add(jtfQuitDate, gridBagConstraints);

        jlLastInsDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlLastInsDate.setText("\u041f\u043e\u0441\u043b\u0435\u0434\u0435\u043d \u0434\u0435\u043d \u0432 \u043e\u0441\u0438\u0433\u0443\u0440\u044f\u0432\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 15);
        jpWorker.add(jlLastInsDate, gridBagConstraints);

        jtfLastInsDate.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWorker.add(jtfLastInsDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.gridwidth = 8;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 10);
        jpWorker.add(jsDates2Payment, gridBagConstraints);

        jlPosition.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlPosition.setText("\u0414\u043b\u044a\u0436\u043d\u043e\u0441\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 5);
        jpWorker.add(jlPosition, gridBagConstraints);

        jtfPosition.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 5);
        jpWorker.add(jtfPosition, gridBagConstraints);

        jlSalary.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlSalary.setText("\u0417\u0430\u043f\u043b\u0430\u0442\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jlSalary, gridBagConstraints);

        jtfSalary.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfSalary, gridBagConstraints);

        jlTypeEmp.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlTypeEmp.setText("\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u043a");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWorker.add(jlTypeEmp, gridBagConstraints);

        jtfTypeEmp.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWorker.add(jtfTypeEmp, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.gridwidth = 8;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 10);
        jpWorker.add(jsPayment2Exts, gridBagConstraints);

        jpLOS.setLayout(new java.awt.GridBagLayout());

        jpLOS.setBorder(new javax.swing.border.TitledBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0421\u0442\u0430\u0436 \u0438\u0437\u0432\u044a\u043d \u0444\u0438\u0440\u043c\u0430\u0442\u0430", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.TOP));
        jpLOS.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlLOSDays.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlLOSDays.setText("\u0414\u043d\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSDays, gridBagConstraints);

        jtfLOSDays.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 15;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jtfLOSDays, gridBagConstraints);

        jlLOSMonths.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlLOSMonths.setText("\u041c\u0435\u0441\u0435\u0446\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSMonths, gridBagConstraints);

        jtfLOSMonths.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 15;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jtfLOSMonths, gridBagConstraints);

        jlLOSYears.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlLOSYears.setText("\u0413\u043e\u0434\u0438\u043d\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSYears, gridBagConstraints);

        jtfLOSYears.setFont(new java.awt.Font("Tahoma", 0, 11));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 15;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jtfLOSYears, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.gridheight = 2;
        gridBagConstraints.ipadx = 12;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 15, 5);
        jpWorker.add(jpLOS, gridBagConstraints);

        jlNotes.setFont(new java.awt.Font("Tahoma", 0, 11));
        jlNotes.setText("\u0411\u0435\u043b\u0435\u0436\u043a\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWorker.add(jlNotes, gridBagConstraints);

        jtaNotes.setColumns(20);
        jtaNotes.setFont(new java.awt.Font("Tahoma", 0, 11));
        jtaNotes.setLineWrap(true);
        jtaNotes.setWrapStyleWord(true);
        jspNotes.setViewportView(jtaNotes);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 15, 10);
        jpWorker.add(jspNotes, gridBagConstraints);

        jtpDataInput.addTab("\u0414\u0430\u043d\u043d\u0438 \u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u043a\u0430", jpWorker);

        getContentPane().add(jtpDataInput, java.awt.BorderLayout.CENTER);

        jbAdd.setText("\u041f\u0440\u0438\u0431\u0430\u0432\u0438");
        jpButtons.add(jbAdd);

        jbChange.setText("\u041f\u0440\u043e\u043c\u0435\u043d\u0438");
        jpButtons.add(jbChange);

        jbQuit.setText("\u041e\u0442\u043a\u0430\u0437");
        jbQuit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbQuitActionPerformed(evt);
            }
        });

        jpButtons.add(jbQuit);

        getContentPane().add(jpButtons, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents

    private void jbQuitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbQuitActionPerformed
        
    }//GEN-LAST:event_jbQuitActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbAdd;
    private javax.swing.JButton jbChange;
    private javax.swing.JButton jbQuit;
    private javax.swing.JComboBox jcbGender;
    private javax.swing.JLabel jlAddress;
    private javax.swing.JLabel jlArea;
    private javax.swing.JLabel jlAssignDate;
    private javax.swing.JLabel jlBDate;
    private javax.swing.JLabel jlCity;
    private javax.swing.JLabel jlContractNum;
    private javax.swing.JLabel jlEGN;
    private javax.swing.JLabel jlEmail;
    private javax.swing.JLabel jlFNmae;
    private javax.swing.JLabel jlGender;
    private javax.swing.JLabel jlGrounds;
    private javax.swing.JLabel jlIDCDate;
    private javax.swing.JLabel jlIDCard;
    private javax.swing.JLabel jlLOSDays;
    private javax.swing.JLabel jlLOSMonths;
    private javax.swing.JLabel jlLOSYears;
    private javax.swing.JLabel jlLastInsDate;
    private javax.swing.JLabel jlMName;
    private javax.swing.JLabel jlMobile;
    private javax.swing.JLabel jlName;
    private javax.swing.JLabel jlNotes;
    private javax.swing.JLabel jlNumber;
    private javax.swing.JLabel jlPCode;
    private javax.swing.JLabel jlPhone;
    private javax.swing.JLabel jlPic;
    private javax.swing.JLabel jlPosition;
    private javax.swing.JLabel jlQuitDate;
    private javax.swing.JLabel jlSalary;
    private javax.swing.JLabel jlSignonDate;
    private javax.swing.JLabel jlTerm;
    private javax.swing.JLabel jlTypeEmp;
    private javax.swing.JPanel jpButtons;
    private javax.swing.JPanel jpLOS;
    private javax.swing.JPanel jpPerson;
    private javax.swing.JPanel jpPicture;
    private javax.swing.JPanel jpWhereabouts;
    private javax.swing.JPanel jpWorker;
    private javax.swing.JSeparator jsDates2Payment;
    private javax.swing.JSeparator jsHabitat2Comm;
    private javax.swing.JSeparator jsNames2Birth;
    private javax.swing.JSeparator jsNums2Names;
    private javax.swing.JSeparator jsPayment2Exts;
    private javax.swing.JScrollPane jspNotes;
    private javax.swing.JTextArea jtaNotes;
    private javax.swing.JTextField jtfAddress;
    private javax.swing.JTextField jtfArea;
    private javax.swing.JTextField jtfAssignDate;
    private javax.swing.JTextField jtfBDate;
    private javax.swing.JTextField jtfCity;
    private javax.swing.JTextField jtfContractNum;
    private javax.swing.JTextField jtfEGN;
    private javax.swing.JTextField jtfEmail;
    private javax.swing.JTextField jtfFName;
    private javax.swing.JTextField jtfGorunds;
    private javax.swing.JTextField jtfIDCDate;
    private javax.swing.JTextField jtfIDCard;
    private javax.swing.JTextField jtfLOSDays;
    private javax.swing.JTextField jtfLOSMonths;
    private javax.swing.JTextField jtfLOSYears;
    private javax.swing.JTextField jtfLastInsDate;
    private javax.swing.JTextField jtfMName;
    private javax.swing.JTextField jtfMobile;
    private javax.swing.JTextField jtfName;
    private javax.swing.JTextField jtfNumber;
    private javax.swing.JTextField jtfPCode;
    private javax.swing.JTextField jtfPhone;
    private javax.swing.JTextField jtfPosition;
    private javax.swing.JTextField jtfQuitDate;
    private javax.swing.JTextField jtfSalary;
    private javax.swing.JTextField jtfSignonDate;
    private javax.swing.JTextField jtfTerm;
    private javax.swing.JTextField jtfTypeEmp;
    private javax.swing.JTabbedPane jtpDataInput;
    // End of variables declaration//GEN-END:variables
    
}
