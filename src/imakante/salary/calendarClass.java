
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
    
    public int m,n,gap;
    public java.awt.Color colorL;
    public java.awt.Color blackC = new java.awt.Color(0,0,0);
    public java.awt.Color redC = new java.awt.Color(255,0,0);
    public javax.swing.JLabel  jCalendarLabel[][];
    public int lMonth, lYear;
    public org.joda.time.DateTime calendarG;
    
    public calendarClass(javax.swing.JFrame parent, boolean modal, int pMonth, int pYear) {
        super(parent, modal);
        lMonth = pMonth;
        lYear = pYear;
        gap=0;
        m=1;
        
        initM();
        initComponents();
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
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());
        
        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.setFont(new java.awt.Font("Tahoma", 0, 12));
        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel1.setText("\u041f\u043d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        jPanel1.add(jLabel1, gridBagConstraints);
        
        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel2.setText("\u0412\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        jPanel1.add(jLabel2, gridBagConstraints);
        
        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel3.setText("\u0421\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        jPanel1.add(jLabel3, gridBagConstraints);
        
        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel4.setText("\u0427\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        jPanel1.add(jLabel4, gridBagConstraints);
        
        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel5.setText("\u041f\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        jPanel1.add(jLabel5, gridBagConstraints);
        
        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel6.setText("\u0421\u0431");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        jPanel1.add(jLabel6, gridBagConstraints);
        
        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 18));
        jLabel7.setText("\u041d\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 10;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        jPanel1.add(jLabel7, gridBagConstraints);
        
        jCalendarLabel =  new javax.swing.JLabel[7][8];
        m=1;
        for (int i = 1 ; i <7; i++){
            for (int j = 1; j<8 && m < n + 1 ; j++){
                if (i==1 && j == 1){j = gap;}
                
                System.out.println("i "+i+"  j"+j);
                jCalendarLabel[i][j] = new JLabel();
                jCalendarLabel[i][j].setText(""+m);
                jCalendarLabel[i][j].addMouseListener(jLabelClickedAdaptor);
                String nameB = jCalendarLabel[i][j].getText().toString();
                // jCalendarLabel[i][j].setActionCommand("nameB");
                if(j == 6 || j == 7){
                    jCalendarLabel[i][j].setForeground(redC);
                }
                
                gridBagConstraints = new java.awt.GridBagConstraints();
                gridBagConstraints.gridx = j - 1;
                gridBagConstraints.gridy = i;
                jPanel1.add(jCalendarLabel[i][j],gridBagConstraints );
                m++;
            }
        }
        
        
        
        
      
        
        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);
        
        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);
        
        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);
        
        pack();
    }
    public void initM(){
        
        calendarG  = new org.joda.time.DateTime(lYear, lMonth,1,0,0,0,0);
      
        System.out.println("lYear " + calendarG.getYear());
        System.out.println("lMonth " + calendarG.getMonthOfYear());
        gap = calendarG.getDayOfWeek();
       
        System.out.println("gap "+ gap);
      
        n = calendarG.dayOfMonth().getMaximumValue(); //broi dni v mesets
        System.out.println("n "+ n);
    }
    
    java.awt.event.ActionListener buttonAction = new java.awt.event.ActionListener(){
        public void actionPerformed(java.awt.event.ActionEvent e){
            String srcObj = e.getActionCommand();
            
            
            
        }
    };
    private void jLabelMouseClicked(java.awt.event.MouseEvent evt) {
        colorL = jLabel3.getForeground();
        if (colorL == blackC){
            jLabel3.setForeground(redC);
            
        }else {
            jLabel3.setForeground(blackC);
        }
        jPanel3.repaint();
    }
    
    java.awt.event.MouseAdapter jLabelClickedAdaptor = new java.awt.event.MouseAdapter(){
        public void mouseClicked(java.awt.event.MouseEvent evt) {
            jLabelMouseClicked(evt);
        }
    };
}
