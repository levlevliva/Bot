package swfParser.as3.rules;

import jdk.nashorn.internal.runtime.regexp.joni.Regex;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import swfParser.as3.AS3Parser;
import swfParser.as3.Rule;
import swfParser.text.RegexHelper;

/**
 * Created by Uther on 01.10.2016.
 */
public class UserInitMessageRule extends Rule {

    private int packetId;


    //var names
    private String designIdVarName;
    private String levelVarName;
    private String userIdVarName;
    private String posXVarName;
    private String posYVarName;
    private String megaserverIdVarName;

    @Override
    public void process(AS3Parser context) {
        String mainMenuControllerFile = context.findFileByString("class MainMenuController")[0];
        String class_name = RegexHelper.match(mainMenuControllerFile,"method_.*?\\((class_.*?)\\..*?,this\\.onUserInitMessage\\);")[1];
        String src = context.findFileByString("class " + class_name + " ")[0];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(src, "method_16()", "}"), "return (.*?);")[1]);
        resolveNames(context);
    }

    private void resolveNames(AS3Parser context){
            //find designId
            String shipPreviewSrc = context.findFileByString("class ShipPreview ")[0];
            String setShipDatafunc = context.findFunctionByString(shipPreviewSrc,"function setShipData");
            designIdVarName = RegexHelper.match(setShipDatafunc,"this\\.visible = .*?\\.(.*?) > 0;")[1];

            //find level
            String shipManagerSrc = context.findFileByString("init ship manager")[0];
            levelVarName = RegexHelper.match(shipManagerSrc, "Invalid level:.*?\\.(.*?)\\)")[1];

            //find userId
            String activeShipFunc = context.findFunctionByString(shipManagerSrc,"function createActiveShip");
            userIdVarName = RegexHelper.match(activeShipFunc, "\\|\\| .*?\\.(.*?) <= 0\\)")[1];

            //find position
            String initShipFunc = context.findFunctionByString(shipManagerSrc, "init ship\"");
            posXVarName = RegexHelper.match(initShipFunc, "new Point\\(.*?\\.(.*?),.*?\\);")[1];
            posYVarName = RegexHelper.match(initShipFunc, "new Point\\(.*?,.*?\\.(.*?)\\);")[1];

            posXVarName = RegexHelper.match(shipManagerSrc,posXVarName + " = .*?\\.(.*?);")[1];
            posYVarName = RegexHelper.match(shipManagerSrc,posYVarName + " = .*?\\.(.*?);")[1];

            //find megaserver id
            String chatSrc = context.findFileByString("Error loading global chat")[0];
            String connectToChatFunc = context.findFunctionByString(chatSrc,"Connecting chatserver: username:");
            megaserverIdVarName = RegexHelper.match(connectToChatFunc,"var .*?:String = .*?\\.(.*?) \\+ \"/\" \\+ .*?;")[1];
        }

    private void findWrite(String src) {
        JSONArray jsonArray = new JSONArray();

        String writeMethodSrc = RegexHelper.getStringBetween(src, "IDataOutput", "}\n" +
                "   }");
        writeMethodSrc = writeMethodSrc.substring(writeMethodSrc.indexOf("{") + 1).trim();
        String[] body = writeMethodSrc.split("\n");

        int unknownBoolCounter = 1;

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
            }else if(lineIndex == 1){
                //version
                JSONObject obj = new JSONObject();
                obj.put("name", "version");
                obj.put("type", "short");
                obj.put("value", 0);
                jsonArray.add(obj);
            }else if(line.contains("writeUTF") && line.contains("name")){
                //username
                JSONObject obj = new JSONObject();
                obj.put("name", "username");
                obj.put("type", "string");
                jsonArray.add(obj);
            }else if(line.contains("writeUTF") && !line.contains("name")){
                //guildTag
                JSONObject obj = new JSONObject();
                obj.put("name","guild_tag");
                obj.put("type","string");
                jsonArray.add(obj);
            }else if(line.contains("writeBoolean")){
                //unknown boolean
                JSONObject obj = new JSONObject();
                obj.put("name", "unknown_bool_" + unknownBoolCounter++);
                obj.put("type", "boolean");
                jsonArray.add(obj);
            }else if(line.contains("writeShort") && line.contains(designIdVarName)){
                //designId
                JSONObject obj = new JSONObject();
                obj.put("name", "design_id");
                obj.put("type", "short");
                String shiftDir = "";
                if(line.indexOf(">>>") < line.indexOf("<<"))
                    shiftDir = "right";
                else
                    shiftDir = "left";
                int shift_value = Integer.parseInt(RegexHelper.match(line,(shiftDir == "left" ? "<< " : ">>> ") + "(.*?) % 16")[1]);
                obj.put("shift_type",shiftDir);
                obj.put("shift_value",shift_value);
                jsonArray.add(obj);
            }else if(line.contains("writeByte") && line.contains(levelVarName)){
                //level
                JSONObject obj = new JSONObject();
                obj.put("name", "level");
                obj.put("type", "byte");
                String shiftDir = "";
                if(line.indexOf(">>>") < line.indexOf("<<"))
                    shiftDir = "right";
                else
                    shiftDir = "left";
                int shift_value = Integer.parseInt(RegexHelper.match(line,(shiftDir == "left" ? "<< " : ">>> ") + "(.*?) % 8")[1]);
                obj.put("shift_type",shiftDir);
                obj.put("shift_value",shift_value);
                jsonArray.add(obj);
            }
            lineIndex++;
        }

    }

    @Override
    public void export() {

    }
}
