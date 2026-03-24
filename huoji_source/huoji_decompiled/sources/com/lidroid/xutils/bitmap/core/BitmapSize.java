package com.lidroid.xutils.bitmap.core;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapSize {
    public static final BitmapSize ZERO = new BitmapSize(0, 0);
    private final int height;
    private final int width;

    public BitmapSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public BitmapSize scale(float f) {
        return new BitmapSize((int) (this.width * f), (int) (this.height * f));
    }

    public BitmapSize scaleDown(int i) {
        return new BitmapSize(this.width / i, this.height / i);
    }

    public String toString() {
        return "_" + this.width + "_" + this.height;
    }
}
