package com.iflytek.voiceads.param;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a {
    private String a;
    private f b = new f();

    public a(String str) {
        this.a = str;
        d();
    }

    private void d() {
        a("debug_mode", false);
        a("back_key_enable", true);
        a("download_alert", false);
        a("http_request_timeout", 15000);
        a("lock_screen_ad", false);
        a("banner_recycle", false);
        a("banner_interval", 30);
        a("request_id", e());
        a("currency", "CNY");
        f(this.a);
    }

    private String e() {
        return "AD_" + System.currentTimeMillis();
    }

    public int a() {
        return ((Integer) this.b.a("adw")).intValue();
    }

    public Object a(String str) {
        return this.b.a(str);
    }

    public void a(int i) {
        this.b.a("adw", Integer.valueOf(i));
    }

    public void a(String str, Object obj) {
        this.b.a(str, obj);
    }

    public int b() {
        return ((Integer) this.b.a("adh")).intValue();
    }

    public String b(String str) {
        try {
            return (String) this.b.a(str);
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "get str param :" + e.getMessage());
            return "";
        }
    }

    public void b(int i) {
        this.b.a("adh", Integer.valueOf(i));
    }

    public String c() {
        return (String) this.b.a("adunit_id");
    }

    public boolean c(String str) {
        try {
            return ((Boolean) this.b.a(str)).booleanValue();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "get boolean param :" + e.getMessage());
            return false;
        }
    }

    public int d(String str) {
        try {
            return ((Integer) this.b.a(str)).intValue();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "get int param :" + e.getMessage());
            return 0;
        }
    }

    public double e(String str) {
        try {
            if (this.b.a(str) != null) {
                return ((Double) this.b.a(str)).doubleValue();
            }
            return 0.0d;
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "get double param :" + e.getMessage());
            return 0.0d;
        }
    }

    public void f(String str) {
        this.b.a("adunit_id", str);
    }
}
