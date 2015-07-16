package stdio_parser;

import java.io.*;
import java.util.ArrayList;
import java.util.Stack;

/**
 * Created by basirati on 8/1/14.
 */
public class CodeGenerator {
    public String error = "";

    public Function func = new Function();
    public Struct struct = new Struct();
    public Variable var = new Variable();
    public Define define  = new Define();

    public boolean structflag = false;
    public boolean structblock = false;

    public ArrayList<Declaration> declarations = new ArrayList<Declaration>();


    public Stack<Function> params_owners = new Stack<Function>();
    public Function paramsowner = null;

    public Stack<ConditionalBlock> conditionalBlocks = new Stack<ConditionalBlock>();

    void addDeclaration(Declaration declaration)
    {
        if (!conditionalBlocks.empty())
            conditionalBlocks.peek().addDeclaration(declaration);
        else
            declarations.add(declaration);
    }

    public void declareConditionalBlock()
    {
        try {
            ConditionalBlock cb = conditionalBlocks.pop();
            if (structflag && cb.inStruct) {
                this.struct.addMember(cb);
                this.structblock = false;
            }
            else
                this.addDeclaration(cb);
        } catch (Exception e) {}
    }

    public void declareDefine()
    {
        define.declareIt();
        this.addDeclaration(define);
        define = new Define();
    }

    public void declareFunc()
    {
        this.addDeclaration(func);
        func = new Function();
    }

    public void declareStruct()
    {
        this.addDeclaration(struct);
        structflag = false;
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

    public void declareTypedef_struct(String id, Object as)
    {
        Typedef tp = new Typedef();
        if (as == "") {
            Struct sd = new Struct();
            sd.setID(id);
            tp.setAs(id);
            tp.setStruct(sd);
        }
        else
        {
            tp.setID(id);
            tp.setAs((String) as);
            tp.asstruct = true;
        }
        this.addDeclaration(tp);
    }

    public void declareVar()
    {
        this.addDeclaration(var);
        var = new Variable();
    }

    public void newConditionalBlock(Object id, boolean positive){
        ConditionalBlock cb = new ConditionalBlock();
        cb.setID((String) id);
        cb.positive = positive;
        if (structflag && !structblock)
        {
            cb.inStruct = true;
            structblock = true;
        }
        conditionalBlocks.push(cb);
    }

    public void showDeclarations()
    {
        this.showDeclarations(declarations);
    }

    void showDeclarations(ArrayList<Declaration> declarations)
    {
        for (Declaration dd : declarations) {
            if (dd instanceof ConditionalBlock)
            {
                ConditionalBlock cb = (ConditionalBlock) dd;
                System.out.println("IF(NOT): " + cb.getID() + ">>>>>>>>>>>>>>>>>>>>");
                this.showDeclarations(cb.getBlock(true));
                System.out.println("-------------------------");
                this.showDeclarations(cb.getBlock(false));
                System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<");

            }

            if (dd instanceof Function) {
                Function f = (Function) dd;
                System.out.print("FUNCTION: ");
                System.out.println(f.getReturn_type() + " " + f.getID() + "(" + f.paramsToString() + ")");
            }

            if (dd instanceof Struct) {
                Struct s = (Struct) dd;
                System.out.print("STRUCT: ");
                System.out.println(s.getID() + " {");
                for (Declaration v : s.getDecs()) {
                    if (v instanceof ConditionalBlock) {
                        System.out.println("........................");
                        this.showDeclarations(((ConditionalBlock) v).getBlock(true));
                        System.out.println("- - - - - - - - - - - - - ");
                        this.showDeclarations(((ConditionalBlock) v).getBlock(false));
                        System.out.println("+ + + + + + + + + + + + ");
                    }
                    else
                        System.out.println(v.toString());
                }
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

                System.out.println("id:" + d.getID() + "{" + d.getParams() + "}" + "---->>>>  " + exp);
            }
            if (dd instanceof Include)
                System.out.println("INCLUDE: " + dd.getID());
        }
    }

    public void removeCPP(String filename, String tempfile) {


        BufferedReader br = null;
        try {

            br = new BufferedReader(new FileReader(filename));


            StringBuilder sb = new StringBuilder();
            String line = br.readLine();

            while (line != null) {

                if (line.contains("extern \"C++\"")) {
                    String temp = br.readLine();
                    int x = 0;
                    if (temp.contains("{")) {
                        x = 1;
                        while (x > 0) {
                            line = br.readLine();
                            if (line.contains("{"))
                                x++;
                            else if (line.contains("}"))
                                x--;
                        }
                        line = br.readLine();
                        continue;
                    }
                    else
                    {
                        while (!line.endsWith(";") && !temp.endsWith(";"))
                            line = br.readLine();

                        line = br.readLine();
                        continue;
                    }
                }
                else if (line.contains("extern \"C\""))
                {
                    line = br.readLine();
                    continue;
                }
                else if (line.trim().equals("}"))
                {
                    line = br.readLine();
                    continue;
                }
                else if (line.contains("/*"))
                {
                    int index = line.indexOf("/*");
                    String temp = line.substring(0, index);
                    String cm = line.substring(index);
                    sb.append(temp);
                    sb.append(System.lineSeparator());
                    line = cm;
                }
                sb.append(line);
                sb.append(System.lineSeparator());
                line = br.readLine();
            }
            String everything = sb.toString();

            PrintWriter writer = new PrintWriter(tempfile, "UTF-8");
            writer.println(everything);
            writer.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2)
        {
            e2.printStackTrace();
        }
    }
}
