package swfParser.as3.rules;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import sun.java2d.opengl.WGLSurfaceData;
import swfParser.as3.AS3Parser;
import swfParser.as3.Rule;
import swfParser.text.RegexHelper;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Created by Uther on 20.09.2016.
 */
public class RouteUpdateMessage extends Rule {

    private int packetId;
    private String jsonString;
    private String _jsonString;

    @Override
    public void process(AS3Parser context) {
        String subclass_src = context.findFileByString("admiral_spawned")[0];
        String varName = RegexHelper.match(subclass_src,"this\\.method_.*?\\((.*?)\\..*?,new class.*?\\(.*?\\)\\);")[1];
        String funcString = context.findFunctionByString(subclass_src,RegexHelper.match(subclass_src,"this\\.method_.*?\\((.*?)\\..*?,new class.*?\\(.*?\\)\\);")[0]);
        String class_name = RegexHelper.match(funcString,"var " + varName + "\\:(class_.*?) = .*? as .*?;")[1];
        String source_code = context.findFileByString("class " + class_name + " ")[0];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(source_code,"method_16()","}"),"return (.*?);")[1]);
        findWrite(source_code);
        findRouteStubClass(source_code,context);
    }

    private void findRouteStubClass(String source, AS3Parser context){
        String writeMethod = context.findFunctionByString(source, "IDataOutput)");
        String class_name = RegexHelper.match(writeMethod, "var .*?\\:(class_.*?) = null;")[1];
        String src = context.findFileByString("class " + class_name + " ")[0];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(src,"method_16()","}"),"return (.*?);")[1]);
        findWriteStub(src);
    }

    private void findWriteStub(String src){
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
                if (line.contains("writeShort") && line.contains("var_8")) {
                    //x
                    JSONObject obj = new JSONObject();
                    obj.put("name", "x");
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
                }else if(line.contains("writeShort") && line.contains("var_9")) {
                    //y
                    JSONObject obj = new JSONObject();
                    obj.put("name", "y");
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
            } else {
                if (line.contains("writeShort") && line.contains("length")) {
                    //route length
                    JSONObject obj = new JSONObject();
                    obj.put("name","route_count");
                    obj.put("type", "short");
                    jsonArray.add(obj);
                }else if(line.contains("writeShort") && !line.contains("length")){
                    //megaserver id
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
                    //target_id
                    JSONObject obj = new JSONObject();
                    obj.put("name","target_id");
                    obj.put("type", "double");
                    jsonArray.add(obj);
                }else if(line.contains(("for"))){
                    //route stub
                    JSONObject obj = new JSONObject();
                    obj.put("name","route_stub");
                    obj.put("type", "object[]");
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
            Files.write(Paths.get("route_stub_message.json"),_jsonString.getBytes("UTF8"));
            Files.write(Paths.get("route_update_message.json"),jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
