package stdio_parser;

import java.util.ArrayList;
import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class CodeGenerator {
    public String mode;
    public func_decl func = new func_decl();
    public struct_decl struct = new struct_decl();
    public var_decl var = new var_decl();

    public ArrayList<def_expr> defines = new ArrayList<def_expr>();
    private ArrayList<func_decl> functions = new ArrayList<func_decl>();
    private ArrayList<struct_decl> structs = new ArrayList<struct_decl>();
    private ArrayList<var_decl> vars = new ArrayList<var_decl>();
    private ArrayList<vartypedef_decl> typedef_vars = new ArrayList<vartypedef_decl>();

    public Stack<func_decl> params_owners = new Stack<func_decl>();
    public func_decl paramsowner = null;

    public ArrayList<func_decl> getFunctions() {
        return functions;
    }

    public ArrayList<struct_decl> getStructs() {
        return structs;
    }

    public ArrayList<var_decl> getVars() {
        return vars;
    }

    public ArrayList<vartypedef_decl> getTypedef_vars() {
        return typedef_vars;
    }

    public void declareFunc()
    {
        functions.add(func);
        func = new func_decl();
    }

    public void declareStruct()
    {
        structs.add(struct);
        struct = new struct_decl();
        //var = new var_decl();
    }

    public void declareTypedef_var()
    {
        vartypedef_decl v = new vartypedef_decl();
        v.setDef(var.getType());
        v.setAs(var.getID());
        typedef_vars.add(v);
        var = new var_decl();
    }

    public void declareTypedef_struct(String id)
    {
        struct_decl sd = new struct_decl();
        sd.setName(id);
        sd.as_typedef = true;
        structs.add(sd);
        //var = new var_decl();
    }

    public void declareVar()
    {
        vars.add(var);
        var = new var_decl();
    }

    public void showDeclarations()
    {
        System.out.println("FUNCTIONS...");
        for (func_decl f: functions) {
            System.out.println(f.getReturn_type() + " " + f.getID() + "(" + f.paramsToString() + ")");
        }
        System.out.println("STRUCTS...");
        for (struct_decl s: structs) {
            System.out.println(s.getName() + " {");
            for (var_decl v : s.getDecs())
                System.out.println(v.toString());
            System.out.println("}");
        }
        System.out.println("VARIABLES...");
        for (var_decl v: vars) {
            String q = "";
            if (v.getFuncpointer() != null)
                q = "(" + v.getFuncpointer().paramsToString() + ")";
            else
                q = v.getArray();
            System.out.println(v.getType() + " " + v.getID() + q);
        }
        System.out.println("TYPEDEF VARS...");
        for (vartypedef_decl v: typedef_vars)
            System.out.println(v.getDef() + "->" + v.getAs());
        System.out.println("DEFINES...");
        for (def_expr d: defines) {
            String exp = "";
            if (d.exp instanceof  Integer)
            {
                Integer i = (Integer) d.exp;
                exp = i.toString();
            }
            else
            exp = (String) d.exp;

            System.out.println((String) d.ID + "->" + exp);
        }
    }
}
