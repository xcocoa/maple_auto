package com.umeng.commonsdk.proguard;

/* JADX INFO: loaded from: classes2.dex */
public class z extends ag {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    private static final be j = new be("TApplicationException");
    private static final au k = new au("message", (byte) 11, 1);
    private static final au l = new au("type", (byte) 8, 2);
    private static final long m = 1;
    public int i;

    public z() {
        this.i = 0;
    }

    public z(int i) {
        this.i = 0;
        this.i = i;
    }

    public z(int i, String str) {
        super(str);
        this.i = 0;
        this.i = i;
    }

    public z(String str) {
        super(str);
        this.i = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static z a(az azVar) throws ag {
        azVar.j();
        String strZ = null;
        int iW = 0;
        while (true) {
            au auVarL = azVar.l();
            byte b2 = auVarL.b;
            if (b2 == 0) {
                azVar.k();
                return new z(iW, strZ);
            }
            short s = auVarL.c;
            if (s != 1) {
                if (s == 2 && b2 == 8) {
                    iW = azVar.w();
                } else {
                    bc.a(azVar, b2);
                }
            } else if (b2 == 11) {
                strZ = azVar.z();
            }
            azVar.m();
        }
    }

    public int a() {
        return this.i;
    }

    public void b(az azVar) throws ag {
        azVar.a(j);
        if (getMessage() != null) {
            azVar.a(k);
            azVar.a(getMessage());
            azVar.c();
        }
        azVar.a(l);
        azVar.a(this.i);
        azVar.c();
        azVar.d();
        azVar.b();
    }
}
