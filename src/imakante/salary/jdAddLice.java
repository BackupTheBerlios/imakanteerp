
package imakante.salary;

public class jdAddLice extends javax.swing.JDialog implements java.awt.event.WindowListener{
   
    
    public jdAddLice(java.awt.Frame parent, boolean modal, java.sql.Connection dbCon, int id_rab) {
        super(parent, modal);
        dbInternal = dbCon;
        id_row = id_rab;
        initResource();
        
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
        jlDistrict = new javax.swing.JLabel();
        jcbDistrict = new javax.swing.JComboBox();
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
        jlHoursPerDay = new javax.swing.JLabel();
        jtfHoursPerDay = new javax.swing.JTextField();
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
        jlNumber.setText("\u2116");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 4;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpPerson.add(jlNumber, gridBagConstraints);

        jtfNumber.setColumns(5);
        jtfNumber.setMinimumSize(new java.awt.Dimension(10, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jtfNumber, gridBagConstraints);

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
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jtfName, gridBagConstraints);

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
        jlDistrict.setText("\u041e\u0431\u043b\u0430\u0441\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpWhereabouts.add(jlDistrict, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpWhereabouts.add(jcbDistrict, gridBagConstraints);

        jlPCode.setText("\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWhereabouts.add(jlPCode, gridBagConstraints);

        jtfPCode.setColumns(4);
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWhereabouts.add(jtfPCode, gridBagConstraints);

        jlCity.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpWhereabouts.add(jlCity, gridBagConstraints);

        jtfCity.setColumns(25);
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jpWhereabouts.add(jtfCity, gridBagConstraints);

        jlAddress.setText("\u0410\u0434\u0440\u0435\u0441");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWhereabouts.add(jlAddress, gridBagConstraints);

        jtfAddress.setColumns(60);
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

        jlPhone.setText("\u0414\u043e\u043c\u0430\u0448\u0435\u043d \u0442\u0435\u043b\u0435\u0444\u043e\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 10);
        jpWhereabouts.add(jlPhone, gridBagConstraints);

        jtfPhone.setColumns(15);
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 10);
        jpWhereabouts.add(jtfPhone, gridBagConstraints);

        jlMobile.setText("\u041c\u043e\u0431\u0438\u043b\u0435\u043d \u0442\u0435\u043b\u0435\u0444\u043e\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWhereabouts.add(jlMobile, gridBagConstraints);

        jtfMobile.setColumns(15);
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 10);
        jpWhereabouts.add(jtfMobile, gridBagConstraints);

        jlEmail.setText("\u0415\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u0430 \u043f\u043e\u0449\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpWhereabouts.add(jlEmail, gridBagConstraints);

        jtfEmail.setColumns(25);
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jpWhereabouts.add(jtfEmail, gridBagConstraints);

        jtpDataInput.addTab("\u041c\u0435\u0441\u0442\u043e\u0436\u0438\u0432\u0435\u0435\u043d\u0435 \u0438 \u041a\u043e\u043c\u0443\u043d\u0438\u043a\u0430\u0446\u0438\u044f", jpWhereabouts);

        jpWorker.setLayout(new java.awt.GridBagLayout());

        jpWorker.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jpWorker.setRequestFocusEnabled(false);
        jlContractNum.setText("\u2116 \u0434\u043e\u0433\u043e\u0432\u043e\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(20, 10, 5, 5);
        jpWorker.add(jlContractNum, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 60;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 5);
        jpWorker.add(jtfContractNum, gridBagConstraints);

        jlAssignDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043d\u0430\u043f\u0443\u0441\u043a\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jpWorker.add(jlAssignDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfAssignDate, gridBagConstraints);

        jlSignonDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043f\u043e\u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWorker.add(jlSignonDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWorker.add(jtfSignonDate, gridBagConstraints);

        jlGrounds.setText("\u041e\u0441\u043d\u043e\u0432\u0430\u043d\u0438\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 5, 5);
        jpWorker.add(jlGrounds, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 25, 5, 20);
        jpWorker.add(jtfGorunds, gridBagConstraints);

        jlTerm.setText("\u0421\u0440\u043e\u043a \u043d\u0430 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jpWorker.add(jlTerm, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWorker.add(jtfTerm, gridBagConstraints);

        jlQuitDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043d\u0430\u043f\u0443\u0441\u043a\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jpWorker.add(jlQuitDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jpWorker.add(jtfQuitDate, gridBagConstraints);

        jlLastInsDate.setText("\u041f\u043e\u0441\u043b\u0435\u0434\u0435\u043d \u0434\u0435\u043d \u0432 \u043e\u0441\u0438\u0433\u0443\u0440\u044f\u0432\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 15);
        jpWorker.add(jlLastInsDate, gridBagConstraints);

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

        jlPosition.setText("\u0414\u043b\u044a\u0436\u043d\u043e\u0441\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 5);
        jpWorker.add(jlPosition, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 5);
        jpWorker.add(jtfPosition, gridBagConstraints);

        jlHoursPerDay.setText("\u0427\u0430\u0441\u043e\u0432\u0435 / \u0414\u0435\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jlHoursPerDay, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfHoursPerDay, gridBagConstraints);

        jlSalary.setText("\u0417\u0430\u043f\u043b\u0430\u0442\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jlSalary, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfSalary, gridBagConstraints);

        jlTypeEmp.setText("\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u043a");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWorker.add(jlTypeEmp, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
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
        jlLOSDays.setText("\u0414\u043d\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSDays, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 15;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jtfLOSDays, gridBagConstraints);

        jlLOSMonths.setText("\u041c\u0435\u0441\u0435\u0446\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSMonths, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 15;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jtfLOSMonths, gridBagConstraints);

        jlLOSYears.setText("\u0413\u043e\u0434\u0438\u043d\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSYears, gridBagConstraints);

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
    protected static javax.swing.JComboBox jcbDistrict;
    protected static javax.swing.JComboBox jcbGender;
    private javax.swing.JLabel jlAddress;
    private javax.swing.JLabel jlAssignDate;
    private javax.swing.JLabel jlBDate;
    private javax.swing.JLabel jlCity;
    private javax.swing.JLabel jlContractNum;
    private javax.swing.JLabel jlDistrict;
    private javax.swing.JLabel jlEGN;
    private javax.swing.JLabel jlEmail;
    private javax.swing.JLabel jlFNmae;
    private javax.swing.JLabel jlGender;
    private javax.swing.JLabel jlGrounds;
    private javax.swing.JLabel jlHoursPerDay;
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
    protected static javax.swing.JTextArea jtaNotes;
    protected static javax.swing.JTextField jtfAddress;
    protected static javax.swing.JTextField jtfAssignDate;
    protected static javax.swing.JTextField jtfBDate;
    protected static javax.swing.JTextField jtfCity;
    protected static javax.swing.JTextField jtfContractNum;
    protected static javax.swing.JTextField jtfEGN;
    protected static javax.swing.JTextField jtfEmail;
    protected static javax.swing.JTextField jtfFName;
    protected static javax.swing.JTextField jtfGorunds;
    protected static javax.swing.JTextField jtfHoursPerDay;
    protected static javax.swing.JTextField jtfIDCDate;
    protected static javax.swing.JTextField jtfIDCard;
    protected static javax.swing.JTextField jtfLOSDays;
    protected static javax.swing.JTextField jtfLOSMonths;
    protected static javax.swing.JTextField jtfLOSYears;
    protected static javax.swing.JTextField jtfLastInsDate;
    protected static javax.swing.JTextField jtfMName;
    protected static javax.swing.JTextField jtfMobile;
    protected static javax.swing.JTextField jtfName;
    protected static javax.swing.JTextField jtfNumber;
    protected static javax.swing.JTextField jtfPCode;
    protected static javax.swing.JTextField jtfPhone;
    protected static javax.swing.JTextField jtfPosition;
    protected static javax.swing.JTextField jtfQuitDate;
    protected static javax.swing.JTextField jtfSalary;
    protected static javax.swing.JTextField jtfSignonDate;
    protected static javax.swing.JTextField jtfTerm;
    protected static javax.swing.JTextField jtfTypeEmp;
    private javax.swing.JTabbedPane jtpDataInput;
    // End of variables declaration//GEN-END:variables
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stm;
    public static java.sql.ResultSet rs;
    public static int id_row;
    boolean ADDING_STATE;
    public int lMonth, lYear;
    
    
    protected static void initResource(){
        if (id_row!=0){
            try{
                stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                        java.sql.ResultSet.CONCUR_UPDATABLE);
            } catch (java.sql.SQLException sqle){sqle.printStackTrace();
            }
            
            try{
                rs = stm.executeQuery("SELECT ls_main.id, ls_main.nomer, ls_main.first, ls_main.second, ls_main.family, ls_main.egn, DATE_FORMAT(ls_dates.b_date,'%Y-%m-%d') AS bdate, gender, nomer_LK, DATE_FORMAT(ls_dates.data_izd_LK,'%Y-%m-%d') AS date_lk, n_oblast.name AS name_oblast, n_nm.postcode, n_nm.name AS name_grad, ls_addresses.address, ls_addresses.telåfon, ls_addresses.mobilen, email, nomer_dogowor, DATE_FORMAT(ls_dates.data_naznach,'%Y-%m-%d') AS nazdate, DATE_FORMAT(ls_dates.data_postypwane,'%Y-%m-%d') AS postdate, DATE_FORMAT(ls_dates.data_napuskane,'%Y-%m-%d') AS napudate, DATE_FORMAT(ls_dates.posl_den_w_osig,'%Y-%m-%d') AS posddate, osnowanie_dog, DATE_FORMAT(ls_dates.srok_dogov, '%Y-%m-%d') AS srok_dog , d_st, m_st, g_st, kateg_rabotnik, belejki  FROM ls_main LEFT JOIN ls_dates ON (ls_dates.id_rab = ls_main.id) LEFT JOIN ls_addresses ON (ls_addresses.id_rab = ls_main.id) LEFT JOIN n_nm ON (n_nm.id = ls_addresses.id_nasm) LEFT JOIN n_oblast ON (n_oblast.id = n_nm.id_oblast) WHERE ls_main.id = " + id_row);
                while(rs.next()){
                    
                   // jcbDistrict;    // oblast
                 //   jcbGender.setText(rs.getString("gender"));  // pol
                    jtaNotes.setText(rs.getString("belejki"));
                    jtfAddress.setText(rs.getString("address"));
                    jtfAssignDate.setText(rs.getString("nazdate"));
                    jtfBDate.setText(rs.getString("bdate"));
                    jtfCity.setText(rs.getString("name_grad"));
                    jtfContractNum.setText(rs.getString("nomer_dogowor"));
                    jtfEGN.setText(rs.getString("egn"));
                    jtfEmail.setText(rs.getString("email"));
                    jtfFName.setText(rs.getString("family"));
                    jtfGorunds.setText(rs.getString("osnowanie_dog")); // osnowanie na dogowora
                    jtfHoursPerDay.setText(rs.getString("")); // x4asow raboten den
                    jtfIDCDate.setText(rs.getString("date_lk"));
                    jtfIDCard.setText(rs.getString("nomer_LK"));
                    jtfLOSDays.setText(rs.getString("d_st"));
                    jtfLOSMonths.setText(rs.getString("m_st"));
                    jtfLOSYears.setText(rs.getString("g_st"));
                    jtfLastInsDate.setText(rs.getString("posddate"));
                    jtfMName.setText(rs.getString("second"));
                    jtfMobile.setText(rs.getString("mobilen"));
                    jtfName.setText(rs.getString("first"));
                    jtfNumber.setText(rs.getString("nomer"));
                    jtfPCode.setText(rs.getString("postcode"));
                    jtfPhone.setText(rs.getString("telefon"));
                    jtfPosition.setText(rs.getString(""));    // dlyjnost
                    jtfQuitDate.setText(rs.getString("napudate"));
                    jtfSalary.setText(rs.getString(""));  // zaplata
                    jtfSignonDate.setText(rs.getString("postdate"));  // data na postypwane
                    jtfTerm.setText(rs.getString("srok_dog"));    // srok na dogowora
                    jtfTypeEmp.setText(rs.getString("")); // kategoriq rabotnik
                  
                    
                }
                
            } catch (java.sql.SQLException sqle){sqle.printStackTrace();}
            
        }
    }
    
    
    protected void closeResource(){
        if(rs!=null){ try{  rs.close();
        }catch(java.sql.SQLException sqle){}}
        if(stm!=null){ try{ stm.close();
        }catch(java.sql.SQLException sqle){}}
        
    }
    
    protected void UnloadWindow(){
        closeResource();
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
