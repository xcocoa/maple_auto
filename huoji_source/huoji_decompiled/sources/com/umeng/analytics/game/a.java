package com.umeng.analytics.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.s;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public String a;
    public String b;
    private Context c;
    private final String d = "um_g_cache";
    private final String e = "single_level";
    private final String f = "stat_player_level";
    private final String g = "stat_game_level";
    private C0230a h = null;

    /* JADX INFO: renamed from: com.umeng.analytics.game.a$a, reason: collision with other inner class name */
    public static class C0230a implements Serializable {
        private static final long a = 20140327;
        private String b;
        private long c;
        private long d;

        public C0230a(String str) {
            this.b = str;
        }

        public void a() {
            this.d = System.currentTimeMillis();
        }

        public boolean a(String str) {
            return this.b.equals(str);
        }

        public void b() {
            this.c += System.currentTimeMillis() - this.d;
            this.d = 0L;
        }

        public void c() {
            a();
        }

        public void d() {
            b();
        }

        public long e() {
            return this.c;
        }

        public String f() {
            return this.b;
        }
    }

    public a(Context context) {
        this.c = context;
    }

    public C0230a a(String str) {
        C0230a c0230a = new C0230a(str);
        this.h = c0230a;
        c0230a.a();
        return this.h;
    }

    public void a() {
        try {
            C0230a c0230a = this.h;
            if (c0230a != null) {
                c0230a.b();
                SharedPreferences.Editor editorEdit = this.c.getSharedPreferences("um_g_cache", 0).edit();
                editorEdit.putString("single_level", s.a(this.h));
                editorEdit.putString("stat_player_level", this.b);
                editorEdit.putString("stat_game_level", this.a);
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    public C0230a b(String str) {
        C0230a c0230a = this.h;
        if (c0230a == null) {
            return null;
        }
        c0230a.d();
        if (!this.h.a(str)) {
            return null;
        }
        C0230a c0230a2 = this.h;
        this.h = null;
        return c0230a2;
    }

    public void b() {
        SharedPreferences sharedPreferences;
        try {
            SharedPreferences preferenceWrapper = PreferenceWrapper.getInstance(this.c, "um_g_cache");
            String string = preferenceWrapper.getString("single_level", null);
            if (!TextUtils.isEmpty(string)) {
                C0230a c0230a = (C0230a) s.a(string);
                this.h = c0230a;
                if (c0230a != null) {
                    c0230a.c();
                }
            }
            if (TextUtils.isEmpty(this.b)) {
                String string2 = preferenceWrapper.getString("stat_player_level", null);
                this.b = string2;
                if (string2 == null && (sharedPreferences = PreferenceWrapper.getDefault(this.c)) != null) {
                    this.b = sharedPreferences.getString("userlevel", null);
                }
            }
            if (this.a == null) {
                this.a = preferenceWrapper.getString("stat_game_level", null);
            }
        } catch (Throwable unused) {
        }
    }
}
