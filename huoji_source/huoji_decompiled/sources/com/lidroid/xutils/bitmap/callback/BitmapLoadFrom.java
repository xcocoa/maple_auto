package com.lidroid.xutils.bitmap.callback;

/* JADX INFO: loaded from: classes2.dex */
public enum BitmapLoadFrom {
    MEMORY_CACHE,
    DISK_CACHE,
    URI;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static BitmapLoadFrom[] valuesCustom() {
        BitmapLoadFrom[] bitmapLoadFromArrValuesCustom = values();
        int length = bitmapLoadFromArrValuesCustom.length;
        BitmapLoadFrom[] bitmapLoadFromArr = new BitmapLoadFrom[length];
        System.arraycopy(bitmapLoadFromArrValuesCustom, 0, bitmapLoadFromArr, 0, length);
        return bitmapLoadFromArr;
    }
}
