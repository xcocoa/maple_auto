package z2;

import android.content.Context;
import android.text.TextUtils;
import com.cyjh.http.bean.request.ChannelRequestInfo;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class tc extends hc {
    private static final String OooO0Oo = "tc";
    private long OooO0O0;
    private fd OooO0OO;

    public tc(fd fdVar) {
        this.OooO0OO = fdVar;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        JSONArray jSONArray;
        if (obj != null) {
            String str = (String) obj;
            if (!TextUtils.isEmpty(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
                    int i = jSONObject.getInt("Code");
                    String string = jSONObject.getString(g6.OooO0Oo);
                    if (i != 200) {
                        this.OooO0OO.onError(string);
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    if (jSONObject2.has("ChannelList") && (jSONArray = jSONObject2.getJSONArray("ChannelList")) != null && jSONArray.length() > 0) {
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            arrayList.add((String) jSONArray.get(i2));
                        }
                    }
                    this.OooO0OO.OooOO0O(arrayList);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    this.OooO0OO.onError("解析数据异常！");
                    return;
                }
            }
        }
        this.OooO0OO.onError("返回数据为空！");
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        this.OooO0OO.onError(str);
    }

    public void OooO0OO(Context context, String str, String str2) {
        try {
            ChannelRequestInfo channelRequestInfo = new ChannelRequestInfo(gc.OooO0OO().OooO00o(context));
            channelRequestInfo.PackageName = str;
            channelRequestInfo.Version = str2;
            this.OooO0O0 = gc.OooO0o;
            String string = j3.OooO0oo(k3.OooOOO, "List").build().toString();
            this.OooO00o.OooOO0(context, getClass().getCanonicalName(), string, gc.OooO0OO().OooO(string, channelRequestInfo));
        } catch (Exception unused) {
        }
    }

    public void OooO0o() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }
}
