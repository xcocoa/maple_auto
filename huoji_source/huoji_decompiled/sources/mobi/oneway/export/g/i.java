package mobi.oneway.export.g;

import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    public static final String a = "POST";
    public static final String b = "GET";
    public static final String c = "HEAD";
    public static final String d = "Content-Type";
    public static final String e = "application/json";
    public static final long f = 15000;
    private String g;
    private String h;
    private long i;

    public i a(long j) {
        this.i = j;
        return this;
    }

    public i a(String str) {
        this.g = str;
        return this;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        b("GET");
        try {
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public i b(String str) {
        this.h = str;
        return this;
    }
}
