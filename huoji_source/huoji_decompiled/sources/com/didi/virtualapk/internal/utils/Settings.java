package com.didi.virtualapk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
public class Settings {
    private static final String FILE_NAME = "VirtualAPK_Settings";

    public static int getSoVersion(Context context, String str) {
        return context.getSharedPreferences(FILE_NAME, 0).getInt(str, 0);
    }

    public static void setSoVersion(Context context, String str, int i) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(FILE_NAME, 0).edit();
        editorEdit.putInt(str, i);
        editorEdit.commit();
    }
}
