
package imakante.salary;

public class calculateSalary {
    
    
    
    protected void processNewSalary(java.sql.Connection dbCon,
            int rabotnik, int b_year, int a_date, int los_years,
            int mday, int br_year,
            int wday, double s_zaplata,
            double sum_os, boolean pay_ins){
        
        int DOD_id = 0;// broi dod iteratsii
        double[] taxDOD_doh = new double[10];
        double[] taxDOD_sum = new double[10];
        double[] taxDOD_prct = new double[10];
        
        double ktu = 0.6, prc_oz = 0.9, prc_pensii = 8.7, prc_zo = 1.8, prc_bezr = 1.05, prc_upf = 0.9;
        double sum_ktu =0, sum_oz =0, sum_pensii =0, sum_zo = 0, sum_bezr = 0, sum_upf = 0, sum_min_os =  150, max_os = 1300;
        
        
        boolean charge_os = pay_ins; // dali rabotodatelia she plasha osigurovki razlichni ot zaplatata
        int id_rabotnik = rabotnik;
        double sht_zaplata = s_zaplata; // shatna rabotna zaplata
        double zarabotka = 0;  // zaraboteno
        int losYears = los_years;  // godini trudov staj
        double day_s =1; // dni otraboteni
        double days_min_os = 0;  //suma dnevna minimalna osigurovka
        double zarabotka_day = 0; // dnevna zarabotka
        double oblagaema = 0; //oblagaema suma s DOD
        double neto = 0; // suma za poluchavane
       
        int year_birth = br_year; //godin na rajdane
        int i_dod = 0; // array index za dod na konkretnia oblagaem
        int i_days = a_date; //data na zapochvane
        
        java.sql.Connection intCon = dbCon;
        java.sql.Statement stm;
        java.sql.ResultSet rs;
        String str_d="";
        
        String str_area="";
        int e_day=0, m_day = 0;
        
        try{
            stm = intCon.createStatement();
            rs = stm.executeQuery("SELECT  seq FROM ls_monthpar WHERE pmonth = " + imakante.salary.salary_main.getMonth() + " AND pyear ="+imakante.salary.salary_main.getYear());
            
            while(rs.next()){
                str_area = rs.getString("seq");
                System.out.println("str_area = "+str_area);
            }
            
            rs = stm.executeQuery("SELECT * FROM ls_monthpar WHERE pmonth ="+ imakante.salary.salary_main.getMonth() + " AND pyear ="+imakante.salary.salary_main.getYear());
            while(rs.next()){
                
                ktu = rs.getDouble("ktu");
                prc_oz = rs.getDouble("max_os_prag");
                prc_pensii = rs.getDouble("proc_pensii");
                prc_zo =rs.getDouble("proc_zo");
                prc_bezr = rs.getDouble("proc_bez");
                prc_upf = rs.getDouble("proc_upf");
                max_os = rs.getDouble("max_os_prag");}
            
            rs = stm.executeQuery("SELECT * FROM ls_dod WHERE pmonth = "+ imakante.salary.salary_main.getMonth() + " AND  pyear = " + imakante.salary.salary_main.getYear());
            while(rs.next()){
                
                taxDOD_doh[DOD_id] = rs.getDouble("doh");
                taxDOD_sum[DOD_id] = rs.getDouble("suma");
                taxDOD_prct[DOD_id] = rs.getDouble("prct");
                
                DOD_id++;}
            stm.close();
        } catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        for (int i = 0; i<str_area.length(); i++){
            
            if(String.valueOf(str_area.charAt(i)).equals("1")){m_day++;
            System.out.println("m_day = "+m_day);}
        }
        for (int i = i_days - 1; i <  str_area.length(); i++){
            if(String.valueOf(str_area.charAt(i)).equals("1")){ e_day++;
            System.out.println("e_day = "+e_day);}
        }
        day_s = e_day/m_day; // koefitsient na izrabotneoto vreme - dni izraboteni/dni rabotni v mesetsa
        System.out.println("day_s "+day_s);
        zarabotka = (sht_zaplata*day_s);  // zarabotka za otrabotenia period
        System.out.println("zarabotka "+zarabotka);
        sum_ktu = ((zarabotka*ktu*losYears)/100);  // suma za KTU
        System.out.println("sum_ktu "+sum_ktu);
        
        
        sum_ktu = ((zarabotka*ktu*losYears)/100);  // suma za KTU
        System.out.println("sum_ktu "+sum_ktu);
        zarabotka = zarabotka + sum_ktu;  // zarabotkata + suma KTU
        System.out.println("zarabotka "+zarabotka);
        zarabotka_day = zarabotka /day_s;   // zarabotka za edin otraboten den
        System.out.println("zarabotka_day "+zarabotka_day);
        days_min_os = sum_min_os / day_s; //min os za edin otraboten den (min osiguritelen dneven prag)
        System.out.println("days_min_os "+days_min_os);
        
        if(zarabotka_day > sum_min_os && zarabotka_day < (max_os/day_s) && charge_os == false){  //proverka dali izrabotenoto dnevno i min osiguritelen dneven prag
            sum_oz  = (zarabotka*prc_oz)/100;
            System.out.println("sum_oz "+sum_oz);
            if (year_birth < 60){
                sum_pensii = ((zarabotka*(prc_pensii + 0.75))/100);
            }else{sum_pensii =((zarabotka*prc_pensii)/100);}
            sum_zo = (zarabotka*prc_zo)/100;
            sum_bezr = (zarabotka*prc_bezr)/100;
            sum_upf = (zarabotka*prc_upf)/100;
            
        }else{
            sum_oz  = (sum_min_os*prc_oz)/100;
            if (year_birth < 60){
                sum_pensii = ((sum_min_os*(prc_pensii + 0.75))/100);
            }else{sum_pensii =((sum_min_os*prc_pensii)/100);}
            sum_zo = (sum_min_os*prc_zo)/100;
            sum_bezr = (sum_min_os*prc_bezr)/100;
            sum_upf = (sum_min_os*prc_upf)/100;
        }
        oblagaema = zarabotka - sum_oz - sum_pensii - sum_zo - sum_bezr - sum_upf;
        for (int i= 0 ; i < DOD_id + 1; i++){
            if (oblagaema >= taxDOD_doh[i]){
                i_dod = i;
            }
            neto = oblagaema - taxDOD_sum[i_dod] - (((oblagaema - taxDOD_sum[i_dod])*taxDOD_prct[i_dod])/100);
        }
        try {
           
            String sql ="INSERT INTO ls_result (id_rab," +
                    " day_used, zaplata, sum_kt, sum_oz_m, sum_pensii,"+
                    "sum_zoo, sum_bzr, sum_upf, sum_osig_dohod, sum_obl_dohod, sum_dod, sum_end) VALUES(" +
                    "'" + id_rabotnik +
                    "', '" + e_day +
                    "', '" + sht_zaplata +
                    "', '" + sum_ktu +
                     "', '" + sum_pensii +
                    "', '" + sum_zo +
                    "', '" + sum_bezr +
                    "', '" + sum_upf +
                    
                    "', '" + sum_os +
                    "', '" + oblagaema +
                    "', '" + (oblagaema - neto) +
                    "', '" + neto +
                    "')"
                    ;
            stm = intCon.createStatement();
            stm.execute(sql);
            stm.close();
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
}





