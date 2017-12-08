package swfParser.as3.rules;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import swfParser.as3.AS3Parser;
import swfParser.as3.Rule;
import swfParser.text.RegexHelper;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Created by Uther on 11.09.2016.
 */
public class TeleportMessageRule extends Rule {
    private int packetId;
    private String jsonString;

    public int getPacketId(){
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        String global_actions_control_class = context.findFileByString("GlobalActionsControl")[0];
        String func = context.findFunctionByString(global_actions_control_class, "switch(itemId)");
        String class_name = RegexHelper.match(func, " var_.*?\\.method_.*?\\((class_.*?)\\..*?\\);")[1];
        class_name = class_name.trim();
        String source_code = context.findFileByString("class " + class_name  + " ")[0];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(source_code,"method_16()","}"),"return (.*?);")[1]);
        findWrite(source_code);
    }

    @Override
    public void export() {
        try{
            Files.write(Paths.get("teleport_message.json"),jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
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
            }else if(line.contains("writeShort") && line.contains("65535")){
                //mapId
                JSONObject obj = new JSONObject();
                obj.put("name", "map_id");
                obj.put("type", "short");
                String shiftDir = "";
                if (line.indexOf(">>>") < line.indexOf("<<"))
                    shiftDir = "right";
                else
                    shiftDir = "left";
                int shift_value = Integer.parseInt(RegexHelper.match(line, (shiftDir == "left" ? "<< " : ">>> ") + "(.*?) % 16")[1]);
                obj.put("shift_type", shiftDir);
                obj.put("shift_value", shift_value);
                jsonArray.add(obj);
            }
            lineIndex++;
        }
        jsonString = jsonArray.toJSONString();
    }

}
