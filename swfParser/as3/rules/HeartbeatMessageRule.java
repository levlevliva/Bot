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
public class HeartbeatMessageRule extends Rule {

    private int packetId;
    private String jsonString;

    public int getPacketId(){
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        String[] result = context.findFileByString("(\"reconnect\")");
        String searchSrc = "";

        //finding right source
        for(String res : result)
            if(!res.contains("INVALID USER ID !"))
                searchSrc = res;

        if(searchSrc != ""){
            String subclassName = RegexHelper.match(searchSrc,"private var var_.*?\\:(class_(.*?));")[1];
            String subClassSrc = context.findFileByString("class " + subclassName + " ")[0];
            String className = RegexHelper.match(subClassSrc,"var_.*?\\.method_.*?\\((class_.*?)\\..*?\\);")[1];
            String classSrc = context.findFileByString("class " + className + " ")[0]; //FIX ME

            //getting infos
            packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(classSrc,"method_16()","}"),"return (.*?);")[1]);
            findWrite(classSrc);

        }else{
            System.out.println("FIX ME: cant find string class HeartbeatMessageRule.");
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
            } else {
                if (line.contains("writeShort")) {
                    //heartbeat_status
                    JSONObject obj = new JSONObject();
                    obj.put("name", "heartbeat_status");
                    obj.put("type", "short");
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
            Files.write(Paths.get("heartbeat_message.json"),jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
