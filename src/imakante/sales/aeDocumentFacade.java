
package nom;

import imakante.com.vcomponents.iInternalFrame;
import javax.swing.*;
public class aeDocumentFacade extends JDialog //imakante.com.vcomponents.iDialog  // test
{
    
    /** Creates new form aeGroup */
    public aeDocumentFacade(  JFrame frame, boolean modal) //test imakante.com.vcomponents.iInternalFrame frame
    {
        
        super(frame, modal);
       
            
        initComponents();
       
      //  getNavigatiionState();   // samo za testvane na formata
       
        this.setResizable(false);
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
       
        
        
     //   repaintComp();
        
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonUndo = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButtonToBegin = new javax.swing.JButton();
        jButtonOneRowM = new javax.swing.JButton();
        jButtonOneRowP = new javax.swing.JButton();
        jButtonToEnd = new javax.swing.JButton();
        jPanelHead = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabelDocType = new javax.swing.JLabel();
        jTextFieldNomerDoc = new javax.swing.JTextField();
        jTextFieldDateDoc = new javax.swing.JTextField();
        jPanelContragent = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jTextFieldContrName = new javax.swing.JTextField();
        jTextFieldBulstat = new javax.swing.JTextField();
        jTextFieldDanNomer = new javax.swing.JTextField();
        jTextFieldZadylveniq = new javax.swing.JTextField();
        jTextFieldConNom = new javax.swing.JTextField();
        jTextFieldAddress = new javax.swing.JTextField();
        jTextFieldContTel = new javax.swing.JTextField();
        jTextFieldProsro4vane = new javax.swing.JTextField();
        jPanelObekt = new javax.swing.JPanel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jTextFieldObektNo = new javax.swing.JTextField();
        jTextFieldObektName = new javax.swing.JTextField();
        jTextFieldObektTel = new javax.swing.JTextField();
        jTextFieldObektAddress = new javax.swing.JTextField();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel15 = new javax.swing.JLabel();
        jTextFieldObektMOL = new javax.swing.JTextField();
        jPanelInfo = new javax.swing.JPanel();
        jLabel16 = new javax.swing.JLabel();
        jTextFieldDistr = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        jTextFieldDeliver = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jPanelDocLine = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jPanelPrice = new javax.swing.JPanel();
        jLabel19 = new javax.swing.JLabel();
        jComboBoxVidPla6tane = new javax.swing.JComboBox();
        jLabel20 = new javax.swing.JLabel();
        jTextFieldDDS = new javax.swing.JTextField();
        jPanelUser = new javax.swing.JPanel();
        jLabel21 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel22 = new javax.swing.JLabel();
        jTextFieldDDS1 = new javax.swing.JTextField();
        jPanel4 = new javax.swing.JPanel();
        jLabel23 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();

        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setPreferredSize(new java.awt.Dimension(263, 33));
        jButtonSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButtonSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSaveActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonSave);

