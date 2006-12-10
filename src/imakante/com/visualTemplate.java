package imakante.com;

import java.awt.Image;
import java.awt.Cursor;
import java.util.ArrayList;
public class visualTemplate extends org.jdesktop.swingx.JXTaskPane
{
    private int sizePanel_Y =100;
    private int sizePanel_X =100;
    private javax.swing.JScrollPane  jScrollPane1 = new javax.swing.JScrollPane();
    private  javax.swing.JPanel jPanel2 = new javax.swing.JPanel();
   
    public visualTemplate() 
    {
        super();
        getContentPane().setLayout(new javax.swing.BoxLayout(getContentPane(), javax.swing.BoxLayout.X_AXIS));
        jScrollPane1.setHorizontalScrollBarPolicy(javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
        jScrollPane1.setVerticalScrollBarPolicy(javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
        org.jdesktop.swingx.VerticalLayout verticalLayout1 = new org.jdesktop.swingx.VerticalLayout();
        verticalLayout1.setGap(5); // raztoqnie mezdu dva panela
        jPanel2.setLayout(verticalLayout1);
        jScrollPane1.setViewportView(jPanel2);
        jScrollPane1.setPreferredSize(new java.awt.Dimension(70, 200));
        getContentPane().add(jScrollPane1);
      
    }
    
    public javax.swing.JPanel createVisualElement(Image img,String name)
    {
       javax.swing.JPanel return_value = new javax.swing.JPanel();
       return_value.setLayout(new java.awt.BorderLayout());
       return_value.setBorder(javax.swing.BorderFactory.createEtchedBorder());
       return_value.setSize(sizePanel_X,sizePanel_Y);
       org.jdesktop.swingx.JXImagePanel  jXImagePanel1 = new org.jdesktop.swingx.JXImagePanel();
       javax.swing.JLabel  jLabel1 = new javax.swing.JLabel();
       jLabel1.setText(name);
       jXImagePanel1.setImage(img);
       jXImagePanel1.repaint();
       return_value.add(jXImagePanel1, java.awt.BorderLayout.CENTER);
       return_value.add(jLabel1, java.awt.BorderLayout.SOUTH);
       
       return_value.setCursor(new Cursor(Cursor.HAND_CURSOR )) ;
       return  return_value;
    }
    
   public void addVisualElement(javax.swing.JPanel  pane)
   {
    jPanel2.add(pane);
    
   }
   // vry6ta list ot component za da se prehvanat "Event"
   public java.awt.Component[] getVisualElements()
   {
     return  jPanel2.getComponents()   ;
   }
   
}
