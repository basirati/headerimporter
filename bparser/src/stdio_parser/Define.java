package stdio_parser;

/**
 * Created by basirati on 8/10/14.
 */
public class Define extends Declaration{
    Object exp;
    Object params;

    public Object getExp() {
        return exp;
    }

    public void setExp(Object exp) {
        this.exp = exp;
    }

    public Object getParams() {
        return params;
    }

    public void setParams(Object params) {
        this.params = params;
    }

    public boolean isStruct = false;
}
