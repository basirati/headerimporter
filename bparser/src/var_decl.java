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
        try { return (String) stack.get(2); }
        catch (Exception e) { return ""; }
    }
    public String getID()
    {
        try { return (String) stack.get(1); }
        catch (Exception e) { return ""; }
    }

    public String getQ()
    {
        try { return (String) stack.get(0); }
        catch (Exception e) { return ""; }
    }

    public String toString()
    {
        String s = "";
        while (!stack.empty())
            s = s + (String) stack.pop() + " ";
        return s;
    }
}
