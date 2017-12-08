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
public class ActionItemStubRule extends Rule {

    private int packetId;
    private String jsonString;

    public int getPacketId(){
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        /*get player manager*/
        String[] result = context.findFileByString("TargetManager");
        String searchSrc = result[0].substring(result[0].indexOf("maat_noaction") + 14, result[0].length());
        String methodSrc = context.findFunctionByString(searchSrc,"maat_noaction");
        String class_name = RegexHelper.match(methodSrc,"var .*?:(class_.*?) = class_.*?\\.name_.*?[.*?] as class_.*?;")[1];
        String var_name  =RegexHelper.match(methodSrc,"this\\.(var_.*?) = class_.*?.name_.*?\\.method_.*?;")[1];
        //String class_name = RegexHelper.match(searchSrc,"private var " + var_name + "\\:(class_.*?);")[1];

        String subClassSrc = context.findFileByString("class " + class_name + " ")[0];
        String subclass_name = RegexHelper.match(subClassSrc, "(class_.*?)\\.name_.*?\\.method_.*?\\(.*?\\,.*?\\);")[1];
        String abortsub_name = RegexHelper.match(subClassSrc,subclass_name + "\\..*?\\.(.*?)\\(\\);")[1];

        String subSrc = context.findFileByString("class " + subclass_name + " ")[0]; //multiply class names
        String abortsub_src = context.findFunctionByString(subSrc,abortsub_name+"()");

        String abortclass_name = RegexHelper.match(abortsub_src,".*?\\..*?\\((class_.*?)\\..*?\\);")[1];

        String classSrc = context.findFileByString("class " + abortclass_name + " ")[0];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(classSrc,"method_16()","}"),"return (.*?);")[1]);
        findWrite(classSrc);

        System.out.println(classSrc);
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
            }
            lineIndex++;
        }
        jsonString = jsonArray.toJSONString();
    }



    @Override
    public void export() {
        try{
            Files.write(Paths.get("cannon_abort_attack_message.json"),jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
