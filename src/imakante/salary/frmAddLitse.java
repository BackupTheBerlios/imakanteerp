
package imakante.salary;

import java.awt.event.KeyEvent;

public class frmAddLitse extends javax.swing.JDialog implements java.awt.event.WindowListener{
    
    
    public frmAddLitse(javax.swing.JFrame parent, boolean modal, java.sql.Connection dbCon, int id_rab, int lMonth, int lYear) {
        super(parent, modal);
        parent_in=parent;
        
        dbInternal = dbCon;
        id_row = id_rab;
        lmonth=lMonth;
        lyear=lYear;
        initProcent();
        initTaxDOD();
        initComponents();
        initCombo_Area();
        initCombo_Gender();
        initResource();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        this.setSize(650,450);
        int x_width = (((dim.width)-(this.getSize().width))/2);
        int y_height = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x_width,y_height);
        
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
        jLabel1 = new javax.swing.JLabel();
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
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jtfOsigSuma = new javax.swing.JTextField();
        jSeparator1 = new javax.swing.JSeparator();
        jCheckBox1 = new javax.swing.JCheckBox();
        jpButtons = new javax.swing.JPanel();
        jbAdd = new javax.swing.JButton();
        jbChange = new javax.swing.JButton();
        jbQuit = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0421\u043b\u0443\u0436\u0438\u0442\u0435\u043b");
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
        jtfNumber.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfNumberKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.ipadx = 40;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jtfNumber, gridBagConstraints);

        jlIDCard.setText("\u2116 \u043d\u0430 \u041b\u041a");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpPerson.add(jlIDCard, gridBagConstraints);

        jtfIDCard.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfIDCardKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jtfIDCard, gridBagConstraints);

        jlIDCDate.setText("\u0418\u0437\u0434\u0430\u0434\u0435\u043d\u0430 \u043d\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpPerson.add(jlIDCDate, gridBagConstraints);

        jtfIDCDate.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfIDCDateFocusLost(evt);
            }
        });
        jtfIDCDate.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfIDCDateKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.ipadx = 80;
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
        jtfName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfNameKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 10);
        jpPerson.add(jtfName, gridBagConstraints);

        jlMName.setText("\u041f\u0440\u0435\u0437\u0438\u043c\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jlMName, gridBagConstraints);

        jtfMName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfMNameKeyPressed(evt);
            }
        });

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

        jtfFName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfFNameKeyPressed(evt);
            }
        });

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
        jtfEGN.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfEGNFocusLost(evt);
            }
        });
        jtfEGN.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfEGNKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 10);
        jpPerson.add(jtfEGN, gridBagConstraints);

        jlBDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u0440\u0430\u0436\u0434\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.fill = java.awt.GridBagConstraints.VERTICAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpPerson.add(jlBDate, gridBagConstraints);

        jtfBDate.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfBDateFocusLost(evt);
            }
        });
        jtfBDate.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfBDateKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
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

        jcbGender.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jcbGenderKeyPressed(evt);
            }
        });

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

        jlPCode.setText("\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434*");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 10);
        jpWhereabouts.add(jlPCode, gridBagConstraints);

        jtfPCode.setColumns(4);
        jtfPCode.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtfPCodeActionPerformed(evt);
            }
        });
        jtfPCode.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfPCodeKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 10);
        jpWhereabouts.add(jtfPCode, gridBagConstraints);

        jlCity.setText("\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e*");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jpWhereabouts.add(jlCity, gridBagConstraints);

        jtfCity.setColumns(25);
        jtfCity.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfCityFocusLost(evt);
            }
        });
        jtfCity.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfCityKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 150;
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
        gridBagConstraints.ipadx = 250;
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
        gridBagConstraints.ipadx = 100;
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
        gridBagConstraints.ipadx = 100;
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
        gridBagConstraints.ipadx = 150;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jpWhereabouts.add(jtfEmail, gridBagConstraints);

        jLabel1.setText("* F7 - \u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u0432\u044a\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.gridwidth = 3;
        jpWhereabouts.add(jLabel1, gridBagConstraints);

        jtpDataInput.addTab("\u041c\u0435\u0441\u0442\u043e\u0436\u0438\u0432\u0435\u0435\u043d\u0435 \u0438 \u041a\u043e\u043c\u0443\u043d\u0438\u043a\u0430\u0446\u0438\u044f", jpWhereabouts);

        jpWorker.setLayout(new java.awt.GridBagLayout());

        jpWorker.setBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jpWorker.setRequestFocusEnabled(false);
        jlContractNum.setText("\u2116 \u0434\u043e\u0433\u043e\u0432\u043e\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(40, 30, 5, 5);
        jpWorker.add(jlContractNum, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 5);
        jpWorker.add(jtfContractNum, gridBagConstraints);

        jlAssignDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043d\u0430\u0437\u043d\u0430\u0447\u0432\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(40, 5, 5, 5);
        jpWorker.add(jlAssignDate, gridBagConstraints);

        jtfAssignDate.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfAssignDateFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfAssignDate, gridBagConstraints);

        jlSignonDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043f\u043e\u0441\u0442\u044a\u043f\u0432\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 5);
        jpWorker.add(jlSignonDate, gridBagConstraints);

        jtfSignonDate.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfSignonDateFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 5);
        jpWorker.add(jtfSignonDate, gridBagConstraints);

        jlGrounds.setText("\u041e\u0441\u043d\u043e\u0432\u0430\u043d\u0438\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(40, 5, 5, 5);
        jpWorker.add(jlGrounds, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfGorunds, gridBagConstraints);

        jlTerm.setText("\u0421\u0440\u043e\u043a \u043d\u0430 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jlTerm, gridBagConstraints);

        jtfTerm.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfTermFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfTerm, gridBagConstraints);

        jlQuitDate.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u043d\u0430\u043f\u0443\u0441\u043a\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jlQuitDate, gridBagConstraints);

        jtfQuitDate.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfQuitDateFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfQuitDate, gridBagConstraints);

        jlLastInsDate.setText("\u041f\u043e\u0441\u043b\u0435\u0434\u0435\u043d \u0434\u0435\u043d \u0432 \u043e\u0441\u0438\u0433\u0443\u0440\u044f\u0432\u0430\u043d\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 30);
        jpWorker.add(jlLastInsDate, gridBagConstraints);

        jtfLastInsDate.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfLastInsDateFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 30);
        jpWorker.add(jtfLastInsDate, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.gridwidth = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 30);
        jpWorker.add(jsDates2Payment, gridBagConstraints);

        jlPosition.setText("\u0414\u043b\u044a\u0436\u043d\u043e\u0441\u0442*");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(40, 5, 5, 30);
        jpWorker.add(jlPosition, gridBagConstraints);

        jtfPosition.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfPositionKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 30);
        jpWorker.add(jtfPosition, gridBagConstraints);

        jlHoursPerDay.setText("\u0427\u0430\u0441\u043e\u0432\u0435 / \u0414\u0435\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 5);
        jpWorker.add(jlHoursPerDay, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 5);
        jpWorker.add(jtfHoursPerDay, gridBagConstraints);

        jlSalary.setText("\u0417\u0430\u043f\u043b\u0430\u0442\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jlSalary, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfSalary, gridBagConstraints);

        jlTypeEmp.setText("\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u043a*");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 30);
        jpWorker.add(jlTypeEmp, gridBagConstraints);

        jtfTypeEmp.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfTypeEmpKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 30);
        jpWorker.add(jtfTypeEmp, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.gridwidth = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 30);
        jpWorker.add(jsPayment2Exts, gridBagConstraints);

        jpLOS.setLayout(new java.awt.GridBagLayout());

        jpLOS.setBorder(new javax.swing.border.TitledBorder(new javax.swing.border.EtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0421\u0442\u0430\u0436 \u0438\u0437\u0432\u044a\u043d \u0444\u0438\u0440\u043c\u0430\u0442\u0430", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.TOP));
        jlLOSDays.setText("\u0414\u043d\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSDays, gridBagConstraints);

        jtfLOSDays.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfLOSDaysFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 25;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jtfLOSDays, gridBagConstraints);

        jlLOSMonths.setText("\u041c\u0435\u0441\u0435\u0446\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSMonths, gridBagConstraints);

        jtfLOSMonths.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfLOSMonthsFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 25;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jtfLOSMonths, gridBagConstraints);

        jlLOSYears.setText("\u0413\u043e\u0434\u0438\u043d\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jlLOSYears, gridBagConstraints);

        jtfLOSYears.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfLOSYearsFocusLost(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 25;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpLOS.add(jtfLOSYears, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 10;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.gridheight = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.ipadx = 12;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 15, 5);
        jpWorker.add(jpLOS, gridBagConstraints);

        jlNotes.setText("\u0411\u0435\u043b\u0435\u0436\u043a\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 10;
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
        gridBagConstraints.gridy = 11;
        gridBagConstraints.gridwidth = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 15, 30);
        jpWorker.add(jspNotes, gridBagConstraints);

        jLabel2.setText("* F7 - \u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u0432\u044a\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 12;
        jpWorker.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u041e\u0441\u0438\u0433\u0443\u0440\u0438\u0442\u0435\u043b\u043d\u0430 \u0441\u0443\u043c\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jLabel3, gridBagConstraints);

        jtfOsigSuma.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfOsigSumaFocusLost(evt);
            }
        });
        jtfOsigSuma.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfOsigSumaKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jtfOsigSuma, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 7;
        gridBagConstraints.gridwidth = 7;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 30);
        jpWorker.add(jSeparator1, gridBagConstraints);

        jCheckBox1.setText("\u041e\u0441\u0438\u0433\u0443\u0440\u043e\u0432\u043a\u0438\u0442\u0435 \u0434\u0430 \u0441\u0435 \u0441\u043c\u044f\u0442\u0430\u0442 \u0432\u044a\u0440\u0445\u0443 \u043e\u0441\u0438\u0433\u0443\u0440\u0438\u0442\u0435\u043b\u043d\u0430 \u0441\u0443\u0441\u0443\u043c\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 8;
        gridBagConstraints.gridwidth = 4;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jpWorker.add(jCheckBox1, gridBagConstraints);

        jtpDataInput.addTab("\u0414\u0430\u043d\u043d\u0438 \u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u043a\u0430", jpWorker);

        getContentPane().add(jtpDataInput, java.awt.BorderLayout.CENTER);

        jbAdd.setText("\u0417\u0430\u043f\u0430\u0437\u0438");
        jbAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbAddActionPerformed(evt);
            }
        });

        jpButtons.add(jbAdd);

        jbChange.setText("\u0418\u0437\u0447\u0438\u0441\u0442\u0438");
        jbChange.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbChangeActionPerformed(evt);
            }
        });

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
    
    private void jtfOsigSumaKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfOsigSumaKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfOsigSuma.transferFocus();}
    }//GEN-LAST:event_jtfOsigSumaKeyPressed
    
    private void jtfOsigSumaFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfOsigSumaFocusLost
        validateOsigFiled();
    }//GEN-LAST:event_jtfOsigSumaFocusLost
    
    private void jtfTypeEmpKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfTypeEmpKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_F7){
            imakante.salary.frmAL_VOsig frmDialog = new imakante.salary.frmAL_VOsig(parent_in, true,dbInternal, jtfTypeEmp.getText());
            
            frmDialog.setVisible(true);
        }
        
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfTypeEmp.transferFocus();}
    }//GEN-LAST:event_jtfTypeEmpKeyPressed
    
    private void jtfPositionKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfPositionKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_F7){
            imakante.salary.frmAL_Dlajnosti frmDialog = new imakante.salary.frmAL_Dlajnosti(parent_in, true,dbInternal, jtfCity.getText());
            
            frmDialog.setVisible(true);
        }
        
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfPosition.transferFocus();}
    }//GEN-LAST:event_jtfPositionKeyPressed
    
    private void jtfLOSYearsFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfLOSYearsFocusLost
        if(isNumber(jtfLOSYears.getText()) == false){jtfLOSYears.setText(""+0);jtfLOSYears.requestFocus();jtfLOSYears.setBackground(java.awt.Color.PINK);}else{jtfLOSYears.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfLOSYearsFocusLost
    
    private void jtfLOSMonthsFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfLOSMonthsFocusLost
        if(isNumber(jtfLOSMonths.getText()) == false){jtfLOSMonths.setText(""+0);jtfLOSMonths.requestFocus();jtfLOSMonths.setBackground(java.awt.Color.PINK);}else{jtfLOSMonths.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfLOSMonthsFocusLost
    
    private void jtfLOSDaysFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfLOSDaysFocusLost
        if(isNumber(jtfLOSDays.getText()) == false){jtfLOSDays.setText(""+0);jtfLOSDays.requestFocus();jtfLOSDays.setBackground(java.awt.Color.PINK);}else{jtfLOSDays.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfLOSDaysFocusLost
    
    private void jtfTermFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfTermFocusLost
        if(validateDate(jtfTerm.getText()) == false){jtfTerm.requestFocus();jtfTerm.setBackground(java.awt.Color.PINK);}else{jtfTerm.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfTermFocusLost
    
    private void jtfLastInsDateFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfLastInsDateFocusLost
        if(validateDate(jtfLastInsDate.getText()) == false){jtfLastInsDate.requestFocus();jtfLastInsDate.setBackground(java.awt.Color.PINK);}else{jtfLastInsDate.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfLastInsDateFocusLost
    
    private void jtfQuitDateFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfQuitDateFocusLost
        if(validateDate(jtfQuitDate.getText()) == false){jtfQuitDate.requestFocus();jtfQuitDate.setBackground(java.awt.Color.PINK);}else{jtfQuitDate.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfQuitDateFocusLost
    
    private void jtfSignonDateFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfSignonDateFocusLost
        if(validateDate(jtfSignonDate.getText()) == false){jtfSignonDate.requestFocus();jtfSignonDate.setBackground(java.awt.Color.PINK);}else{jtfSignonDate.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfSignonDateFocusLost
    
    private void jtfAssignDateFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfAssignDateFocusLost
        if(validateDate(jtfAssignDate.getText()) == false){jtfAssignDate.requestFocus();jtfAssignDate.setBackground(java.awt.Color.PINK);}else{jtfAssignDate.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfAssignDateFocusLost
    
    private void jtfBDateFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfBDateFocusLost
        if(validateDate(jtfBDate.getText()) == false){jtfBDate.requestFocus();jtfBDate.setBackground(java.awt.Color.PINK);}else{jtfBDate.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfBDateFocusLost
    
    private void jtfIDCDateFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfIDCDateFocusLost
        if(validateDate(jtfIDCDate.getText()) == false){jtfIDCDate.requestFocus();jtfIDCDate.setBackground(java.awt.Color.PINK);}else{jtfIDCDate.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jtfIDCDateFocusLost
    
    private void jtfCityFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfCityFocusLost
        checkNM();
    }//GEN-LAST:event_jtfCityFocusLost
    
    private void jbChangeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbChangeActionPerformed
        clear_all_fields();
    }//GEN-LAST:event_jbChangeActionPerformed
    
    private void jbAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbAddActionPerformed
        if (id_row!=0 && super_validateDates()){update_db_Record();}
        if (id_row == 0 && super_validateDates()){insert_db_Record();}
        UnloadWindow();
    }//GEN-LAST:event_jbAddActionPerformed
    
    private void jcbGenderKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jcbGenderKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){  jcbGender.transferFocus();}
    }//GEN-LAST:event_jcbGenderKeyPressed
    
    private void jtfBDateKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfBDateKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){  jtfBDate.transferFocus();}
    }//GEN-LAST:event_jtfBDateKeyPressed
    
    private void jtfEGNKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfEGNKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfEGN.transferFocus();}
    }//GEN-LAST:event_jtfEGNKeyPressed
    
    private void jtfFNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfFNameKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfFName.transferFocus();}
    }//GEN-LAST:event_jtfFNameKeyPressed
    
    private void jtfMNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfMNameKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfMName.transferFocus();}
    }//GEN-LAST:event_jtfMNameKeyPressed
    
    private void jtfNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfNameKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfName.transferFocus();}
    }//GEN-LAST:event_jtfNameKeyPressed
    
    private void jtfIDCDateKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfIDCDateKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfIDCDate.transferFocus();}
    }//GEN-LAST:event_jtfIDCDateKeyPressed
    
    private void jtfIDCardKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfIDCardKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfIDCard.transferFocus();}
    }//GEN-LAST:event_jtfIDCardKeyPressed
    
    private void jtfNumberKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfNumberKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfNumber.transferFocus();}
    }//GEN-LAST:event_jtfNumberKeyPressed
    
    private void jtfPCodeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfPCodeKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_F7){
            
            imakante.salary.frmAL_NM frmDialog = new imakante.salary.frmAL_NM(parent_in, true,dbInternal, "", jtfPCode.getText() , false);
            
            frmDialog.setVisible(true);
        }
        
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfPCode.transferFocus();}
    }//GEN-LAST:event_jtfPCodeKeyPressed
    
    private void jtfPCodeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtfPCodeActionPerformed
        
    }//GEN-LAST:event_jtfPCodeActionPerformed
    
    private void jtfCityKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfCityKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_F7){
            imakante.salary.frmAL_NM frmDialog = new imakante.salary.frmAL_NM(parent_in, true,dbInternal, jtfCity.getText(), "", true);
            
            frmDialog.setVisible(true);
        }
        
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jtfCity.transferFocus();}
    }//GEN-LAST:event_jtfCityKeyPressed
    
    private void jtfEGNFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfEGNFocusLost
        EGN = jtfEGN.getText();
        if (EGN.length()!=10){
            String Ops[] = {"\u0412\u044a\u0440\u043d\u0438 \u0441\u0435", "\u041d\u0435 \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0432\u0430\u0439", "\u041e\u0442\u043a\u0430\u0437"};
            int Warner = javax.swing.JOptionPane.showOptionDialog(null,"\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0430 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442!", "\u0426\u0438\u0444\u0440\u0438\u0442\u0435 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0441\u0430 10!",javax.swing.JOptionPane.DEFAULT_OPTION,javax.swing.JOptionPane.WARNING_MESSAGE,null,Ops,Ops[1]);
            switch (Warner) {
                case 1: jtfEGN.setText(""); break;
                case 2: jtfEGN.requestFocus(); break;
                case 3: dispose(); break;
            }
            if(EGN.equals("")) {} else {;}
        } else {
            if(imakante.com.EGNChecker.ValidEGN(EGN) == true) {
                System.out.println("EGN-to " + EGN + " e walidno!");
            } else {
                String Ops[] = {"\u0412\u044a\u0440\u043d\u0438 \u0441\u0435", "\u041d\u0435 \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0432\u0430\u0439", "\u041e\u0442\u043a\u0430\u0437"};
                int Warner = javax.swing.JOptionPane.showOptionDialog(null,"\u041d\u0415\u0412\u0410\u041b\u0418\u0414\u041d\u041e \u0415\u0413\u041d!", "\u0412\u041d\u0418\u041c\u0410\u041d\u0418\u0415!!! \u0412\u044a\u0432\u0435\u0434\u0435\u043d\u043e\u0442\u043e \u0415\u0413\u041d \u0435 \u043d\u0435\u0432\u0430\u043b\u0438\u0434\u043d\u043e! \u041f\u0440\u043e\u0432\u0435\u0440\u0435\u0442\u0435 \u0437\u0430 \u0433\u0440\u0435\u0448\u043a\u0430!",javax.swing.JOptionPane.DEFAULT_OPTION,javax.swing.JOptionPane.WARNING_MESSAGE,null,Ops,Ops[1]);
                switch (Warner) {
                    case 1: jtfEGN.setText(""); break;
                    case 2: jtfEGN.requestFocus(); break;
                    case 3: dispose(); break;
                }
            }
            if(imakante.com.EGNChecker.Gender(EGN) == true) {
                jcbGender.setSelectedItem(Gender[0]);
            } else {
                jcbGender.setSelectedItem(Gender[1]);
            }
            jtfBDate.setText(imakante.com.EGNChecker.BirthDate(EGN));
        }
    }//GEN-LAST:event_jtfEGNFocusLost
    
    private void jbQuitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbQuitActionPerformed
        UnloadWindow();
    }//GEN-LAST:event_jbQuitActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JSeparator jSeparator1;
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
    private javax.swing.JTextField jtfOsigSuma;
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
    
    javax.swing.JFrame parent_in;
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stm;
    public static java.sql.ResultSet rs;
    java.sql.ResultSetMetaData rsmd;
    public static int id_row,id_nm;
    boolean ADDING_STATE;
    public int lMonth, lYear;
    public static String[] Gender = {"\u041c\u044a\u0436","\u0416\u0435\u043d\u0430"};
    private  double[] taxDOD_doh = new double[10];
    private  double[] taxDOD_sum = new double[10];
    private  double[] taxDOD_prct = new double[10];
    public String EGN;
    int inter_id;
    int DOD_id = 0;// broi dod iteratsii
    public static int  id_dlajnost, lmonth, lyear, days, month_days;
    public static String name_dlajnost;
    public static String name_os, cod_os;
    private static double ktu = 0.6, prc_oz = 0.9, prc_pensii = 8.7, prc_zo = 1.8, prc_bezr = 1.05, prc_upf = 0.9;
    private static double sum_ktu =0, sum_oz =0, sum_pensii =0, sum_zo = 0, sum_bezr = 0, sum_upf = 0, sum_min_os =  150, max_os = 1300;
   
    
    private double string2double(String str_d){
        double doub = 0;
        try{ doub = Double.parseDouble(str_d);}catch(NumberFormatException nfe){doub = 0; return doub;}
        return doub;
    }
    
    private void validateOsigFiled(){
        float osiSuma = 0;
        try{
            osiSuma = Float.parseFloat(jtfOsigSuma.getText());
            if (osiSuma > max_os){jtfOsigSuma.setBackground(java.awt.Color.PINK);
            System.out.println("max " + max_os + " osiSuma "+ osiSuma);
            jtfOsigSuma.requestFocus();
            jtfOsigSuma.setText("" + max_os);
            }else{jtfOsigSuma.setBackground(java.awt.Color.WHITE);}
        }
        catch(NumberFormatException nfe){jtfOsigSuma.setBackground(java.awt.Color.PINK);
        jtfOsigSuma.requestFocus();
        jtfOsigSuma.setText("" + 150);
        
        }
    }
    
    protected void initTaxDOD(){
              
        try{
        stm = dbInternal.createStatement();
        rs = stm.executeQuery("SELECT * FROM ls_dod WHERE pmoth = "+ lmonth + " AND  pyear = " + lyear);
        while(rs.next()){
           
         taxDOD_doh[DOD_id] = rs.getDouble("doh"); 
         taxDOD_sum[DOD_id] = rs.getDouble("suma");
         taxDOD_prct[DOD_id] = rs.getDouble("prct");
         
         DOD_id++;
        }
        }catch(java.sql.SQLException sqle){}
                
    }
    
    protected boolean validateDate(String str){
        
        boolean is_valid = true;
        String str_d ="";
        String str_m ="";
        String str_y ="";
        int int_d = 0;
        int int_m = 0;
        int int_y =0;
        if(str.equals("")){is_valid = true; return is_valid;}
        try{
            str_d = str.substring(0, 2);}catch(IndexOutOfBoundsException ioobe){is_valid = false; return is_valid;}
        
        try{
            str_m = str.substring(3, 5);}catch(IndexOutOfBoundsException ioobe){is_valid = false; return is_valid;}
        
        try{
            str_y = str.substring(6, 10);}catch(IndexOutOfBoundsException ioobe){is_valid = false; return is_valid;}
        
        try{
            int_d = Integer.parseInt(str_d);
        }catch(NumberFormatException nfe){nfe.printStackTrace(); is_valid = false; return is_valid;}
        
        try{
            int_m =Integer.parseInt(str_m);
        }catch(NumberFormatException nfe){nfe.printStackTrace();is_valid = false; return is_valid;}
        
        try{
            int_y =Integer.parseInt(str_y);
        }catch(NumberFormatException nfe){is_valid = false; return is_valid;}
        
        if(int_d==0 || int_m==0 ){ is_valid = false; return is_valid;}
        if(int_d > 31 || int_m > 12 ){is_valid = false; return is_valid;}
        
        return is_valid;
    }
    
    protected boolean super_validateDates(){
        
        boolean validate = true;
        
        if(validateDate(jtfTerm.getText()) == false){
            jtfTerm.requestFocus();
            jtfTerm.setBackground(java.awt.Color.PINK);
            validate = false;
            return validate;
        }
        
        if(validateDate(jtfLastInsDate.getText()) == false){
            jtfLastInsDate.requestFocus();
            jtfLastInsDate.setBackground(java.awt.Color.PINK);
            validate = false;
            return validate;
        }
        
        if(validateDate(jtfQuitDate.getText()) == false){
            jtfQuitDate.requestFocus();
            jtfQuitDate.setBackground(java.awt.Color.PINK);
            validate = false;
            return validate;
        }
        
        if(validateDate(jtfSignonDate.getText()) == false){
            jtfSignonDate.requestFocus();
            jtfSignonDate.setBackground(java.awt.Color.PINK);
            validate = false;
            return validate;
        }
        
        if(validateDate(jtfAssignDate.getText()) == false){
            jtfAssignDate.requestFocus();
            jtfAssignDate.setBackground(java.awt.Color.PINK);
            validate = false;
            return validate;
        }
        
        if(validateDate(jtfBDate.getText()) == false){
            jtfBDate.requestFocus();
            jtfBDate.setBackground(java.awt.Color.PINK);
            validate = false;
            return validate;
        }
        
        if(validateDate(jtfBDate.getText()) == false){
            jtfBDate.requestFocus();
            jtfBDate.setBackground(java.awt.Color.PINK);
            validate = false;
            return validate;
        }
        
        if(validateDate(jtfIDCDate.getText()) == false){
            jtfIDCDate.requestFocus();
            jtfIDCDate.setBackground(java.awt.Color.PINK);
            validate = false;
            return validate;
        }
        
        return validate;
    }
    protected boolean isNumber(String str_num){
        boolean is_number = true;
        try{
            int y = Integer.parseInt(str_num);}catch(NumberFormatException nfe){is_number = false; return is_number; }
        return is_number;
    }
    protected boolean isFloat(String str_float){
        boolean is_float = true;
        try{
            float f = Float.parseFloat(str_float);}catch(NumberFormatException nfe){is_float =false; return is_float;}
        return is_float;
        
    }
    protected String convertDate(String str){
        String converted_str = "0000-00-00";
        if(str.equals("")!=true){
            try{
                converted_str = str.substring(6, 10) + "-" +str.substring(3, 5) + "-" + str.substring(0, 2);
            }catch(IndexOutOfBoundsException ioobe){converted_str = ""; return converted_str;}
            return converted_str;
        }else{converted_str = ""; return converted_str;}
        
        
    }
    protected static void initProcent(){
        try{
            stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                    java.sql.ResultSet.CONCUR_UPDATABLE);
        } catch (java.sql.SQLException sqle){sqle.printStackTrace();}
        
        try{
            rs = stm.executeQuery("SELECT * FROM ls_monthpar WHERE pmonth ="+ lmonth + " AND pyear = "+ lyear);
            while(rs.next()){
                
                ktu = rs.getDouble("ktu");
                prc_oz = rs.getDouble("max_os_prag");
                prc_pensii = rs.getDouble("proc_pensii");
                prc_zo =rs.getDouble("proc_zo");
                prc_bezr = rs.getDouble("proc_bez");
                prc_upf = rs.getDouble("proc_upf");
                max_os = rs.getDouble("max_os_prag");
                
            }
            
            rs.close();
        } catch (java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    
    protected static void initResource(){
        if (id_row!=0){
            try{
                stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                        java.sql.ResultSet.CONCUR_UPDATABLE);
            } catch (java.sql.SQLException sqle){sqle.printStackTrace();
            }
            
            try{
                rs = stm.executeQuery("SELECT ls_main.id, ls_main.nomer, ls_main.first, ls_main.second, ls_main.family, ls_main.egn, DATE_FORMAT(ls_dates.b_date,'%d-%m-%Y') AS bdate, gender, nomer_LK, DATE_FORMAT(ls_dates.data_izd_LK,'%d-%m-%Y') AS date_lk, n_oblast.name AS name_oblast, n_nm.postcode, n_nm.name AS name_grad, ls_addresses.address, ls_addresses.telefon, ls_addresses.mobilen, email, nomer_dogowor, DATE_FORMAT(ls_dates.data_naznach,'%d-%m-%Y') AS nazdate, DATE_FORMAT(ls_dates.data_postypwane,'%d-%m-%Y') AS postdate, DATE_FORMAT(ls_dates.data_napuskane,'%d-%m-%Y') AS napudate, DATE_FORMAT(ls_dates.posl_den_w_osig,'%d-%m-%Y') AS posddate, osnowanie_dog, DATE_FORMAT(ls_dates.srok_dogov, '%d-%m-%Y') AS srok_dog , d_st, m_st, g_st, kateg_rabotnik, belejki, n_oblast.id AS id_oblast FROM ls_main LEFT JOIN ls_dates ON (ls_dates.id_rab = ls_main.id) LEFT JOIN ls_addresses ON (ls_addresses.id_rab = ls_main.id) LEFT JOIN n_nm ON (n_nm.id = ls_addresses.id_nasm) LEFT JOIN n_oblast ON (n_oblast.id = n_nm.id_oblast) WHERE ls_main.id = " + id_row);
                while(rs.next()){
                    
                    jcbDistrict.setSelectedItem(rs.getInt("id_oblast"));
                    jcbGender.setSelectedItem(fill_combo_Gender_rs(rs.getString("gender")));
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
                    
                    jtfQuitDate.setText(rs.getString("napudate"));
                    
                    jtfSignonDate.setText(rs.getString("postdate"));  // data na postypwane
                    jtfTerm.setText(rs.getString("srok_dog"));    // srok na dogowora
                    
                    
                    rs.close();
                }
                rs = stm.executeQuery("SELECT ls_result.cat_rab, ls_result.h_dogovor_day, ls_result.zaplata, ls_dlajnosti.namedlaj FROM ls_result LEFT JOIN ls_dlajnosti ON (ls_dlajnosti.id = ls_result.id_dlaj) WHERE ls_result.idrab = " + id_row);
                while(rs.next()){
                    jtfTypeEmp.setText(rs.getString("")); // kategoriq rabotnik
                    jtfHoursPerDay.setText(rs.getString("h_dogovor_day")); // x4asow raboten den
                    jtfSalary.setText(rs.getString(""));  // zaplata
                    jtfPosition.setText(rs.getString(""));    // dlyjnost
                }
            } catch (java.sql.SQLException sqle){sqle.printStackTrace();}
            
        }
    }
    protected void clear_all_fields(){
        jcbDistrict.setSelectedItem(0);
        jcbGender.setSelectedItem(0);
        jtaNotes.setText("");
        jtfAddress.setText("");
        jtfAssignDate.setText("");
        jtfBDate.setText("");
        jtfCity.setText("");
        jtfContractNum.setText("");
        jtfEGN.setText("");
        jtfEmail.setText("");
        jtfFName.setText("");
        jtfGorunds.setText(""); // osnowanie na dogowora
        jtfHoursPerDay.setText(""); // x4asow raboten den
        jtfIDCDate.setText("");
        jtfIDCard.setText("");
        jtfLOSDays.setText("");
        jtfLOSMonths.setText("");
        jtfLOSYears.setText("");
        jtfLastInsDate.setText("");
        jtfMName.setText("");
        jtfMobile.setText("");
        jtfName.setText("");
        jtfNumber.setText("");
        jtfPCode.setText("");
        jtfPhone.setText("");
        jtfPosition.setText("");    // dlyjnost
        jtfQuitDate.setText("");
        jtfSalary.setText("");  // zaplata
        jtfSignonDate.setText("");  // data na postypwane
        jtfTerm.setText("");    // srok na dogowora
        jtfTypeEmp.setText(""); // kategoriq rabotnik
        
        jtfNumber.requestFocus();
    }
    
    
    protected void insert_db_Record(){
        try{
            inter_id = imakante.com.pubMethods.getMaxNum("Select id FROM ls_main", dbInternal, "id") + 1;
            stm = dbInternal.createStatement();
            String strSQl ="INSERT INTO ls_main (nomer,first,second,family,egn,gender,nomer_LK,osnowanie_dog,d_st,m_st,g_st,kateg_rabotnik,belejki) " +
                    "VALUES('" + jtfNumber.getText() +
                    "', '" + jtfName.getText() +
                    "', '" + jtfMName.getText() +
                    "', '" + jtfFName.getText() +
                    "', '" + jtfEGN.getText() +
                    "', '" + jcbGender.getSelectedItem().toString() +
                    "', '" + jtfIDCard.getText() +
                    "', '" + jtfGorunds.getText() +
                  
                    "', '" + jtfLOSDays.getText() +
                    "', '" + jtfLOSMonths.getText() +
                    "', '" + jtfLOSYears.getText() +
                    "', '" + jtfTypeEmp.getText() +
                    "', '" + jtaNotes.getText() +
                    
                    "')";
            System.out.println(strSQl);
            stm.execute(strSQl);
            strSQl = "INSERT INTO ls_addresses (address, telefon, mobilen, email, id_rab, id_nasm ) VALUES('" 
                    + jtfAddress.getText() +
                    "', '" + jtfPhone.getText() +
                    "', '" + jtfMobile.getText() +
                    "', '" + jtfEmail.getText() +
                    "', '" +  inter_id +
                    "', '" + id_nm +
                    
                    "')";
            System.out.println(strSQl);
            stm.execute(strSQl);
            
            strSQl = "INSERT INTO ls_dates (id_rab, b_date, data_izd_LK, data_naznach, data_postypwane, srok_dogov) VALUES('" 
                    + inter_id +
                    
                    "', '" + convertDate(jtfBDate.getText()) +
                    "', '" + convertDate(jtfIDCDate.getText()) +
                    "', '" + convertDate(jtfAssignDate.getText()) +
                    "', '" + convertDate(jtfSignonDate.getText()) +
                    "', '" + convertDate(jtfTerm.getText()) +
                    "')";
            System.out.println(strSQl);
            stm.execute(strSQl);
            
            
        //    stm.execute("INSERT INTO ls_result (pmonth, pyear, id_rab, id_dlaj, cat_rab, m_rab, y_rab, h_dogovor_day, day_used, zaplata )");
            
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        
        
        
        
        
        
        
        
    }
    protected void update_db_Record(){
        try{
            
            stm = dbInternal.createStatement();
            String strSQl ="UPDATE ls_main SET (" + id_row + ",first,second,family,egn,gender,nomer_LK,osnowanie_dog,srok_dog,d_st,m_st,g_st,kateg_rabotnik,belejki) " +
                    "VALUES('" + jtfNumber.getText() +
                    "', '" + jtfName.getText() +
                    "', '" + jtfMName.getText() +
                    "', '" + jtfFName.getText() +
                    "', '" + jtfEGN.getText() +
                    "', '" + jcbGender.getSelectedItem().toString() +
                    "', '" + jtfIDCard.getText() +
                    "', '" + jtfGorunds.getText() +
                    "', '" + jtfTerm.getText() +
                    "', '" + jtfLOSDays.getText() +
                    "', '" + jtfLOSMonths.getText() +
                    "', '" + jtfLOSYears.getText() +
                    "', '" + jtfTypeEmp.getText() +
                    "', '" + jtaNotes.getText() +
                    
                    "')";
            System.out.println(strSQl);
            stm.execute(strSQl);
            
            stm.execute("UPDATE ls_addresses SET (address, telefon, mobilen,email," + id_row +", id_nasm ) VALUES(" + jtfAddress.getText() +
                    ", " + jtfPhone.getText() +
                    ", " + jtfMobile.getText() +
                    ", " + jtfEmail.getText() +
                    ", " +  inter_id +
                    ", " + id_nm +
                    
                    ")");
            
            stm.execute("UPDATE ls_dates SET (" + id_row + ", b_date, date_izd_LK, date_naznach,data_postypwane, srok_dogov) VALUES(" + inter_id +
                    
                    ", " + convertDate(jtfBDate.getText()) +
                    ", " + convertDate(jtfIDCDate.getText()) +
                    ", " + convertDate(jtfAssignDate.getText()) +
                    ", " + convertDate(jtfSignonDate.getText()) +
                    ", " + convertDate(jtfTerm.getText()) +
                    ")");
            
            stm.execute("UPDATE INTO ls_result (pmonth, pyear, " + id_row + ", id_dlaj, cat_rab, m_rab, y_rab, h_dogovor_day, day_used, zaplata )");
            
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        
    }
    
    
    protected void processMDays(){
        String str_d="";
        int i_days=0;
        String str_area="";
        int e_day=0, m_day = 0;
        try{
            str_d = jtfAssignDate.getText().substring(0, 2);}catch(IndexOutOfBoundsException ioobe){}
        try {i_days = Integer.parseInt(str_d);} catch(NumberFormatException nfe){}
        try{stm = dbInternal.createStatement();
        rs = stm.executeQuery("SELECT  seq FROM ls_monthpar WHERE pmonth= "+lmonth+"AND pyear ="+lyear);
        while(rs.next()){
            str_area = rs.getString("seq");
            
        }
        }catch(java.sql.SQLException sqle){}
        for (int i = 0; i<str_area.length(); i++){
            
            if(str_area.charAt(i)==1){m_day++;}
        }
        for (int i = i_days - 1; i <  str_area.length(); i++){
            if(str_area.charAt(i)==1){ e_day++; }
        }
        days = e_day;
        month_days = m_day;
    }
    
    
    protected void processNewSalary(){
        boolean charge_os = false; // dali rabotodatelia she plasha osigurovki razlichni ot zaplatata
        
        float sht_zaplata = 0; // shatna rabotna zaplata
        double zarabotka = 0;  // zaraboteno
        int losYears = 0;  // godini trudov staj
        double day_s =1; // dni otraboteni
        double days_min_os = 0;  //suma dnevna minimalna osigurovka
        double zarabotka_day = 0; // dnevna zarabotka
        double oblagaema = 0; //oblagaema suma s DOD
        double neto = 0; // suma za poluchavane
        int year_birth = 0; //godin na rajdane
        int i_dod = 0; // array index za dod na konkretnia oblagaem
        
        charge_os = jCheckBox1.isSelected();
        
        try {
            year_birth = Integer.parseInt(jtfEGN.getText().substring(0, 2));
        }catch(NumberFormatException nfe){year_birth = 60;}
        try {
            sum_min_os = Integer.parseInt(jtfEGN.getText().substring(0, 2));
        }catch(NumberFormatException nfe){}
        try{
            
            losYears = Integer.parseInt(jtfLOSYears.getText()); // vzimane na broia na izrabotenite godini
        }catch(NumberFormatException nfe){losYears = 0;}
        
        if(isFloat(jtfSalary.getText())){
            
            sht_zaplata = Float.parseFloat(jtfSalary.getText()); //vzima shatnata zaplata
            day_s = days/month_days; // koefitsient na izrabotneoto vreme - dni izraboteni/dni rabotni v mesetsa
            zarabotka = (sht_zaplata*day_s);  // zarabotka za otrabotenia period
            sum_ktu = ((zarabotka*ktu*losYears)/100);  // suma za KTU
            zarabotka = zarabotka + sum_ktu;  // zarabotkata + suma KTU
            zarabotka_day = zarabotka /day_s;   // zarabotka za edin otraboten den
            days_min_os = sum_min_os / day_s; //min os za edin otraboten den (min osiguritelen dneven prag)
            
            if(zarabotka_day > sum_min_os && zarabotka_day < (max_os/day_s) && charge_os == false){  //proverka dali izrabotenoto dnevno i min osiguritelen dneven prag
                sum_oz  = (zarabotka*prc_oz)/100;
                if (year_birth < 60){
                    sum_pensii = ((zarabotka*(prc_pensii + 0.75))/100);
                }else{sum_pensii =((zarabotka*prc_pensii)/100);}
                sum_zo = (zarabotka*prc_zo)/100;
                sum_bezr = (zarabotka*prc_bezr)/100;
                sum_upf = (zarabotka*prc_upf)/100;
                
            }else{
                sum_oz  = (sum_min_os*prc_oz)/100;
                if (year_birth < 60){
                    sum_pensii = ((sum_min_os*(prc_pensii + 0.75))/100);
                }else{sum_pensii =((sum_min_os*prc_pensii)/100);}
                sum_zo = (sum_min_os*prc_zo)/100;
                sum_bezr = (sum_min_os*prc_bezr)/100;
                sum_upf = (sum_min_os*prc_upf)/100;
             }
            oblagaema = zarabotka - sum_oz - sum_pensii - sum_zo - sum_bezr - sum_upf;
            for (int i= 0 ; i < DOD_id + 1; i++){
             if (oblagaema >= taxDOD_doh[i]){
                 i_dod = i; 
              }
             neto = oblagaema - taxDOD_sum[i_dod] - (((oblagaema - taxDOD_sum[i_dod])*taxDOD_prct[i_dod])/100);
            }
            try {
            stm =dbInternal.createStatement();
            String sql ="INSERT INTO ls_result (id_rab, id_dlaj, cat_rab, m_rab, y_rab," + 
                    "h_dogovor_day, day_used, zaplata, sum_kt, sum_oz_m, sum_pensii,"+
                    "sum_zoo, sum_bzr, sum_upf, sum_osig_dohod, sum_obl_dohod, sum_dod, sum_end) VALUES(" +
                    "'" + id_row +
                    "', '" + 
                    "', '" + jtfTypeEmp.getText() +
                    "', '" + jtfLOSMonths.getText() +
                    "', '" + jtfLOSYears.getText() +
                    "', '" +
                    "', '" +
                    "" +
                    "";
            }catch(java.sql.SQLException sqle){}
        }
        
    }
    
    
    protected void checkNM(){
        String City = "";
        City = jtfCity.getText();
        closeResource();
        try {
            stm = dbInternal.createStatement();
            rs = stm.executeQuery("SELECT n_nm.name FROM n_nm WHERE n_nm.name = '"+ City +"'");
            // System.out.println("resurs ot pole City (" + rs.getString("name")+")");
            if (rs.getRow()==0){jtfCity.requestFocus();}
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();jtfCity.requestFocus();}
        
    }
    public static void insertN_NM(int area, String post, String City, int id_n_nm ){
        
        jcbDistrict.setSelectedIndex(area);
        jtfPCode.setText(post);
        jtfCity.setText(City);
        id_nm =id_n_nm;
    }
    
    public static void insertDlajnost(String name_dl, int id_dlaj){
        name_dlajnost = name_dl;
        id_dlajnost = id_dlaj;
        jtfPosition.setText(name_dlajnost);
        
    }
    
    public static void insertVidOsiguren(String name_osiguren, String cod_osiguren){
        name_os = name_osiguren;
        cod_os = cod_osiguren;
        
    }
    
    protected void closeResource(){
        if(rs!=null){ try{  rs.close();
        }catch(java.sql.SQLException sqle){}}
        if(stm!=null){ try{ stm.close();
        }catch(java.sql.SQLException sqle){}}
        
    }
    protected static int fill_combo_Gender_rs(String gender){
        int gen_int = 0;
        if(gender.equals("\u041c\u044a\u0436")){ gen_int = 0;}
        if(gender.equals("\u0416\u0435\u043d\u0430")){ gen_int = 1;}
        return gen_int;
    }
    
    protected void initCombo_Gender(){
        jcbGender.addItem(Gender[0]);
        jcbGender.addItem(Gender[1]);
    }
    
    protected void initCombo_Area(){
        try{
            
            stm = dbInternal.createStatement();
            rs = stm.executeQuery("SELECT n_oblast.name FROM n_oblast ORDER BY n_oblast.id");
            
            jcbDistrict.addItem("");// za parvi prazen zapis
            
            while(rs.next()){
                
                jcbDistrict.addItem(rs.getString("name"));
                
            }
        } catch(java.sql.SQLException sqle){
            sqle.printStackTrace();
            
        }
        try{stm.close();}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        try{rs.close();}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
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
