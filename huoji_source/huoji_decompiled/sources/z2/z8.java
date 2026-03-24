package z2;

import android.content.Context;
import android.util.JsonReader;
import com.cyjh.elfin.entity.BestResolution;
import com.cyjh.elfin.entity.FileVersion;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.entity.ScriptInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class z8 {
    private static final String OooO = "ScriptVersion";
    private static final String OooO00o = "BestResolution";
    private static final String OooO0O0 = "X";
    private static final String OooO0OO = "Y";
    private static final String OooO0Oo = "ChangeFileList";
    private static final String OooO0o = "FileVersion";
    private static final String OooO0o0 = "Description";
    private static final String OooO0oO = "Name";
    private static final String OooO0oo = "id";
    private static final String OooOO0 = "AppID";
    private static final String OooOO0O = "Version";
    private static final String OooOO0o = "SelID";
    private static final String OooOOO = ".atc";
    private static final String OooOOO0 = ".mq";
    private static final String OooOOOO = ".prop";
    private static final String OooOOOo = ".rtd";
    private static final String OooOOo0 = ".ui";

    private static BestResolution OooO00o(JsonReader jsonReader) throws IOException {
        BestResolution bestResolution = new BestResolution();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals(OooO0O0)) {
                bestResolution.setX(jsonReader.nextInt());
            } else if (strNextName.equals(OooO0OO)) {
                bestResolution.setY(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return bestResolution;
    }

    private static FileVersion OooO0O0(JsonReader jsonReader) throws IOException {
        FileVersion fileVersion = new FileVersion();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals(".atc")) {
                fileVersion.setAtc(jsonReader.nextInt());
            } else if (strNextName.equals(".mq")) {
                fileVersion.setMq(jsonReader.nextInt());
            } else if (strNextName.equals(".prop")) {
                fileVersion.setProp(jsonReader.nextInt());
            } else if (strNextName.equals(".ui")) {
                fileVersion.setUI(jsonReader.nextInt());
            } else if (strNextName.equals(".rtd")) {
                fileVersion.setRtd(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return fileVersion;
    }

    public static Script OooO0OO(InputStream inputStream) throws IOException {
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, "GBK"));
        jsonReader.beginObject();
        Script script = new Script();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals(OooOO0)) {
                script.setAppId(jsonReader.nextString());
            } else if (strNextName.equals(OooO00o)) {
                script.setBestResolution(OooO00o(jsonReader));
            } else if (strNextName.equals(OooO0Oo)) {
                script.setChangeFileList(jsonReader.nextInt());
            } else if (strNextName.equals(OooO0o0)) {
                script.setDescription(jsonReader.nextString());
            } else if (strNextName.equals(OooO0o)) {
                script.setFileVersion(OooO0O0(jsonReader));
            } else if (strNextName.equals(OooO0oO)) {
                script.setName(jsonReader.nextString());
            } else if (strNextName.equals("id")) {
                script.setId(jsonReader.nextString());
            } else if (strNextName.equals(OooOO0o)) {
                script.setSelId(jsonReader.nextString());
            } else if (strNextName.equals(OooOO0O)) {
                script.setVersion(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return script;
    }

    public static String OooO0Oo(Context context, String str) {
        ScriptInfo scriptInfo = new ScriptInfo();
        try {
            JsonReader jsonReader = new JsonReader(new InputStreamReader(context.getAssets().open(str), "GBK"));
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (OooO.equals(jsonReader.nextName())) {
                    scriptInfo.setScriptVersion(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return scriptInfo.getScriptVersion();
    }

    public static String OooO0o0(File file) {
        ScriptInfo scriptInfo = new ScriptInfo();
        try {
            JsonReader jsonReader = new JsonReader(new InputStreamReader(new FileInputStream(file), "GBK"));
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (OooO.equals(jsonReader.nextName())) {
                    scriptInfo.setScriptVersion(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return scriptInfo.getScriptVersion();
    }
}
