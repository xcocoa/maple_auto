package mobi.oneway.export.d;

import mobi.oneway.export.d.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<Data> implements f.b {
    public abstract void a(int i, String str);

    public abstract void a(Data data);

    @Override // mobi.oneway.export.d.f.b
    public void a(Throwable th, b bVar) {
        a(-1, "请求失败，请稍后再试");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // mobi.oneway.export.d.f.b
    public void a(b bVar) {
        try {
            JSONObject jSONObjectE = bVar.e();
            int iOptInt = jSONObjectE.optInt("code", -1);
            String strOptString = jSONObjectE.optString("message", "请求失败");
            Object obj = jSONObjectE.get("data");
            if (iOptInt == 0) {
                a(obj);
            } else {
                a(iOptInt, strOptString);
            }
        } catch (Throwable unused) {
            a(-1, "请求失败，请稍后再试");
        }
    }
}
