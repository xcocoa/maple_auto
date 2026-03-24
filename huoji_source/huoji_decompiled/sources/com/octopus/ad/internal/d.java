package com.octopus.ad.internal;

import android.content.Context;
import com.anythink.core.api.ATAdConst;
import com.octopus.ad.R;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.StringUtil;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static HashSet<String> a;
    private String c;
    private String d;
    private String e;
    private String l;
    private WeakReference<Context> o;
    private String p;
    private l b = l.PREFETCH;
    private int f = 3;
    private boolean g = false;
    private int h = -1;
    private int i = -1;
    private int j = -1;
    private int k = -1;
    private boolean m = false;
    private boolean n = false;

    public d(Context context, String str) {
        this.p = "";
        this.o = new WeakReference<>(context);
        this.p = str;
    }

    public String a() {
        return this.p;
    }

    public void a(int i) {
        this.f = i;
    }

    public void a(l lVar) {
        this.b = lVar;
    }

    public void a(String str) {
        this.c = str;
    }

    public void a(boolean z) {
        this.m = z;
    }

    public Context b() {
        if (this.o.get() != null) {
            return this.o.get();
        }
        return null;
    }

    public void b(int i) {
        this.h = i;
    }

    public void b(String str) {
        this.d = str;
    }

    public void b(boolean z) {
        this.g = z;
    }

    public String c() {
        return this.c;
    }

    public void c(int i) {
        this.i = i;
    }

    public void c(String str) {
        this.e = str;
    }

    public String d() {
        return this.d;
    }

    public void d(int i) {
        this.j = i;
    }

    public String e() {
        return this.e;
    }

    public void e(int i) {
        this.k = i;
    }

    public int f() {
        if (this.b == l.BANNER) {
            return this.h;
        }
        return -1;
    }

    public int g() {
        if (this.b == l.BANNER) {
            return this.i;
        }
        return -1;
    }

    public int h() {
        return this.j;
    }

    public int i() {
        return this.k;
    }

    public boolean j() {
        return this.g;
    }

    public l k() {
        return this.b;
    }

    public boolean l() {
        if (!StringUtil.isEmpty(m.a().d()) && !StringUtil.isEmpty(this.c)) {
            return true;
        }
        HaoboLog.e(HaoboLog.baseLogTag, HaoboLog.getString(R.string.no_identification));
        return false;
    }

    public String m() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            String str2 = b().getResources().getConfiguration().orientation == 2 ? "h" : "v";
            this.l = str2;
            if (!StringUtil.isEmpty(str2)) {
                jSONObject.put("mOrientation", this.l);
            }
            int i = this.h;
            String str3 = ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BANNER_SIZE;
            if (i > 0 && this.i > 0) {
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BANNER_SIZE, this.h + "x" + this.i);
            }
            int i2 = i();
            int iH = h();
            if (i2 > 0 && iH > 0) {
                l lVar = this.b;
                l lVar2 = l.INTERSTITIAL;
                if (!lVar.equals(lVar2) && (this.h < 0 || this.i < 0)) {
                    str3 = "max_size";
                    str = iH + "x" + i2;
                } else if (this.b.equals(lVar2)) {
                    str = iH + "x" + i2;
                }
                jSONObject.put(str3, str);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            HaoboLog.e(HaoboLog.jsonLogTag, "Failed to encode adUnitParams, err = " + e.getMessage());
            return "";
        }
    }
}
