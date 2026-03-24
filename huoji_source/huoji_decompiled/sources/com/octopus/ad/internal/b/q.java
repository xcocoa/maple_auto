package com.octopus.ad.internal.b;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class q {
    public static File a(Context context) {
        return new File(a(context, true), "video-cache");
    }

    private static File a(Context context, boolean z) {
        return com.octopus.ad.utils.b.d.c(context);
    }
}
