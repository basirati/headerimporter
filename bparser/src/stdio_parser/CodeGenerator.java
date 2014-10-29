package stdio_parser;

import java.util.ArrayList;
import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class CodeGenerator {

    public Function func = new Function();
    public Struct struct = new Struct();
    public Variable var = new Variable();

    //public ConditionalBlock conditionalBlock = new ConditionalBlock();
    public boolean block = false;

    public ArrayList<Declaration> declarations = new ArrayList<Declaration>();
    //public ArrayList<Define> defines = new ArrayList<Define>();
    //private ArrayList<Function> functions = new ArrayList<Function>();
    //private ArrayList<Struct> structs = new ArrayList<Struct>();
    //private ArrayList<Variable> vars = new ArrayList<Variable>();
    //private ArrayList<Typedef> typedef_vars = new ArrayList<Typedef>();

    public Stack<Function> params_owners = new Stack<Function>();
    public Function paramsowner = null;

    public Stack<ConditionalBlock> conditionalBlocks = new Stack<ConditionalBlock>();

    void addDeclaration(Declaration declaration)
    {
        if (block)
            try {
                conditionalBlocks.peek().addDeclaration(declaration);
            } catch (Exception e) {}
        else
            declarations.add(declaration);
    }

    public void declareDefine(String id, Object params, Object exp, boolean isStruct)
    {
        Define dx = new Define();
        dx.setID(id);
        dx.setExp(exp);
        dx.setParams(exp);
        dx.isStruct = isStruct;

        this.addDeclaration(dx);
    }

    public void declareFunc()
    {
        this.addDeclaration(func);
        func = new Function();
    }

    public void declareStruct()
    {
        this.addDeclaration(struct);
        struct = new Struct();
    }

    public void declareTypedef_var()
    {
        Typedef v = new Typedef();
        v.setID(var.getType());
        v.setAs(var.getID());
        this.addDeclaration(v);
        var = new Variable();
    }

    public void declareTypedef_struct(String id)
    {
        Struct sd = new Struct();
        sd.setID(id);
        sd.as_typedef = true;
        this.addDeclaration(sd);
    }

    public void declareVar()
    {
        this.addDeclaration(var);
        var = new Variable();
    }

    public void showDeclarations()
    {
        for (Declaration dd : declarations) {
            if (dd instanceof Function) {
                Function f = (Function) dd;
                System.out.print("FUNCTION: ");
                System.out.println(f.getReturn_type() + " " + f.getID() + "(" + f.paramsToString() + ")");
            }

            if (dd instanceof Struct) {
                Struct s = (Struct) dd;
                System.out.print("STRUCT: ");
                System.out.println(s.getID() + " {");
                for (Variable v : s.getDecs())
                    System.out.println(v.toString());
                System.out.println("}");
            }
            if (dd instanceof Variable) {
                Variable v = (Variable) dd;

                String q = "";
                if (v.getFuncpointer() != null)
                    q = "(" + v.getFuncpointer().paramsToString() + ")";
                else
                    q = v.getArray();
                System.out.print("VARIABLE: ");
                System.out.println(v.getType() + " " + v.getID() + q);
            }
            if (dd instanceof Typedef) {
                Typedef v = (Typedef) dd;
                System.out.print("TYPEDEF: ");
                System.out.println(v.getID() + "->" + v.getAs());
            }
            if (dd instanceof Define) {
                Define d = (Define) dd;
                System.out.print("DEFINE: ");
                String exp = "";
                if (d.exp instanceof Integer) {
                    Integer i = (Integer) d.exp;
                    exp = i.toString();
                } else
                    exp = (String) d.exp;

                System.out.println((String) d.ID + "->" + exp);
            }
        }
    }
}
