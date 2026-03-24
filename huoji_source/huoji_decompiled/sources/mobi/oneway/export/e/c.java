package mobi.oneway.export.e;

import java.io.IOException;
import mobi.oneway.export.d.f;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.g.o;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c extends Thread {
    private JSONObject a;

    public c(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public static void a(PluginErrorType pluginErrorType, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", pluginErrorType);
            jSONObject.put("name", "Error");
            jSONObject.put("stack", str);
            jSONObject.put("zc", o.a());
            jSONObject.put("zm", o.b());
            new c(jSONObject).start();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        super.run();
        try {
            new f(mobi.oneway.export.a.a.f, mobi.oneway.export.a.a.b).a(this.a).c("POST").n();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
