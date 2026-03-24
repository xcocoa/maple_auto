package cn.haorui.sdk.core.download;

import android.os.Environment;
import cn.haorui.sdk.core.AdSdk;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public ConcurrentHashMap<String, d> a = new ConcurrentHashMap<>();
    public g b = new g();
    public String c = AdSdk.getContext().getApplicationContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + "/hrdownload";

    /* JADX INFO: renamed from: cn.haorui.sdk.core.download.a$a, reason: collision with other inner class name */
    public static class C0007a {
        public static final a a = new a();
    }

    public static a b() {
        return C0007a.a;
    }

    public String a() {
        return this.c;
    }

    public void a(String str) {
        d dVar = this.a.get(str);
        if (dVar != null) {
            ThreadPoolExecutor threadPoolExecutor = dVar.c;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.remove(dVar);
            }
            Map<Object, h> map = dVar.e;
            if (map != null) {
                map.remove(dVar.b);
            }
            try {
                File file = new File(dVar.a.f);
                if (file.exists() && file.isFile()) {
                    file.delete();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.a.remove(str);
    }

    public d b(String str) {
        return this.a.get(str);
    }

    public g c() {
        return this.b;
    }
}
