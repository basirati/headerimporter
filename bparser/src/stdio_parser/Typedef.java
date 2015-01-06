package stdio_parser;

/**
 * Created by basirati on 8/2/14.
 */
public class Typedef extends Declaration{

    private String as;
    private Struct struct = null;
    public boolean asstruct = false;

    public Struct getStruct()   { return this.struct; }

    public void setStruct(Struct struct){ this.struct = struct;}

    public boolean hasStruct() {return (struct!=null); }

    public String getAs() {
        return as;
    }

    public void setAs(String as) {
        this.as = as;
    }

}
