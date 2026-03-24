package com.iflytek.voiceads.c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import com.iflytek.voiceads.bean.AdAudio;
import com.iflytek.voiceads.bean.AudioMonitor;
import com.iflytek.voiceads.conn.NativeDataRef;
import com.iflytek.voiceads.listener.DialogListener;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.request.e;
import com.iflytek.voiceads.utils.g;
import com.iflytek.voiceads.utils.j;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class c extends NativeDataRef {
    private Context a;
    private com.iflytek.voiceads.d.a b;
    private com.iflytek.voiceads.d.b c;
    private String d;
    private com.iflytek.voiceads.param.a e;
    private IFLYNativeListener f;
    private boolean g = false;
    private boolean h = false;

    public c(Context context, com.iflytek.voiceads.d.b bVar, com.iflytek.voiceads.param.a aVar, IFLYNativeListener iFLYNativeListener) {
        this.a = context;
        this.c = bVar;
        this.b = bVar.f;
        this.d = bVar.c;
        this.e = aVar;
        this.f = iFLYNativeListener;
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
            g.b("IFLY_AD_SDK", "native deep" + e.getMessage());
        }
    }

    private void a(String str) {
        if (!URLUtil.isValidUrl(str) || str.equals(com.anythink.core.common.res.d.a)) {
            g.a("IFLY_AD_SDK", "Invalid click url: " + str);
        }
        switch (getActionType()) {
            case 3:
                b("");
                break;
            default:
                e.a(this.a, str, this.e, this.d);
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
            g.a("IFLY_AD_SDK", "startNativeDownload");
        } else {
            dVarA.a(this.a, this.b, str);
            g.a("IFLY_AD_SDK", "startNativeDownload with url");
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

    public AdAudio getAdAudio() {
        if (this.b.k == null) {
            return null;
        }
        AdAudio adAudio = new AdAudio();
        adAudio.url = this.b.k.optString(com.anythink.expressad.foundation.d.c.am);
        if (this.b.k.has("duration")) {
            adAudio.duration = this.b.k.optInt("duration");
        }
        if (this.b.k.has("bitrate")) {
            adAudio.bitrate = this.b.k.optInt("bitrate");
        }
        if (this.b.k.has("format")) {
            adAudio.format = this.b.k.optInt("format");
        }
        if (!this.b.k.has("end_time")) {
            return adAudio;
        }
        adAudio.cacheDeadLine = this.b.k.optLong("end_time");
        return adAudio;
    }

    public String getAdSourceMark() {
        return this.b.N;
    }

    public String getAddress() {
        return this.b.C;
    }

    public String getAppName() {
        return this.b.q;
    }

    public double getAppSize() {
        return this.b.w;
    }

    public String getAppVer() {
        return this.b.v;
    }

    public AudioMonitor getAudioMonitor() {
        if (this.b.k == null || this.b.J == null) {
            return null;
        }
        AudioMonitor audioMonitor = new AudioMonitor();
        audioMonitor.start_urls = this.b.J.optJSONArray("start_urls");
        audioMonitor.first_quartile_urls = this.b.J.optJSONArray("first_quartile_urls");
        audioMonitor.mid_point_urls = this.b.J.optJSONArray("mid_point_urls");
        audioMonitor.third_quartile_urls = this.b.J.optJSONArray("third_quartile_urls");
        audioMonitor.complete_urls = this.b.J.optJSONArray("complete_urls");
        audioMonitor.pause_urls = this.b.J.optJSONArray("pause_urls");
        audioMonitor.resume_urls = this.b.J.optJSONArray("resume_urls");
        audioMonitor.skip_urls = this.b.J.optJSONArray("skip_urls");
        audioMonitor.mute_urls = this.b.J.optJSONArray("mute_urls");
        audioMonitor.unmute_urls = this.b.J.optJSONArray("unmute_urls");
        audioMonitor.replay_urls = this.b.J.optJSONArray("replay_urls");
        audioMonitor.close_urls = this.b.J.optJSONArray("close_linear_urls");
        return audioMonitor;
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

    public double getCurrentPrice() {
        return this.b.A;
    }

    public String getDesc() {
        return this.b.m;
    }

    public ArrayList<String> getDisplayLabels() {
        if (this.b.G == null) {
            return null;
        }
        JSONArray jSONArray = this.b.G;
        ArrayList<String> arrayList = new ArrayList<>();
        int i = 0;
        while (i < jSONArray.length()) {
            int i2 = i + 1;
            try {
                arrayList.add(jSONArray.getString(i));
                i = i2;
            } catch (JSONException e) {
                g.b("IFLY_AD_SDK", "get labels" + e.getMessage());
                i = i2;
            }
        }
        return arrayList;
    }

    public int getDownloads() {
        return this.b.r;
    }

    public String getIconUrl() {
        return (this.b.n == null || !this.b.n.has(com.anythink.expressad.foundation.d.c.am)) ? "" : this.b.n.optString(com.anythink.expressad.foundation.d.c.am);
    }

    public List<String> getImgList() {
        ArrayList arrayList = new ArrayList();
        if (this.b.g != null && this.b.g.has(com.anythink.expressad.foundation.d.c.am)) {
            arrayList.add(this.b.g.optString(com.anythink.expressad.foundation.d.c.am));
        }
        if (this.b.h != null && this.b.h.has(com.anythink.expressad.foundation.d.c.am)) {
            arrayList.add(this.b.h.optString(com.anythink.expressad.foundation.d.c.am));
        }
        if (this.b.i != null && this.b.i.has(com.anythink.expressad.foundation.d.c.am)) {
            arrayList.add(this.b.i.optString(com.anythink.expressad.foundation.d.c.am));
        }
        return arrayList;
    }

    public String getImgUrl() {
        return (this.b.f == null || !this.b.f.has(com.anythink.expressad.foundation.d.c.am)) ? "" : this.b.f.optString(com.anythink.expressad.foundation.d.c.am);
    }

    public int getLikes() {
        return this.b.y;
    }

    public double getOriginalPrice() {
        return this.b.z;
    }

    public String getPhone() {
        return this.b.x;
    }

    public String getRating() {
        return this.b.s;
    }

    public String getRequestID() {
        return this.c.b;
    }

    public String getSponsored() {
        return this.b.B;
    }

    public int getTemplateID() {
        return this.b.a;
    }

    public String getTitle() {
        return this.b.l;
    }

    public boolean isExposured() {
        return this.g;
    }

    public boolean onClick(View view) {
        a();
        if (this.h) {
            return true;
        }
        try {
            if (this.g) {
                j.a(this.b.J.optJSONArray("click_urls"), this.a, 2);
                this.h = true;
                return true;
            }
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "native clk urls" + e.getMessage());
        }
        return false;
    }

    public boolean onExposure(View view) {
        if (this.g) {
            g.a("IFLY_AD_SDK", "已曝光");
            return true;
        }
        if (!this.e.c("lock_screen_ad") && com.iflytek.voiceads.utils.b.b(this.a)) {
            g.a("IFLY_AD_SDK", "曝光失败-L");
            return false;
        }
        boolean zA = com.iflytek.voiceads.utils.b.a(this.a);
        boolean z = view.getVisibility() == 0;
        boolean zIsShown = view.isShown();
        boolean zA2 = com.iflytek.voiceads.utils.b.a(this.a, view);
        g.a("IFLY_AD_SDK", "曝光失败-: B:" + zA + " V:" + z + " S:" + zIsShown + " I:" + zA2);
        if (zA || !z || !zIsShown || !zA2) {
            return false;
        }
        try {
            JSONArray jSONArrayA = j.a(this.e.e("auction_price"), this.b.J.optJSONArray("impress_urls"));
            if (jSONArrayA == null) {
                g.a("IFLY_AD_SDK", "impArray null");
                return false;
            }
            this.g = true;
            g.a("IFLY_AD_SDK", "曝光成功");
            j.a(jSONArrayA, this.a, 1);
            return true;
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "native imp urls" + e.getMessage());
            return false;
        }
    }

    public void showIntroduce() {
        if (TextUtils.isEmpty(this.b.u)) {
            return;
        }
        e.a(this.a, this.b.u, this.e, this.d);
    }
}
