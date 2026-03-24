package com.anythink.expressad.exoplayer.l;

import com.anythink.expressad.exoplayer.k.p;
import com.anythink.expressad.exoplayer.k.s;
import com.anythink.expressad.exoplayer.t;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public final List<byte[]> a;
    public final int b;

    private d(List<byte[]> list, int i) {
        this.a = list;
        this.b = i;
    }

    public static d a(s sVar) throws t {
        try {
            sVar.d(21);
            int iD = sVar.d() & 3;
            int iD2 = sVar.d();
            int iC = sVar.c();
            int i = 0;
            for (int i2 = 0; i2 < iD2; i2++) {
                sVar.d(1);
                int iE = sVar.e();
                for (int i3 = 0; i3 < iE; i3++) {
                    int iE2 = sVar.e();
                    i += iE2 + 4;
                    sVar.d(iE2);
                }
            }
            sVar.c(iC);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < iD2; i5++) {
                sVar.d(1);
                int iE3 = sVar.e();
                for (int i6 = 0; i6 < iE3; i6++) {
                    int iE4 = sVar.e();
                    byte[] bArr2 = p.a;
                    System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
                    int length = i4 + bArr2.length;
                    System.arraycopy(sVar.a, sVar.c(), bArr, length, iE4);
                    i4 = length + iE4;
                    sVar.d(iE4);
                }
            }
            return new d(i == 0 ? null : Collections.singletonList(bArr), iD + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new t("Error parsing HEVC config", e);
        }
    }
}
