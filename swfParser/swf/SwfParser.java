package swfParser.swf;

import com.jpexs.decompiler.flash.AbortRetryIgnoreHandler;
import com.jpexs.decompiler.flash.EventListener;
import com.jpexs.decompiler.flash.SWF;
import com.jpexs.decompiler.flash.SWFSourceInfo;
import com.jpexs.decompiler.flash.abc.ScriptPack;
import com.jpexs.decompiler.flash.abc.avm2.deobfuscation.DeobfuscationLevel;
import com.jpexs.decompiler.flash.configuration.Configuration;
import com.jpexs.decompiler.flash.exporters.modes.ScriptExportMode;
import com.jpexs.decompiler.flash.exporters.settings.ScriptExportSettings;
import com.jpexs.decompiler.flash.tags.base.ASMSource;

import java.io.*;
import java.util.List;
import java.util.Map;

/**
 * Created by Uther on 04.09.2016.
 */
public class SwfParser {
    private SWF mSWF;
    private SWFSourceInfo mSourceInfo;

    public void readSwf(String filepath){
        try {
            File file = new File(filepath);
            mSourceInfo = new SWFSourceInfo(null, file.getAbsolutePath(), file.getName());
            FileInputStream inputStream = new FileInputStream(file);
            mSWF = new SWF(inputStream,mSourceInfo.getFile(),mSourceInfo.getFileTitle(), false);
        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + e.getMessage());
            System.exit(1);
        } catch (IOException e) {
            System.out.println("Cant parse File: " + e.getMessage());
            System.exit(1);
        } catch (InterruptedException e) {
            System.out.println("Cant parse File: " + e.getMessage());
        }
    }

    public void deobfuscate() {
         /*deobfuscating*/
        mSWF.addEventListener(new EventListener() {
            @Override
            public void handleExportingEvent(String s, int i, int i1, Object o) {
                System.out.println(s);
            }

            @Override
            public void handleExportedEvent(String s, int i, int i1, Object o) {
                System.out.println(s);
            }

            @Override
            public void handleEvent(String s, Object o) {
                System.out.println("handling " + s);
            }
        });
        System.out.println("Restoring control flow...");
        try {
            mSWF.deobfuscate(DeobfuscationLevel.LEVEL_RESTORE_CONTROL_FLOW);
        } catch (InterruptedException e) {}

        ScriptExportSettings settings = new ScriptExportSettings(ScriptExportMode.AS, false);
        try{
            System.out.println("Single Mode.");
            mSWF.exportActionScript(null,"as3",settings,false,null);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
