package imakante.com;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.*;
import java.io.FilenameFilter;
import java.io.File;
public class reportTemplate {
    private ArrayList templates;
    private String path="/";
    public reportTemplate(String ppath) {
        
        path=ppath;
        
        
    }

    public ArrayList getTemplates() {
        return templates;
    }

    public void setTemplates(ArrayList val) {
        this.templates = val;
    }

    public groupTemplate openGroupFile(String filename) 
    {
        groupTemplate read_Value=null;
        try
        {
            FileInputStream inFile = new FileInputStream(path+filename);
            ObjectInputStream in = new ObjectInputStream(inFile);
            
            read_Value = (groupTemplate)in.readObject();
            
            
            in.close();
        }
        catch(Exception ex) {};
        
        
        return read_Value;
    }

    public void saveGroupFile(String filename, groupTemplate val)
    {
        try
        {
            FileOutputStream outFile = new FileOutputStream(path+filename);
            ObjectOutputStream out = new ObjectOutputStream(outFile);
            out.writeObject(val);
            out.flush();
            out.close();
            
        }
        catch(Exception ex){};
    }

    public void addGroup(groupTemplate val) 
    {
        getTemplates().add(val);
    }

    public groupTemplate searchGroup(String group)
    {
        int maxSize = getTemplates().size();
        groupTemplate return_value = null;
        for(int i=0;i<maxSize;i++)
        {
            if(group.equals(((groupTemplate)getTemplates().get(i)).getNameOfGroup()))
            {
               return_value =  (groupTemplate)getTemplates().get(i);
               break;
            }
        }
        return return_value;
    }

    public void deleteGroup(groupTemplate val)
    {
        int maxSize = getTemplates().size();
        groupTemplate return_value = null;
        ArrayList newTemplates = new ArrayList();
        for(int i=0;i<maxSize;i++)
        {
           if(!compare(val,(groupTemplate)getTemplates().get(i)))
           {
               newTemplates.add((groupTemplate)getTemplates().get(i));
           }
        }
    }

    private boolean compare(groupTemplate g1, groupTemplate g2) 
    {
        boolean return_value = false;
        String n1 = g1.getNameOfGroup();
        String n2 = g2.getNameOfGroup();
        
        if(n1.equals(n2))
        {
           return_value = true; 
        }
        return return_value;
    }

    public File[] getGroupFileNames()
    {
        File templateFiles[]=null;
        File tmp = new File(path);
        try
        {
           templateFiles =  tmp.listFiles(new IMKFilter());
          //   templateFiles =  tmp.listFiles();
            
        }
        catch(Exception ex){};
        return templateFiles;
    }

    
}
class IMKFilter implements FilenameFilter {
    public boolean accept(File dir, String name) {
        return (name.endsWith(".java"));
    }
}

