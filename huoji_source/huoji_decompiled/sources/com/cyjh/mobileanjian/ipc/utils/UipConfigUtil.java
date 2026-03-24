package com.cyjh.mobileanjian.ipc.utils;

import android.text.TextUtils;
import android.util.JsonReader;
import com.cyjh.mqm.MiscUtilities;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class UipConfigUtil {
    private static String OooO00o(String str) {
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(str)) {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                jsonReader.beginObject();
                if (jsonReader.nextName().startsWith("界面")) {
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        jsonReader.nextName();
                        OooO0O0(jsonReader, jSONObject);
                    }
                    jsonReader.endObject();
                }
                jsonReader.endObject();
                jsonReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return jSONObject.toString();
    }

    private static void OooO0O0(JsonReader jsonReader, JSONObject jSONObject) {
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                if (strNextName.equals("水平布局")) {
                    OooO0O0(jsonReader, jSONObject);
                } else {
                    boolean zNextBoolean = false;
                    int iNextInt = 0;
                    String strNextString = null;
                    if (strNextName.equals("多选框")) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String strNextName2 = jsonReader.nextName();
                            if (strNextName2.equals("名称")) {
                                strNextString = jsonReader.nextString();
                            } else if (strNextName2.equals("选中")) {
                                zNextBoolean = jsonReader.nextBoolean();
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        if (strNextString != null) {
                            jSONObject.put(strNextString, zNextBoolean);
                        }
                    } else if (strNextName.equals("输入框")) {
                        jsonReader.beginObject();
                        String strNextString2 = null;
                        while (jsonReader.hasNext()) {
                            String strNextName3 = jsonReader.nextName();
                            if (strNextName3.equals("名称")) {
                                strNextString = jsonReader.nextString();
                            } else if (strNextName3.equals("初始文本")) {
                                strNextString2 = jsonReader.nextString();
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        if (strNextString != null) {
                            jSONObject.put(strNextString, strNextString2);
                        }
                    } else if (strNextName.equals("下拉框")) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String strNextName4 = jsonReader.nextName();
                            if (strNextName4.equals("名称")) {
                                strNextString = jsonReader.nextString();
                            } else if (strNextName4.equals("初始选项")) {
                                iNextInt = jsonReader.nextInt();
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        if (strNextString != null) {
                            jSONObject.put(strNextString, iNextInt);
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void saveToConfigFile(String str, File file) throws Throwable {
        try {
            org.apache.commons.io.FileUtils.writeStringToFile(file, OooO00o(new MiscUtilities().LoadUIFile(str, true)));
            file.setReadable(true, false);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
