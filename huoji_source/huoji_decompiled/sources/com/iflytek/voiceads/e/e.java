package com.iflytek.voiceads.e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import com.iflytek.voiceads.conn.VideoDataRef;
import com.iflytek.voiceads.listener.DialogListener;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import com.iflytek.voiceads.utils.j;
import org.json.JSONArray;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class e extends VideoDataRef {
    private Context a;
    private com.iflytek.voiceads.d.a b;
    private com.iflytek.voiceads.d.b c;
    private String d;
    private com.iflytek.voiceads.param.a e;
    private IFLYVideoListener f;
    private boolean g = false;
    private boolean h = false;

    public e(Context context, com.iflytek.voiceads.d.b bVar, com.iflytek.voiceads.param.a aVar, IFLYVideoListener iFLYVideoListener) {
        this.a = context;
        this.c = bVar;
        this.b = bVar.f;
        this.d = bVar.c;
        this.e = aVar;
        this.f = iFLYVideoListener;
    }

    private void a() {
        String str = this.b.L;
        if (TextUtils.isEmpty(this.b.K)) {
            a(str);
            return;
        }
        String str2 = this.b.K;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
        if (!com.iflytek.voiceads.utils.b.a(str2) || !com.iflytek.voiceads.utils.b.a(this.a.getApplicationContext(), intent)) {
            a(str);
            j.b(com.iflytek.voiceads.param.c.b + "type=NotInstall&sid=" + this.d);
            return;
        }
        try {
            intent.addFlags(32768);
            intent.addFlags(268435456);
            this.a.startActivity(intent);
            j.b(com.iflytek.voiceads.param.c.b + "type=DeepLink&sid=" + this.d);
        } catch (Exception e) {
            j.b(com.iflytek.voiceads.param.c.b + "type=DeepFail&sid=" + this.d);
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "video deep" + e.getMessage());
        }
    }

    private void a(String str) {
        if (!URLUtil.isValidUrl(str) || str.equals(com.anythink.core.common.res.d.a)) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Invalid click url: " + str);
        }
        switch (getActionType()) {
            case 3:
                b("");
                break;
            default:
                com.iflytek.voiceads.request.e.a(this.a, str, this.e, this.d);
                j.b(com.iflytek.voiceads.param.c.b + "type=H5Open&sid=" + this.d);
                break;
        }
    }

    private void b(String str) {
        com.iflytek.voiceads.download.d dVarA = com.iflytek.voiceads.download.d.a(this.a.getApplicationContext());
        dVarA.a((DialogListener) this.f);
        dVarA.a(this.e.c("download_alert"));
        if (TextUtils.isEmpty(str)) {
            dVarA.a(this.a, this.b, new Object[0]);
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "startVideoDownload");
        } else {
            dVarA.a(this.a, this.b, str);
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "startVideoDownload with url");
        }
    }

    public void downloadApp() {
        if (TextUtils.isEmpty(this.b.t)) {
            return;
        }
        b(this.b.t);
    }

    public int getActionType() {
        return this.b.M;
    }

    public String getAdSourceMark() {
        return this.b.N;
    }

    public String getBrand() {
        return this.b.F;
    }

    public String getContent() {
        return this.b.o;
    }

    public String getCtatext() {
        return this.b.p;
    }

    public String getDesc() {
        return this.b.m;
    }

    public int getDuration() {
        if (this.b.j == null || !this.b.j.has("duration")) {
            return 0;
        }
        return this.b.j.optInt("duration");
    }

    public int getHeight() {
        if (this.b.j == null || !this.b.j.has("height")) {
            return 0;
        }
        return this.b.j.optInt("height");
    }

    public String getIconUrl() {
        return (this.b.n == null || !this.b.n.has(com.anythink.expressad.foundation.d.c.am)) ? "" : this.b.n.optString(com.anythink.expressad.foundation.d.c.am);
    }

    public String getImgUrl() {
        return (this.b.f == null || !this.b.f.has(com.anythink.expressad.foundation.d.c.am)) ? "" : this.b.f.optString(com.anythink.expressad.foundation.d.c.am);
    }

    public String getRequestID() {
        return this.c.b;
    }

    public int getTemplateID() {
        return this.b.a;
    }

    public String getTitle() {
        return this.b.l;
    }

    public int getWidth() {
        if (this.b.j == null || !this.b.j.has("width")) {
            return 0;
        }
        return this.b.j.optInt("width");
    }

    public boolean isExposured() {
        return this.g;
    }

    public boolean onClick(View view) {
        try {
            a();
            if (this.h) {
                return true;
            }
            if (this.g) {
                j.a(this.b.J.optJSONArray("click_urls"), this.a, 2);
                this.h = true;
                return true;
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "video clk urls" + e.getMessage());
        }
        return false;
    }

    public boolean onExposure(View view) {
        if (this.g) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "已曝光");
            return true;
        }
        boolean zA = com.iflytek.voiceads.utils.b.a(this.a);
        boolean zB = com.iflytek.voiceads.utils.b.b(this.a);
        boolean z = view.getVisibility() == 0;
        boolean zIsShown = view.isShown();
        boolean zA2 = com.iflytek.voiceads.utils.b.a(this.a, view);
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "曝光失败-: B:" + zA + " L:" + zB + " V:" + z + " S:" + zIsShown + " I:" + zA2);
        if (zA || zB || !z || !zIsShown || !zA2) {
            return false;
        }
        try {
            JSONArray jSONArrayA = j.a(this.e.e("auction_price"), this.b.J.optJSONArray("impress_urls"));
            if (jSONArrayA == null) {
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "impArray null");
                return false;
            }
            this.g = true;
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "曝光成功");
            j.a(jSONArrayA, this.a, 1);
            return true;
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "video imp urls" + e.getMessage());
            return false;
        }
    }

    public void showIntroduce() {
        if (TextUtils.isEmpty(this.b.u)) {
            return;
        }
        com.iflytek.voiceads.request.e.a(this.a, this.b.u, this.e, this.d);
    }
}
