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
public class StandardRepairMessageRule extends Rule {

    private int packetId;
    private String jsonString;

    public int getPacketId() {
        return packetId;
    }

    @Override
    public void process(AS3Parser context) {
        /*get player manager*/
        String[] result = context.findFileByString("function onStandardRepairsClick");
        String searchSrc = result[0];

        String methodSrc = context.findFunctionByString(searchSrc, "function onStandardRepairsClick");

        String class_name = RegexHelper.match(methodSrc, "(class_.*?)\\..*?\\..*?\\(\\);")[1];
        String method_name = RegexHelper.match(methodSrc, class_name + "\\..*?\\.(.*?)\\(\\);")[1];

        String subclass_src = context.findFileByString("class " + class_name)[0]; //classes
        String methodcallSrc = context.findFunctionByString(subclass_src, "function " + method_name + "()");

        String rep_class_name = RegexHelper.match(methodcallSrc, "new (class_.*?)\\(\\)")[1];

        String classSrc = context.findFileByString("class " + rep_class_name)[0];
        packetId = Integer.parseInt(RegexHelper.match(RegexHelper.getStringBetween(classSrc, "method_16()", "}"), "return (.*?);")[1]);
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
            }
            lineIndex++;
        }
        jsonString = jsonArray.toJSONString();
    }


    @Override
    public void export() {
        try {
            Files.write(Paths.get("standard_repair_message.json"), jsonString.getBytes("UTF8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
