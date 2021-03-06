package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class Struct extends Declaration{

    private boolean union =false;
    private Stack<Declaration> decs = new Stack<Declaration>();

    public Stack<Declaration> getDecs() {
        return decs;
    }

    public void addMember(Declaration dec) {
        this.decs.push(dec);
    }

    public void setUnion(boolean isUnion)
    {
        union = isUnion;
    }

    public boolean isUnion()
    {
        return union;
    }

}
