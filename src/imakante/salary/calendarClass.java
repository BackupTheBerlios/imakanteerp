
package imakante.salary;
import javax.swing.JLabel;



public class calendarClass extends javax.swing.JDialog {
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    public javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    public javax.swing.JPanel jPanel3;
    public javax.swing.JLabel   jLabelYear;
    public  javax.swing.JLabel  jLabelY;
    public javax.swing.JLabel   jLabelMonth;
    public  javax.swing.JLabel  jLabelM;
    public int m,n,gap;
    public java.awt.Color colorL;
    public java.awt.Color blackC = new java.awt.Color(0,0,0);
    public java.awt.Color redC = new java.awt.Color(255,0,0);
    public javax.swing.JLabel  jCalendarLabel[];
    private int lMonth, lYear;
    private int rabdays = 0;
    public org.joda.time.DateTime calendarG;
    public java.sql.Connection dbInt;
    public java.sql.Statement stm;
    public java.sql.ResultSet rs;
    public String strRes,strS;
    public boolean flag;
    public calendarClass(imakante.com.vcomponents.iFrame parent, boolean modal,java.sql.Connection con, int pMonth, int pYear) {
        super(parent, modal);
        dbInt = con;
        lMonth = pMonth;
        lYear = pYear;
        gap=0;
        m=1;
        strRes="";
        
        getDays();
        
        
        initM();
       //  getDays();
        initComponents();
        initRazp();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x_width = (((dim.width)-(this.getSize().width))/2);
        int y_height = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x_width,y_height);
    }
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;
        
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabelYear = new javax.swing.JLabel();
        jLabelY = new javax.swing.JLabel();
        jLabelMonth = new javax.swing.JLabel();
        jLabelM = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);
        jPanel1.setLayout(new java.awt.GridBagLayout());
        
        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.setFont(new java.awt.Font("Tahoma", 0, 12));
        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel1.setText("\u041f\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel1, gridBagConstraints);
        
        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel2.setText("\u0412\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel2, gridBagConstraints);
        
        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel3.setText("\u0421\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel3, gridBagConstraints);
        
        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel4.setText("\u0427\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel4, gridBagConstraints);
        
        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel5.setText("\u041f\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel5, gridBagConstraints);
        
        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel6.setText("\u0421\u0431");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel6, gridBagConstraints);
        
        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel7.setText("\u041d\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel1.add(jLabel7, gridBagConstraints);
        
        jCalendarLabel =  new javax.swing.JLabel[50];
        m=1;
        for (int i = 1 ; i <7; i++){
            for (int j = 1; j<8 && m < n + 1 ; j++){
                if (i==1 && j == 1){j = gap;}
                
                jCalendarLabel[m] = new JLabel();
                jCalendarLabel[m].setText(""+m);
                jCalendarLabel[m].addMouseListener(jLabelClickedAdaptor);
                String nameB = jCalendarLabel[m].getText().toString();
                if(j == 6 || j == 7){
                    jCalendarLabel[m].setForeground(redC);
                }
                
                gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.gridx = j - 1;
                gridBagConstraints.gridy = i;
                gridBagConstraints.ipadx = 10;
                gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
                gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
                jPanel1.add(jCalendarLabel[m],gridBagConstraints );
                m++;
            }
        }
        
        
        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);
        
        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jLabelYear.setText("\u0413\u043e\u0434\u0438\u043d\u0430      ");
        jPanel2.add(jLabelYear);
        jLabelY.setText("" + lYear);
        jPanel2.add(jLabelY);
        
        jLabelMonth.setText("    \u041c\u0435\u0441\u0435\u0446   ");
        jPanel2.add(jLabelMonth);
        jLabelM.setText("" + lMonth);
        jPanel2.add(jLabelM);
        
        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);
        jButton1.setText("\u0417\u0410\u041f\u0410\u0417\u0418");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        
        jPanel3.add(jButton1);
        
        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);
        
        pack();
    }
    public void initM(){
        calendarG  = new org.joda.time.DateTime(lYear, lMonth,1,0,0,0,0);
        gap = calendarG.getDayOfWeek();
        n = calendarG.dayOfMonth().getMaximumValue(); //broi dni v mesets
    }
    
    private void jLabelMouseClicked(java.awt.event.MouseEvent evt) {
        
        String sr1 = ((JLabel) evt.getComponent()).getText();
        int mop = Integer.parseInt(((JLabel) evt.getComponent()).getText());
        if (((JLabel) evt.getComponent()).getForeground() == redC){
            ((JLabel) evt.getComponent()).setForeground(blackC);
            
            strRes =  strRes.substring(0 , mop-1) + "1" + strRes.substring(mop);
            
            ((JLabel) evt.getComponent()).repaint();
            
        }else{
            ((JLabel) evt.getComponent()).setForeground(redC);
            strRes =  strRes.substring(0 , mop-1) + "0" + strRes.substring(mop);
            ((JLabel) evt.getComponent()).repaint();
            
            
        }
        
    }
    
    java.awt.event.MouseAdapter jLabelClickedAdaptor = new java.awt.event.MouseAdapter(){
        public void mouseClicked(java.awt.event.MouseEvent evt) {
            jLabelMouseClicked(evt);
        }
        
    };
    
    public void setDays(){
        
        
    }
    public void getDays(){
        
        try{    stm = dbInt.createStatement();
        rs = stm.executeQuery("SELECT seq FROM ls_monthpar WHERE pmonth = '" + lMonth + "' AND pyear = '" + lYear + "'");
        if(rs!=null){
            
            while(rs.next()){
                strRes = rs.getString("seq");}
          
            flag = false;
            
          if (strRes == null){strRes = "";}
        } else{strRes = ""; flag = true;}
        }catch(java.sql.SQLException sql){
            sql.printStackTrace();
        }
    }
    
    public void initRazp(){
        if(strRes.equals("")!=true && strRes.equals(null)!=true && strRes.length()==n){
            for (int i = 1; i < n+1 ; i++){
               
                int mop = Integer.parseInt((String.valueOf(strRes.charAt(i-1))));
                if (mop == 0){
                    jCalendarLabel[i].setForeground(redC);
                    jCalendarLabel[i].repaint();
                }else{jCalendarLabel[i].setForeground(blackC);jCalendarLabel[i].repaint();}
            }
        }else{
             
            for (int i = 1; i < n+1; i++){
                if(jCalendarLabel[i].getForeground()==redC){
                    strRes = strRes + "0";} else {strRes = strRes +"1";}
            }
            
        }
    }
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {
        claculateWorkDays();
        if (flag==true){
            try{
                stm = dbInt.createStatement();
                stm.executeUpdate("INSERT INTO ls_monthpar(seq, pmonth, pyear) VALUES(" + strRes + "', '" + lMonth + "', '" + lYear + "')");
            }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        }else{try{
            
            stm = dbInt.createStatement();
            stm.executeUpdate("UPDATE ls_monthpar SET seq = '" + strRes + "', dni5 = '" + rabdays +"' WHERE pmonth = " + lMonth + " AND pyear = " + lYear );
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();};
        }
        try{
            rs.close();}catch(java.sql.SQLException sqle){}
        try{
            stm.close();}catch(java.sql.SQLException sqle){}
        
        this.dispose();
    }
    
    private void claculateWorkDays(){
    for(int i = 0; i < strRes.length(); i++){
    int mop = Integer.parseInt((String.valueOf(strRes.charAt(i))));
    rabdays=rabdays + mop;
    }
    
    }
    
}
