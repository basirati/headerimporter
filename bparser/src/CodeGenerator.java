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
        for (func_decl f: functions)
            System.out.println(f.getReturn_type() + " " + f.getID());
        System.out.println("STRUCTS...");
        for (struct_decl s: structs)
            System.out.println(s.getName());
        System.out.println("VARIABLES...");
        for (var_decl v: vars)
            System.out.println(v.toString());
    }
}
