
package nom;

public class aePerson extends javax.swing.JDialog {
    
    public aePerson(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpData = new javax.swing.JPanel();
        jpNavigation = new javax.swing.JPanel();
        jbFirst = new javax.swing.JButton();
        jbPrevious = new javax.swing.JButton();
        jbNext = new javax.swing.JButton();
        jbLast = new javax.swing.JButton();
        jlGroup = new javax.swing.JLabel();
        jcbGroups = new javax.swing.JComboBox();
        jlCode = new javax.swing.JLabel();
        jtfCode = new javax.swing.JTextField();
        jlName = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jlComment = new javax.swing.JLabel();
        jspComment = new javax.swing.JScrollPane();
        jtaComment = new javax.swing.JTextArea();
        jpControls = new javax.swing.JPanel();
        jbSave = new javax.swing.JButton();
        jbUndo = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jpData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpNavigation.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jbFirst.setText("<<");

        jbPrevious.setText("<");

        jbNext.setText(">");

        jbLast.setText(">>");

        org.jdesktop.layout.GroupLayout jpNavigationLayout = new org.jdesktop.layout.GroupLayout(jpNavigation);
        jpNavigation.setLayout(jpNavigationLayout);
        jpNavigationLayout.setHorizontalGroup(
            jpNavigationLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpNavigationLayout.createSequentialGroup()
                .add(57, 57, 57)
                .add(jbFirst)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jbPrevious)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jbNext)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jbLast)
                .addContainerGap(64, Short.MAX_VALUE))
        );
        jpNavigationLayout.setVerticalGroup(
            jpNavigationLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpNavigationLayout.createSequentialGroup()
                .addContainerGap()
                .add(jpNavigationLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jbNext)
                    .add(jbLast)
                    .add(jbPrevious)
                    .add(jbFirst))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jlGroup.setText("\u0413\u0440\u0443\u043f\u0430:");

        jlCode.setText("\u041a\u043e\u0434:");

        jlName.setText("\u0418\u043c\u0435:");

        jlComment.setText("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440:");

        jtaComment.setColumns(20);
        jtaComment.setRows(5);
        jspComment.setViewportView(jtaComment);

        org.jdesktop.layout.GroupLayout jpDataLayout = new org.jdesktop.layout.GroupLayout(jpData);
        jpData.setLayout(jpDataLayout);
        jpDataLayout.setHorizontalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                .addContainerGap()
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jlComment)
                    .add(jlGroup)
                    .add(jlCode)
                    .add(jlName))
                .add(12, 12, 12)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                        .add(jcbGroups, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 242, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(171, 171, 171))
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                        .add(jtfCode, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 84, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(329, Short.MAX_VALUE))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jpNavigation)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, jtfName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 339, Short.MAX_VALUE)
                            .add(jspComment, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 339, Short.MAX_VALUE))
                        .add(74, 74, 74))))
        );
        jpDataLayout.setVerticalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                .addContainerGap()
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jlGroup)
                            .add(jcbGroups, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jlCode)
                            .add(jtfCode, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .add(38, 38, 38)
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                                .add(jlComment)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 57, Short.MAX_VALUE))
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                                .add(jspComment, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 71, Short.MAX_VALUE)
                                .add(2, 2, 2)))
                        .add(24, 24, 24))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jlName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jtfName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .add(103, 103, 103)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jpNavigation, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        getContentPane().add(jpData, java.awt.BorderLayout.CENTER);

        jbSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jpControls.add(jbSave);

        jbUndo.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jpControls.add(jbUndo);

        jbClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jpControls.add(jbClose);

        getContentPane().add(jpControls, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbFirst;
    private javax.swing.JButton jbLast;
    private javax.swing.JButton jbNext;
    private javax.swing.JButton jbPrevious;
    private javax.swing.JButton jbSave;
    private javax.swing.JButton jbUndo;
    private javax.swing.JComboBox jcbGroups;
    private javax.swing.JLabel jlCode;
    private javax.swing.JLabel jlComment;
    private javax.swing.JLabel jlGroup;
    private javax.swing.JLabel jlName;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpData;
    private javax.swing.JPanel jpNavigation;
    private javax.swing.JScrollPane jspComment;
    private javax.swing.JTextArea jtaComment;
    private javax.swing.JTextField jtfCode;
    private javax.swing.JTextField jtfName;
    // End of variables declaration//GEN-END:variables
    
}
