import java.util.ArrayList;

/**
 * Created by basirati on 8/1/14.
 */
public class CodeGenerator {
    public String mode;
    public func_decl f = new func_decl();
    public struct_decl s = new struct_decl();
    public var_decl dec = new var_decl();
    private ArrayList<func_decl> functions = new ArrayList<func_decl>();
    private ArrayList<struct_decl> structs = new ArrayList<struct_decl>();
    private ArrayList<var_decl> vars = new ArrayList<var_decl>();
    private ArrayList<vartypedef_decl> vts = new ArrayList<vartypedef_decl>();

    public void declareFunc()
    {
        functions.add(f);
        f = new func_decl();
    }

    public void declareStruct()
    {
        s.setVars(vars);
        structs.add(s);
        s = new struct_decl();
        dec = new var_decl();
    }

    public void declareTypedef_var()
    {
        vartypedef_decl v = new vartypedef_decl();
        v.setDef(dec.getType());
        v.setAs(dec.getID());
        vts.add(v);
        dec = new var_decl();
    }

    public void declareTypedef_struct()
    {

    }

    public void declareVar()
    {
        vars.add(dec);
        dec = new var_decl();
    }

    public void showDeclarations()
    {
        System.out.println("FUNCTIONS...");
        for (func_decl f: functions) {
            String p = "";
            if (!f.getParams().empty())
                p = (String) f.getParams().pop();
            System.out.println(f.getReturn_type() + " " + f.getID() + "(" + p + ")");
        }
        System.out.println("STRUCTS...");
        for (struct_decl s: structs)
            System.out.println(s.getName());
        System.out.println("VARIABLES...");
        for (var_decl v: vars)
            System.out.println(v.toString());
        System.out.println("TYPEDEF VARS...");
        for (vartypedef_decl v: vts)
            System.out.println(v.getDef() + "->" + v.getAs());
    }
}
