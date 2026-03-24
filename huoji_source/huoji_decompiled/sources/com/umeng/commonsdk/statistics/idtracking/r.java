package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;

/* JADX INFO: loaded from: classes2.dex */
public class r extends a {
    public static final String a = "uopdta";
    private static final String b = "uop";
    private Context c;

    public r(Context context) {
        super(b);
        this.c = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.c);
        return sharedPreferences != null ? sharedPreferences.getString(a, "") : "";
    }
}
