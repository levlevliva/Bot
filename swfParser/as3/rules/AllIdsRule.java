package swfParser.as3.rules;

import swfParser.as3.AS3Parser;
import swfParser.as3.Rule;
import swfParser.text.RegexHelper;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Created by Uther on 14.09.2016.
 */
public class AllIdsRule extends Rule {

    /*
        Not a message rule!
        for sdk ussage only.
     */

    private int[] packetIds;

    @Override
    public void process(AS3Parser context) {
        //find the message interface
        String src =  RegexHelper.getStringBetween(context.getMainSource(), "initLoginMessage() : void","initResourceManager");
         String loginClassStr =  "class_" + RegexHelper.match(src,"class_(.*?)\\.")[1];
        String packages = RegexHelper.getStringBetween(context.getMainSource(),"import",loginClassStr+";");
        String filepath = "src/scripts/" + packages.replace(".","/").trim() + "/" + loginClassStr + ".as";
        String loginSrc = context.readFile(filepath);

        String interfaceName = RegexHelper.match(loginSrc,"implements ([a-z_0-9]+)")[1];
        String[] files = context.findFileByString("implements " + interfaceName);
        packetIds = new int[files.length];

        for(int i = 0; i < packetIds.length; i++){
            String file = files[i];
            String cname = RegexHelper.match(file,"implements ([a-z_0-9]+)")[1];
            if(cname.equals(interfaceName)) {
                packetIds[i] = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(file,"method_16()","}"),"return (.*?);")[1]);
            }
        }
    }

    @Override
    public void export() {
        String str = "";
        for(int i = 0; i < packetIds.length; i++)
        {
            if(packetIds[i] != 0)
             str += packetIds[i] + ";";
        }
        try {
            Files.write(Paths.get("all_ids.txt"),str.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
