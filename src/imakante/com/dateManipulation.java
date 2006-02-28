
package imakante.com;

public class dateManipulation {
    
    public static String convertDate(String str){ // obrasha formata na data po iziskvaniata na MySQL
        String converted_str = "0000-00-00";
        
        if(str.length()==10){
            try{
                converted_str = str.substring(6, 10) + "-" +str.substring(3, 5) + "-" + str.substring(0, 2);
            }catch(IndexOutOfBoundsException ioobe){converted_str = ""; return converted_str;}
            return converted_str;
        }
                
        if(str.length()==9){
            if(imakante.com.pubMethods.isInteger(str.substring(0, 2))){
                 try{
                converted_str = str.substring(5, 9) + "-" +str.substring(3, 4) + "-" + str.substring(0, 2);
            }catch(IndexOutOfBoundsException ioobe){converted_str = ""; return converted_str;}
            return converted_str;
            }else{
            try{
                converted_str = str.substring(5, 9) + "-" +str.substring(2, 4) + "-" + str.substring(0, 1);
            }catch(IndexOutOfBoundsException ioobe){converted_str = ""; return converted_str;}
            return converted_str;
            }
        
        }
        
       if(str.length()==8){
            try{
                converted_str = str.substring(6, 8) + "-" +str.substring(3, 5) + "-" + str.substring(0, 2);
            }catch(IndexOutOfBoundsException ioobe){converted_str = ""; return converted_str;}
            return converted_str;
        }
        
        if(str.length()==7){
            if(imakante.com.pubMethods.isInteger(str.substring(0, 2))){
                 try{
                converted_str = str.substring(5, 7) + "-" +str.substring(3, 4) + "-" + str.substring(0, 2);
            }catch(IndexOutOfBoundsException ioobe){converted_str = ""; return converted_str;}
            return converted_str;
            }else{
            try{
                converted_str = str.substring(5, 7) + "-" +str.substring(2, 4) + "-" + str.substring(0, 1);
            }catch(IndexOutOfBoundsException ioobe){converted_str = ""; return converted_str;}
            return converted_str;
            }
        
        }
        
         if(str.length()==6){
            try{
                converted_str = str.substring(4, 6) + "-" +str.substring(2, 3) + "-" + str.substring(0, 1);
            }catch(IndexOutOfBoundsException ioobe){converted_str = ""; return converted_str;}
            return converted_str;
        }
        
        return converted_str;
    }
    
