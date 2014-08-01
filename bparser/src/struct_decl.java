import java.util.ArrayList;

/**
 * Created by basirati on 8/1/14.
 */
public class struct_decl {
    private String name = "";
    private ArrayList<var_decl> vars = new ArrayList<var_decl>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<var_decl> getVars() {
        return vars;
    }

    public void setVars(ArrayList<var_decl> vars) {
        this.vars = vars;
    }


}
