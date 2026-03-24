package com.octopus.ad;

import android.content.Context;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static final a a = new a(320, 50, "320x50_mb");
    public static final a b = new a(468, 60, "468x60_as");
    public static final a c = new a(320, 100, "320x100_as");
    public static final a d = new a(728, 90, "728x90_as");
    public static final a e = new a(300, 250, "300x250_as");
    public static final a f = new a(160, 600, "160x600_as");
    public static final a g = new a(-1, -2, "smart_banner");
    public static final a h = new a(-3, -4, "fluid");
    public static final a i = new a(-3, 0, "search_v2");
    private final int j;
    private final int k;
    private final String l;

    public a(int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        sb.append(i2 == -1 ? "FULL" : String.valueOf(i2));
        sb.append("x");
        sb.append(i3 == -2 ? "AUTO" : String.valueOf(i3));
        sb.append("_as");
        this(i2, i3, sb.toString());
    }

    private a(int i2, int i3, String str) {
        if (i2 < 0 && i2 != -1 && i2 != -3) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i2);
        }
        if (i3 >= 0 || i3 == -2 || i3 == -4) {
            this.j = i2;
            this.k = i3;
            this.l = str;
        } else {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i3);
        }
    }

    public int a() {
        return this.k;
    }

    public int a(Context context) {
        int i2 = this.k;
        if (i2 == -4 || i2 == -3) {
            return -1;
        }
        return i2 != -2 ? (int) TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics()) : context.getResources().getDisplayMetrics().heightPixels;
    }

    public int b() {
        return this.j;
    }

    public int b(Context context) {
        int i2 = this.j;
        if (i2 == -4 || i2 == -3) {
            return -1;
        }
        return i2 != -1 ? (int) TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics()) : context.getResources().getDisplayMetrics().widthPixels;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.j == aVar.j && this.k == aVar.k && this.l.equals(aVar.l);
    }

    public int hashCode() {
        return this.l.hashCode();
    }

    public String toString() {
        return this.l;
    }
}
