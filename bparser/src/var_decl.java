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
    public String toString()
    {
        String s = "";
        while (!stack.empty())
            s = s + (String) stack.pop() + " ";
        return s;
    }
}