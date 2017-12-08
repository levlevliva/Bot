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
public class MoveMessageRule extends Rule {

    private int packetId;
    private String jsonString;


    //changables
    private String const_x = "var_8";
    private String const_y = "var_9";

    public int getPacketId(){
        return packetId;
    }

    private String mShipManagerSrc;

    @Override
    public void process(AS3Parser context) {
        /*find the ship manager class*/

        String[] result = context.findFileByString("init ship manager");
        if(result.length == 0)
            System.out.println("FIX ME: cant find ship manager.");
        else if(result.length > 1)
            System.out.println("FIX ME: multiply results for: ship manager.");
        else{
            mShipManagerSrc = result[0];
            int moveFuncIndex = mShipManagerSrc.indexOf("_.x");
            if(moveFuncIndex != -1){
                //System.out.println("Found player move command.");
                String xLine = context.findLineByString(mShipManagerSrc,"_.x")[0];
                String yLine = context.findLineByString(mShipManagerSrc,"_.y")[0];

                String var_x = RegexHelper.match(xLine,"var (.*?):")[1];
                String var_y = RegexHelper.match(yLine,"var (.*?):")[1];

                String moveSubSrc = context.findLineByString(mShipManagerSrc,"(" + var_x + "," + var_y + ");")[1];
                String moveMessageClass = RegexHelper.match(moveSubSrc,".(.*?)\\.")[1];
                moveMessageClass = moveMessageClass.trim();

                String proxyClassSrc = context.findFileByString("class " + moveMessageClass + " ")[0];
                String moveMessageClass2 = RegexHelper.match(proxyClassSrc,"var_.*?\\.method_.*?\\((class_.*?)\\..*?\\);")[1];
                String moveMessageSrc = context.findFileByString("class " + moveMessageClass2 + " ")[0];


                //getting infos
                packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(moveMessageSrc,"method_16()","}"),"return (.*?);")[1]);
                findWrite(moveMessageSrc);
            }else{
                System.out.println("FIX ME: cant find player move command.");
            }
        }



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
                if(line.contains("writeShort") && line.contains(const_x)){
                    //x
                    JSONObject obj = new JSONObject();
                    obj.put("name","x");
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
                }else if(line.contains("writeShort") && line.contains(const_y)){
                    //y
                    JSONObject obj = new JSONObject();
                    obj.put("name","y");
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
                }
            }
            lineIndex++;
        }
        jsonString = jsonArray.toJSONString();
    }



    @Override
    public void export() {
        try {
            Files.write(Paths.get("move_message.json"),jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
