package swfParser.as3.rules;

import jdk.nashorn.internal.runtime.regexp.RegExpMatcher;
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
public class AttackInfoMessageRule extends Rule {
    private int packetId;
    private String jsonString;
    private String var_attacker;
    private String var_target;
    private int unknown;
    public int getPacketId(){
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        String subclass_src  = context.findFileByString("\"powdericon\"")[0];
        String func = context.findFunctionByString(subclass_src, "\"powdericon\""); //very risky TODO: improve
        String class_name = RegexHelper.match(func,"param3 == (.*?)\\.const")[1];
        class_name = class_name.trim();
        String source_code = context.findFileByString("class " + class_name  + " ")[0];
        String ctor = context.findFunctionByString(source_code,"function " + class_name);
        var_attacker = RegexHelper.match(ctor, "this\\.(.*?) = param1;")[1];
        var_target = RegexHelper.match(ctor, "this\\.(.*?) = param2;")[1];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(source_code,"method_16()","}"),"return (.*?);")[1]);
        findWrite(source_code);
    }

    @Override
    public void export() {
        try{
            Files.write(Paths.get("attack_info_message.json"),jsonString.getBytes("UTF8"));
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
            }else if(line.contains(var_attacker) && line.contains("writeShort")){
                //attacker_id
                JSONObject obj = new JSONObject();
                obj.put("name", "attacker_megaserver_id");
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
            }else if(line.contains(var_target) && line.contains("writeShort")){
                //target_id
                JSONObject obj = new JSONObject();
                obj.put("name", "target_megaserver_id");
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
            }else if(line.contains(var_attacker) && line.contains("writeDouble")){
                //attacker_id
                JSONObject obj = new JSONObject();
                obj.put("name", "attacker_id");
                obj.put("type", "double");
                jsonArray.add(obj);
            }else if(line.contains(var_target) && line.contains("writeDouble")){
                //attacker_id
                JSONObject obj = new JSONObject();
                obj.put("name", "target_id");
                obj.put("type", "double");
                jsonArray.add(obj);
            }else if(line.contains("method_14")){
                //unknown struct
                unknown++;
                JSONObject obj = new JSONObject();
                obj.put("name", "unknown_short_" + unknown);
                obj.put("type", "short");
                jsonArray.add(obj);

                unknown++;
                JSONObject obj4 = new JSONObject();
                obj4.put("name", "unknown_short_" + unknown);
                obj4.put("type", "short");
                jsonArray.add(obj4);

                JSONObject obj2 = new JSONObject();
                obj2.put("name", "unknown_int_1");
                obj2.put("type", "int");
                jsonArray.add(obj2);

                JSONObject obj3 = new JSONObject();
                obj3.put("name", "unknown_int_2");
                obj3.put("type", "int");
                jsonArray.add(obj3);
            }else if(line.contains("writeShort")){
                //unknown shorts
                unknown++;
                JSONObject obj = new JSONObject();
                obj.put("name", "unknown_short_" + unknown);
                obj.put("type", "short");
                jsonArray.add(obj);
            }else if(line.contains("writeBoolean")) {
                //unknown bool
                JSONObject obj = new JSONObject();
                obj.put("name", "unknown_boolean");
                obj.put("type", "boolean");
                jsonArray.add(obj);
            }
            lineIndex++;
        }
        jsonString = jsonArray.toJSONString();
    }

}
