package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class Function extends Declaration{
    public boolean pointer = false;
    private Object return_type = "";

    Stack<Object> params = new Stack<Object>();

    public Function()
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
            if (o instanceof Function)
                s = s +  ((Function) o).getReturn_type() + "(" + ((Function) o).paramsToString() + "), ";
            else
                s = s + (String) o + ", ";
        }
        if (s.length() > 2)
            return s.substring(0,s.length()-2);
        else
            return s;
    }


}
