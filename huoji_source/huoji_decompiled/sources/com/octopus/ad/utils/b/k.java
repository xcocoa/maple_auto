package com.octopus.ad.utils.b;

import android.content.Context;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes2.dex */
public final class k {
    public static boolean a(Context context) {
        return ContextCompat.checkSelfPermission(context, com.anythink.china.common.d.b) == 0 && ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") == 0;
    }
}
