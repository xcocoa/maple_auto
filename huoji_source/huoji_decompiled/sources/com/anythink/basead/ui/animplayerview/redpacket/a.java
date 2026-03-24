package com.anythink.basead.ui.animplayerview.redpacket;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public float a;
    public float b;
    private Bitmap c;
    private int d;
    private int e;
    private float f;
    private float g;

    public a(Context context, Bitmap bitmap, int i) {
        i = i == 0 ? Math.min(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels) : i;
        double dNextInt = (((double) new Random().nextInt(6)) + 15.0d) / 100.0d;
        dNextInt = (dNextInt < 0.15d || dNextInt > 0.2d) ? 0.2d : dNextInt;
        Log.d("RedPacketBean", "widthScale: ".concat(String.valueOf(dNextInt)));
        int i2 = (int) (((double) i) * dNextInt);
        this.d = i2;
        int height = (i2 * bitmap.getHeight()) / bitmap.getWidth();
        this.e = height;
        try {
            this.c = Bitmap.createScaledBitmap(bitmap, this.d, height, true);
        } catch (Exception e) {
            Log.e("RedPacketBean", "createScaledBitmap failed: " + e.getMessage());
        }
        this.f = 400.0f;
        this.g = (new Random().nextFloat() * 30.0f) - 15.0f;
    }

    private float f() {
        return this.f;
    }

    public final int a() {
        return this.e;
    }

    public final int b() {
        return this.d;
    }

    public final Bitmap c() {
        return this.c;
    }

    public final void d() {
        Bitmap bitmap = this.c;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.c.recycle();
        this.c = null;
    }

    public final float e() {
        return this.g;
    }
}
