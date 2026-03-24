package com.anythink.expressad.exoplayer.g.b;

import com.anythink.expressad.exoplayer.g.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class h implements a.InterfaceC0117a {
    public final String g;

    public h(String str) {
        this.g = (String) com.anythink.expressad.exoplayer.k.a.a(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.g;
    }
}
