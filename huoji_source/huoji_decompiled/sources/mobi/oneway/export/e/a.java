package mobi.oneway.export.e;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.webkit.WebView;
import androidx.appcompat.widget.ActivityChooserModel;
import com.anythink.basead.a.e;
import com.anythink.expressad.exoplayer.f;
import com.didi.virtualapk.PluginManager;
import java.io.File;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.f.g;
import mobi.oneway.export.g.h;
import mobi.oneway.export.g.n;
import mobi.oneway.export.g.p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends Thread {
    private String a;
    private PluginManager b;
    private g c;
    private Timer g;
    private TimerTask h;
    private boolean d = false;
    private final long f = f.a;
    private CountDownLatch e = new CountDownLatch(1);

    public a(String str) {
        this.a = str;
        try {
            c();
            this.b = PluginManager.getInstance(mobi.oneway.export.a.b.a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String a(String str) {
        return mobi.oneway.export.a.b.a().getDir("plugin", 0).getPath() + File.separator + str;
    }

    private String a(JSONArray jSONArray, int i) {
        if (jSONArray == null) {
            return "";
        }
        try {
            if (jSONArray.length() <= 0) {
                return "";
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (i == jSONObject.optInt("adp")) {
                    return jSONObject.getString(com.anythink.expressad.videocommon.e.b.u);
                }
            }
            return "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private g a() {
        d();
        if (this.c == null && !this.d) {
            this.d = true;
            ClassLoader classLoaderA = mobi.oneway.export.b.a();
            if (classLoaderA != null) {
                try {
                    Class<?> clsLoadClass = classLoaderA.loadClass(mobi.oneway.export.a.a.l);
                    g gVar = new g();
                    this.c = gVar;
                    gVar.a(clsLoadClass);
                    this.c.a(1);
                    this.c.a(classLoaderA);
                    this.c.b(mobi.oneway.export.a.b.b());
                } catch (Exception e) {
                    c.a(PluginErrorType.shell_error_reflectClass, mobi.oneway.export.g.g.a((Throwable) e));
                }
            }
        }
        e();
        return this.c;
    }

    private g a(JSONObject jSONObject, JSONArray jSONArray) {
        return jSONObject.optInt("adp") == 1 ? a() : b(jSONObject, jSONArray);
    }

    private void a(JSONArray jSONArray) {
        mobi.oneway.export.f.d.a(jSONArray.toString());
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                mobi.oneway.export.f.d.a(new mobi.oneway.export.f.c(jSONObjectOptJSONObject));
            }
        }
    }

    private void a(JSONObject jSONObject) {
        mobi.oneway.export.b.a aVarA = mobi.oneway.export.b.a.a();
        aVarA.a(jSONObject.optBoolean("cacheAd"));
        aVarA.a(jSONObject.optInt("reqExpireTime"));
    }

    private g b(JSONObject jSONObject, JSONArray jSONArray) {
        d();
        int iOptInt = jSONObject.optInt("adp");
        String strOptString = jSONObject.optString("apkpkg");
        String strOptString2 = jSONObject.optString("verison");
        String strOptString3 = jSONObject.optString("adcl");
        try {
            this.b.loadPlugin(new File(a(iOptInt + com.anythink.china.common.a.a.g)));
            ClassLoader classLoader = this.b.getLoadedPlugin(strOptString).getClassLoader();
            Class<?> clsLoadClass = classLoader.loadClass(strOptString3);
            String strA = a(jSONArray, iOptInt);
            g gVar = new g();
            gVar.a(classLoader);
            gVar.a(iOptInt);
            gVar.a(clsLoadClass);
            gVar.a(strOptString2);
            gVar.a(System.currentTimeMillis());
            gVar.b(strA);
            return gVar;
        } catch (Exception e) {
            e.printStackTrace();
            e();
            return null;
        }
    }

    private void b() {
        g gVarA = a();
        if (gVarA != null) {
            mobi.oneway.export.f.d.a(gVarA);
        }
        b.a().c();
    }

    private void c() {
        b.a().c(new Runnable() { // from class: mobi.oneway.export.e.a.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        if (Build.VERSION.SDK_INT >= 28) {
                            try {
                                int iMyPid = Process.myPid();
                                Context contextA = mobi.oneway.export.a.b.a();
                                String str = contextA.getPackageName() + iMyPid;
                                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) contextA.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses()) {
                                    if (runningAppProcessInfo.pid == iMyPid) {
                                        str = runningAppProcessInfo.processName;
                                    }
                                }
                                WebView.setDataDirectorySuffix(str);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        new WebView(mobi.oneway.export.a.b.a());
                        if (a.this.e == null) {
                            return;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        if (a.this.e == null) {
                            return;
                        }
                    }
                    a.this.e.countDown();
                } catch (Throwable th) {
                    if (a.this.e != null) {
                        a.this.e.countDown();
                    }
                    throw th;
                }
            }
        });
    }

    private void d() {
        e();
        this.h = new TimerTask() { // from class: mobi.oneway.export.e.a.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                b.a().c();
            }
        };
        Timer timer = new Timer();
        this.g = timer;
        timer.schedule(this.h, f.a);
    }

    private void e() {
        TimerTask timerTask = this.h;
        if (timerTask != null) {
            timerTask.cancel();
            this.h = null;
        }
        Timer timer = this.g;
        if (timer != null) {
            timer.cancel();
            this.g = null;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        super.run();
        try {
            CountDownLatch countDownLatch = this.e;
            if (countDownLatch != null) {
                countDownLatch.await(f.a, TimeUnit.MILLISECONDS);
            }
            JSONObject jSONObjectM = new mobi.oneway.export.d.f(mobi.oneway.export.a.a.f, mobi.oneway.export.a.a.a).a("publishId", (Object) this.a).a("shellVersion", (Object) mobi.oneway.export.a.f).a("dmd", (Object) Build.MODEL).a("dmk", (Object) Build.BRAND).a("ip", (Object) n.a(mobi.oneway.export.a.b.a())).a("osv", (Object) Build.VERSION.RELEASE).a("osl", Integer.valueOf(Build.VERSION.SDK_INT)).a("ts", Long.valueOf(System.currentTimeMillis())).a("osi", (Object) mobi.oneway.export.f.f.a()).a("pkg", (Object) mobi.oneway.export.a.b.a().getPackageName()).a("did", (Object) mobi.oneway.export.g.f.a()).a("aid", (Object) mobi.oneway.export.g.f.e()).m();
            boolean zOptBoolean = jSONObjectM.optBoolean("upgrade");
            boolean zOptBoolean2 = jSONObjectM.optBoolean(e.a);
            String strOptString = jSONObjectM.optString("appToken");
            String strOptString2 = jSONObjectM.optString(com.anythink.expressad.d.a.b.bH);
            JSONArray jSONArrayOptJSONArray = jSONObjectM.optJSONArray("plugins");
            JSONArray jSONArrayOptJSONArray2 = jSONObjectM.optJSONArray("appIdConfigs");
            JSONArray jSONArrayOptJSONArray3 = jSONObjectM.optJSONArray("placements");
            mobi.oneway.export.a.b.b(strOptString);
            mobi.oneway.export.a.b.a(zOptBoolean2);
            mobi.oneway.export.a.b.c(strOptString2);
            if (zOptBoolean && jSONArrayOptJSONArray.length() != 0) {
                a(jSONArrayOptJSONArray3);
                a(jSONObjectM);
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i);
                    String strOptString3 = jSONObject.optString("hash");
                    int iOptInt = jSONObject.optInt("adp");
                    String strOptString4 = jSONObject.optString(com.anythink.expressad.foundation.d.c.am);
                    File file = new File(a(iOptInt == 1 ? mobi.oneway.export.a.a.j : iOptInt + com.anythink.china.common.a.a.g));
                    String upperCase = h.e(file) ? p.a(file).toUpperCase() : null;
                    if (upperCase == null || !upperCase.equalsIgnoreCase(strOptString3)) {
                        byte[] bArrL = new mobi.oneway.export.d.f(strOptString4).a(2000).l();
                        if (p.a(bArrL).toUpperCase().equalsIgnoreCase(strOptString3)) {
                            h.a(file, bArrL);
                        }
                    }
                    g gVarA = a(jSONObject, jSONArrayOptJSONArray2);
                    if (gVarA != null) {
                        mobi.oneway.export.f.d.a(gVarA);
                    }
                }
                b.a().c();
                return;
            }
            b();
        } catch (IOException e) {
            e.printStackTrace();
            b();
        } catch (JSONException e2) {
            e2.printStackTrace();
            b();
        } catch (Exception e3) {
            e3.printStackTrace();
            b();
        }
    }
}
