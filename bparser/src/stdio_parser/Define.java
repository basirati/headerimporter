package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/10/14.
 */
public class Define extends Declaration{
    Object exp;
    Stack<String> params = new Stack<String>();

    public Object getExp() {
        return exp;
    }

    public void setExp(Object exp) {
        this.exp = exp;
    }

    public Stack<String> getParams() {
        return params;
    }
    public void addParam(String s) { params.push(s); }


    public boolean isStruct = false;
}
