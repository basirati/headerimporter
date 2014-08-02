package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class func_decl {
    private String ID = "";
    private Object return_type = "";
    private Stack<Object> params = new Stack<Object>();

    public Object getReturn_type() {
        return return_type;
    }

    public void setReturn_type(Object return_type) {
        this.return_type = return_type;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public void pushParam(Object o)
    {
        params.push(o);
    }

    public Stack<Object> getParams()
    {
        return params;
    }
}
