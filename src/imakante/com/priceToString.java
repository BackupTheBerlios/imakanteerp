
package imakante.com;

public class priceToString {
    
    public priceToString(double Value) {
        value = Value;
        ConstString();
        
    }
    private double value;
    String[] primary = {"един", "два", "три", "четири", "пет", "шест", "седем", "осем", "девет",
    "десет", "единадесет", "дванадесет", "тринадесет", "четиринадесет", "петнадесет",
    "шеснадесет", "седемнадесет", "осемнадесет", "деветнадесет"};
    String[] decade = {"десет","двадесет", "тридесет", "четиредесет", "петдесет", "шестдесет", "седемдесет",
    "осемдесет", "деведесет"};
    String[] centum = { "сто","двеста","триста", "четиристотин", "петстотин", "шестотин",
    "седемстотин", "осемстотин", "деветстотин"};
    String[] mile = {"хиляда", "хиляди"};
    String[]milion = {"милион", "милиона"};
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
            setEndString(getEndString() + centum[s-1]);
            valString = valString.substring(1,valString.length());
        }
        
        if (valString.length()==8){
            int s = Integer.parseInt(valString.substring(0,2));
            if (s<11){
                if(!getEndString().equals("")){
                    setEndString(getEndString() + " и ");
                }
                setEndString(getEndString() + primary[s-1]);
                valString = valString.substring(2,valString.length());
            }else{
                setEndString(getEndString() + decade[s-1] + " и ");
                valString = valString.substring(1,valString.length());}
        }
        if(valString.length()==7){
            
            int s = Integer.parseInt(valString.substring(0,1));
            setEndString(getEndString() + primary[s-1]);
            valString = valString.substring(1,valString.length());
            if (s==1){
                setEndString(getEndString() + " милион ");
            }else{
                setEndString(getEndString() + " милионa ");
            }
            
        }
        if (valString.length()==6){
            int s = Integer.parseInt(valString.substring(0,1));
            setEndString(getEndString() + centum[s-1]);
            valString = valString.substring(1,valString.length());
        }
        if (valString.length()==5){
            int s = Integer.parseInt(valString.substring(0,2));
            if (s<11){
                if(!getEndString().equals("")){
                    setEndString(getEndString() + " и ");
                }
                setEndString(getEndString() + primary[s-1]);
                valString = valString.substring(2,valString.length());
            }else{
                setEndString(getEndString() + decade[s-1] + " и ");
                valString = valString.substring(1,valString.length());}
        }
        if(valString.length()==4){
            
            int s = Integer.parseInt(valString.substring(0,1));
            if (s==1){
                if(getEndString().equals("")){
                    setEndString("хилияда");
                }else{
                    setEndString(getEndString() + " една хилияди ");}
                
            }else{
                setEndString(getEndString() + primary[s-1] + " хиляди");
            }
            valString = valString.substring(1,valString.length());
            
        }
        if (valString.length()==3){
            int s = Integer.parseInt(valString.substring(0,1));
            setEndString(getEndString() + centum[s-1]);
            valString = valString.substring(1,valString.length());
        }
        if (valString.length()==2){
            int s = Integer.parseInt(valString.substring(0,2));
            if (s<11){
                if(!getEndString().equals("")){
                    setEndString(getEndString() + " и ");
                }
                setEndString(getEndString() + primary[s-1]);
                valString = valString.substring(2,valString.length());
            }else{
                setEndString(getEndString() + decade[s-1] + " и ");
                valString = valString.substring(1,valString.length());}
        }
        if(valString.length()==1){
            int s = Integer.parseInt(valString.substring(0,1));
            setEndString(getEndString() + primary[s-1]);
            
        }
    }

    public String getEndString() {
        return endString;
    }

    public void setEndString(String endString) {
        this.endString = endString;
    }
    
}
