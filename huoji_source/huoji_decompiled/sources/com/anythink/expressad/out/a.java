package com.anythink.expressad.out;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public Map<String, Object> a;
    public Context b;

    public a() {
    }

    private a(Map<String, Object> map, Context context) {
        this.a = map;
        this.b = context;
    }

    public abstract boolean a();

    public abstract void b();
}
