package com.anythink.china.common.a;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final String e = ".temp";
    public static final String f = ".log";
    public static final String g = ".apk";
    public static final int h = 0;
    public static final int i = 1;
    public static final int j = 2;
    public static final int k = 3;
    public static final int l = 4;
    private static final String u = "a";
    public String a;
    public String b;
    public boolean c;
    public boolean d;
    public int m = 0;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;
    public long t;
    private RandomAccessFile v;
    private InterfaceC0077a w;
    private e x;
    private String y;

    /* JADX INFO: renamed from: com.anythink.china.common.a.a$1, reason: invalid class name */
    public class AnonymousClass1 extends com.anythink.core.common.o.b.d {
        public AnonymousClass1() {
        }

        private void b(String str) throws Throwable {
            HttpURLConnection httpURLConnection;
            a.this.o = System.currentTimeMillis();
            a.this.p = SystemClock.elapsedRealtime();
            HttpURLConnection httpURLConnection2 = null;
            try {
                try {
                    String unused = a.u;
                    httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                } catch (Throwable th) {
                    th = th;
                }
            } catch (OutOfMemoryError e) {
                e = e;
            } catch (StackOverflowError e2) {
                e = e2;
            } catch (Error e3) {
                e = e3;
            } catch (SocketTimeoutException e4) {
                e = e4;
            } catch (ConnectTimeoutException e5) {
                e = e5;
            } catch (Exception e6) {
                e = e6;
            }
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                if (a.this.x.o) {
                    String strI = com.anythink.core.common.o.e.i();
                    if (!TextUtils.isEmpty(strI)) {
                        httpURLConnection.addRequestProperty("User-Agent", strI);
                    }
                }
                a aVar = a.this;
                if (aVar.n > 0) {
                    String unused2 = a.u;
                    StringBuilder sb = new StringBuilder("Range: startPos -> ");
                    sb.append(a.this.n);
                    sb.append("  ,  endPos -> ");
                    sb.append(a.this.s);
                    httpURLConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=" + a.this.n + "-");
                } else {
                    aVar.s = httpURLConnection.getContentLength();
                }
                a aVar2 = a.this;
                if (aVar2.s <= 0) {
                    String unused3 = a.u;
                    a.this.a(c.a("10000", "downloadSize <= 0"));
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        return;
                    }
                    return;
                }
                if (aVar2.c) {
                    if (aVar2.x != null) {
                        a.this.x.j();
                    }
                    a aVar3 = a.this;
                    aVar3.m = 3;
                    aVar3.d();
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        return;
                    }
                    return;
                }
                httpURLConnection.setConnectTimeout(60000);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200 && responseCode != 206) {
                    String unused4 = a.u;
                    StringBuilder sb2 = new StringBuilder("http respond status code is ");
                    sb2.append(responseCode);
                    sb2.append(" ! url=");
                    sb2.append(str);
                    a.this.a(c.a("10001", httpURLConnection.getResponseMessage()));
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        return;
                    }
                    return;
                }
                a aVar4 = a.this;
                if (aVar4.c) {
                    if (aVar4.x != null) {
                        a.this.x.j();
                    }
                    a aVar5 = a.this;
                    aVar5.m = 3;
                    aVar5.d();
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        return;
                    }
                    return;
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                if (a.this.x != null) {
                    a.this.x.i();
                }
                e eVar = a.this.x;
                a aVar6 = a.this;
                eVar.h = aVar6.s;
                if (aVar6.w != null) {
                    InterfaceC0077a interfaceC0077a = a.this.w;
                    e eVar2 = a.this.x;
                    a aVar7 = a.this;
                    interfaceC0077a.a(eVar2, aVar7.n, aVar7.s);
                }
                a aVar8 = a.this;
                int iA = aVar8.a(aVar8.b, inputStream);
                a.this.m = iA;
                if (inputStream != null) {
                    inputStream.close();
                }
                a.this.q = System.currentTimeMillis();
                a.this.r = SystemClock.elapsedRealtime();
                e eVar3 = a.this.x;
                a aVar9 = a.this;
                eVar3.i = aVar9.r - aVar9.p;
                if (iA == 1) {
                    String unused5 = a.u;
                    new StringBuilder("download success --> ").append(a.this.a);
                    a.this.e();
                } else if (iA == 2 || iA == 3) {
                    aVar9.d();
                } else {
                    String unused6 = a.u;
                    new StringBuilder("download fail --> ").append(a.this.a);
                    a.this.b(c.a("10000", "Save fail!(" + a.this.y + ")"));
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (OutOfMemoryError e7) {
                e = e7;
                httpURLConnection2 = httpURLConnection;
                System.gc();
                String unused7 = a.u;
                e.getMessage();
                a.this.a(c.a("10000", e.getMessage() != null ? e.getMessage() : "Http connect error!"));
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (StackOverflowError e8) {
                e = e8;
                httpURLConnection2 = httpURLConnection;
                System.gc();
                String unused8 = a.u;
                e.getMessage();
                a.this.a(c.a("10000", e.getMessage() != null ? e.getMessage() : "Http connect error!"));
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Error e9) {
                e = e9;
                httpURLConnection2 = httpURLConnection;
                System.gc();
                String unused9 = a.u;
                e.getMessage();
                a.this.a(c.a("10000", e.getMessage() != null ? e.getMessage() : "Http connect error!"));
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (SocketTimeoutException e10) {
                e = e10;
                httpURLConnection2 = httpURLConnection;
                a.this.a(c.a("20001", e.getMessage()));
                String unused10 = a.u;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (ConnectTimeoutException e11) {
                e = e11;
                httpURLConnection2 = httpURLConnection;
                a.this.a(e);
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Exception e12) {
                e = e12;
                httpURLConnection2 = httpURLConnection;
                String unused11 = a.u;
                e.getMessage();
                a.this.a(c.a("10000", e.getMessage() != null ? e.getMessage() : "Http connect error!"));
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:137:0x02e2 A[Catch: Exception -> 0x02e6, StackOverflowError -> 0x0301, OutOfMemoryError -> 0x0303, TryCatch #9 {Exception -> 0x02e6, OutOfMemoryError -> 0x0303, StackOverflowError -> 0x0301, blocks: (B:3:0x0015, B:20:0x00bb, B:29:0x00dc, B:38:0x011b, B:47:0x013d, B:67:0x0205, B:91:0x023d, B:101:0x0264, B:111:0x028b, B:121:0x02b2, B:127:0x02c0, B:133:0x02db, B:137:0x02e2, B:138:0x02e5), top: B:152:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:150:0x0313  */
        /* JADX WARN: Type inference failed for: r4v1, types: [long] */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v9, types: [java.net.HttpURLConnection] */
        @Override // com.anythink.core.common.o.b.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a() throws Throwable {
            Throwable th;
            HttpURLConnection httpURLConnection;
            Exception e;
            ConnectTimeoutException e2;
            SocketTimeoutException e3;
            Error e4;
            StackOverflowError e5;
            OutOfMemoryError e6;
            String message = "Http connect error!";
            String unused = a.u;
            new StringBuilder("start download url -> ").append(a.this.a);
            try {
                a.a(a.this);
                a aVar = a.this;
                String str = aVar.a;
                aVar.o = System.currentTimeMillis();
                a aVar2 = a.this;
                ?? ElapsedRealtime = SystemClock.elapsedRealtime();
                aVar2.p = ElapsedRealtime;
                try {
                    try {
                        String unused2 = a.u;
                        httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        try {
                            httpURLConnection.setInstanceFollowRedirects(false);
                            if (a.this.x.o) {
                                String strI = com.anythink.core.common.o.e.i();
                                if (!TextUtils.isEmpty(strI)) {
                                    httpURLConnection.addRequestProperty("User-Agent", strI);
                                }
                            }
                            a aVar3 = a.this;
                            if (aVar3.n > 0) {
                                String unused3 = a.u;
                                StringBuilder sb = new StringBuilder("Range: startPos -> ");
                                sb.append(a.this.n);
                                sb.append("  ,  endPos -> ");
                                sb.append(a.this.s);
                                httpURLConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=" + a.this.n + "-");
                            } else {
                                aVar3.s = httpURLConnection.getContentLength();
                            }
                            a aVar4 = a.this;
                            if (aVar4.s <= 0) {
                                String unused4 = a.u;
                                a.this.a(c.a("10000", "downloadSize <= 0"));
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                    return;
                                }
                                return;
                            }
                            if (aVar4.c) {
                                if (aVar4.x != null) {
                                    a.this.x.j();
                                }
                                a aVar5 = a.this;
                                aVar5.m = 3;
                                aVar5.d();
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                    return;
                                }
                                return;
                            }
                            httpURLConnection.setConnectTimeout(60000);
                            httpURLConnection.connect();
                            int responseCode = httpURLConnection.getResponseCode();
                            if (responseCode != 200 && responseCode != 206) {
                                String unused5 = a.u;
                                StringBuilder sb2 = new StringBuilder("http respond status code is ");
                                sb2.append(responseCode);
                                sb2.append(" ! url=");
                                sb2.append(str);
                                a.this.a(c.a("10001", httpURLConnection.getResponseMessage()));
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                    return;
                                }
                                return;
                            }
                            a aVar6 = a.this;
                            if (aVar6.c) {
                                if (aVar6.x != null) {
                                    a.this.x.j();
                                }
                                a aVar7 = a.this;
                                aVar7.m = 3;
                                aVar7.d();
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                    return;
                                }
                                return;
                            }
                            InputStream inputStream = httpURLConnection.getInputStream();
                            if (a.this.x != null) {
                                a.this.x.i();
                            }
                            e eVar = a.this.x;
                            a aVar8 = a.this;
                            eVar.h = aVar8.s;
                            if (aVar8.w != null) {
                                InterfaceC0077a interfaceC0077a = a.this.w;
                                e eVar2 = a.this.x;
                                a aVar9 = a.this;
                                interfaceC0077a.a(eVar2, aVar9.n, aVar9.s);
                            }
                            a aVar10 = a.this;
                            int iA = aVar10.a(aVar10.b, inputStream);
                            a.this.m = iA;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            a.this.q = System.currentTimeMillis();
                            a.this.r = SystemClock.elapsedRealtime();
                            e eVar3 = a.this.x;
                            a aVar11 = a.this;
                            eVar3.i = aVar11.r - aVar11.p;
                            if (iA == 1) {
                                String unused6 = a.u;
                                new StringBuilder("download success --> ").append(a.this.a);
                                a.this.e();
                            } else if (iA == 2 || iA == 3) {
                                aVar11.d();
                            } else {
                                String unused7 = a.u;
                                new StringBuilder("download fail --> ").append(a.this.a);
                                a.this.b(c.a("10000", "Save fail!(" + a.this.y + ")"));
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (OutOfMemoryError e7) {
                            e6 = e7;
                            System.gc();
                            String unused8 = a.u;
                            e6.getMessage();
                            a.this.a(c.a("10000", e6.getMessage() != null ? e6.getMessage() : "Http connect error!"));
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (StackOverflowError e8) {
                            e5 = e8;
                            System.gc();
                            String unused9 = a.u;
                            e5.getMessage();
                            a.this.a(c.a("10000", e5.getMessage() != null ? e5.getMessage() : "Http connect error!"));
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (Error e9) {
                            e4 = e9;
                            System.gc();
                            String unused10 = a.u;
                            e4.getMessage();
                            a.this.a(c.a("10000", e4.getMessage() != null ? e4.getMessage() : "Http connect error!"));
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (SocketTimeoutException e10) {
                            e3 = e10;
                            a.this.a(c.a("20001", e3.getMessage()));
                            String unused11 = a.u;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (ConnectTimeoutException e11) {
                            e2 = e11;
                            a.this.a(e2);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (Exception e12) {
                            e = e12;
                            String unused12 = a.u;
                            e.getMessage();
                            a.this.a(c.a("10000", e.getMessage() != null ? e.getMessage() : "Http connect error!"));
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (ElapsedRealtime != 0) {
                            ElapsedRealtime.disconnect();
                        }
                        throw th;
                    }
                } catch (OutOfMemoryError e13) {
                    httpURLConnection = null;
                    e6 = e13;
                } catch (StackOverflowError e14) {
                    httpURLConnection = null;
                    e5 = e14;
                } catch (Error e15) {
                    httpURLConnection = null;
                    e4 = e15;
                } catch (SocketTimeoutException e16) {
                    httpURLConnection = null;
                    e3 = e16;
                } catch (ConnectTimeoutException e17) {
                    httpURLConnection = null;
                    e2 = e17;
                } catch (Exception e18) {
                    httpURLConnection = null;
                    e = e18;
                } catch (Throwable th3) {
                    ElapsedRealtime = 0;
                    th = th3;
                    if (ElapsedRealtime != 0) {
                    }
                    throw th;
                }
            } catch (Exception e19) {
                String unused13 = a.u;
                e19.getMessage();
                if (e19.getMessage() != null) {
                    message = e19.getMessage();
                }
                a.this.b(c.a("10000", message));
            } catch (OutOfMemoryError e20) {
                e = e20;
                System.gc();
                String unused14 = a.u;
                e.getMessage();
                if (e.getMessage() != null) {
                    message = e.getMessage();
                }
                a.this.b(c.a("10000", message));
            } catch (StackOverflowError e21) {
                e = e21;
                System.gc();
                String unused142 = a.u;
                e.getMessage();
                if (e.getMessage() != null) {
                }
                a.this.b(c.a("10000", message));
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.china.common.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0077a {
        void a(e eVar, long j);

        void a(e eVar, long j, long j2);

        void a(e eVar, long j, long j2, int i);

        void a(e eVar, String str);

        void b(e eVar, long j, long j2);
    }

    public a(e eVar) {
        this.x = eVar;
        this.a = eVar.b;
        this.b = eVar.n;
    }

    private int a(InputStream inputStream, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) {
        try {
            if (this.n > 0) {
                Log.i(u, "(" + this.x.c + ")  seek to -> " + this.n);
                randomAccessFile.seek(this.n);
            } else {
                Log.i(u, "(" + this.x.c + ")  set temp file size -> " + this.s);
                randomAccessFile.setLength(this.s);
            }
            byte[] bArr = new byte[1048576];
            this.t = this.n;
            while (true) {
                int i2 = inputStream.read(bArr);
                if (-1 == i2) {
                    return 1;
                }
                if (this.d) {
                    return 2;
                }
                if (this.c) {
                    return 3;
                }
                randomAccessFile.write(bArr, 0, i2);
                long j2 = this.t + ((long) i2);
                this.t = j2;
                e eVar = this.x;
                if (eVar != null) {
                    eVar.g = j2;
                }
                randomAccessFile2.setLength(0L);
                randomAccessFile2.write(com.anythink.china.common.c.b.a(this.t, this.s, this.x.a()).getBytes());
                InterfaceC0077a interfaceC0077a = this.w;
                if (interfaceC0077a != null) {
                    interfaceC0077a.b(this.x, this.t, this.s);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            this.y = th.getMessage();
            return 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(String str, InputStream inputStream) {
        e eVar;
        String strA = com.anythink.china.common.c.b.a(str);
        if (TextUtils.isEmpty(strA)) {
            return 4;
        }
        File file = new File(strA + e);
        File file2 = new File(strA + ".log");
        RandomAccessFile randomAccessFile = null;
        this.v = null;
        try {
            if (!file.exists()) {
                boolean zCreateNewFile = file.createNewFile();
                boolean zCreateNewFile2 = file2.createNewFile();
                if (!zCreateNewFile || !zCreateNewFile2) {
                    return 4;
                }
            }
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rws");
            try {
                RandomAccessFile randomAccessFile3 = new RandomAccessFile(file2, "rws");
                this.v = randomAccessFile3;
                int iA = a(inputStream, randomAccessFile2, randomAccessFile3);
                if (iA == 1) {
                    file.renameTo(new File(strA + g));
                    if (file2.exists()) {
                        file2.delete();
                    }
                    e eVar2 = this.x;
                    if (eVar2 != null) {
                        eVar2.l();
                    }
                } else if (iA == 2) {
                    e eVar3 = this.x;
                    if (eVar3 != null) {
                        eVar3.k();
                    }
                } else if (iA == 3) {
                    e eVar4 = this.x;
                    if (eVar4 != null) {
                        eVar4.j();
                    }
                } else if (iA == 4 && (eVar = this.x) != null) {
                    eVar.n();
                }
                try {
                    randomAccessFile2.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                return iA;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                try {
                    th.printStackTrace();
                    String str2 = this.y;
                    if (str2 != null) {
                        str2 = this.y + com.anythink.expressad.foundation.g.a.bQ + th.getMessage();
                    }
                    this.y = str2;
                    return 4;
                } finally {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static /* synthetic */ void a(a aVar) {
        File file = new File(com.anythink.china.common.c.b.a(aVar.b) + ".log");
        File file2 = new File(com.anythink.china.common.c.b.a(aVar.b) + e);
        if (!file.exists() || !file2.exists()) {
            try {
                file.delete();
                file2.delete();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        try {
            String strA = com.anythink.china.common.c.b.a(file);
            StringBuilder sb = new StringBuilder("apkLogFileContent: ");
            sb.append(strA);
            sb.append(", url: ");
            sb.append(aVar.a);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            String[] strArrSplit = strA.split("\\|");
            aVar.n = strArrSplit.length == 1 ? Long.parseLong(strA) : Long.parseLong(strArrSplit[0]);
            if (aVar.n > file2.length()) {
                aVar.n = 0L;
            } else {
                aVar.s = file2.length();
            }
            StringBuilder sb2 = new StringBuilder("readLogFile: startPost -> ");
            sb2.append(aVar.n);
            sb2.append(", downloadSize -> ");
            sb2.append(aVar.s);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void g() {
        com.anythink.china.common.a.a.a.a().a((com.anythink.core.common.o.b.d) new AnonymousClass1());
    }

    private void h() {
        try {
            RandomAccessFile randomAccessFile = this.v;
            if (randomAccessFile != null) {
                randomAccessFile.setLength(0L);
                this.v.write(com.anythink.china.common.c.b.a(this.t, this.s, this.x.a()).getBytes());
            }
            try {
                RandomAccessFile randomAccessFile2 = this.v;
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                try {
                    RandomAccessFile randomAccessFile3 = this.v;
                    if (randomAccessFile3 != null) {
                        randomAccessFile3.close();
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (Throwable th2) {
                try {
                    if (this.v != null) {
                        this.v.close();
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                throw th2;
            }
        }
    }

    private void i() {
        File file = new File(com.anythink.china.common.c.b.a(this.b) + ".log");
        File file2 = new File(com.anythink.china.common.c.b.a(this.b) + e);
        if (!file.exists() || !file2.exists()) {
            try {
                file.delete();
                file2.delete();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        try {
            String strA = com.anythink.china.common.c.b.a(file);
            StringBuilder sb = new StringBuilder("apkLogFileContent: ");
            sb.append(strA);
            sb.append(", url: ");
            sb.append(this.a);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            String[] strArrSplit = strA.split("\\|");
            this.n = strArrSplit.length == 1 ? Long.parseLong(strA) : Long.parseLong(strArrSplit[0]);
            if (this.n > file2.length()) {
                this.n = 0L;
            } else {
                this.s = file2.length();
            }
            StringBuilder sb2 = new StringBuilder("readLogFile: startPost -> ");
            sb2.append(this.n);
            sb2.append(", downloadSize -> ");
            sb2.append(this.s);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static int j() {
        return 60000;
    }

    private static int k() {
        return 20000;
    }

    public final void a() {
        this.c = true;
    }

    public final void a(InterfaceC0077a interfaceC0077a) {
        this.w = interfaceC0077a;
        this.c = false;
        com.anythink.china.common.a.a.a.a().a((com.anythink.core.common.o.b.d) new AnonymousClass1());
    }

    public final void a(b bVar) {
        new StringBuilder("url: ").append(this.a);
        b(bVar);
    }

    public final void a(ConnectTimeoutException connectTimeoutException) {
        b(c.a("10000", connectTimeoutException.getMessage()));
    }

    public final void b() {
        this.d = true;
    }

    public final void b(b bVar) {
        h();
        StringBuilder sb = new StringBuilder("download failed --> ");
        sb.append(this.a);
        sb.append("(");
        sb.append(bVar.a());
        sb.append(")");
        this.x.n();
        InterfaceC0077a interfaceC0077a = this.w;
        if (interfaceC0077a != null) {
            interfaceC0077a.a(this.x, bVar.b());
        }
    }

    public boolean c() {
        return true;
    }

    public final void d() {
        h();
        new StringBuilder("url: ").append(this.a);
        InterfaceC0077a interfaceC0077a = this.w;
        if (interfaceC0077a != null) {
            interfaceC0077a.a(this.x, this.t, this.s, this.m);
        }
    }

    public final void e() {
        new StringBuilder("url: ").append(this.a);
        InterfaceC0077a interfaceC0077a = this.w;
        if (interfaceC0077a != null) {
            e eVar = this.x;
            interfaceC0077a.a(eVar, eVar.i);
        }
    }
}
