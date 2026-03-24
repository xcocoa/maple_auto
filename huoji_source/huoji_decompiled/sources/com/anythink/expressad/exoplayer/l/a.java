package com.anythink.expressad.exoplayer.l;

import com.anythink.expressad.exoplayer.k.p;
import com.anythink.expressad.exoplayer.k.s;
import com.anythink.expressad.exoplayer.t;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public final List<byte[]> a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    private a(List<byte[]> list, int i, int i2, int i3, float f) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f;
    }

    public static a a(s sVar) throws t {
        int i;
        int i2;
        float f;
        try {
            sVar.d(4);
            int iD = (sVar.d() & 3) + 1;
            if (iD == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iD2 = sVar.d() & 31;
            for (int i3 = 0; i3 < iD2; i3++) {
                arrayList.add(b(sVar));
            }
            int iD3 = sVar.d();
            for (int i4 = 0; i4 < iD3; i4++) {
                arrayList.add(b(sVar));
            }
            if (iD2 > 0) {
                p.b bVarA = p.a((byte[]) arrayList.get(0), iD, ((byte[]) arrayList.get(0)).length);
                int i5 = bVarA.b;
                int i6 = bVarA.c;
                f = bVarA.d;
                i = i5;
                i2 = i6;
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new a(arrayList, iD, i, i2, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new t("Error parsing AVC config", e);
        }
    }

    private static byte[] b(s sVar) {
        int iE = sVar.e();
        int iC = sVar.c();
        sVar.d(iE);
        return com.anythink.expressad.exoplayer.k.d.a(sVar.a, iC, iE);
    }
}