        jButtonUndo.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jButtonUndo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonUndoActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonUndo);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonClose);

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 1000, 477, -1));

        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel2.setPreferredSize(new java.awt.Dimension(400, 300));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder("\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jPanel3.setPreferredSize(new java.awt.Dimension(230, 70));
        jButtonToBegin.setText("<<");
        jButtonToBegin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToBeginActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonToBegin);

        jButtonOneRowM.setText("<");
        jButtonOneRowM.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowMActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonOneRowM);

        jButtonOneRowP.setText(">");
        jButtonOneRowP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOneRowPActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonOneRowP);

        jButtonToEnd.setText(">>");
        jButtonToEnd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonToEndActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonToEnd);

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 900, -1, -1));

        jPanelHead.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanelHead.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel1.setText("\u041d\u043e\u043c\u0435\u0440 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442:");
        jPanelHead.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 30, -1, -1));

        jLabel2.setText("\u0414\u0430\u0442\u0430:");
        jPanelHead.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 70, -1, -1));

        jLabelDocType.setFont(new java.awt.Font("Tahoma", 0, 24));
        jLabelDocType.setText("\u0421\u0422\u041e\u041a\u041e\u0412\u0410 \u0420\u0410\u0417\u041f\u0418\u0421\u041a\u0410");
        jPanelHead.add(jLabelDocType, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 40, -1, -1));

        jPanelHead.add(jTextFieldNomerDoc, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 30, 120, -1));

        jPanelHead.add(jTextFieldDateDoc, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 70, 120, -1));

        jPanel2.add(jPanelHead, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 20, 520, 110));

        jPanelContragent.setLayout(new java.awt.GridBagLayout());

        jPanelContragent.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel3.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 No:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanelContragent.add(jLabel3, gridBagConstraints);

        jLabel4.setText("\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 \u0438\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanelContragent.add(jLabel4, gridBagConstraints);

        jLabel5.setText("\u0411\u0443\u043b\u0441\u0442\u0430\u0442:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanelContragent.add(jLabel5, gridBagConstraints);

        jLabel6.setText("\u0414\u0430\u043d.No:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanelContragent.add(jLabel6, gridBagConstraints);

        jLabel7.setText("\u0437\u0430\u0434\u044a\u043b\u0436\u0435\u043d\u0438\u044f:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 5);
        jPanelContragent.add(jLabel7, gridBagConstraints);

        jLabel8.setText("\u0410\u0434\u0440\u0435\u0441:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanelContragent.add(jLabel8, gridBagConstraints);

        jLabel9.setText("\u0422\u0435\u043b:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 5);
        jPanelContragent.add(jLabel9, gridBagConstraints);

        jLabel10.setText("\u041f\u0440\u043e\u0441\u0440\u043e\u0447\u0432\u0430\u043d\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 5);
        jPanelContragent.add(jLabel10, gridBagConstraints);

        jTextFieldContrName.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jPanelContragent.add(jTextFieldContrName, gridBagConstraints);

        jTextFieldBulstat.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanelContragent.add(jTextFieldBulstat, gridBagConstraints);

        jTextFieldDanNomer.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanelContragent.add(jTextFieldDanNomer, gridBagConstraints);

        jTextFieldZadylveniq.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 5);
        jPanelContragent.add(jTextFieldZadylveniq, gridBagConstraints);

        jTextFieldConNom.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jPanelContragent.add(jTextFieldConNom, gridBagConstraints);

        jTextFieldAddress.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanelContragent.add(jTextFieldAddress, gridBagConstraints);

        jTextFieldContTel.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextFieldContTel.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 20);
        jPanelContragent.add(jTextFieldContTel, gridBagConstraints);

        jTextFieldProsro4vane.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jPanelContragent.add(jTextFieldProsro4vane, gridBagConstraints);

        jPanel2.add(jPanelContragent, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 140, 520, 160));

        jPanelObekt.setLayout(new java.awt.GridBagLayout());

        jPanelObekt.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel11.setText("\u041e\u0431\u0435\u043a\u0442 No:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanelObekt.add(jLabel11, gridBagConstraints);

        jLabel12.setText("\u0422\u0435\u043b.:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 10, 5);
        jPanelObekt.add(jLabel12, gridBagConstraints);

        jLabel13.setText("\u0418\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanelObekt.add(jLabel13, gridBagConstraints);

        jLabel14.setText("\u0410\u0434\u0440\u0435\u0441:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 10, 5);
        jPanelObekt.add(jLabel14, gridBagConstraints);

        jTextFieldObektNo.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 5);
        jPanelObekt.add(jTextFieldObektNo, gridBagConstraints);

        jTextFieldObektName.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jPanelObekt.add(jTextFieldObektName, gridBagConstraints);

        jTextFieldObektTel.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 5);
        jPanelObekt.add(jTextFieldObektTel, gridBagConstraints);

        jTextFieldObektAddress.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 20);
        jPanelObekt.add(jTextFieldObektAddress, gridBagConstraints);

        jSeparator1.setPreferredSize(new java.awt.Dimension(350, 10));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = java.awt.GridBagConstraints.REMAINDER;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 5, 20);
        jPanelObekt.add(jSeparator1, gridBagConstraints);

        jLabel15.setText("\u041c\u041e\u041b \u0438\u043c\u0435:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 20, 5);
        jPanelObekt.add(jLabel15, gridBagConstraints);

        jTextFieldObektMOL.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 53;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 20, 20);
        jPanelObekt.add(jTextFieldObektMOL, gridBagConstraints);

        jPanel2.add(jPanelObekt, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 330, 520, 160));

        jPanelInfo.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 10, 15));

        jPanelInfo.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel16.setText("\u0414\u0438\u0441\u0442\u0440.:");
        jPanelInfo.add(jLabel16);

        jTextFieldDistr.setPreferredSize(new java.awt.Dimension(100, 20));
        jPanelInfo.add(jTextFieldDistr);

        jLabel17.setText("\u0414\u043e\u0441\u0442.:");
        jPanelInfo.add(jLabel17);

        jTextFieldDeliver.setPreferredSize(new java.awt.Dimension(100, 20));
        jPanelInfo.add(jTextFieldDeliver);

        jLabel18.setText("\u0414\u0430\u0442\u0430:");
        jPanelInfo.add(jLabel18);

        jTextField1.setMinimumSize(new java.awt.Dimension(80, 20));
        jTextField1.setPreferredSize(new java.awt.Dimension(80, 20));
        jPanelInfo.add(jTextField1);

        jPanel2.add(jPanelInfo, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 530, 520, 50));

        jPanelDocLine.setLayout(new javax.swing.BoxLayout(jPanelDocLine, javax.swing.BoxLayout.X_AXIS));

        jPanelDocLine.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null, null, null, null, null, null, null}
            },
            new String [] {
                "����� �������", "��� �� �������", "����� �����", "���� 1", "���� 2", "���� 3", "�-�� �������", "���������� 1", "���������� 2", "��. ����", "������� ��������", "���", "���� �����"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.Object.class, java.lang.Double.class, java.lang.Double.class, java.lang.Double.class, java.lang.Integer.class, java.lang.Integer.class, java.lang.Integer.class, java.lang.Double.class, java.lang.Double.class, java.lang.Double.class, java.lang.Double.class
            };
            boolean[] canEdit = new boolean [] {
                true, false, false, false, false, false, false, false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTable1.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_OFF);
        jScrollPane2.setViewportView(jTable1);

        jPanelDocLine.add(jScrollPane2);

        jPanel2.add(jPanelDocLine, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 590, 520, 90));

        jPanelPrice.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 10, 15));

        jPanelPrice.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel19.setText("\u0412\u0438\u0434 \u043f\u043b\u0430\u0449\u0430\u043d\u0435:");
        jPanelPrice.add(jLabel19);

        jComboBoxVidPla6tane.setPreferredSize(new java.awt.Dimension(100, 20));
        jPanelPrice.add(jComboBoxVidPla6tane);

        jLabel20.setText("\u0414\u0414\u0421:");
        jPanelPrice.add(jLabel20);

        jTextFieldDDS.setPreferredSize(new java.awt.Dimension(100, 20));
        jPanelPrice.add(jTextFieldDDS);

        jPanel2.add(jPanelPrice, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 690, 520, 50));

        jPanelUser.setLayout(new java.awt.GridBagLayout());

        jPanelUser.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel21.setText("\u0418\u0437\u0434\u0430\u043b:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 0, 0);
        jPanelUser.add(jLabel21, gridBagConstraints);

        jTextField2.setPreferredSize(new java.awt.Dimension(80, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 209;
        gridBagConstraints.ipady = -1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 0, 0);
        jPanelUser.add(jTextField2, gridBagConstraints);

        jLabel22.setText("\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430 \u043f\u0440\u0435\u0440\u0430\u0431\u043e\u0442\u043a\u0430:");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 5);
        jPanelUser.add(jLabel22, gridBagConstraints);

        jTextFieldDDS1.setPreferredSize(new java.awt.Dimension(100, 20));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 209;
        gridBagConstraints.ipady = -1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jPanelUser.add(jTextFieldDDS1, gridBagConstraints);

        jPanel2.add(jPanelUser, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 750, 520, 70));

        jPanel4.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 5, 15));

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel23.setText("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440:");
        jPanel4.add(jLabel23);

        jTextField3.setPreferredSize(new java.awt.Dimension(300, 20));
        jPanel4.add(jTextField3);

        jPanel2.add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 830, 520, 50));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1050, 980));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonUndoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUndoActionPerformed
