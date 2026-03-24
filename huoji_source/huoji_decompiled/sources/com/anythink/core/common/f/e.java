package com.anythink.core.common.f;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    private String a;
    private String b;
    private int c;

    public e(String str, String str2, int i) {
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    private String b() {
        return this.a;
    }

    private int c() {
        return this.c;
    }

    public final String a() {
        return this.b;
    }

    public final boolean a(av avVar) {
        if (avVar != null) {
            int i = avVar.a;
            return i != 2 ? i == 3 && avVar.d() == this.c : avVar.u().equals(this.a);
        }
        return false;
    }
}