    public static String parseDate(String str){
   //  boolean is_valid = true;
        String local_str = str;
        String str_d ="";
        String str_m ="";
        String str_y ="";
        int int_d = 0;
        int int_m = 0;
        int int_y =0;
        
        if(local_str.length() < 6){return "";}
        
        if(local_str.length() == 6){
        try{
            str_d = local_str.substring(0, 1);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            str_m = local_str.substring(2, 3);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            str_y = local_str.substring(4, 6);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            int_d = Integer.parseInt(str_d);
        }catch(NumberFormatException nfe){nfe.printStackTrace();  return "";}
        
        try{
            int_m =Integer.parseInt(str_m);
        }catch(NumberFormatException nfe){nfe.printStackTrace(); return "";}
        
        try{
            int_y =Integer.parseInt(str_y);
        }catch(NumberFormatException nfe){return "";}
        
        if(int_d==0 || int_m==0 ){ return "";}
        if(int_d > 31 || int_m > 12 ){ return "";}
        
        String rString = ""+ int_d + "-"+ int_m +"-"+int_y;
        return rString;
       
        }
        
        
        if(local_str.length() == 7){
        try{
            str_y = local_str.substring(5, 7);}catch(IndexOutOfBoundsException ioobe){return "";}
        if(imakante.com.pubMethods.isInteger(local_str.substring(0, 2))){
        try{
            str_d = local_str.substring(0, 2);}catch(IndexOutOfBoundsException ioobe){return "";}
        try{
            str_m = local_str.substring(3, 4);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        }else{
             try{
            str_d = local_str.substring(0, 1);}catch(IndexOutOfBoundsException ioobe){return "";}
              try{
            str_m = local_str.substring(2, 4);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        }
        
        try{
            int_d = Integer.parseInt(str_d);
        }catch(NumberFormatException nfe){nfe.printStackTrace();  return "";}
        
        try{
            int_m =Integer.parseInt(str_m);
        }catch(NumberFormatException nfe){nfe.printStackTrace(); return "";}
        
        try{
            int_y =Integer.parseInt(str_y);
        }catch(NumberFormatException nfe){return "";}
               
        if(int_d==0 || int_m==0 ){ return "";}
        if(int_d > 31 || int_m > 12 ){ return "";}
        
        String rString = ""+ int_d + "-"+ int_m +"-"+int_y;
        return rString;
        
        }
        
        if(local_str.length() == 8){
        try{
            str_d = local_str.substring(0, 2);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            str_m = local_str.substring(3, 5);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            str_y = local_str.substring(6, 8);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            int_d = Integer.parseInt(str_d);
        }catch(NumberFormatException nfe){nfe.printStackTrace();  return "";}
        
        try{
            int_m =Integer.parseInt(str_m);
        }catch(NumberFormatException nfe){nfe.printStackTrace(); return "";}
        
        try{
            int_y =Integer.parseInt(str_y);
        }catch(NumberFormatException nfe){return "";}
        
        if(int_d==0 || int_m==0 ){ return "";}
        if(int_d > 31 || int_m > 12 ){ return "";}
        
        String rString = ""+ int_d + "-"+ int_m +"-"+int_y;
        return rString;
       
        }
    
         if(local_str.length() == 9){
        try{
            str_y = local_str.substring(5, 9);}catch(IndexOutOfBoundsException ioobe){return "";}
        if(imakante.com.pubMethods.isInteger(local_str.substring(0, 2))){
        try{
            str_d = local_str.substring(0, 2);}catch(IndexOutOfBoundsException ioobe){return "";}
        try{
            str_m = local_str.substring(3, 4);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        }else{
             try{
            str_d = local_str.substring(0, 1);}catch(IndexOutOfBoundsException ioobe){return "";}
              try{
            str_m = local_str.substring(2, 4);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        }
        
        try{
            int_d = Integer.parseInt(str_d);
        }catch(NumberFormatException nfe){nfe.printStackTrace();  return "";}
        
        try{
            int_m =Integer.parseInt(str_m);
        }catch(NumberFormatException nfe){nfe.printStackTrace(); return "";}
        
        try{
            int_y =Integer.parseInt(str_y);
        }catch(NumberFormatException nfe){return "";}
               
        if(int_d==0 || int_m==0 ){ return "";}
        if(int_d > 31 || int_m > 12 ){ return "";}
        
        String rString = ""+ int_d + "-"+ int_m +"-"+int_y;
        return rString;
        
        }
        if(local_str.length() == 10){
        try{
            str_d = local_str.substring(0, 2);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            str_m = local_str.substring(3, 5);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            str_y = local_str.substring(6, 10);}catch(IndexOutOfBoundsException ioobe){return "";}
        
        try{
            int_d = Integer.parseInt(str_d);
        }catch(NumberFormatException nfe){nfe.printStackTrace();  return "";}
        
        try{
            int_m =Integer.parseInt(str_m);
        }catch(NumberFormatException nfe){nfe.printStackTrace(); return "";}
        
        try{
            int_y =Integer.parseInt(str_y);
        }catch(NumberFormatException nfe){return "";}
        
        if(int_d==0 || int_m==0 ){ return "";}
        if(int_d > 31 || int_m > 12 ){ return "";}
        
        String rString = ""+ int_d + "-"+ int_m +"-"+int_y;
        return rString;
       
        }
        
    return "";
    }
    public static String parceInvDate(String str){
    String returnString="";
            returnString  = str.substring(8,10)+ "/" + str.substring(5,7)+ "/" + str.substring(0,4);
        return returnString;
    }
    public void parseDate(org.joda.time.DateTime begDate, org.joda.time.DateTime endDate){
    
    
    }
    
}
