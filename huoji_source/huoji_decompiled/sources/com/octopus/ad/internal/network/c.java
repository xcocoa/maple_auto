package com.octopus.ad.internal.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.octopus.ad.internal.utilities.HTTPGet;
import com.octopus.ad.internal.utilities.HTTPResponse;
import com.octopus.ad.internal.utilities.HttpErrorCode;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static c a;
    private ArrayList<a> b = new ArrayList<>();
    private Timer c;
    private boolean d;

    public class a {
        public String a;
        public int b = 0;

        public a(String str) {
            this.a = str;
        }
    }

    private c(Context context) {
        if (context != null) {
            this.d = context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0;
        }
    }

    public static c a(Context context) {
        if (a == null) {
            a = new c(context);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Timer timer = this.c;
        if (timer != null) {
            timer.cancel();
            this.c = null;
        }
    }

    private void c(Context context) {
        if (this.c == null) {
            final WeakReference weakReference = new WeakReference(context);
            Timer timer = new Timer();
            this.c = timer;
            timer.scheduleAtFixedRate(new TimerTask() { // from class: com.octopus.ad.internal.network.c.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Context context2 = (Context) weakReference.get();
                    if (context2 != null) {
                        while (!c.this.b.isEmpty() && c.this.b(context2)) {
                            boolean z = false;
                            final a aVar = (a) c.this.b.remove(0);
                            if (aVar.b < 3) {
                                new HTTPGet(z) { // from class: com.octopus.ad.internal.network.c.1.1
                                    @Override // com.octopus.ad.internal.utilities.HTTPGet
                                    public String getUrl() {
                                        return aVar.a;
                                    }

                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // com.octopus.ad.internal.utilities.HTTPGet, android.os.AsyncTask
                                    public void onPostExecute(HTTPResponse hTTPResponse) {
                                        if (hTTPResponse == null || (!hTTPResponse.getSucceeded() && hTTPResponse.getErrorCode() == HttpErrorCode.CONNECTION_FAILURE)) {
                                            aVar.b++;
                                            c.this.b.add(aVar);
                                        }
                                    }
                                }.execute(new Void[0]);
                            }
                        }
                        if (!c.this.b.isEmpty()) {
                            return;
                        }
                    }
                    c.this.a();
                }
            }, UMAmapConfig.AMAP_CACHE_WRITE_TIME, UMAmapConfig.AMAP_CACHE_WRITE_TIME);
        }
    }

    public synchronized void a(String str, Context context) {
        this.b.add(new a(str));
        c(context);
    }

    public boolean b(Context context) {
        if (!this.d) {
            return true;
        }
        if (context == null) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
