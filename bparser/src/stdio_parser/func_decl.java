package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class func_decl{
    public boolean pointer = false;
    private Object return_type = "";
    public String ID = "";
    public void setID(String id)   { this.ID = id; }
    public String getID() { return ID; }
    Stack<Object> params = new Stack<Object>();

    public func_decl()
    {
        this.params.clear();
    }

    public Object getReturn_type() {
        return return_type;
    }

    public void setReturn_type(Object return_type) {
        this.return_type = return_type;
    }

    public Stack<Object> getParams()
    {
        return params;
    }
    public void  pushParam(Object o)
    {
        this.params.push(o);
    }

    public String paramsToString()
    {
        String s = "";
        for (Object o : params)
        {
            if (o instanceof func_decl)
                s = s +  ((func_decl) o).getID() + "(" + ((func_decl) o).paramsToString() + "), ";
            else
                s = s + (String) o + ", ";
        }
        return s;
    }


}
