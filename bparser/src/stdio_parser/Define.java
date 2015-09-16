package stdio_parser;

import java.util.Stack;

/**
 * Created by basirati on 8/10/14.
 */
public class Define extends Declaration{
    public boolean isEmpty()
    {
        try{
            String s = (String) exp;
            return s.trim().isEmpty();
        } catch (Exception e){return false;}
    }
    Object exp;
    Stack<String> params = new Stack<String>();

    public Object getExp() {
        return exp;
    }

    public void setExp(Object exp) {
        this.exp = exp;
    }

    public Stack<String> getParams() {
        return params;
    }
    public void addParam(String s) { params.push(s); }


    public boolean isStruct = false;

    public void declareIt() {
        String exps = (String) exp;
        if (exps == "")
            return;
        int defineindex = exps.indexOf("define") + 7;
        exps = exps.substring(defineindex);
        String[] tokens = exps.split("\\s+");
        int index = 0;
        try{
            for (String s: tokens)
            {
                if (s.isEmpty())
                    index++;
                else
                    break;
            }
            String id = tokens[index];
            try {
                if (id.contains("(")) {
                    String arg_part = exps.substring(exps.indexOf("(") + 1, exps.indexOf(")")).trim();
                    id = exps.substring(0, exps.indexOf("(")).trim();
                    this.setID(id);
                    if (arg_part.contains(",")) {
                        String[] args = arg_part.split(",");
                        for (String arg : args)
                            this.addParam(arg.trim());
                    } else {
                        arg_part = arg_part.trim();
                        if (!arg_part.isEmpty())
                            this.addParam(arg_part);
                    }
                    String body = exps.substring(exps.indexOf(")") + 2, exps.length());
                    this.setExp(body);
                    return;
                }
            } catch (Exception e){}
            this.setID(id);
            if (exps.contains("(")) {
                    String body = exps.substring(exps.indexOf("(") + 1, exps.length());
                    try {
                        int x = Integer.valueOf(body);
                        this.setExp(x);
                    } catch (Exception e) {
                        body = exps.substring(exps.indexOf("("), exps.length());
                        this.setExp(body);
                    }
            }
            else
            {
                for (String t : tokens)
                    if (t.trim().equals("struct"))
                    {
                        this.isStruct = true;
                        String body = exps.substring(exps.indexOf("struct")+7,exps.length()).trim();
                        this.setExp(body);
                        return;
                    }
                try {int x = Integer.valueOf(tokens[1]);this.setExp(x);}
                catch (Exception e){
                    try {
                        String body = exps.substring(id.length() + 1, exps.length());
                        this.setExp(body);
                    }catch(Exception e2){this.setExp("");}
                }
            }

        } catch (Exception e) {}

    }
}
