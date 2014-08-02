package stdio_parser;

/**
 * Created by basirati on 8/1/14.
 */
public class struct_decl {
    private String name = "";
    public boolean as_typedef = false;
    public var_decl getDecs() {
        return decs;
    }

    public void setDecs(var_decl decs) {
        this.decs = decs;
    }

    private var_decl decs = new var_decl();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



}
