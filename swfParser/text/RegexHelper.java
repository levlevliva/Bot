package swfParser.text;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Uther on 04.09.2016.
 */
public class RegexHelper {
    public static String[] match(String src, String pattern){
        Pattern p = Pattern.compile(pattern);
        Matcher m = p.matcher(src);
        if(m.find())
        {
            int len = m.groupCount() + 1;
            String[] strings = new String[len];
            for(int i = 0; i < len; i++)
                strings[i] = m.group(i);
            return strings;
        }else
        return new String[]{"null"};
    }

    public static String[] matchAll(String src, String pattern){
        Pattern p = Pattern.compile(pattern, Pattern.DOTALL);
        Matcher m = p.matcher(src);
        ArrayList<String> matches = new ArrayList<>();
        while(m.find())
        {
            matches.add(m.group(1));
        }
        if(matches.size() > 0)
            return matches.toArray(new String[matches.size()]);
        return new String[0];
    }


    public static String getStringBetween(String src, String start, String end){
        String tmpString = src.substring(0,src.lastIndexOf(end));
        int startIndex = tmpString.lastIndexOf(start) + start.length();
        return tmpString.substring(startIndex,tmpString.length() -1);
    }
}
