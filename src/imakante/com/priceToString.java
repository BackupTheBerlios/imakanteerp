
package imakante.com;

public class priceToString {
    
    public priceToString(double Value) {
        value = Value;
    }
    private double value;
    String[] primary = {"����", "���", "���", "������", "���", "����", "�����", "����", "�����",
    "�����", "����������", "����������", "����������", "�������������", "����������",
    "����������", "������������", "�����������", "������������"};
    String[] decade = {"�����","��������", "��������", "�����������", "��������", "���������", "����������",
    "���������", "���������"};
    String[] centum = { "���","������","������", "������������", "���������", "��������",
    "�����������", "����������", "�����������"};
    String[] mile = {"������", "������"};
    String[]milion = {"������", "�������"};
    private String valString = "";
    private String endString = "";
    byte UpRange = 57;
    byte DownRange = 48;
    private void ConstString(){
        String p = "";
        p = String.valueOf(value);
        for (int i=0; i < p.length();){
            char t = p.charAt(i);
            if(( t<= UpRange)&&(t >=DownRange)){
                valString = valString + String.valueOf(t);} else {i = p.length();}
        }
        
        if (valString.length()==9){
            int s = Integer.parseInt(valString.substring(0,1));
            endString = endString + centum[s-1];
            valString = valString.substring(1,valString.length());
        }
        
        if (valString.length()==8){
            int s = Integer.parseInt(valString.substring(0,2));
            if (s<11){
                if(!endString.equals("")){
                    endString = endString + " � ";
                }
                endString = endString +  primary[s-1];
                valString = valString.substring(2,valString.length());
            }else{
                endString = endString  + decade[s-1] + " � ";
                valString = valString.substring(1,valString.length());}
        }
        if(valString.length()==7){
            
            int s = Integer.parseInt(valString.substring(0,1));
            endString = endString + primary[s-1];
            valString = valString.substring(1,valString.length());
            if (s==1){
                endString = endString + " ������ ";
            }else{
                endString = endString + " ������a ";
            }
            
        }
        if (valString.length()==6){
            int s = Integer.parseInt(valString.substring(0,1));
            endString = endString + centum[s-1];
            valString = valString.substring(1,valString.length());
        }
        if (valString.length()==5){
            int s = Integer.parseInt(valString.substring(0,2));
            if (s<11){
                if(!endString.equals("")){
                    endString = endString + " � ";
                }
                endString = endString +  primary[s-1];
                valString = valString.substring(2,valString.length());
            }else{
                endString = endString  + decade[s-1] + " � ";
                valString = valString.substring(1,valString.length());}
        }
        if(valString.length()==5){
            
            int s = Integer.parseInt(valString.substring(0,1));
            if (s==1){
                if(endString.equals("")){
                    endString = "�������";
                }else{
                    endString = endString + " ���� ������� ";}
            }else{
                endString = endString + primary[s-1];
                valString = valString.substring(1,valString.length());}
            
            
        }
        
        
        
    }
}
