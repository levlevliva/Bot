package swfParser.as3.rules;

import jdk.nashorn.internal.runtime.regexp.joni.Regex;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import swfParser.as3.AS3Parser;
import swfParser.as3.Rule;
import swfParser.text.RegexHelper;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;

/**
 * Created by Uther on 11.09.2016.
 */
public class UserDeathMessagesRule extends Rule {
    private int packetId;
    private ArrayList<String> jsonStrings;
    private int message_i = 0;

    public int getPacketId(){
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        //get all four death messages
        String userControllerClass = context.findFileByString("StatelessCMD.invoke(CmdSL_OpenDeathWindow);")[0];
        String[] matches = RegexHelper.matchAll(userControllerClass, "(.*?)\\s*CmdSL_OpenDeathWindow\\s*");

        jsonStrings = new ArrayList<>();

        for(int i = 1; i < matches.length; i++){
            String match = matches[i];
            String class_name = RegexHelper.match(match, "param1 as (class_.*?);")[1].trim();
            String source_code = context.findFileByString("class " + class_name  + " ")[0];
            packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(source_code,"method_16()","}"),"return (.*?);")[1]);
            findWrite(source_code);
        }

    }

    @Override
    public void export() {
        jsonStrings.forEach(jsonString -> {
            try{
                Files.write(Paths.get("user_death_message_" + message_i + ".json"),jsonString.getBytes("UTF8"));
            } catch (IOException e) {
                e.printStackTrace();
            }
            message_i++;
        });
    }

    private void findWrite(String src) {
        JSONArray jsonArray = new JSONArray();

        String writeMethodSrc = RegexHelper.getStringBetween(src, "IDataOutput", "}\n" +
                "   }");
        writeMethodSrc = writeMethodSrc.substring(writeMethodSrc.indexOf("{") + 1).trim();
        String[] body = writeMethodSrc.split("\n");
        int lineIndex = 0;
        for (String line : body) {
            line = line.trim();
            if (lineIndex == 0) {
                //packetId
                JSONObject obj = new JSONObject();
                obj.put("name", "packet_id");
                obj.put("type", "short");
                obj.put("value", packetId);
                jsonArray.add(obj);
            } else if (lineIndex == 1) {
                //version
                JSONObject obj = new JSONObject();
                obj.put("name", "version");
                obj.put("type", "short");
                obj.put("value", 0);
                jsonArray.add(obj);
            }
            lineIndex++;
        }
        jsonStrings.add(jsonArray.toJSONString());
    }

}
