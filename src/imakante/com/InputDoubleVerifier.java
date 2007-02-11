
package imakante.com;

public class InputDoubleVerifier extends javax.swing.InputVerifier {
    
    private int maxIntBefore = -1;
    private int maxIntAffter = -1;
    
    public InputDoubleVerifier(int maxBefor, int maxAffter) {
        super();
        this.maxIntAffter = maxAffter;
        this.maxIntBefore = maxBefor;
    }
    
    public InputDoubleVerifier() {
        super();
    }
    
    public boolean verify(javax.swing.JComponent input) {
        byte UpRange = 57;
        byte DownRange = 48;
        byte exp_Big_E = 69;
        byte exp_Lit_E = 101;
        byte comma = 44;
        byte dot = 46;
        byte minus = 45;
        int countMinus[] = new int[2]; 
        countMinus[0] = 0; //za broene kolko pyti se sre6ta minusa
        countMinus[1] = -1; // poziciq 
       
        int countDotComma[] = new int[2]; // za broene kolko pyti se sre6ta zapetaq ili to4ka
        countDotComma[0] = 0; //za broene kolko pyti se sre6ta zapetaq ili to4ka
        countDotComma[1] = -1; //poziciq na tochkata
        
        int countExp[] = new int[2];
        countExp[0] = 0; // broi vkarane bukvi "e"
        countExp[1] = -1; // poziciq na "e" v chisloto 
        
        int intNumber = 0;
        int countDif = 0;
        boolean checkSimbol = false;
        javax.swing.JTextField tf = (javax.swing.JTextField) input;
        int lenth = tf.getText().length();
        byte ch[] = new byte[lenth];
        ch = tf.getText().getBytes();
       
        if (lenth <= 0) return true;
        int startNo =0; // nachalna poiciq za skanirane
        if(ch[0]==minus) startNo=1;
        
       
        for(int i =startNo ; i < lenth;i++)
        {
            if(countDotComma[0]>1 | countExp[0]>1 | countMinus[0]>1 )
            {
               checkSimbol = false;
               countDif++;
               break;
            }
            
            if(!((ch[i] <= UpRange) && (ch[i] >= DownRange)))
            {
                checkSimbol = false;
                countDif++;
                if(ch[i]==comma | ch[i]==dot) {
                    countDotComma[0]++;
                    countDotComma[1] = i;
                    checkSimbol = true;
                    countDif--;
                }
                if(ch[i]==exp_Big_E | ch[i]==exp_Lit_E) {
                    countExp[0]++;
                    countExp[1] = i;
                    checkSimbol = true;
                    countDif--;
                }
                if(ch[i]==minus) {
                    countMinus[0]++;
                    countMinus[1] = i;
                    checkSimbol = true;
                    countDif--;
                }
            }
            
            
            
        }
       
        if((countDotComma[1] > countExp[1] ) && (countDotComma[1]!=-1 && countExp[1]!=-1 ))
        {
           checkSimbol = false; 
           countDif++;
        }
      
        if( (countExp[1]!=countMinus[1]-1) && (countExp[1]!=-1 && countMinus[1]!=-1))
        {
           checkSimbol = false; 
           countDif++; 
        }
        if(countDif > 0) checkSimbol = false;
        return checkSimbol;
    }
    
}
