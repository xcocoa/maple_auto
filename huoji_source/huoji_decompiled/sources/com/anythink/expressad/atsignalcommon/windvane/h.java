package com.anythink.expressad.atsignalcommon.windvane;

/* JADX INFO: loaded from: classes.dex */
public enum h {
    JS(com.anythink.expressad.video.signal.a.f.a, "application/x-javascript"),
    CSS("css", "text/css"),
    JPG("jpg", "image/jpeg"),
    JPEG("jpep", "image/jpeg"),
    PNG("png", "image/png"),
    WEBP("webp", "image/webp"),
    GIF("gif", "image/gif"),
    HTM("htm", "text/html"),
    HTML(com.tramini.plugin.a.f.a.b, "text/html");

    private String j;
    private String k;

    h(String str, String str2) {
        this.j = str;
        this.k = str2;
    }

    private void a(String str) {
        this.j = str;
    }

    private void b(String str) {
        this.k = str;
    }

    public final String a() {
        return this.j;
    }

    public final String b() {
        return this.k;
    }
}
