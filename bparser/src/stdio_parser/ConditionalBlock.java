package stdio_parser;

import java.util.ArrayList;

/**
 * Created by basirati on 10/29/14.
 */
public class ConditionalBlock extends Declaration{
    boolean condition;
    ArrayList<Declaration> true_block = new ArrayList<Declaration>();
    ArrayList<Declaration> false_block = new ArrayList<Declaration>();
    public void addDeclaration(Declaration declaration)
    {
        if (condition)
            true_block.add(declaration);
        else
            false_block.add(declaration);
    }
}
