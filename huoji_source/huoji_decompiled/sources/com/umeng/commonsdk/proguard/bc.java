package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.at;

/* JADX INFO: loaded from: classes2.dex */
public class bc {
    private static int a = Integer.MAX_VALUE;

    public static bb a(byte[] bArr, bb bbVar) {
        return bArr[0] > 16 ? new at.a() : (bArr.length <= 1 || (bArr[1] & 128) == 0) ? bbVar : new at.a();
    }

    public static void a(int i) {
        a = i;
    }

    public static void a(az azVar, byte b) throws ag {
        a(azVar, b, a);
    }

    public static void a(az azVar, byte b, int i) throws ag {
        if (i <= 0) {
            throw new ag("Maximum skip depth exceeded");
        }
        int i2 = 0;
        switch (b) {
            case 2:
                azVar.t();
                return;
            case 3:
                azVar.u();
                return;
            case 4:
                azVar.y();
                return;
            case 5:
            case 7:
            case 9:
            default:
                return;
            case 6:
                azVar.v();
                return;
            case 8:
                azVar.w();
                return;
            case 10:
                azVar.x();
                return;
            case 11:
                azVar.A();
                return;
            case 12:
                azVar.j();
                while (true) {
                    byte b2 = azVar.l().b;
                    if (b2 == 0) {
                        azVar.k();
                        return;
                    } else {
                        a(azVar, b2, i - 1);
                        azVar.m();
                    }
                }
                break;
            case 13:
                aw awVarN = azVar.n();
                while (i2 < awVarN.c) {
                    int i3 = i - 1;
                    a(azVar, awVarN.a, i3);
                    a(azVar, awVarN.b, i3);
                    i2++;
                }
                azVar.o();
                return;
            case 14:
                bd bdVarR = azVar.r();
                while (i2 < bdVarR.b) {
                    a(azVar, bdVarR.a, i - 1);
                    i2++;
                }
                azVar.s();
                return;
            case 15:
                av avVarP = azVar.p();
                while (i2 < avVarP.b) {
                    a(azVar, avVarP.a, i - 1);
                    i2++;
                }
                azVar.q();
                return;
        }
    }
}
