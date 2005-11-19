
package imakante.com;

import java.awt.*;
import java.sql.*;
import java.util.*;
import java.io.*;
import java.awt.PrintJob;
import javax.swing.*;

public class pubMethods {
    public static int makeInt(String str){
        int i =0;
        try{
            i = Integer.parseInt(str);
        }catch(NumberFormatException nfe){return i;}
        
        return i;
    }
    public static double makeDouble(String str){
       double i = 0;
        try{
             i = Double.parseDouble(str);
        }catch(NumberFormatException nfe){return i;}
        
        return i;
    
    
    }
    public static boolean isInteger(String str){
        
        try{
            int i = Integer.parseInt(str);
        }catch(NumberFormatException nfe){return false;}
        
        return true;
    }
    
    public static boolean isFloat(String str){
        
        try{
            float i = Float.parseFloat(str);
        }catch(NumberFormatException nfe){return false;}
        
        return true;
    }
    
    
    public static boolean isDouble(String str){
        
        try{
            double i = Double.parseDouble(str);
        }catch(NumberFormatException nfe){return false;}
        
        return true;
    }
    
    public static boolean recordExist(String strSQL,Connection sCN){
        Statement stRE;
        ResultSet rsRE;
        int Total = 0;
        try{
            stRE = sCN.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rsRE = stRE.executeQuery(strSQL);
            
            rsRE.afterLast();
            
            if(rsRE.previous()){
                Total = rsRE.getRow();
            }else{
                Total = 0;
            }
        }catch(SQLException sqlEx){
            System.out.println("\nERROR IN pubMethods(recordExist):" + sqlEx + "\n");
        }
        rsRE = null;
        stRE = null;
        if(Total == 0){
            return false;
        }else{
            return true;
        }
    }
    
    public static int getMaxNum(String strSQL,Connection sCN,String strFieldName){
        Statement stMaxRow;
        ResultSet rsMaxRow;
        int Max = 0;
        try{
            stMaxRow = sCN.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rsMaxRow = stMaxRow.executeQuery(strSQL);
            //Move to the last record
            rsMaxRow.afterLast();
            //Get the current record position
            if(rsMaxRow.previous()){
                Max = rsMaxRow.getInt(strFieldName);
            }else{
                Max = 0;
            }
        }catch(SQLException sqlEx){
            System.out.println("\nERROR IN pubMethods(getMaxNum):" + sqlEx + "\n");
        }
        
        rsMaxRow = null;
        stMaxRow = null;
        return Max;
    }
    
    public static JComboBox fillCombo(String strSQL,Connection sCN,String strFieldName){
        Statement stFC;
        ResultSet rsFC;
        String cmbList[] =new String[0];
        int TotalRow = 0;
        int rowNum = 0;
        try{
            stFC = sCN.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rsFC = stFC.executeQuery(strSQL);
            rsFC.afterLast();
            //Get the current record position
            if(rsFC.previous())TotalRow = rsFC.getRow();
            //Move back to the first record;
            rsFC.beforeFirst();
            if(TotalRow > 0){
                cmbList = new String[TotalRow];
                while(rsFC.next()){
                    cmbList[rowNum] = "" + rsFC.getString(strFieldName);
                    rowNum++;
                }
            }else{
                cmbList[0] ="";
            }
        }catch(SQLException sqlEx){
            System.out.println("\nERROR IN pubMethods(fillCombo):" + sqlEx + "\n");
        }
        rsFC = null;
        stFC = null;
        TotalRow=0;
        return new JComboBox(cmbList);
    }
    
    public void printRecord(String rec,JFrame JFMainParent) {
        
        StringReader SRReader = new StringReader(rec);
        LineNumberReader LNRReader = new LineNumberReader(SRReader);
        Font typeface = new Font("Courier New", Font.PLAIN,10);
        PrintJob PJPrint = Toolkit.getDefaultToolkit().getPrintJob(JFMainParent, "", new Properties());
        
        if (PJPrint != null) {
            Graphics GGraph = PJPrint.getGraphics();
            if (GGraph != null) {
                FontMetrics FMFont = GGraph.getFontMetrics(typeface);
                int PAGE_HEIGHT = PJPrint.getPageDimension().height - 75;
                int FONT_HEIGHT = FMFont.getHeight();
                int FONT_DESCENT = FMFont.getDescent();
                int CURRENT_HEIGHT = 75;
                String NEXT_LINE;
                GGraph.setFont(typeface);
                
                try {
                    do {
                        NEXT_LINE = LNRReader.readLine();
                        if (NEXT_LINE != null) {
                            if ((CURRENT_HEIGHT + FONT_HEIGHT) > PAGE_HEIGHT) {
                                GGraph.dispose();
                                GGraph = PJPrint.getGraphics();
                                CURRENT_HEIGHT = 75;
                            }
                            CURRENT_HEIGHT += FONT_HEIGHT;
                            if (GGraph != null) {
                                GGraph.setFont(typeface);
                                GGraph.drawString(NEXT_LINE, 75, CURRENT_HEIGHT - FONT_DESCENT);
                            }
                        }
                    }
                    while (NEXT_LINE != null);
                } catch (EOFException EOF_EXCEPTION) { } catch (Throwable TROW_ERR) { }
            }
            GGraph.finalize();
            GGraph.dispose();
        }
        if (PJPrint != null)
            PJPrint.end();
    }
    
    
    public static String stringConverce(String str, int i){
        String lString;
        lString = str;
        int  f, l;
        l = lString.length();
        f = i - l;
        for (int j=1; j<f; j++){
            lString= lString + " ";
            
        }
        return lString;
    }
    
    public static String stringConverce(Double dNum, int i){
        String lString;
        
        lString = dNum.toString();
        int  f, l;
        l = lString.length();
        f = i - l;
        for (int j=1; j<f; j++){
            lString= lString + " ";
            
        }
        return lString;
    }
    
    public static String stringConverce(Integer iNum, int i){
        String lString;
        
        lString = iNum.toString();
        int  f, l;
        l = lString.length();
        f = i - l;
        for (int j=1; j<f; j++){
            lString= lString + " ";
            
        }
        return lString;
    }
    
    public static String stringConverce(Float fNum, int i){
        String lString;
        
        lString = fNum.toString();
        int  f, l;
        l = lString.length();
        f = i - l;
        for (int j=1; j<f; j++){
            lString= lString + " ";
            
        }
        return lString;
    }
    
    public static String reverce_stringConverce(String str, int i){
        String lString;
        lString = str;
        
        
        int  f, l;
        l = lString.length();
        f = i - l;
        for (int j=1; j<f; j++){
            lString= " " + lString;
            
        }
        return lString;
    }
    
    
    public static String reverce_stringConverce(Double dNum, int i){
        String lString;
        
        lString = dNum.toString();
        int  f, l;
        l = lString.length();
        f = i - l;
        for (int j=1; j<f; j++){
            lString= " " + lString;
            
        }
        return lString;
    }
    
    public static String reverce_stringConverce(Integer iNum, int i){
        String lString;
        
        lString = iNum.toString();
        int  f, l;
        l = lString.length();
        f = i - l;
        for (int j=1; j<f; j++){
            lString= " " + lString;
            
        }
        return lString;
    }
    
    public static String reverce_stringConverce(Float fNum, int i){
        String lString;
        
        lString = fNum.toString();
        int  f, l;
        l = lString.length();
        f = i - l;
        for (int j=1; j<f; j++){
            lString= " " + lString;
            
        }
        return lString;
    }
}