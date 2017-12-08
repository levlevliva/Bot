package swfParser.as3.rules;

import jdk.nashorn.internal.ir.debug.JSONWriter;
import jdk.nashorn.internal.runtime.regexp.joni.Regex;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import sun.java2d.opengl.WGLSurfaceData;
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
public class CannonAttackMessageRule extends Rule {

    private int packetId;
    private String jsonString;

    public int getPacketId(){
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        /*get player manager*/
        String[] result = context.findFileByString("init player manager");
        String searchSrc = result[0];
        String methodSrc = context.findFunctionByString(searchSrc,"init player manager");
        String var_name  =RegexHelper.match(methodSrc,"this\\.(var_.*?) = class_.*?.name_.*?\\.method_.*?;")[1];
        String class_name = RegexHelper.match(searchSrc,"private var " + var_name + "\\:(class_.*?);")[1];

        String subClassSrc = context.findFileByString("class " + class_name)[0];
        String subclass_name = RegexHelper.match(subClassSrc, "(class_.*?)\\.name_.*?\\.method_.*?\\(.*?\\,.*?\\);")[1];
        /******************/

        String attacksub_name = RegexHelper.match(subClassSrc, subclass_name +"\\.name_.*?\\.(method_.*?)\\(.*?\\,.*?\\);")[1];

        String commandClassSrc = context.findFileByString("class " + subclass_name)[0]; //classes
        String attackCommandSrc = context.findFunctionByString(commandClassSrc,attacksub_name + "(");

        String cannon_attack_class_name = RegexHelper.match(attackCommandSrc,"var .*?\\:(class_.*?) = new class_.*?\\(.*?\\,.*?\\);")[1];

        String classSrc = context.findFileByString("class " + cannon_attack_class_name)[0];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(classSrc,"method_16()","}"),"return (.*?);")[1]);
        findWrite(classSrc);
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
            } else {
                if (line.contains("writeShort") && line.contains("name")) {
                    //megaserver_id
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
                }else if(line.contains("writeShort") && !line.contains("name")){
                    //cannonball_id
                    JSONObject obj = new JSONObject();
                    obj.put("name","cannonball_id");
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
                    //target_id
                    JSONObject obj = new JSONObject();
                    obj.put("name","target_id");
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
        try{
            Files.write(Paths.get("cannon_attack_message.json"),jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
