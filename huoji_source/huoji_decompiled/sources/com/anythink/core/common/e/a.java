package com.anythink.core.common.e;

import com.anythink.core.common.o.d;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final String a = d.b("YXBpLnRoZWJpZGluLmNvbQ==");
    public static final String b = d.b("dGsudGhlYmlkaW4uY29t");
    public static final String c;
    public static final String d;
    public static final String e = "api.anythinktech.com";
    public static final String f;
    public static final String g;
    public static final String h;
    public static final String i;
    public static final String j;
    public static final String k;
    public static final String l;
    public static final String m;
    public static final String n;
    public static final String o = "";
    public static final String p;
    public static final String q;

    static {
        String strB = d.b("ZGEudGhlYmlkaW4uY29t");
        c = strB;
        d = d.b("YWR4LW9zLnRoZWJpZGluLmNvbQ==");
        f = "https://" + a() + "/v2/open/app";
        g = "https://" + a() + "/v2/open/placement";
        StringBuilder sb = new StringBuilder("https://");
        if (!c.a().b()) {
            strB = "da.anythinktech.com";
        }
        sb.append(strB);
        sb.append("/v1/open/da");
        h = sb.toString();
        i = "https://" + b() + "/v1/open/tk";
        j = "https://" + a() + "/v2/open/eu";
        k = "https://" + d() + "/bid";
        l = "https://" + d() + "/request";
        m = "https://adx" + b() + "/v1";
        n = "https://" + d() + "/openapi/req";
        p = "https://" + b() + "/ss/rrd";
        q = "https://" + a() + "/v2/open/area";
    }

    private static String a() {
        return c.a().b() ? a : e;
    }

    private static String b() {
        return c.a().b() ? b : "tk.anythinktech.com";
    }

    private static String c() {
        return c.a().b() ? c : "da.anythinktech.com";
    }

    private static String d() {
        return c.a().b() ? d : "adx.anythinktech.com";
    }
}
