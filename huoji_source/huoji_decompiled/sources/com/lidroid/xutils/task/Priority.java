package com.lidroid.xutils.task;

/* JADX INFO: loaded from: classes2.dex */
public enum Priority {
    UI_TOP,
    UI_NORMAL,
    UI_LOW,
    DEFAULT,
    BG_TOP,
    BG_NORMAL,
    BG_LOW;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static Priority[] valuesCustom() {
        Priority[] priorityArrValuesCustom = values();
        int length = priorityArrValuesCustom.length;
        Priority[] priorityArr = new Priority[length];
        System.arraycopy(priorityArrValuesCustom, 0, priorityArr, 0, length);
        return priorityArr;
    }
}
