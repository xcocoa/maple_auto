package z2;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.http.R;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class nc extends hc {
    public static final String OooO = "nc";
    private Context OooO0O0;
    private ld OooO0OO;
    private long OooO0Oo;
    private String OooO0o;
    private boolean OooO0o0;
    private String OooO0oO;
    private UpdateRequestInfo OooO0oo;

    public nc(Context context, ld ldVar, boolean z) {
        this.OooO0o0 = false;
        this.OooO0O0 = context;
        this.OooO0OO = ldVar;
        this.OooO0o0 = z;
    }

    public nc(Context context, ld ldVar, boolean z, UpdateRequestInfo updateRequestInfo) {
        this.OooO0o0 = false;
        this.OooO0O0 = context;
        this.OooO0OO = ldVar;
        this.OooO0o0 = z;
        this.OooO0oo = updateRequestInfo;
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        ld ldVar;
        try {
            JSONObject jSONObject = new JSONObject((String) obj);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
            int i = jSONObject.getInt("Code");
            String string = jSONObject.getString(g6.OooO0Oo);
            if (i == 200) {
                VersionUpdateInfo versionUpdateInfo = (VersionUpdateInfo) n4.OooO0o0(jSONObject2.toString(), VersionUpdateInfo.class);
                if (versionUpdateInfo != null) {
                    this.OooO0OO.OooO0O0(versionUpdateInfo);
                    if (!TextUtils.isEmpty(versionUpdateInfo.StudioProjectKey)) {
                        this.OooO0OO.OooO00o(versionUpdateInfo);
                    }
                    if (this.OooO0Oo == versionUpdateInfo.ClientTimestamp) {
                        if (versionUpdateInfo.UpdateType != 0) {
                            this.OooO0OO.OooOO0(versionUpdateInfo);
                            return;
                        }
                        this.OooO0OO.OooOOO0();
                        if (this.OooO0o0) {
                            c5.OooO0O0(gc.OooO0OO().OooO0O0(), R.string.version_newest);
                            return;
                        }
                        return;
                    }
                    ldVar = this.OooO0OO;
                    string = gc.OooO0OO().OooO0O0().getResources().getString(R.string.json_parse_exception);
                } else {
                    ldVar = this.OooO0OO;
                    string = gc.OooO0OO().OooO0O0().getResources().getString(R.string.json_parse_exception);
                }
            } else {
                String str = "onUpdateFailure --> message=" + string;
                ldVar = this.OooO0OO;
            }
            ldVar.OooO0o(string);
        } catch (Exception e) {
            Log.e("zzz", "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:" + e.getMessage());
            this.OooO0OO.OooO0o(e.getMessage());
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        Log.e("zzz", "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:" + str);
        this.OooO0OO.OooO0o(str);
    }

    public void OooO0OO() {
        this.OooO00o.OooOOO(getClass().getCanonicalName());
    }

    public void OooO0o(Context context) {
        try {
            UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo(gc.OooO0OO().OooO00o(context));
            UpdateRequestInfo updateRequestInfo2 = this.OooO0oo;
            if (updateRequestInfo2 != null) {
                updateRequestInfo.ScriptId = updateRequestInfo2.getScriptId();
                updateRequestInfo.DeviceName = this.OooO0oo.getDeviceName();
                updateRequestInfo.ScriptVersion = this.OooO0oo.getScriptVersion();
                updateRequestInfo.IsScriptHotUpgrade = this.OooO0oo.getIsScriptHotUpgrade();
                if (!TextUtils.isEmpty(this.OooO0oo.AppVersion)) {
                    updateRequestInfo.AppVersion = this.OooO0oo.AppVersion;
                }
            }
            String string = j3.OooO0oO(k3.Oooo000).build().toString();
            Map<String, String> mapOooO = gc.OooO0OO().OooO(string, updateRequestInfo);
            this.OooO0Oo = gc.OooO0o;
            this.OooO00o.OooOO0(this.OooO0O0, getClass().getCanonicalName(), string, mapOooO);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("zzz", "com.cyjh.share.AppVersionUpdatePresenter--updateVersion:" + e.getMessage());
        }
    }
}
