package stdio_parser;

import java.util.HashMap;

/**
 * Created by basirati on 09.09.15.
 */
public class Enum extends Declaration {
    private HashMap<String,Object> members = new HashMap<String, Object>();
    public void addMember(String name, Object value)
    {
        members.put(name, value);
    }

    public  HashMap<String, Object> getMembers()
    {
        return members;
    }
}
