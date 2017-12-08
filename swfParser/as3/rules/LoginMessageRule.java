package swfParser.as3.rules;

import jdk.nashorn.internal.ir.debug.JSONWriter;
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
 * Created by Uther on 04.09.2016.
 */
public class LoginMessageRule extends Rule {

    private int packetId;
    private String jsonString;

    public int getPacketId(){
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        /*find the login class*/

        String src =  RegexHelper.getStringBetween(context.getMainSource(), "initLoginMessage() : void","initResourceManager");
//        String sessionStr = (char)RegexHelper.getStringBetween(src,"+",";").charAt(2)+"";
        String loginClassStr =  "class_" + RegexHelper.match(src,"class_(.*?)\\.")[1];
        String packages = RegexHelper.getStringBetween(context.getMainSource(),"import",loginClassStr+";");
        String filepath = "src/scripts/" + packages.replace(".","/").trim() + "/" + loginClassStr + ".as";
        String loginSrc = context.readFile(filepath);

        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(loginSrc,"method_16()","}"),"return (.*?);")[1]);
        findWrite(loginSrc);
    }

    private void findWrite(String src){
        JSONArray jsonArray = new JSONArray();

        String writeMethodSrc = RegexHelper.getStringBetween(src,"IDataOutput","}\n" +
                "   }");
        writeMethodSrc = writeMethodSrc.substring(writeMethodSrc.indexOf("{") +1).trim();
        String[] body = writeMethodSrc.split("\n");
        int lineIndex = 0;
        for(String line : body){
            line = line.trim();
            if(lineIndex == 0){
                //packetId
                JSONObject obj = new JSONObject();
                obj.put("name","packet_id");
                obj.put("type","short");
                obj.put("value",packetId);
                jsonArray.add(obj);
            }else if(lineIndex == 1){
                //version
                JSONObject obj = new JSONObject();
                obj.put("name","version");
                obj.put("type", "short");
                obj.put("value",0);
                jsonArray.add(obj);
            }else{
                if(line.contains("writeUTF")){
                    //sessionid
                    JSONObject obj = new JSONObject();
                    obj.put("name","session_id");
                    obj.put("type", "string");
                    jsonArray.add(obj);
                }else if(line.contains("writeShort")){
                    //megaserverid
                    JSONObject obj = new JSONObject();
                    obj.put("name","megaserver_id");
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
                }else if(line.contains("writeDouble")){
                    JSONObject obj = new JSONObject();
                    obj.put("name","user_id");
                    obj.put("type", "double");
                    jsonArray.add(obj);
                }
            }
            lineIndex++;
        }
        jsonString = jsonArray.toJSONString();
    }



    @Override
    public void export() {
        try {
            Files.write(Paths.get("login_message.json"),jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
