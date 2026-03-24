package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.at;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class ad {
    private final az a;
    private final bm b;

    public ad() {
        this(new at.a());
    }

    public ad(bb bbVar) {
        bm bmVar = new bm();
        this.b = bmVar;
        this.a = bbVar.a(bmVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object a(byte b, byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        Object objValueOf;
        try {
            try {
                au auVarJ = j(bArr, ahVar, ahVarArr);
                if (auVarJ == null) {
                    objValueOf = null;
                } else if (b != 2) {
                    if (b != 3) {
                        if (b != 4) {
                            if (b != 6) {
                                if (b != 8) {
                                    if (b != 100) {
                                        if (b != 10) {
                                            if (b == 11 && auVarJ.b == 11) {
                                                objValueOf = this.a.z();
                                            }
                                        } else if (auVarJ.b == 10) {
                                            objValueOf = Long.valueOf(this.a.x());
                                        }
                                    } else if (auVarJ.b == 11) {
                                        objValueOf = this.a.A();
                                    }
                                } else if (auVarJ.b == 8) {
                                    objValueOf = Integer.valueOf(this.a.w());
                                }
                            } else if (auVarJ.b == 6) {
                                objValueOf = Short.valueOf(this.a.v());
                            }
                        } else if (auVarJ.b == 4) {
                            objValueOf = Double.valueOf(this.a.y());
                        }
                    } else if (auVarJ.b == 3) {
                        objValueOf = Byte.valueOf(this.a.u());
                    }
                } else if (auVarJ.b == 2) {
                    objValueOf = Boolean.valueOf(this.a.t());
                }
                return objValueOf;
            } catch (Exception e) {
                throw new ag(e);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    private au j(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        this.b.a(bArr);
        int length = ahVarArr.length + 1;
        ah[] ahVarArr2 = new ah[length];
        int i = 0;
        ahVarArr2[0] = ahVar;
        int i2 = 0;
        while (i2 < ahVarArr.length) {
            int i3 = i2 + 1;
            ahVarArr2[i3] = ahVarArr[i2];
            i2 = i3;
        }
        this.a.j();
        au auVarL = null;
        while (i < length) {
            auVarL = this.a.l();
            if (auVarL.b == 0 || auVarL.c > ahVarArr2[i].a()) {
                return null;
            }
            if (auVarL.c != ahVarArr2[i].a()) {
                bc.a(this.a, auVarL.b);
                this.a.m();
            } else {
                i++;
                if (i < length) {
                    this.a.j();
                }
            }
        }
        return auVarL;
    }

    public Boolean a(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        return (Boolean) a((byte) 2, bArr, ahVar, ahVarArr);
    }

    public void a(aa aaVar, String str) throws ag {
        a(aaVar, str.getBytes());
    }

    public void a(aa aaVar, String str, String str2) throws ag {
        try {
            try {
                a(aaVar, str.getBytes(str2));
            } catch (UnsupportedEncodingException unused) {
                throw new ag("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.a.B();
        }
    }

    public void a(aa aaVar, byte[] bArr) throws ag {
        try {
            this.b.a(bArr);
            aaVar.read(this.a);
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public void a(aa aaVar, byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        try {
            try {
                if (j(bArr, ahVar, ahVarArr) != null) {
                    aaVar.read(this.a);
                }
            } catch (Exception e) {
                throw new ag(e);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public Byte b(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        return (Byte) a((byte) 3, bArr, ahVar, ahVarArr);
    }

    public Double c(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        return (Double) a((byte) 4, bArr, ahVar, ahVarArr);
    }

    public Short d(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        return (Short) a((byte) 6, bArr, ahVar, ahVarArr);
    }

    public Integer e(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        return (Integer) a((byte) 8, bArr, ahVar, ahVarArr);
    }

    public Long f(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        return (Long) a((byte) 10, bArr, ahVar, ahVarArr);
    }

    public String g(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        return (String) a((byte) 11, bArr, ahVar, ahVarArr);
    }

    public ByteBuffer h(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        return (ByteBuffer) a((byte) 100, bArr, ahVar, ahVarArr);
    }

    public Short i(byte[] bArr, ah ahVar, ah... ahVarArr) throws ag {
        Short shValueOf;
        try {
            try {
                if (j(bArr, ahVar, ahVarArr) != null) {
                    this.a.j();
                    shValueOf = Short.valueOf(this.a.l().c);
                } else {
                    shValueOf = null;
                }
                return shValueOf;
            } catch (Exception e) {
                throw new ag(e);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }
}
