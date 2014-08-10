package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class struct_decl {
    private String name = "";
    public boolean as_typedef = false;
    private Stack<var_decl> decs = new Stack<var_decl>();

    public Stack<var_decl> getDecs() {
        return decs;
    }

    public void addMember(var_decl dec) {
        this.decs.push(dec);
    }



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



}
