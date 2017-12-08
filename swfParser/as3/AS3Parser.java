package swfParser.as3;

import com.jpexs.helpers.Path;
import swfParser.text.RegexHelper;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by Uther on 04.09.2016.
 */
public class AS3Parser {
    /* important strings*/
    private String mMainSrc;

    private List<EventListener> eventListeners;
    private List<Rule> rules;

    private int count = 0;

    private FileUtil mFileUtil;

    public AS3Parser(){
        rules = new ArrayList<>();
        mFileUtil = new FileUtil();
        eventListeners = new ArrayList<>();
        mMainSrc = mFileUtil.readFile("src/scripts/com/bigpoint/seafight/Main.as");
    }

    public String getMainSource(){
        return mMainSrc;
    }

    public void process(){
        System.out.println("Processing Rules...");
        rules.forEach(
                rule -> {
                    System.out.println("processing -> " + rule.getClass().getSimpleName());
                    rule.process(this);
                    rule.export();
                }
        );
        System.out.println();
    }

    public void addEventListener(EventListener listener){
        this.eventListeners.add(listener);
    }

    public void addRule(Rule rule){
        this.rules.add(rule);
    }

    public String[] findFileByString(String pattern){
        ArrayList<String> srcList = new ArrayList<>();
        File dir = new File("src/scripts/");
        File[] files = getFiles(dir);
        for(File file : files){
            String src = readFile(file.getAbsolutePath());
            if(src.indexOf(pattern) >= 0)
                srcList.add(src);
        }
        return  srcList.toArray(new String[srcList.size()]);
    }


    public String[] findLineByString(String input,String pattern){
        String[] lines = input.split("\n");
        ArrayList<String> foundLines = new ArrayList<>();
        for(String line : lines)
            if(line.contains(pattern))
                foundLines.add(line);
        return foundLines.toArray(new String[foundLines.size()]);
    }

    public int findLineIndexByString(String input, String pattern){
        String[] lines = input.split("\n");
        int i = 0;
        for(String line : lines) {
            if (line.contains(pattern))
                return i;
            i++;
        }
        return -1;
    }

    public String findLineByIndex(String input, int index){
        String[] lines = input.split("\n");
        return lines[index];
    }

    public String findFunctionByString(String input, String pattern){
       int index = input.indexOf(pattern);
        if(index == -1)
            return "";
        String tmpSrc = input.substring(0,index + pattern.length());
        int functionIndex = tmpSrc.lastIndexOf("function");
        if(functionIndex != -1){
            tmpSrc = input.substring(functionIndex + "function".length(),input.length() -1);
            String[] lines = tmpSrc.split("\n");
            int brackets = 0;
            boolean start_bracket = false;
            String method_body = "";
            int lineIndex = 0;
            while(brackets > 0 || !start_bracket){
                String line = lines[lineIndex];
                if(line.contains("{")){
                    brackets++;
                    if(!start_bracket)
                        start_bracket = true;
                }else if(line.contains("}")) {
                    brackets--;
                }
                method_body += line + "\n";
                lineIndex++;
            }
            return method_body;
        }else{
            return "";
        }
    }

    private File[] getFiles(File dir){
        ArrayList<File> fileList = new ArrayList<>();
        File[] files = dir.listFiles();
        for(File file : files){
            if(file.isDirectory())
                Collections.addAll(fileList, getFiles(file));
            else
                fileList.add(file);
        }
        return fileList.toArray(new File[fileList.size()]);
    }

    public String readFile(String srcFile){
        return mFileUtil.readFile(srcFile);
    }

    /*FileUtil class*/
    class FileUtil {
        public String readFile(String srcFile) {
            try {
                String data = "";
                for (String line : Files.readAllLines(Paths.get(srcFile)))
                    data += line + "\n";
                return data;
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "";
        }
    }

}
