package cn.haorui.sdk.core.webview;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.core.content.FileProvider;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.download.a;
import cn.haorui.sdk.core.download.h;
import cn.haorui.sdk.core.taskcenter.DeeplinkResultBean;
import cn.haorui.sdk.core.taskcenter.DownloadAppBean;
import cn.haorui.sdk.core.taskcenter.DownloadPauseBean;
import cn.haorui.sdk.core.taskcenter.InstallApplicationBean;
import cn.haorui.sdk.core.taskcenter.TrackBean;
import cn.haorui.sdk.core.taskcenter.d;
import cn.haorui.sdk.core.taskcenter.e;
import cn.haorui.sdk.core.taskcenter.f;
import cn.haorui.sdk.core.utils.HttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TaskCenterJs {
    public TaskCenterWebActivity a;
    public WebView b;
    public InstallReceiver d;
    public Map<String, TrackBean> c = new HashMap();
    public long e = com.anythink.expressad.exoplayer.i.a.f;

    public class InstallReceiver extends BroadcastReceiver {
        public InstallReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                context.getPackageManager();
                if (!intent.getAction().equals("android.intent.action.PACKAGE_ADDED")) {
                    if (intent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) {
                        intent.getData().getSchemeSpecificPart();
                        return;
                    }
                    return;
                }
                String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                int intExtra = intent.getIntExtra("android.content.pm.extra.STATUS", 0);
                if (TaskCenterJs.this.c.containsKey(schemeSpecificPart)) {
                    TrackBean trackBean = TaskCenterJs.this.c.get(schemeSpecificPart);
                    Gson gson = new Gson();
                    e eVar = new e();
                    trackBean.getTaskId();
                    List<String> in_error = trackBean.getIn_error();
                    List<String> in_start = trackBean.getIn_start();
                    List<String> in_succ = trackBean.getIn_succ();
                    List<String> dn_succ = trackBean.getDn_succ();
                    if (trackBean.getIsAppStore()) {
                        if (dn_succ != null && dn_succ.size() > 0) {
                            for (String str : dn_succ) {
                                if (!TextUtils.isEmpty(str)) {
                                    HttpUtil.asyncGetTaskReport(str);
                                }
                            }
                        }
                        if (in_start != null && in_start.size() > 0) {
                            for (String str2 : in_start) {
                                if (!TextUtils.isEmpty(str2)) {
                                    HttpUtil.asyncGetTaskReport(str2);
                                }
                            }
                        }
                    }
                    if (intExtra == 1) {
                        if (in_error != null && in_error.size() > 0) {
                            for (String str3 : in_error) {
                                if (!TextUtils.isEmpty(str3)) {
                                    HttpUtil.asyncGetTaskReport(str3);
                                }
                            }
                        }
                    } else if (in_succ != null && in_succ.size() > 0) {
                        for (String str4 : in_succ) {
                            if (!TextUtils.isEmpty(str4)) {
                                HttpUtil.asyncGetTaskReport(str4);
                            }
                        }
                    }
                    String json = gson.toJson(eVar);
                    TaskCenterJs.a(TaskCenterJs.this, "javascript:reportInstallApplication(" + json + ")");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public class a implements h {
        public final /* synthetic */ List a;
        public final /* synthetic */ List b;

        public a(List list, List list2) {
            this.a = list;
            this.b = list2;
        }

        @Override // cn.haorui.sdk.core.download.h
        public void a(cn.haorui.sdk.core.download.b bVar) {
        }

        @Override // cn.haorui.sdk.core.download.h
        public void a(cn.haorui.sdk.core.download.b bVar, String str) {
            List list = this.a;
            if (list != null && list.size() > 0) {
                for (String str2 : this.a) {
                    if (!TextUtils.isEmpty(str2)) {
                        HttpUtil.asyncGetTaskReport(str2);
                    }
                }
            }
            TaskCenterJs.a(TaskCenterJs.this, bVar);
        }

        @Override // cn.haorui.sdk.core.download.h
        public void a(File file, cn.haorui.sdk.core.download.b bVar) {
            List list = this.b;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (String str : this.b) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetTaskReport(str);
                }
            }
        }

        @Override // cn.haorui.sdk.core.download.h
        public void b(cn.haorui.sdk.core.download.b bVar) {
            TaskCenterJs.a(TaskCenterJs.this, bVar);
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ String a;

        public class a implements ValueCallback<String> {
            public a(b bVar) {
            }

            @Override // android.webkit.ValueCallback
            public void onReceiveValue(String str) {
            }
        }

        public b(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView = TaskCenterJs.this.b;
            if (webView == null || Build.VERSION.SDK_INT < 19) {
                return;
            }
            webView.evaluateJavascript(this.a, new a(this));
        }
    }

    public TaskCenterJs(TaskCenterWebActivity taskCenterWebActivity, WebView webView) {
        this.a = taskCenterWebActivity;
        this.b = webView;
        a(taskCenterWebActivity);
    }

    public static void a(TaskCenterJs taskCenterJs, cn.haorui.sdk.core.download.b bVar) {
        taskCenterJs.getClass();
        long j = bVar.i;
        int i = bVar.j;
        d dVar = new d();
        if (i != 1 && i == 2) {
        }
        taskCenterJs.a("javascript:reportDownloadApplicationProgress(" + new Gson().toJson(dVar) + ")");
    }

    public static void a(TaskCenterJs taskCenterJs, String str) {
        taskCenterJs.a.runOnUiThread(taskCenterJs.new b(str));
    }

    public void a(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        InstallReceiver installReceiver = new InstallReceiver();
        this.d = installReceiver;
        context.registerReceiver(installReceiver, intentFilter);
    }

    public final void a(DownloadAppBean downloadAppBean) {
        try {
            downloadAppBean.getDownloadUrl();
            downloadAppBean.getAppName();
            String appPackageName = downloadAppBean.getAppPackageName();
            TrackBean trackBean = downloadAppBean.getTrackBean();
            List<String> dn_start = null;
            if (trackBean != null) {
                dn_start = trackBean.getDn_start();
                trackBean.getDn_error();
                trackBean.getDn_succ();
            } else {
                trackBean = new TrackBean();
            }
            trackBean.setTaskId(downloadAppBean.getTaskId());
            trackBean.setIsAppStore(true);
            this.c.put(appPackageName, trackBean);
            if (dn_start != null && dn_start.size() > 0) {
                for (String str : dn_start) {
                    if (!TextUtils.isEmpty(str)) {
                        HttpUtil.asyncGetTaskReport(str);
                    }
                }
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + appPackageName));
            intent.addFlags(268435456);
            this.a.startActivity(intent);
        } catch (Exception unused) {
            b(downloadAppBean);
        }
    }

    public final void a(String str) {
        this.a.runOnUiThread(new b(str));
    }

    public final void b(DownloadAppBean downloadAppBean) {
        List<String> dn_error;
        List<String> dn_succ;
        String downloadUrl = downloadAppBean.getDownloadUrl();
        String appName = downloadAppBean.getAppName();
        String appPackageName = downloadAppBean.getAppPackageName();
        TrackBean trackBean = downloadAppBean.getTrackBean();
        List<String> dn_start = null;
        if (trackBean != null) {
            dn_start = trackBean.getDn_start();
            dn_error = trackBean.getDn_error();
            dn_succ = trackBean.getDn_succ();
        } else {
            trackBean = new TrackBean();
            dn_error = null;
            dn_succ = null;
        }
        if (dn_start != null && dn_start.size() > 0) {
            for (String str : dn_start) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetTaskReport(str);
                }
            }
        }
        String taskId = downloadAppBean.getTaskId();
        trackBean.setTaskId(taskId);
        this.c.put(appPackageName, trackBean);
        if (TextUtils.isEmpty(downloadUrl)) {
            return;
        }
        cn.haorui.sdk.core.download.a aVar = a.C0007a.a;
        cn.haorui.sdk.core.download.d dVar = aVar.a.get(taskId);
        if (dVar == null) {
            dVar = new cn.haorui.sdk.core.download.d(downloadUrl, appName, appPackageName, taskId);
            aVar.a.put(taskId, dVar);
        }
        dVar.e.put(dVar.b, new a(dn_error, dn_succ));
        dVar.b();
    }

    @JavascriptInterface
    public void checkInstall(String str) {
        if (((cn.haorui.sdk.core.taskcenter.a) new Gson().fromJson(str, cn.haorui.sdk.core.taskcenter.a.class)) == null) {
            return;
        }
        new ArrayList();
        throw null;
    }

    @JavascriptInterface
    public void closeCurrentUI() {
        TaskCenterWebActivity taskCenterWebActivity = this.a;
        if (taskCenterWebActivity == null || taskCenterWebActivity.isFinishing()) {
            return;
        }
        this.a.finish();
    }

    @JavascriptInterface
    public void downloadApplication(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            DownloadAppBean downloadAppBean = (DownloadAppBean) new Gson().fromJson(str, DownloadAppBean.class);
            if (downloadAppBean != null) {
                if (downloadAppBean.getIs_appstore() == 1) {
                    a(downloadAppBean);
                } else {
                    b(downloadAppBean);
                }
            }
        } catch (JsonSyntaxException e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void downloadApplicationAction(String str) {
        try {
            Gson gson = new Gson();
            DownloadPauseBean downloadPauseBean = (DownloadPauseBean) gson.fromJson(str, DownloadPauseBean.class);
            if (downloadPauseBean != null) {
                downloadPauseBean.getDownloadUrl();
                downloadPauseBean.getHandleAction();
                String taskId = downloadPauseBean.getTaskId();
                downloadPauseBean.getAppPackageName();
                cn.haorui.sdk.core.download.d dVarB = a.C0007a.a.b(taskId);
                cn.haorui.sdk.core.taskcenter.c cVar = new cn.haorui.sdk.core.taskcenter.c();
                if (dVarB != null) {
                    dVarB.a();
                }
                a("javascript:reportDownloadApplicationAction(" + gson.toJson(cVar) + ")");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void installApplication(String str) {
        Uri uriFromFile;
        try {
            Gson gson = new Gson();
            InstallApplicationBean installApplicationBean = (InstallApplicationBean) gson.fromJson(str, InstallApplicationBean.class);
            if (installApplicationBean != null) {
                String taskId = installApplicationBean.getTaskId();
                String packageName = installApplicationBean.getPackageName();
                TrackBean trackBean = installApplicationBean.getTrackBean();
                List<String> in_start = null;
                if (trackBean != null) {
                    in_start = trackBean.getIn_start();
                } else {
                    trackBean = new TrackBean();
                }
                trackBean.setTaskId(taskId);
                this.c.put(packageName, trackBean);
                String downloadUrl = installApplicationBean.getDownloadUrl();
                if (TextUtils.isEmpty(downloadUrl)) {
                    return;
                }
                File file = new File(a.C0007a.a.c, downloadUrl.substring(downloadUrl.lastIndexOf("/")));
                if (!file.exists()) {
                    e eVar = new e();
                    trackBean.getTaskId();
                    List<String> in_error = trackBean.getIn_error();
                    if (in_error != null && in_error.size() > 0) {
                        for (String str2 : in_error) {
                            if (!TextUtils.isEmpty(str2)) {
                                HttpUtil.asyncGetTaskReport(str2);
                            }
                        }
                    }
                    a("javascript:reportInstallApplication(" + gson.toJson(eVar) + ")");
                    return;
                }
                if (in_start != null && in_start.size() > 0) {
                    for (String str3 : in_start) {
                        if (!TextUtils.isEmpty(str3)) {
                            HttpUtil.asyncGetTaskReport(str3);
                        }
                    }
                }
                TaskCenterWebActivity taskCenterWebActivity = this.a;
                Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
                intent.addFlags(268435456);
                if (Build.VERSION.SDK_INT >= 24) {
                    intent.addFlags(1);
                    uriFromFile = FileProvider.getUriForFile(taskCenterWebActivity, taskCenterWebActivity.getPackageName() + ".HRFileProvider", file);
                } else {
                    uriFromFile = Uri.fromFile(file);
                }
                intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
                taskCenterWebActivity.startActivity(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void openApplication(String str) {
        List<String> dp_succ;
        List<String> list;
        Gson gson = new Gson();
        DeeplinkResultBean deeplinkResultBean = (DeeplinkResultBean) gson.fromJson(str, DeeplinkResultBean.class);
        String deepLink = deeplinkResultBean.getDeepLink();
        TrackBean trackBean = deeplinkResultBean.getTrackBean();
        this.e = deeplinkResultBean.getTime() * 1000;
        List<String> dp_start = null;
        if (trackBean != null) {
            dp_start = trackBean.getDp_start();
            List<String> dp_error = trackBean.getDp_error();
            dp_succ = trackBean.getDp_succ();
            list = dp_error;
        } else {
            dp_succ = null;
            list = null;
        }
        cn.haorui.sdk.core.taskcenter.b bVar = new cn.haorui.sdk.core.taskcenter.b();
        deeplinkResultBean.getTaskId();
        deeplinkResultBean.getPackageName();
        if (dp_start != null && dp_start.size() > 0) {
            for (String str2 : dp_start) {
                if (!TextUtils.isEmpty(str2)) {
                    HttpUtil.asyncGetTaskReport(str2);
                }
            }
        }
        try {
            Intent uri = Intent.parseUri(deepLink, 0);
            uri.setAction("android.intent.action.VIEW");
            if (uri.resolveActivity(AdSdk.getContext().getPackageManager()) != null) {
                uri.setFlags(268435456);
            }
            this.a.startActivity(uri);
            new Thread(new cn.haorui.sdk.core.webview.b(this, bVar, gson, list, dp_succ)).start();
        } catch (Exception e) {
            e.printStackTrace();
            a("javascript:reportOpenApplication(" + gson.toJson(bVar) + ")");
            if (list == null || list.size() <= 0) {
                return;
            }
            for (String str3 : list) {
                if (!TextUtils.isEmpty(str3)) {
                    HttpUtil.asyncGetTaskReport(str3);
                }
            }
        }
    }

    @JavascriptInterface
    public void openBrowser(String str) {
        try {
            if (((f) new Gson().fromJson(str, f.class)) != null && !TextUtils.isEmpty(null)) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(null));
                this.a.startActivity(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
