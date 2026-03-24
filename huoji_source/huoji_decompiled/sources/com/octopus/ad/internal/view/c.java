package com.octopus.ad.internal.view;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class c implements d {
    private long a;
    private b b;
    private boolean c;

    public c(b bVar, Long l, boolean z) {
        this.a = l.longValue();
        this.b = bVar;
        this.c = z;
    }

    @Override // com.octopus.ad.internal.view.d
    public long a() {
        return this.a;
    }

    @Override // com.octopus.ad.internal.view.d
    public boolean b() {
        return this.c;
    }

    @Override // com.octopus.ad.internal.view.d
    public View c() {
        b bVar = this.b;
        if (bVar == null) {
            return null;
        }
        return bVar.getView();
    }
}
