package stdio_parser;

import java.util.ArrayList;

/**
 * Created by basirati on 10/29/14.
 */
public class ConditionalBlock extends Declaration{
    boolean condition = true;
    boolean positive = true;
    public boolean inStruct = false;
    ArrayList<Declaration> true_block = new ArrayList<Declaration>();
    ArrayList<Declaration> false_block = new ArrayList<Declaration>();

    public ArrayList<Declaration> getBlock(boolean condition)
    {
        if (condition)
            return true_block;
        else
            return false_block;
    }

    public void addDeclaration(Declaration declaration)
    {
        if (condition)
            true_block.add(declaration);
        else
            false_block.add(declaration);
    }
}
