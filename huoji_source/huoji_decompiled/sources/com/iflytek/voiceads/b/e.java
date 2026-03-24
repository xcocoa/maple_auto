package com.iflytek.voiceads.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import android.text.TextUtils;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class e extends Thread {
    private String a;
    private b b;

    static class a extends FilterInputStream {
        public a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long j2 = 0;
            while (j2 < j) {
                long jSkip = this.in.skip(j - j2);
                if (jSkip == 0) {
                    if (read() < 0) {
                        break;
                    }
                    jSkip = 1;
                }
                j2 = jSkip + j2;
            }
            return j2;
        }
    }

    public interface b {
        void a(Bitmap bitmap);

        void a(Exception exc);
    }

    public e(String str, b bVar) {
        this.a = str;
        this.b = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1  */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x006f -> B:42:0x0008). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0071 -> B:42:0x0008). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0083 -> B:42:0x0008). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0085 -> B:42:0x0008). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0097 -> B:42:0x0008). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0099 -> B:42:0x0008). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b() throws Throwable {
        ?? IsEmpty = TextUtils.isEmpty(this.a);
        if (IsEmpty != 0) {
            return;
        }
        ?? r1 = 0;
        try {
            try {
                IsEmpty = (HttpURLConnection) new URL(this.a).openConnection();
                try {
                    IsEmpty.setRequestMethod("GET");
                    IsEmpty.setConnectTimeout(15000);
                    IsEmpty.setReadTimeout(15000);
                    if (200 != IsEmpty.getResponseCode()) {
                        this.b.a(new Exception("network error!"));
                        IsEmpty = IsEmpty;
                        if (IsEmpty != 0) {
                            IsEmpty.disconnect();
                            IsEmpty = IsEmpty;
                        }
                    } else {
                        InputStream inputStream = IsEmpty.getInputStream();
                        a aVar = new a(inputStream);
                        Looper.prepare();
                        Looper.getMainLooper();
                        this.b.a(BitmapFactory.decodeStream(aVar));
                        inputStream.close();
                        IsEmpty = IsEmpty;
                        if (IsEmpty != 0) {
                            IsEmpty.disconnect();
                            IsEmpty = IsEmpty;
                        }
                    }
                } catch (IOException e) {
                    this.b.a(new Exception("I/O error!"));
                    IsEmpty = IsEmpty;
                    if (IsEmpty != 0) {
                        IsEmpty.disconnect();
                        IsEmpty = IsEmpty;
                    }
                } catch (IllegalStateException e2) {
                    this.b.a(new Exception("Incorrect URL!"));
                    IsEmpty = IsEmpty;
                    if (IsEmpty != 0) {
                        IsEmpty.disconnect();
                        IsEmpty = IsEmpty;
                    }
                } catch (Exception e3) {
                    this.b.a(new Exception("network error!"));
                    IsEmpty = IsEmpty;
                    if (IsEmpty != 0) {
                        IsEmpty.disconnect();
                        IsEmpty = IsEmpty;
                    }
                }
            } catch (Throwable th) {
                r1 = IsEmpty;
                th = th;
                if (r1 != 0) {
                    r1.disconnect();
                }
                throw th;
            }
        } catch (IOException e4) {
            IsEmpty = 0;
            this.b.a(new Exception("I/O error!"));
            IsEmpty = IsEmpty;
            if (IsEmpty != 0) {
            }
        } catch (IllegalStateException e5) {
            IsEmpty = 0;
            this.b.a(new Exception("Incorrect URL!"));
            IsEmpty = IsEmpty;
            if (IsEmpty != 0) {
            }
        } catch (Exception e6) {
            IsEmpty = 0;
            this.b.a(new Exception("network error!"));
            IsEmpty = IsEmpty;
            if (IsEmpty != 0) {
            }
        } catch (Throwable th2) {
            th = th2;
            if (r1 != 0) {
            }
            throw th;
        }
    }

    public void a() {
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        b();
    }
}
