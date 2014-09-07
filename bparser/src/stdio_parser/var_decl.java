package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class var_decl {
    String type = "";
    String ID = "";
    String array = "";
    func_decl funcpointer = null;

    public func_decl getFuncpointer() {
        return funcpointer;
    }

    public void setFuncpointer(func_decl funcpointer) {
        this.funcpointer = funcpointer;
    }

    public String getArray() {
        return array;
    }

    public void addArray(int n) {
        if (n > 0)
            this.array = this.array + "[" + n + "]";
        else
            this.array = this.array + "[]";
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String toString()
    {
        return getType() + " " + getID() + getArray();
    }
}
