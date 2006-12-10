package imakante.com;
import java.io.Serializable;
import java.util.*;

public class groupTemplate implements Serializable
{
    private ArrayList listOfReports;

    private String nameOfGroup;

    public groupTemplate() {
    }

    public ArrayList getListOfReports() {
        return listOfReports;
    }

    public String getNameOfGroup() {
        return nameOfGroup;
    }

    public void setNameOfGroup(String val) {
        this.nameOfGroup = val;
    }

    public baseToSave getListOfReports(int val) {
        int maxSize = listOfReports.size();
        baseToSave return_value=null;
        if(val>(maxSize-1))
        {
           return_value = (baseToSave) listOfReports.get(maxSize-1) ;
        }
        else
        {
           return_value = (baseToSave) listOfReports.get(val) ; 
        }
        
        return null;
    }

    public void add(baseToSave val) {
        
        listOfReports.add(val);
       
    }

    public void delete(baseToSave val) 
    {
        int maxSize = listOfReports.size();
        ArrayList newList = new ArrayList();
        for(int i=0;i<maxSize;i++)
        {
            if(!compare(val,(baseToSave)listOfReports.get(i)))
            {
                newList.add((baseToSave)listOfReports.get(i));
            }
        }
        listOfReports = newList;
    }

    private boolean compare(baseToSave v1, baseToSave v2)
    {
        boolean return_value = false;
        String val1_desc = v1.getDescription();
        String val2_desc = v2.getDescription();
        if(val1_desc.equals(val2_desc))
        {
           return_value = true; 
        }
        else return_value = false;
        
        return return_value;
    }
}
