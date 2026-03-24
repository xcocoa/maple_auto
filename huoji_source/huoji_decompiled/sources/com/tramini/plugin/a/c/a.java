package com.tramini.plugin.a.c;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> {
    private b a;

    private a(b bVar) {
        this.a = bVar;
    }

    private SQLiteDatabase d() {
        return this.a.a();
    }

    private SQLiteDatabase e() {
        return this.a.b();
    }

    public abstract long a();

    public abstract long b();

    public abstract boolean c();
}
