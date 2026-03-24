package com.octopus.ad.utils.b;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.octopus.ad.internal.utilities.DeviceInfo;
import com.octopus.ad.internal.utilities.SPUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Runnable {
    private final Context a;

    public b(Context context) {
        this.a = context;
    }

    private void b() {
        try {
            String strA = a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strA);
            SPUtils.put(this.a, "duration", Long.valueOf(jSONObject.optLong("duration")));
            SPUtils.put(this.a, "version", jSONObject.optString("version"));
            JSONArray jSONArray = new JSONArray(jSONObject.optString("data"));
            ArrayList arrayList = new ArrayList();
            if (jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String strOptString = jSONObject2.optString("sid");
                    if (l.c(this.a, jSONObject2.optString("pkg"))) {
                        arrayList.add(strOptString);
                    }
                }
            }
            if (arrayList.size() > 0) {
                String strReplace = arrayList.toString().replace("[", "").replace("]", "");
                SPUtils.put(this.a, "codeList", strReplace);
                DeviceInfo.getInstance().appList = strReplace;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String a() {
        String str = (String) SPUtils.get(this.a, "responseBody", "zyeyJkdXJhdGlvbiI6ODY0MDAsImRhdGEiOlt7InBrZyI6ImNvbS5iYWlkdS5zZWFyY2hib3giLCJzaWQiOiIzIn0seyJwa2ciOiJjb20uY3ViaWMuYXV0b2hvbWUiLCJzaWQiOiIyIn0seyJwa2ciOiJjb20uamluZ2RvbmcuYXBwLm1hbGwiLCJzaWQiOiIxIn0seyJwa2ciOiJjb20udGFvYmFvLnRhb2JhbyIsInNpZCI6IjQifSx7InBrZyI6ImNvbS5hdXRvbmF2aS5taW5pbWFwIiwic2lkIjoiNSJ9LHsicGtnIjoiY29tLmFsaWJhYmEuYW5kcm9pZC5yaW1ldCIsInNpZCI6IjYifSx7InBrZyI6ImNvbS5VQ01vYmlsZSIsInNpZCI6IjcifSx7InBrZyI6ImNvbS5lZy5hbmRyb2lkLkFsaXBheUdwaG9uZSIsInNpZCI6IjgifSx7InBrZyI6ImNvbS5zYW5rdWFpLm1laXR1YW4iLCJzaWQiOiI5In0seyJwa2ciOiJjb20uc2luYS53ZWlibyIsInNpZCI6IjEwIn0seyJwa2ciOiJjb20udGFvYmFvLmxpdGV0YW8iLCJzaWQiOiIxMSJ9LHsicGtnIjoiY29tLnRtYWxsLndpcmVsZXNzIiwic2lkIjoiMTIifSx7InBrZyI6ImNvbS50YW9iYW8ubGl2ZSIsInNpZCI6IjEzIn0seyJwa2ciOiJjb20uemhpaHUuYW5kcm9pZCIsInNpZCI6IjE0In0seyJwa2ciOiJjb20udGVuY2VudC5rYXJhb2tlIiwic2lkIjoiMTUifSx7InBrZyI6ImNvbS5xdWFyay5icm93c2VyIiwic2lkIjoiMTYifSx7InBrZyI6ImNvbS5zcy5hbmRyb2lkLnVnYy5hd2VtZSIsInNpZCI6IjE3In0seyJwa2ciOiJtZS5lbGUiLCJzaWQiOiIxOCJ9LHsicGtnIjoiY29tLlF1bmFyIiwic2lkIjoiMTkifSx7InBrZyI6ImNvbS54dW5tZW5nLnBpbmR1b2R1byIsInNpZCI6IjIwIn0seyJwa2ciOiJjb20uc21pbGUuZ2lmbWFrZXIiLCJzaWQiOiIyMSJ9LHsicGtnIjoiY29tLmt1YWlzaG91Lm5lYnVsYSIsInNpZCI6IjIyIn0seyJwa2ciOiJjb20uc2R1LmRpZGkucHNuZ2VyIiwic2lkIjoiMjMifSx7InBrZyI6ImNvbS5kaWRhcGluY2hlLmJvb2tpbmciLCJzaWQiOiIyNCJ9LHsicGtnIjoiYWlyLnR2LmRvdXl1LmFuZHJvaWQiLCJzaWQiOiIyNSJ9XSwidmVyc2lvbiI6IjE2ODYwNDE3MDMyMTIifQ==");
        return str != null ? new String(Base64.decode(str.substring(2), 0)) : "";
    }

    @Override // java.lang.Runnable
    public void run() {
        b();
    }
}
