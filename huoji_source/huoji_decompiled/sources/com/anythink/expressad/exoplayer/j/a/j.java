package com.anythink.expressad.exoplayer.j.a;

import android.net.Uri;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    private static final String a = "exo_";
    private static final String b = "exo_redir";
    private static final String c = "exo_len";

    private j() {
    }

    public static long a(i iVar) {
        return iVar.a(c);
    }

    private static void a(k kVar) {
        kVar.a(c);
    }

    public static void a(k kVar, long j) {
        kVar.a(c, j);
    }

    public static void a(k kVar, Uri uri) {
        kVar.a(b, uri.toString());
    }

    @Nullable
    private static Uri b(i iVar) {
        String strA = iVar.a(b, (String) null);
        if (strA == null) {
            return null;
        }
        return Uri.parse(strA);
    }

    private static void b(k kVar) {
        kVar.a(b);
    }
}
