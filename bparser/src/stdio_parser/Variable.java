package stdio_parser;

/**
 * Created by basirati on 8/1/14.
 */
public class Variable extends Declaration{
    String type = "";
    String array = "";
    Function funcpointer = null;
    public boolean isStruct = false;

    public Function getFuncpointer() {
        return funcpointer;
    }

    public void setFuncpointer(Function funcpointer) {
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
        if (type.startsWith("struct"))
        {
            isStruct = true;
            type = type.substring(7);
        }
        this.type = type;
    }

    public String toString()
    {
        return getType() + " " + getID() + getArray();
    }
}
