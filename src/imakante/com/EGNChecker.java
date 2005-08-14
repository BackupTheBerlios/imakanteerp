/*
 * EGNChecker.java
 *
 * Created on ���������, 2005, ��� 28, 0:32
 *
 */

package imakante.com;

/**
 * Contains basic methods for checking validity and extracting the information
 * contained in a certain EGN.
 *
 * !!! The condition (int)EGN.charAt(x)-48 is deduced upon the cp-1251 encoding 
 *     and might not produce corect calculation for the other encodings !!!
 *
 * @author jp
 */
public final class EGNChecker {
    
    public static int gen;
    
    public static boolean ValidEGN(String EGN) {
        
        final int weights[] = {2, 4, 8, 5, 10, 9, 7, 3, 6};
        int EGNdigits[] = {0, 0, 0, 0, 0, 0, 0, 0, 0}, sum = 0, cd;
        
        if (EGN.length() == 10) {
            
            for (int i = 0; i < 9; i++) {
                EGNdigits[i] = ( ((int)EGN.charAt(i)-48) * weights[i] ); //Certain EGN digit multiplied by its weight
                sum = sum + EGNdigits[i];    // The sum of the nine products
            }
            
            if (sum % 11 == 10) {
                cd = 0;
            } else if (sum % 11 < 10){
                cd = sum % 11;
            } else {
                return false;
            }
            if (((int)EGN.charAt(9)-48) == cd) {
                return true;
            } else {
                return false;
            }
        } else {
            System.out.println("Every EGN has exactly 10 digits!!!");
            return false;
        }
    }
    
    public static String BirthDate(String EGN) {
        
        int mpos = (int)EGN.charAt(2)-48;
        String bdate = "";
        
        if (mpos == 0 || mpos == 1) {
            bdate = EGN.substring(4, 6) + "." + EGN.substring(2, 4) + "." + "19" + EGN.substring(0, 2);
        } else if (mpos == 2 || mpos == 3) {
            // bdate = EGN.substring(4, 6) + EGN.substring(2, 4) + "18" + EGN.substring(0, 2);
        } else if (mpos == 4 || mpos == 5) {
            // bdate = EGN.substring(4, 6) + EGN.substring(2, 4) + "20" + EGN.substring(0, 2);
        } else {
            return "00.00.0000";
        }
        return bdate;
    }
    
    /*public static String Gender(String EGN) {
        gen = (int)EGN.charAt(8)-48;
        if (gen % 2 > 0) {
            return "female";
        } else {
            return "male";
        }
    }*/
    
    public static boolean Gender(String EGN) {
        gen = (int)EGN.charAt(8)-48;
        if (gen % 2 > 0) {
            return false;   // jena
        } else {
            return true;    // myj
        }
    }
     
    /*public static int Gender(String EGN) {
        return 0;
    }
     
    public static String BirthPlace(String EGN) {
        String DistrictCities[] = {"�����-����", "�����", "�������", "�����", "������", "����"};
     
        return "";
    }*/
}