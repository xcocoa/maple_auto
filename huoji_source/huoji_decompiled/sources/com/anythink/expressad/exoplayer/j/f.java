package com.anythink.expressad.exoplayer.j;

import android.net.Uri;
import android.util.Base64;
import com.anythink.expressad.exoplayer.k.af;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes.dex */
public final class f implements h {
    public static final String a = "data";
    private k b;
    private int c;
    private byte[] d;

    @Override // com.anythink.expressad.exoplayer.j.h
    public final int a(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int length = this.d.length - this.c;
        if (length == 0) {
            return -1;
        }
        int iMin = Math.min(i2, length);
        System.arraycopy(this.d, this.c, bArr, i, iMin);
        this.c += iMin;
        return iMin;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final long a(k kVar) throws com.anythink.expressad.exoplayer.t {
        this.b = kVar;
        Uri uri = kVar.c;
        String scheme = uri.getScheme();
        if (!"data".equals(scheme)) {
            throw new com.anythink.expressad.exoplayer.t("Unsupported scheme: ".concat(String.valueOf(scheme)));
        }
        String[] strArrA = af.a(uri.getSchemeSpecificPart(), ",");
        if (strArrA.length != 2) {
            throw new com.anythink.expressad.exoplayer.t("Unexpected URI format: ".concat(String.valueOf(uri)));
        }
        String str = strArrA[1];
        if (strArrA[0].contains(";base64")) {
            try {
                this.d = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                throw new com.anythink.expressad.exoplayer.t("Error while parsing Base64 encoded string: ".concat(String.valueOf(str)), e);
            }
        } else {
            this.d = URLDecoder.decode(str, com.anythink.expressad.exoplayer.b.i).getBytes();
        }
        return this.d.length;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final Uri a() {
        k kVar = this.b;
        if (kVar != null) {
            return kVar.c;
        }
        return null;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final void b() {
        this.b = null;
        this.d = null;
    }
}
