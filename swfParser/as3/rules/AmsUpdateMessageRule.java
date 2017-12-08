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
public class AmsUpdateMessageRule extends Rule {
    private int packetId;
    private String jsonString;
    private String _jsonString;

    public int getPacketId(){
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        //AmsAttribute.Hitpoints = 45;
        //if(AmsUpdateMessage.ams_attribute == AmsAttribute.Hitpoints)
        // ShipManager[ams.megaserver_id][ams.id] = ams.attribute
        String subclass_src = context.findFileByString("entity does not exist:")[0];
        String class_var = RegexHelper.match(subclass_src,"entity does not exist\\: \" \\+ (.*?)\\.")[1];
        String message_class_name = RegexHelper.match(subclass_src, "var " + class_var + "\\:(.*?) = null;")[1];
        String source_code = context.findFileByString("class " + message_class_name)[0];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(source_code,"method_16()","}"),"return (.*?);")[1]);
        findAmsAttributeClass(source_code,context);
        findWrite(source_code);
    }

    @Override
    public void export() {
        try{
            Files.write(Paths.get("ams_attribute_message.json"),_jsonString.getBytes("UTF8"));
            Files.write(Paths.get("ams_update_message.json"),jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void findAmsAttributeClass(String src,AS3Parser context) {
        JSONArray jsonArray = new JSONArray();
        String class_name = RegexHelper.match(src, "public var .*?\\:Vector.*?(class_.*?)>;")[1];
        String source_code = context.findFileByString("class " + class_name + " ")[0];
        int _packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(source_code,"method_16()","}"),"return (.*?);")[1]);
        String writeMethodSrc = RegexHelper.getStringBetween(source_code, "IDataOutput", "}\n" +
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
                obj.put("value", _packetId);
                jsonArray.add(obj);
            } else if (lineIndex == 1) {
                //version
                JSONObject obj = new JSONObject();
                obj.put("name", "version");
                obj.put("type", "short");
                obj.put("value", 0);
                jsonArray.add(obj);
            } else if (line.contains("writeDouble")) {
                JSONObject obj = new JSONObject();
                obj.put("name", "attribute_value");
                obj.put("type", "double");
                jsonArray.add(obj);
            } else if (line.contains("writeShort")) {
                JSONObject obj = new JSONObject();
                obj.put("name", "attribute_id");
                obj.put("type", "short");
                if(line.indexOf("65535") != -1) {
                    String shiftDir = "";
                    if (line.indexOf(">>>") < line.indexOf("<<"))
                        shiftDir = "right";
                    else
                        shiftDir = "left";
                    int shift_value = Integer.parseInt(RegexHelper.match(line, (shiftDir == "left" ? "<< " : ">>> ") + "(.*?) % 16")[1]);
                    obj.put("shift_type", shiftDir);
                    obj.put("shift_value", shift_value);
                }
                jsonArray.add(obj);
            }
            lineIndex++;
        }
        _jsonString = jsonArray.toJSONString();
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
            if (lineIndex == 1) {
                //packetId
                JSONObject obj = new JSONObject();
                obj.put("name", "packet_id");
                obj.put("type", "short");
                obj.put("value", packetId);
                jsonArray.add(obj);
            } else if (lineIndex == 2) {
                //version
                JSONObject obj = new JSONObject();
                obj.put("name", "version");
                obj.put("type", "short");
                obj.put("value", 0);
                jsonArray.add(obj);
            }else if(line.contains("writeByte")){
                //AmsAttribute len
                JSONObject obj = new JSONObject();
                obj.put("name", "attribute_count");
                obj.put("type", "byte");
                jsonArray.add(obj);
            }else if(line.contains("for")){
                JSONObject obj = new JSONObject();
                obj.put("name", "ams_attribute");
                obj.put("type", "object[]");
                jsonArray.add(obj);
            }else if(line.contains("writeDouble")){
                JSONObject obj = new JSONObject();
                obj.put("name", "target_id");
                obj.put("type", "double");
                jsonArray.add(obj);
            }else if(line.contains("writeShort") && line.contains("65535")){
                JSONObject obj = new JSONObject();
                obj.put("name", "megaserver_id");
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
            }else if(line.contains("writeShort")){
                JSONObject obj = new JSONObject();
                obj.put("name", "unknown_short");
                obj.put("type", "short");
                jsonArray.add(obj);
            }
            lineIndex++;
        }
        jsonString = jsonArray.toJSONString();
    }

}
