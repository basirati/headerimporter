import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class var_decl {
    private Stack<Object> stack = new Stack<Object>();
    public void push(Object o)
    {
        stack.push(o);
    }
    public String getType()
    {
        if (!stack.empty())
            return (String) stack.get(0);
        else return "";
    }
    public String getID()
    {
        if (stack.size() > 1)
            return (String) stack.get(1);
        else
            return "";
    }

    public String getQ()
    {
        String s = "";
        for (int i = 2; i < stack.size(); i++)
            s = s + stack.get(i);
        return s;
    }

    public String toString()
    {
        String s = "";
        while (!stack.empty())
            s = s + (String) stack.pop() + " ";
        return s;
    }
}
