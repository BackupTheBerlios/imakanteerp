package imakante.com;
import java.io.Serializable;
import java.util.*;

public class baseToSave implements Serializable
{
    private String description;

    private byte[] pictureFile;

    private byte[] jasperFile;

    private HashMap parameters;

    public baseToSave() {
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String val) {
        this.description = val;
    }

    public byte[] getPictureFile() {
        return pictureFile;
    }

    public void setPictureFile(byte[] val) {
        this.pictureFile = val;
    }

    public byte[] getJasperFile() {
        return jasperFile;
    }

    public void setJasperFile(byte[] val) {
        this.jasperFile = val;
    }

    public HashMap getParameters() {
        return parameters;
    }

    public void setParameters(HashMap val) {
        this.parameters = val;
    }
}
