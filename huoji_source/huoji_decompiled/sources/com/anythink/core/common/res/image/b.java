package com.anythink.core.common.res.image;

import android.os.SystemClock;
import com.anythink.core.common.o.b.d;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Map;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    private final String a = getClass().getSimpleName();
    public String c;
    public boolean d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;

    /* JADX INFO: renamed from: com.anythink.core.common.res.image.b$1, reason: invalid class name */
    public class AnonymousClass1 extends d {
        public AnonymousClass1() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v10, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v16 */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v19 */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v33 */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r1v43 */
        /* JADX WARN: Type inference failed for: r1v44 */
        /* JADX WARN: Type inference failed for: r1v45 */
        /* JADX WARN: Type inference failed for: r1v46 */
        /* JADX WARN: Type inference failed for: r1v47 */
        /* JADX WARN: Type inference failed for: r1v48 */
        /* JADX WARN: Type inference failed for: r1v49 */
        /* JADX WARN: Type inference failed for: r1v5, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r1v50 */
        /* JADX WARN: Type inference failed for: r1v6, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r1v7, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r1v8, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r1v9, types: [java.net.HttpURLConnection] */
        private void b(String str) throws Throwable {
            HttpURLConnection httpURLConnection;
            b bVar;
            b.this.e = System.currentTimeMillis();
            b.this.f = SystemClock.elapsedRealtime();
            ?? r1 = 0;
            r1 = 0;
            r1 = 0;
            r1 = 0;
            r1 = 0;
            r1 = 0;
            r1 = 0;
            try {
                try {
                    String unused = b.this.a;
                    httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                } catch (Throwable th) {
                    th = th;
                }
            } catch (OutOfMemoryError e) {
                e = e;
            } catch (Error e2) {
                e = e2;
            } catch (SocketTimeoutException e3) {
                e = e3;
            } catch (Exception e4) {
                e = e4;
            } catch (StackOverflowError e5) {
                e = e5;
            } catch (ConnectTimeoutException e6) {
                e = e6;
            }
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                Map<String, String> mapA = b.this.a();
                if (mapA != null && mapA.size() > 0) {
                    for (String str2 : mapA.keySet()) {
                        httpURLConnection.addRequestProperty(str2, mapA.get(str2));
                        String unused2 = b.this.a;
                        StringBuilder sb = new StringBuilder("REQUEST ADDED HEADER: \n");
                        sb.append(str2);
                        sb.append("  :  ");
                        sb.append(mapA.get(str2));
                    }
                }
                bVar = b.this;
            } catch (OutOfMemoryError e7) {
                e = e7;
                r1 = httpURLConnection;
                System.gc();
                String unused3 = b.this.a;
                e.getMessage();
                b.this.a(c.a, e.getMessage());
                if (r1 != 0) {
                    r1.disconnect();
                    return;
                }
            } catch (StackOverflowError e8) {
                e = e8;
                r1 = httpURLConnection;
                System.gc();
                String unused4 = b.this.a;
                e.getMessage();
                b.this.a(c.a, e.getMessage());
                if (r1 != 0) {
                    r1.disconnect();
                    return;
                }
            } catch (Error e9) {
                e = e9;
                r1 = httpURLConnection;
                System.gc();
                String unused5 = b.this.a;
                e.getMessage();
                b.this.a(c.a, e.getMessage());
                if (r1 != 0) {
                    r1.disconnect();
                    return;
                }
            } catch (SocketTimeoutException e10) {
                e = e10;
                r1 = httpURLConnection;
                b.this.a(c.a, e.getMessage());
                String unused6 = b.this.a;
                if (r1 != 0) {
                    r1.disconnect();
                }
            } catch (ConnectTimeoutException e11) {
                e = e11;
                r1 = httpURLConnection;
                b.this.a(c.a, e.getMessage());
                if (r1 != 0) {
                    r1.disconnect();
                    return;
                }
            } catch (Exception e12) {
                e = e12;
                r1 = httpURLConnection;
                String unused7 = b.this.a;
                e.getMessage();
                b.this.a(c.a, e.getMessage());
                if (r1 != 0) {
                    r1.disconnect();
                    return;
                }
            } catch (Throwable th2) {
                th = th2;
                r1 = httpURLConnection;
                if (r1 != 0) {
                    r1.disconnect();
                }
                throw th;
            }
            if (bVar.d) {
                bVar.a(c.b, "Task had been canceled.");
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    return;
                }
                return;
            }
            httpURLConnection.setConnectTimeout(60000);
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                b bVar2 = b.this;
                if (bVar2.d) {
                    bVar2.a(c.b, "Task had been canceled.");
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        return;
                    }
                    return;
                }
                bVar2.i = httpURLConnection.getContentLength();
                InputStream inputStream = httpURLConnection.getInputStream();
                boolean zA = b.this.a(inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                b.this.g = System.currentTimeMillis();
                b.this.h = SystemClock.elapsedRealtime();
                if (zA) {
                    String unused8 = b.this.a;
                    StringBuilder sb2 = new StringBuilder("download success --> ");
                    String str3 = b.this.c;
                    sb2.append(str3);
                    b.this.c();
                    r1 = str3;
                } else {
                    String unused9 = b.this.a;
                    new StringBuilder("download fail --> ").append(b.this.c);
                    b.this.a(c.a, "Save fail!");
                    r1 = "Save fail!";
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    return;
                }
                return;
            }
            String unused10 = b.this.a;
            StringBuilder sb3 = new StringBuilder("http respond status code is ");
            sb3.append(responseCode);
            sb3.append(" ! url=");
            sb3.append(str);
            if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
                b.this.a(c.a, "Resource download fail, status code: " + responseCode + ", " + httpURLConnection.getResponseMessage() + ", url: " + str);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    return;
                }
                return;
            }
            b bVar3 = b.this;
            if (bVar3.d) {
                bVar3.a(c.b, "Task had been canceled.");
            } else {
                String headerField = httpURLConnection.getHeaderField("Location");
                if (headerField != null) {
                    if (!headerField.toLowerCase().startsWith("http")) {
                        b.this.a(c.a, "Final url is wrong:".concat(String.valueOf(headerField)));
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                            return;
                        }
                        return;
                    }
                    b(headerField);
                }
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        }

        @Override // com.anythink.core.common.o.b.d
        public final void a() throws Throwable {
            b bVar;
            String message;
            try {
                b(b.this.c);
            } catch (Exception e) {
                String unused = b.this.a;
                e.getMessage();
                bVar = b.this;
                message = e.getMessage();
                bVar.a(c.a, message);
            } catch (OutOfMemoryError e2) {
                e = e2;
                System.gc();
                bVar = b.this;
                message = e.getMessage();
                bVar.a(c.a, message);
            } catch (StackOverflowError e3) {
                e = e3;
                System.gc();
                bVar = b.this;
                message = e.getMessage();
                bVar.a(c.a, message);
            }
        }
    }

    public b(String str) {
        this.c = str;
    }

    private void e() {
        this.d = true;
    }

    private void f() {
        a(new AnonymousClass1());
    }

    private static int g() {
        return 60000;
    }

    private static int h() {
        return 20000;
    }

    public abstract Map<String, String> a();

    public abstract void a(d dVar);

    public abstract void a(String str, String str2);

    public abstract boolean a(InputStream inputStream);

    public abstract void b();

    public abstract void c();

    public final void d() {
        this.d = false;
        a(new AnonymousClass1());
    }
}
