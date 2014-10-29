package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class Struct extends Declaration{

    public boolean as_typedef = false;
    private Stack<Variable> decs = new Stack<Variable>();

    public Stack<Variable> getDecs() {
        return decs;
    }

    public void addMember(Variable dec) {
        this.decs.push(dec);
    }


}