// TODO add your handling code here:
        myParent.setNames(oldName);
        myParent.setCod(oldCod);
        myParent.setAnID(oldAnLevel);
        repaintComp();
        jButtonUndo.setEnabled(false);
    }//GEN-LAST:event_jButtonUndoActionPerformed

    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
// TODO add your handling code here:
        
        
        
        
    }//GEN-LAST:event_jButtonSaveActionPerformed

    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
// TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed

    private void jButtonOneRowPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowPActionPerformed
// TODO add your handling code here:
       myParent.mOneRowPlus();
        if(myParent.isAtEnd())
        {
         jButtonToEnd.setEnabled(false);
         jButtonOneRowP.setEnabled(false);
         jButtonToEnd.repaint();
         jButtonOneRowP.repaint();
           
        }
         
        jButtonToBegin.setEnabled(true);
        jButtonOneRowM.setEnabled(true);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
        repaintComp();  
    }//GEN-LAST:event_jButtonOneRowPActionPerformed

    private void jButtonToEndActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToEndActionPerformed
// TODO add your handling code here:  OK
         myParent.mTableEnd();
         jButtonToEnd.setEnabled(false);
         jButtonOneRowP.setEnabled(false);
         jButtonToEnd.repaint();
         jButtonOneRowP.repaint();
        
         
        jButtonToBegin.setEnabled(true);
        jButtonOneRowM.setEnabled(true);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
      
       
        repaintComp();
    }//GEN-LAST:event_jButtonToEndActionPerformed

    private void jButtonOneRowMActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOneRowMActionPerformed
