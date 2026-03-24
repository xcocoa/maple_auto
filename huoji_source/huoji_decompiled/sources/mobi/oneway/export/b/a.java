package mobi.oneway.export.b;

import android.text.TextUtils;
import com.anythink.expressad.d.a.b;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import mobi.oneway.export.g.m;
import mobi.oneway.export.g.r;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static a i;
    private final String a = "sp_ad_c_info";
    private final String b = "ld";
    private final String c = "rc";
    private final String d = b.bH;
    private final String e = "msc";
    private final String f = "mrc";
    private boolean g;
    private long h;

    /* JADX INFO: renamed from: mobi.oneway.export.b.a$a, reason: collision with other inner class name */
    public enum EnumC0243a {
        TYPE_REQUEST,
        TYPE_SHOW
    }

    private a() {
    }

    public static a a() {
        if (i == null) {
            i = new a();
        }
        return i;
    }

    private void a(JSONObject jSONObject) {
        r.a().a("sp_ad_c_info", jSONObject.toString());
    }

    private void a(JSONObject jSONObject, String str) {
        try {
            m.a((Object) "resume ad control count");
            jSONObject.put("ld", str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                Object obj = jSONObject.get(itKeys.next());
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject2 = (JSONObject) obj;
                    jSONObject2.put("rc", 0);
                    jSONObject2.put(b.bH, 0);
                }
            }
            a(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private String b(String str, String str2) {
        if (TextUtils.isEmpty(str2) || str.equals(str2)) {
            return str;
        }
        return str + "-" + str2;
    }

    private JSONObject d() {
        String str = (String) r.a().b("sp_ad_c_info", "");
        return TextUtils.isEmpty(str) ? new JSONObject() : new JSONObject(str);
    }

    private String e() {
        return new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
    }

    public void a(long j) {
        this.h = j;
    }

    public void a(String str, String str2, int i2, int i3) {
        JSONObject jSONObject;
        String strB = b(str, str2);
        try {
            JSONObject jSONObjectD = d();
            if (jSONObjectD.has(strB)) {
                jSONObject = jSONObjectD.getJSONObject(strB);
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObjectD.put(strB, jSONObject2);
                jSONObject = jSONObject2;
            }
            jSONObject.put("mrc", i2);
            jSONObject.put("msc", i3);
            a(jSONObjectD);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(EnumC0243a enumC0243a, String str, String str2) {
        JSONObject jSONObject;
        try {
            String strB = b(str, str2);
            JSONObject jSONObjectD = d();
            if (jSONObjectD.has(strB)) {
                jSONObject = jSONObjectD.getJSONObject(strB);
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObjectD.put(strB, jSONObject2);
                jSONObject = jSONObject2;
            }
            if (enumC0243a == EnumC0243a.TYPE_REQUEST) {
                jSONObject.put("rc", jSONObject.optInt("rc") + 1);
            }
            if (enumC0243a == EnumC0243a.TYPE_SHOW) {
                jSONObject.put(b.bH, jSONObject.optInt(b.bH) + 1);
            }
            a(jSONObjectD);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void a(boolean z) {
        this.g = z;
    }

    public boolean a(String str, String str2) {
        JSONObject jSONObjectD;
        String strE = e();
        String strB = b(str, str2);
        try {
            jSONObjectD = d();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (!strE.equals(jSONObjectD.optString("ld"))) {
            a(jSONObjectD, strE);
            return false;
        }
        if (jSONObjectD.has(strB)) {
            JSONObject jSONObject = jSONObjectD.getJSONObject(strB);
            int iOptInt = jSONObject.optInt("rc");
            int iOptInt2 = jSONObject.optInt(b.bH);
            int iOptInt3 = jSONObject.optInt("mrc");
            int iOptInt4 = jSONObject.optInt("msc");
            m.a((Object) String.format("adtype=%s,maxRequest=%d,curRequest=%d;maxShow=%d,curShow=%d", strB, Integer.valueOf(iOptInt3), Integer.valueOf(iOptInt), Integer.valueOf(iOptInt4), Integer.valueOf(iOptInt2)));
            return (iOptInt3 != 0 && iOptInt >= iOptInt3) || (iOptInt4 != 0 && iOptInt2 >= iOptInt4);
        }
        return false;
    }

    public boolean b() {
        return this.g;
    }

    public long c() {
        return this.h;
    }
}
