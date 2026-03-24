package com.anythink.expressad.exoplayer.k;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    private String[] a;
    private boolean b;
    private boolean c;

    private l(String... strArr) {
        this.a = strArr;
    }

    private void a(String... strArr) {
        a.b(!this.b, "Cannot set libraries after loading");
        this.a = strArr;
    }

    private boolean a() {
        if (this.b) {
            return this.c;
        }
        this.b = true;
        try {
            for (String str : this.a) {
                System.loadLibrary(str);
            }
            this.c = true;
        } catch (UnsatisfiedLinkError unused) {
        }
        return this.c;
    }
}
