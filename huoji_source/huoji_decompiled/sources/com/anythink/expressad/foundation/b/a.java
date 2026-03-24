package com.anythink.expressad.foundation.b;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = "a";
    private static volatile a b;
    private Context c;
    private String d;
    private String e;
    private JSONObject g;
    private boolean i;
    private WeakReference<Context> j;
    private WeakReference<Activity> k;
    private String l;
    private int f = 0;
    private boolean h = false;

    private a() {
    }

    private void a(int i) {
        this.f = i;
    }

    private void a(JSONObject jSONObject) {
        this.g = jSONObject;
    }

    public static a c() {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    b = new a();
                }
            }
        }
        return b;
    }

    public final String a() {
        return this.l;
    }

    public final void a(Context context) {
        this.c = context;
    }

    public final void a(String str) {
        this.l = str;
    }

    public final String b() {
        try {
            Context context = this.c;
            if (context != null) {
                return context.getPackageName();
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final void b(Context context) {
        this.j = new WeakReference<>(context);
    }

    public final void b(String str) {
        this.d = str;
    }

    public final void c(String str) {
        this.e = str;
    }

    public final void d() {
        if (this.h) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            this.g = jSONObject;
            jSONObject.put("webgl", 0);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public final Context e() {
        return this.c;
    }

    public final String f() {
        return !TextUtils.isEmpty(this.d) ? this.d : "";
    }

    public final String g() {
        return !TextUtils.isEmpty(this.e) ? this.e : "";
    }

    public final Context h() {
        WeakReference<Context> weakReference = this.j;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public final int i() {
        return this.f;
    }

    public final JSONObject j() {
        return this.g;
    }
}
