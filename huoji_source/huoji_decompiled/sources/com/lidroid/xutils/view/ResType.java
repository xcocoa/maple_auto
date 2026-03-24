package com.lidroid.xutils.view;

/* JADX INFO: loaded from: classes2.dex */
public enum ResType {
    Animation,
    Boolean,
    Color,
    ColorStateList,
    Dimension,
    DimensionPixelOffset,
    DimensionPixelSize,
    Drawable,
    Integer,
    IntArray,
    Movie,
    String,
    StringArray,
    Text,
    TextArray,
    Xml;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static ResType[] valuesCustom() {
        ResType[] resTypeArrValuesCustom = values();
        int length = resTypeArrValuesCustom.length;
        ResType[] resTypeArr = new ResType[length];
        System.arraycopy(resTypeArrValuesCustom, 0, resTypeArr, 0, length);
        return resTypeArr;
    }
}