// TODO add your handling code here:
         myParent.mOneRowMinus();
        if(myParent.isAtBegining())
        {
           jButtonToBegin.setEnabled(false);
        jButtonOneRowM.setEnabled(false);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
            
        }
        jButtonToEnd.setEnabled(true);
         jButtonOneRowP.setEnabled(true);
         jButtonToEnd.repaint();
         jButtonOneRowP.repaint();
        repaintComp();
        
    }//GEN-LAST:event_jButtonOneRowMActionPerformed

    private void jButtonToBeginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonToBeginActionPerformed
// TODO add your handling code here:
        myParent.mTableBegining();
        
        jButtonToBegin.setEnabled(false);
        jButtonOneRowM.setEnabled(false);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
        
        jButtonToEnd.setEnabled(true);
         jButtonOneRowP.setEnabled(true);
         jButtonToEnd.repaint();
         jButtonOneRowP.repaint();
       
        repaintComp();
        
    }//GEN-LAST:event_jButtonToBeginActionPerformed
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
               
                new aeDocumentFacade(new JFrame(),true).setVisible(true);
            }
        });
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonOneRowM;
    private javax.swing.JButton jButtonOneRowP;
    private javax.swing.JButton jButtonSave;
    private javax.swing.JButton jButtonToBegin;
    private javax.swing.JButton jButtonToEnd;
    private javax.swing.JButton jButtonUndo;
    private javax.swing.JComboBox jComboBoxVidPla6tane;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel jLabelDocType;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanelContragent;
    private javax.swing.JPanel jPanelDocLine;
    private javax.swing.JPanel jPanelHead;
    private javax.swing.JPanel jPanelInfo;
    private javax.swing.JPanel jPanelObekt;
    private javax.swing.JPanel jPanelPrice;
    private javax.swing.JPanel jPanelUser;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextFieldAddress;
    private javax.swing.JTextField jTextFieldBulstat;
    private javax.swing.JTextField jTextFieldConNom;
    private javax.swing.JTextField jTextFieldContTel;
    private javax.swing.JTextField jTextFieldContrName;
    private javax.swing.JTextField jTextFieldDDS;
    private javax.swing.JTextField jTextFieldDDS1;
    private javax.swing.JTextField jTextFieldDanNomer;
    private javax.swing.JTextField jTextFieldDateDoc;
    private javax.swing.JTextField jTextFieldDeliver;
    private javax.swing.JTextField jTextFieldDistr;
    private javax.swing.JTextField jTextFieldNomerDoc;
    private javax.swing.JTextField jTextFieldObektAddress;
    private javax.swing.JTextField jTextFieldObektMOL;
    private javax.swing.JTextField jTextFieldObektName;
    private javax.swing.JTextField jTextFieldObektNo;
    private javax.swing.JTextField jTextFieldObektTel;
    private javax.swing.JTextField jTextFieldProsro4vane;
    private javax.swing.JTextField jTextFieldZadylveniq;
    // End of variables declaration//GEN-END:variables
 //--------------- My Variables
    private nom.FrmGroup myParent;
    private String splitNamesOfAnLevel[];
    private int selectComboBoxItem;
    private int oldAnLevel;
    private String oldName = "";
    private String oldCod = "";
 //---------------END My Variables
//---------------START MyFunction 
 
private void getNavigatiionState() // ??
    {
    if(myParent.isAtBegining())
    {
        jButtonToBegin.setEnabled(false);
        jButtonOneRowM.setEnabled(false);
        jButtonToBegin.repaint();
        jButtonOneRowM.repaint();
    }
    if(myParent.isAtEnd())
    {
        jButtonToEnd.setEnabled(false);
        jButtonOneRowP.setEnabled(false);
         jButtonToEnd.repaint();
        jButtonOneRowP.repaint();
    }
     
}
private void repaintComp() // ?? 
{
    
}
private int getNewComboBoxIndex(int oldindex) // ??
{ 
    int newindex= 0;
    for(int i = 0; i < myParent.getCountriesT().getIndexConnOfId().length; i++)
       {
        if(myParent.getCountriesT().getIndexConnOfId()[i]==oldindex)
          {
           newindex = i;
           break;
          }
      }
    return newindex;
}
}// end class