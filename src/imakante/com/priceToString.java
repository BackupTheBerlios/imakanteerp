
package imakante.com;



public class priceToString {
    
    public priceToString() {
        
    }
    private double value;
    
    String[] primary = {"����", "���", "���", "������", "���", "����", "�����", "����", "�����",
    "�����", "����������", "����������", "����������", "�������������", "����������",
    "����������", "������������", "�����������", "������������"};
    String[] primaryx = {"����", "���", "���", "������", "���", "����", "�����", "����", "�����",
    "�����", "����������", "����������", "����������", "�������������", "����������",
    "����������", "������������", "�����������", "������������"};
    String[] decade = {"��������", "��������", "�����������", "��������", "���������", "����������",
    "���������", "���������"};
    String[] centum = { "���","������","������", "������������", "���������", "��������",
    "�����������", "����������", "�����������"};
    String[] mile = {"������", "������"};
    String[]milion = {"������", "�������"};
    
    private String valString = "";
    private String endString = "";
    byte UpRange = 57;
    byte DownRange = 48;
    String stot="";
    
    public void ConstString(){
        String p = "";
        p = String.valueOf(getValue());
        System.out.println("value of p " + p);
        System.out.println("lenght p " + p.length());
        int i = 0;
        
        while(i<p.length()){
            char t = p.charAt(i);
            if(( t<= UpRange)&&(t >=DownRange)){
                valString = valString + String.valueOf(t);
                System.out.println(" cdfvreew  " + valString);
            } else {
                i = p.length();
                
            }
            i++;
            System.out.println(" from f c");
            System.out.println("i = " + i);
        }
        
        if(p.length()>=valString.length()+3){
         stot = p.substring(valString.length()+1,valString.length()+3) + " ��.";
        }
        if(p.length()==valString.length()+2){
         stot = p.substring(valString.length()+1,valString.length()+2) + " 0 ��.";
        } 
        
        if(p.length()<=valString.length()+1){
         stot =  " 0 ��.";
        }  
        if (valString.length()==6){
            int  l = Integer.parseInt(valString.substring(1,3));
            if(!getEndString().equals("") && l == 0){ // v sluchaite koito imame chisla ot predi sto
                setEndString(getEndString() + " � ");
            }
            int s = Integer.parseInt(valString.substring(0,1));
            if(s!=0){
                setEndString(getEndString() + centum[s-1]);
            }
            valString = valString.substring(1,valString.length());
        }
        if(valString.length()==5){
            
            int k = Integer.parseInt(valString.substring(0,1));
            int s = Integer.parseInt(valString.substring(0,2));
            int l = Integer.parseInt(valString.substring(1,2));
            if(s>19){
                if(l==0) {
                    setEndString(getEndString() + " � ");
                }
                setEndString(getEndString() + decade[k-2]);
                if(l>0){
                    setEndString(getEndString() + " � " + primaryx[l-1]);
                }
            }
            if(s>0 && s<20 ){
                if(!getEndString().equals("")){
                 setEndString(getEndString() + " � ");
                }
                setEndString(getEndString()  + primaryx[s-1]);
            }
            setEndString(getEndString() + " ������ ");
            valString = valString.substring(2,valString.length());
        }
        
        
        if(valString.length()==4){
            int s = Integer.parseInt(valString.substring(0,1));
            if(s==1){
                setEndString(getEndString() + " ������ ");
            }
            if(s>1){
                setEndString(getEndString() + primary[s-1] + " ������ ");
            }
            valString = valString.substring(1,valString.length());
        }
        if (valString.length()==3){
            int  l = Integer.parseInt(valString.substring(1,3));
//            if(!getEndString().equals("") && l != 0){      // v sluchaite koito imame chisla ot predi sto
//                setEndString(getEndString() + " �4 ");
//            }
            int s = Integer.parseInt(valString.substring(0,1));
            if(s!=0){
                setEndString(getEndString() + centum[s-1]);
            }
            valString = valString.substring(1,valString.length());
        }
        
        if(valString.length()==2){
            int k = Integer.parseInt(valString.substring(0,1));
            int s = Integer.parseInt(valString.substring(0,2));
            int l = Integer.parseInt(valString.substring(1,2));
            if(s>19){
                if(l==0) {
                    setEndString(getEndString() + " � ");
                }
                setEndString(getEndString() + decade[k-2]);
                if(l>0){
                    setEndString(getEndString() + " � " + primary[l-1]);
                }
            }
            if(s>0 && s<20 ){
                setEndString(getEndString() + " � " + primary[s-1]);
            }
        }
       setEndString(getEndString() + " ��. � " + stot);
        System.out.println("    -> " + getEndString());
    }
    
    public String getEndString() {
        return endString;
    }
    
    public void setEndString(String endString) {
        this.endString = endString;
    }
    
    public double getValue() {
        return value;
    }
    
    public void setValue(double value) {
        this.value = value;
    }
    
}
