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

/**
 * Created by Uther on 01.10.2016.
 */
public class ShipInitMessageRule extends Rule {

    private int packetId;


    //var names
    private String designIdVarName = "name_14";
    private String usernameVarName = "name_13";
    private String guildNameVarName = "var_87";

    private String posYVarName = "name_6.var_8";
    private String posXVarName = "name_6.var_7";

    private String unknownByte1Name = "var_30";
    private String unknownByte2Name = "var_53";
    private String unknownByte3Name = "var_25";

    private String shipInfoCountVarName = "var_166";

    private String userIdVarName = "name_4.name_4";
    private String megaserverIdVarName = "name_4.var_6";

    private String guildIdVarName = "name_18";
    private String routesVarName = "var_148";

        private String jsonString = "";

        @Override
        public void process(AS3Parser context) {
            String lootCommandFile = context.findFileByString("Invalid tower design-id")[0];
            String varfunc = RegexHelper.match(lootCommandFile, "_loc3_\\.var_(.*?) = null;")[1];
            String func = context.findFunctionByString(lootCommandFile, "_loc3_.var_" + varfunc + " = null;");
            String class_name = RegexHelper.match(func, "var _loc2_:(.*?) = param1 as .*?;")[1];
            String src = context.findFileByString("class " + class_name + " ")[0];
            packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(src, "method_16()", "}"), "return (.*?);")[1]);
            findWrite(src, context);
        }


    private void findWrite(String src, AS3Parser parser) {
        JSONArray jsonArray = new JSONArray();

        String writeMethodSrc = RegexHelper.getStringBetween(src, "IDataOutput", "}\n" +
                "   }");
        writeMethodSrc = writeMethodSrc.substring(writeMethodSrc.indexOf("{") + 1).trim();
        String[] body = writeMethodSrc.split("\n");

        int uknown = 0;
        int lineIndex = 0;
        for (String line : body) {
            line = line.trim();
            if (lineIndex == 2) {
                //packetId
                JSONObject obj = new JSONObject();
                obj.put("name", "packet_id");
                obj.put("type", "short");
                obj.put("value", packetId);
                jsonArray.add(obj);
            }else if(lineIndex == 3) {
                //version
                JSONObject obj = new JSONObject();
                obj.put("name", "version");
                obj.put("type", "short");
                obj.put("value", 0);
                jsonArray.add(obj);
            }else if(line.contains("writeByte")){
                JSONObject obj = new JSONObject();
                obj.put("name", "unknown_byte_" + uknown);
                obj.put("type", "byte");
                jsonArray.add(obj);
                uknown++;
            }else if(line.contains("writeUTF")){
                JSONObject obj = new JSONObject();
                obj.put("name", "unknown_string_" + uknown);
                obj.put("type", "string");
                jsonArray.add(obj);
                uknown++;
            }else if(line.contains("this") && line.contains("method_14")){
                    String class_name = RegexHelper.match(src, "param2:(.*?) = null,")[1];
                    String subclass_src = parser.findFileByString("class " + class_name + " ")[0];
                    String writeMethodSubSrc = RegexHelper.getStringBetween(subclass_src, "IDataOutput", "}\n" +
                            "   }");
                    writeMethodSubSrc = writeMethodSubSrc.substring(writeMethodSubSrc.indexOf("{") + 1).trim();
                    String[] sub_body = writeMethodSubSrc.split("\n");
                    for(String _line : sub_body){
                        if(_line.contains("writeShort")){
                            JSONObject obj = new JSONObject();
                            obj.put("name", "unknown_short_" + uknown);
                            obj.put("type", "short");
                            jsonArray.add(obj);
                            uknown++;
                        }else if(_line.contains("writeDouble")){
                            JSONObject obj = new JSONObject();
                            obj.put("name", "unknown_double_" + uknown);
                            obj.put("type", "double");
                            jsonArray.add(obj);
                            uknown++;
                    }
                }
            }else if(line.contains("writeDouble") && line.contains(userIdVarName)){
                JSONObject obj = new JSONObject();
                obj.put("name", "user_id");
                obj.put("type", "double");
                jsonArray.add(obj);
            }else if(line.contains("writeShort") && line.contains(megaserverIdVarName)){
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
                obj.put("name", "unknown_short_" + uknown);
                obj.put("type", "short");
                jsonArray.add(obj);
                uknown++;
            }
            lineIndex++;
        }
        jsonString = jsonArray.toJSONString();
    }

    @Override
    public void export() {
        try {
            Files.write(Paths.get("ship_init_message.json"), jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
