/*
 * reportError.java
 *
 * Created on Четвъвтък, 2005, Юли 14, 12:43
 */

package imakante.com;

import com.sun.corba.se.impl.protocol.giopmsgheaders.Message;

/**
 *
 * @author  user
 */
public class reportError extends javax.swing.JDialog {
    
    /** Creates new form reportError */
    public reportError( boolean modal,String err_mess) {
       // super(modal);
        initComponents();
    }
    
   
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jTextArea1 = new javax.swing.JTextArea();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.add(jTextArea1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jLabel1.setText("\u0421\u042a\u0416\u0415\u041b\u042f\u0412\u0410\u041c\u0415 \u0417\u0410 \u041d\u0415\u0423\u0414\u041e\u0411\u0421\u0422\u0412\u041e\u0422\u041e, \u0410\u041a\u041e \u0416\u0415\u041b\u0410\u0415\u0422\u0415 \u041c\u041e\u0416\u0415 \u0414\u0410 \u041f\u0420\u0410\u0422\u0418\u0422\u0415 \u041f\u0420\u0410\u0422\u0418\u0422\u0415 \u0413\u0420\u0415\u041a\u0410\u0422\u0410 \u041d\u0410 \u0415\u041a\u0418\u041f\u0410 \u0420\u0410\u0417\u0420\u0410\u0411\u041e\u0422\u0412\u0410\u0429 \"\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415\"");
        jPanel2.add(jLabel1);

        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jButton1.setText("\u041e\u0422\u041a\u0410\u0417");
        jPanel3.add(jButton1);

        jButton2.setText("\u0418\u0417\u041f\u0420\u0410\u0422\u0418 >>>");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton2);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
          // send();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextArea jTextArea1;
    // End of variables declaration//GEN-END:variables
    
    /*public static void send()
            throws AddressException, MessagingException {
            // Create a mail session
            java.util.Properties props = new java.util.Properties();
            props.put("mail.smtp.host", smtpHost);
            props.put("mail.smtp.port", ""+smtpPort);
            Session session = Session.getDefaultInstance(props, null);
    
            // Construct the message
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(from));
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            msg.setSubject(subject);
            msg.setText(content);
    
            // Send the message
            Transport.send(msg);
        }
    *///    
}
