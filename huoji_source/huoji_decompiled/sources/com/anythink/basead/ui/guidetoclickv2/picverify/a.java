package com.anythink.basead.ui.guidetoclickv2.picverify;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public Context a;

    public a(Context context) {
        this.a = context;
    }

    private Context c() {
        return this.a;
    }

    public abstract Paint a();

    public abstract Path a(int i);

    public abstract c a(int i, int i2, int i3);

    public void a(Context context, Canvas canvas, Path path) {
    }

    public abstract Paint b();

    public c b(int i, int i2, int i3) {
        return a(i, i2, i3);
    }
}
