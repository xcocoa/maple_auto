package com.anythink.expressad.foundation.g.f.f;

import android.os.SystemClock;
import com.anythink.expressad.foundation.g.f.g;
import com.anythink.expressad.foundation.g.f.i;
import com.anythink.expressad.foundation.g.f.l;
import com.anythink.expressad.video.module.a.a.m;
import java.io.IOException;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLProtocolException;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class a implements g {
    private static final String a = "a";
    private static final int b = 3000;
    private com.anythink.expressad.foundation.g.f.e.a c;
    private com.anythink.expressad.foundation.g.f.c d;

    public a(com.anythink.expressad.foundation.g.f.e.a aVar, com.anythink.expressad.foundation.g.f.c cVar) {
        this.c = aVar;
        this.d = cVar;
    }

    private static void a(long j, i<?> iVar, byte[] bArr, int i) {
        if (com.anythink.expressad.a.a) {
            if (j > m.ag) {
                try {
                    Object[] objArr = new Object[6];
                    objArr[0] = iVar.d();
                    objArr[1] = Integer.valueOf(iVar.a());
                    objArr[2] = Long.valueOf(j);
                    objArr[3] = bArr != null ? Integer.valueOf(bArr.length) : "null";
                    objArr[4] = Integer.valueOf(i);
                    objArr[5] = Integer.valueOf(iVar.l().c());
                    String.format("Slow HTTP response for request=<%s> [method=%s] [lifetime=%d], [size=%s], [statusCode=%d], [retryCount=%s]", objArr);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            try {
                Object[] objArr2 = new Object[6];
                objArr2[0] = iVar.d();
                objArr2[1] = Integer.valueOf(iVar.a());
                objArr2[2] = Long.valueOf(j);
                objArr2[3] = bArr != null ? Integer.valueOf(bArr.length) : "null";
                objArr2[4] = Integer.valueOf(i);
                objArr2[5] = Integer.valueOf(iVar.l().c());
                String.format("Normal HTTP response for request=<%s> [method=%s] [lifetime=%d], [size=%s], [statusCode=%d], [retryCount=%s]", objArr2);
            } catch (Exception unused2) {
            }
        }
    }

    private void a(i<?> iVar, com.anythink.expressad.foundation.g.f.a.a aVar) throws com.anythink.expressad.foundation.g.f.a.a {
        if (!iVar.l().d()) {
            throw aVar;
        }
        this.d.e(iVar);
    }

    private static void a(String str, long j, i<?> iVar) {
        if (com.anythink.expressad.a.a) {
            try {
                Object[] objArr = new Object[4];
                objArr[0] = iVar.d();
                objArr[1] = Long.valueOf(j);
                if (str == null) {
                    str = "null";
                }
                objArr[2] = str;
                objArr[3] = Integer.valueOf(iVar.l().c());
                String.format("HTTP exception for request=<%s> [lifetime=%d], [size=%s], [retryCount=%s]", objArr);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0272 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c6  */
    @Override // com.anythink.expressad.foundation.g.f.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final c a(i<?> iVar) throws com.anythink.expressad.foundation.g.f.a.a {
        String str;
        b bVarA;
        byte[] bArrA;
        int iA;
        b bVarA2;
        String str2;
        byte[] bArrA2;
        int iA2;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        l lVarL = iVar != null ? iVar.l() : null;
        if ((lVarL != null ? lVarL.a() : 0) > 0) {
            String str3 = "ConnectException ex= ";
            while (!iVar.f()) {
                try {
                    try {
                        try {
                            iVar.i();
                            bVarA = this.c.a(iVar);
                        } catch (IOException e) {
                            e = e;
                            str = str3;
                            bVarA = null;
                        }
                        try {
                            iA = bVarA.a();
                            bArrA = iVar.a(bVarA, this.d);
                            try {
                                str = str3;
                            } catch (IOException e2) {
                                e = e2;
                                str = str3;
                            }
                        } catch (IOException e3) {
                            e = e3;
                            str = str3;
                            bArrA = null;
                            a("IOException ex= " + e.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                            if (bVarA != null) {
                                throw new com.anythink.expressad.foundation.g.f.a.a(14, null);
                            }
                            int iA3 = bVarA.a();
                            if (bArrA != null) {
                                c cVar = new c(iA3, bArrA, bVarA.b());
                                if (iA3 >= 400 && iA3 <= 499) {
                                    throw new com.anythink.expressad.foundation.g.f.a.a(6, cVar);
                                }
                                if (iA3 < 500 || iA3 > 599) {
                                    throw new com.anythink.expressad.foundation.g.f.a.a(2, cVar);
                                }
                                throw new com.anythink.expressad.foundation.g.f.a.a(7, cVar);
                            }
                            com.anythink.expressad.foundation.g.f.a.a aVar = new com.anythink.expressad.foundation.g.f.a.a(15, null);
                            if (!iVar.l().d()) {
                                throw aVar;
                            }
                            this.d.e(iVar);
                            str3 = str;
                        }
                    } catch (ConnectException e4) {
                        e = e4;
                        str = str3;
                    }
                    try {
                        a(SystemClock.elapsedRealtime() - jElapsedRealtime, iVar, bArrA, iA);
                        if (iA < 200 || iA > 399) {
                            throw new IOException();
                        }
                        return new c(iA, bArrA, bVarA.b());
                    } catch (ConnectException e5) {
                        e = e5;
                        a(str + e.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                        throw new com.anythink.expressad.foundation.g.f.a.a(12, null);
                    } catch (IOException e6) {
                        e = e6;
                        a("IOException ex= " + e.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                        if (bVarA != null) {
                        }
                    }
                } catch (MalformedURLException e7) {
                    a("MalformedURLException ex= " + e7.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                    throw new com.anythink.expressad.foundation.g.f.a.a(4, null);
                } catch (SocketTimeoutException e8) {
                    a("SocketTimeoutException ex= " + e8.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                    throw new com.anythink.expressad.foundation.g.f.a.a(10, null);
                } catch (UnknownHostException e9) {
                    a("UnknownHostException ex= " + e9.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                    throw new com.anythink.expressad.foundation.g.f.a.a(9, null);
                } catch (SSLProtocolException e10) {
                    a("SSLProtocolException ex= " + e10.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                    throw new com.anythink.expressad.foundation.g.f.a.a(11, null);
                } catch (ConnectTimeoutException e11) {
                    a("ConnectTimeoutException ex= " + e11.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                    throw new com.anythink.expressad.foundation.g.f.a.a(3, null);
                }
            }
            iVar.c();
            this.d.b(iVar);
            throw new com.anythink.expressad.foundation.g.f.a.a(-2, null);
        }
        if (iVar.f()) {
            iVar.c();
            this.d.b(iVar);
            throw new com.anythink.expressad.foundation.g.f.a.a(-2, null);
        }
        try {
            try {
                try {
                    iVar.i();
                    bVarA2 = this.c.a(iVar);
                } catch (ConnectException e12) {
                    e = e12;
                    str2 = "ConnectException ex= ";
                }
            } catch (IOException e13) {
                e = e13;
                bVarA2 = null;
            }
            try {
                iA2 = bVarA2.a();
                bArrA2 = iVar.a(bVarA2, this.d);
            } catch (IOException e14) {
                e = e14;
                bArrA2 = null;
                a("IOException ex= " + e.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                if (bVarA2 != null) {
                    throw new com.anythink.expressad.foundation.g.f.a.a(14, null);
                }
                int iA4 = bVarA2.a();
                if (bArrA2 == null) {
                    throw new com.anythink.expressad.foundation.g.f.a.a(15, null);
                }
                c cVar2 = new c(iA4, bArrA2, bVarA2.b());
                if (iA4 >= 400 && iA4 <= 499) {
                    throw new com.anythink.expressad.foundation.g.f.a.a(6, cVar2);
                }
                if (iA4 < 500 || iA4 > 599) {
                    throw new com.anythink.expressad.foundation.g.f.a.a(2, cVar2);
                }
                throw new com.anythink.expressad.foundation.g.f.a.a(7, cVar2);
            }
            try {
                str2 = "ConnectException ex= ";
                try {
                    a(SystemClock.elapsedRealtime() - jElapsedRealtime, iVar, bArrA2, iA2);
                    if (iA2 < 200 || iA2 > 399) {
                        throw new IOException();
                    }
                    return new c(iA2, bArrA2, bVarA2.b());
                } catch (ConnectException e15) {
                    e = e15;
                    a(str2 + e.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                    throw new com.anythink.expressad.foundation.g.f.a.a(12, null);
                }
            } catch (IOException e16) {
                e = e16;
                a("IOException ex= " + e.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
                if (bVarA2 != null) {
                }
            }
        } catch (MalformedURLException e17) {
            a("MalformedURLException ex= " + e17.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
            throw new com.anythink.expressad.foundation.g.f.a.a(4, null);
        } catch (SocketTimeoutException e18) {
            a("SocketTimeoutException ex= " + e18.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
            throw new com.anythink.expressad.foundation.g.f.a.a(10, null);
        } catch (UnknownHostException e19) {
            a("UnknownHostException ex= " + e19.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
            throw new com.anythink.expressad.foundation.g.f.a.a(9, null);
        } catch (SSLProtocolException e20) {
            a("SSLProtocolException ex= " + e20.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
            throw new com.anythink.expressad.foundation.g.f.a.a(11, null);
        } catch (ConnectTimeoutException e21) {
            a("ConnectTimeoutException ex= " + e21.getMessage(), SystemClock.elapsedRealtime() - jElapsedRealtime, iVar);
            throw new com.anythink.expressad.foundation.g.f.a.a(3, null);
        }
    }
}
