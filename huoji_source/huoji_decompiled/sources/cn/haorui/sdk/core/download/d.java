package cn.haorui.sdk.core.download;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import cn.haorui.sdk.core.utils.StringUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import z2.ox;
import z2.qx;
import z2.sx;
import z2.tx;

/* JADX INFO: loaded from: classes.dex */
public class d implements Runnable {
    public static final Handler g = new Handler(Looper.getMainLooper());
    public cn.haorui.sdk.core.download.b a;
    public String b;
    public ThreadPoolExecutor c;
    public final ox d = new ox.OooO0O0().OooO0Oo();
    public Map<Object, h> e;
    public transient long f;

    public class a implements Runnable {
        public final /* synthetic */ cn.haorui.sdk.core.download.b a;
        public final /* synthetic */ File b;

        public a(cn.haorui.sdk.core.download.b bVar, File file) {
            this.a = bVar;
            this.b = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (h hVar : d.this.e.values()) {
                hVar.b(this.a);
                hVar.a(this.b, this.a);
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ cn.haorui.sdk.core.download.b a;
        public final /* synthetic */ String b;

        public b(cn.haorui.sdk.core.download.b bVar, String str) {
            this.a = bVar;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (h hVar : d.this.e.values()) {
                hVar.b(this.a);
                hVar.a(this.a, this.b);
            }
        }
    }

    public d(String str, String str2, String str3, String str4) {
        this.b = str;
        cn.haorui.sdk.core.download.b bVar = new cn.haorui.sdk.core.download.b();
        this.a = bVar;
        bVar.b = str;
        bVar.c = str2;
        bVar.d = str3;
        bVar.a = str4;
        bVar.e = cn.haorui.sdk.core.download.a.b().a();
        if (!TextUtils.isEmpty(str)) {
            this.a.g = str.substring(str.lastIndexOf("/")).replace("/", "");
            this.a.f = this.a.e + "/" + System.currentTimeMillis() + com.anythink.china.common.a.a.g;
        }
        cn.haorui.sdk.core.download.b bVar2 = this.a;
        bVar2.j = 0;
        bVar2.h = -1L;
        this.c = cn.haorui.sdk.core.download.a.b().c().a();
        this.e = new HashMap();
    }

    public void a() {
        this.c.remove(this);
        cn.haorui.sdk.core.download.b bVar = this.a;
        int i = bVar.j;
        if (i == 1) {
            bVar.j = 3;
            g.post(new f(this, bVar));
        } else if (i == 2) {
            bVar.j = 3;
        }
    }

    public final void a(cn.haorui.sdk.core.download.b bVar, File file) {
        File file2;
        if (file.exists()) {
            String str = bVar.g;
            try {
                str = StringUtils.byte2hex(MessageDigest.getInstance("MD5").digest(bVar.b.getBytes())).toLowerCase() + com.anythink.china.common.a.a.g;
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            file2 = new File(bVar.e, str);
            file.renameTo(file2);
        } else {
            file2 = null;
        }
        bVar.j = 5;
        g.post(new a(bVar, file2));
    }

    public final void a(cn.haorui.sdk.core.download.b bVar, String str) {
        Log.e("DownloadTask", "postOnError: " + str);
        bVar.j = 4;
        g.post(new b(bVar, str));
    }

    public final void a(InputStream inputStream, RandomAccessFile randomAccessFile, cn.haorui.sdk.core.download.b bVar) {
        byte[] bArr;
        if (inputStream == null) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                    return;
                }
            }
            randomAccessFile.close();
            return;
        }
        try {
            bVar.j = 2;
            bArr = new byte[8192];
        } catch (Exception unused2) {
        } catch (Throwable th) {
            try {
                inputStream.close();
                randomAccessFile.close();
            } catch (IOException unused3) {
            }
            throw th;
        }
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1 && bVar.j == 2) {
                randomAccessFile.write(bArr, 0, i);
                long j = i;
                bVar.i += j;
                bVar.k += j;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.f >= 300) {
                    this.f = jElapsedRealtime;
                    g.post(new c(this, bVar));
                }
            }
            try {
                inputStream.close();
                randomAccessFile.close();
                return;
            } catch (IOException unused4) {
                return;
            }
        }
    }

    public void b() {
        String str;
        cn.haorui.sdk.core.download.b bVar = this.a;
        int i = bVar.j;
        if (i == 0 || i == 3 || i == 4) {
            bVar.j = 0;
            g.post(new e(this, bVar));
            this.c.execute(this);
            return;
        }
        if (i == 5) {
            if (bVar.f == null) {
                str = "filePath is null";
            } else {
                cn.haorui.sdk.core.download.b bVar2 = this.a;
                File file = new File(bVar2.e, bVar2.g);
                Log.e("DownloadTask", "filepath=: " + file.getAbsolutePath() + "fileIsExists=" + file.exists() + ",fileLength=" + file.length() + ", progressTotalSize=" + this.a.h);
                if (file.exists()) {
                    long length = file.length();
                    cn.haorui.sdk.core.download.b bVar3 = this.a;
                    if (length == bVar3.h) {
                        a(bVar3, file);
                        return;
                    }
                }
                bVar = this.a;
                str = "filepath may be invalid or damaged";
            }
            a(bVar, str);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        cn.haorui.sdk.core.download.b bVar = this.a;
        long j = bVar.i;
        if (j < 0) {
            a(bVar, "startPosition<0");
            return;
        }
        if (TextUtils.isEmpty(bVar.g)) {
            return;
        }
        try {
            sx sxVarExecute = this.d.OooO00o(new qx.OooO00o().OooO00o(HttpHeaders.RANGE, "bytes=" + j + "-").OooOOo0(this.a.b).OooO0o().OooO0O0()).execute();
            int iOoooooO = sxVarExecute.OoooooO();
            if (iOoooooO == 404 || iOoooooO >= 500) {
                a(this.a, "network error! http response code is 404 or 5xx!");
                return;
            }
            tx txVarOooOO0 = sxVarExecute.OooOO0();
            if (txVarOooOO0 == null) {
                a(this.a, "response body is null");
                return;
            }
            cn.haorui.sdk.core.download.b bVar2 = this.a;
            if (bVar2.h == -1) {
                bVar2.h = txVarOooOO0.contentLength();
            }
            File file = new File(this.a.e);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = !TextUtils.isEmpty(this.a.f) ? new File(this.a.f) : new File(file, this.a.g);
            cn.haorui.sdk.core.download.b bVar3 = this.a;
            long j2 = bVar3.h;
            if (j > j2) {
                a(bVar3, "file has expired");
                return;
            }
            if (j == j2 && j > 0) {
                if (!file2.exists() || j != file2.length()) {
                    a(this.a, "file has expired");
                    return;
                }
                a(this.a, file2);
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
                randomAccessFile.seek(j);
                this.a.i = j;
                try {
                    a(txVarOooOO0.byteStream(), randomAccessFile, this.a);
                    cn.haorui.sdk.core.download.b bVar4 = this.a;
                    int i = bVar4.j;
                    if (i == 3) {
                        bVar4.j = 3;
                        g.post(new f(this, bVar4));
                        return;
                    }
                    if (i == 2) {
                        long length = file2.length();
                        cn.haorui.sdk.core.download.b bVar5 = this.a;
                        if (length == bVar5.h) {
                            a(bVar5, file2);
                            return;
                        }
                        bVar4 = bVar5;
                    }
                    a(bVar4, "file has expired");
                } catch (Exception e) {
                    a(this.a, e.toString());
                }
            } catch (Exception e2) {
                a(this.a, e2.toString());
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }
}
