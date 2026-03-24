package com.octopus.ad;

import android.app.DownloadManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import androidx.multidex.MultiDexExtractor;
import com.anythink.core.common.c.m;
import com.octopus.ad.internal.utilities.DownloadFactory;
import com.octopus.ad.internal.utilities.ReportEventUtil;
import com.octopus.ad.utils.b.d;
import com.octopus.ad.utils.b.f;
import java.io.File;
import java.util.HashMap;
import z2.g6;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadService extends Service {
    private static DownloadFactory.Download g;
    private long a;
    private String b;
    private DownloadManager c;
    private a d;
    private b e;
    private c f;
    private HashMap<String, com.octopus.ad.utils.a> h;
    private HashMap<String, Boolean> i;
    private HashMap<Long, String> j;

    public class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            int[] iArr = {0, 0, 0};
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = DownloadService.this.c.query(new DownloadManager.Query().setFilterById(DownloadService.this.a));
                    if (cursorQuery != null && cursorQuery.moveToFirst()) {
                        int i = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                        f.a("DownloadService", "onChange status：" + i);
                        if (i == 1) {
                            DownloadService.this.b(com.octopus.ad.utils.b.a(DownloadService.this).a());
                        }
                        iArr[0] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("bytes_so_far"));
                        iArr[1] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(m.a.f));
                        iArr[2] = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                        f.a("DownloadService", "progress：" + iArr[0] + "/" + iArr[1] + "");
                    }
                    if (cursorQuery == null) {
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (cursorQuery == null) {
                        return;
                    }
                }
                cursorQuery.close();
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
    }

    public class b extends BroadcastReceiver {
        public b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            f.a("DownloadService", "onReceived...download finish...begin install！");
            long longExtra = intent.getLongExtra("extra_download_id", -1L);
            if (DownloadService.this.j == null || DownloadService.this.h == null) {
                return;
            }
            String str = (String) DownloadService.this.j.get(Long.valueOf(longExtra));
            if (DownloadService.this.i != null) {
                DownloadService.this.i.put(str, Boolean.FALSE);
            }
            com.octopus.ad.utils.a aVar = (com.octopus.ad.utils.a) DownloadService.this.h.get(str);
            if (aVar != null) {
                if (aVar.h() != null) {
                    ReportEventUtil.report(aVar.h().c());
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    context.getPackageManager().canRequestPackageInstalls();
                }
                DownloadService.this.a(context, Long.valueOf(longExtra), aVar);
            }
        }
    }

    public class c extends BroadcastReceiver {
        public c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.PACKAGE_ADDED")) {
                String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                f.a("DownloadService", "Install Success:" + schemeSpecificPart);
                if (DownloadService.this.h == null) {
                    return;
                }
                com.octopus.ad.utils.a aVar = (com.octopus.ad.utils.a) DownloadService.this.h.get(schemeSpecificPart);
                if (aVar != null) {
                    File file = new File(aVar.d(), aVar.b());
                    if (file.exists()) {
                        file.delete();
                    }
                    if (aVar.h() != null) {
                        ReportEventUtil.report(aVar.h().e());
                    }
                    DownloadService.this.h.remove(schemeSpecificPart);
                }
            }
            if (DownloadService.this.h == null || !DownloadService.this.h.isEmpty()) {
                return;
            }
            DownloadService.this.stopSelf();
        }
    }

    private static File a(Context context, long j) {
        Cursor cursorQuery;
        String path;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService(g6.OoooOOo);
        File file = null;
        if (j != -1) {
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(j);
            query.setFilterByStatus(8);
            if (downloadManager != null && (cursorQuery = downloadManager.query(query)) != null) {
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("local_uri"));
                    if (!TextUtils.isEmpty(string) && (path = Uri.parse(string).getPath()) != null) {
                        file = new File(path);
                    }
                }
                cursorQuery.close();
            }
        }
        return file;
    }

    private void a() {
        getContentResolver().registerContentObserver(Uri.parse("content://downloads/my_downloads"), true, this.d);
        registerReceiver(this.e, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_INSTALL");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.f, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Long l, com.octopus.ad.utils.a aVar) {
        Uri uriForFile;
        try {
            File file = new File(aVar.d(), aVar.c() + MultiDexExtractor.EXTRACTED_SUFFIX);
            if (file.exists()) {
                File file2 = new File(aVar.d(), aVar.b());
                file.renameTo(file2);
                f.a("DownloadService", "apkFile......raName:" + file2.exists());
            }
            Uri uriFromFile = null;
            Intent intent = new Intent();
            intent.addFlags(268435456);
            intent.setAction("android.intent.action.VIEW");
            int i = Build.VERSION.SDK_INT;
            if (i < 23) {
                uriForFile = this.c.getUriForDownloadedFile(l.longValue());
                if (uriForFile != null) {
                    uriForFile = Uri.parse(uriForFile.toString().replace(MultiDexExtractor.EXTRACTED_SUFFIX, com.anythink.china.common.a.a.g));
                    f.a("DownloadService", "uri......" + uriForFile);
                }
            } else if (i < 24) {
                File fileA = a(context, l.longValue());
                if (fileA != null && (uriFromFile = Uri.fromFile(fileA)) != null) {
                    uriFromFile = Uri.parse(uriFromFile.toString().replace(MultiDexExtractor.EXTRACTED_SUFFIX, com.anythink.china.common.a.a.g));
                    f.a("DownloadService", "uri......" + uriFromFile);
                }
                uriForFile = uriFromFile;
            } else {
                uriForFile = FileProvider.getUriForFile(context, this.b, new File(aVar.d(), aVar.b()));
                intent.addFlags(3);
            }
            if (uriForFile != null) {
                intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
                context.startActivity(intent);
                c(aVar);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private synchronized void a(com.octopus.ad.utils.a aVar) {
        String str;
        String str2;
        Uri uriForFile;
        Boolean bool = Boolean.TRUE;
        synchronized (this) {
            HashMap<String, Boolean> map = this.i;
            if (map != null && map.get(aVar.c()) != null && this.i.get(aVar.c()).booleanValue()) {
                f.a("DownloadService", "downloading..." + aVar.c() + "...please not repeat click");
                Toast.makeText(this, "正在下载…请勿重复点击", 0).show();
                return;
            }
            File file = new File(aVar.d(), aVar.c() + MultiDexExtractor.EXTRACTED_SUFFIX);
            if (file.exists()) {
                file.delete();
                f.a("DownloadService", "apkCacheFile......remove:" + file.exists());
            }
            File file2 = new File(aVar.d(), aVar.b());
            if (file2.exists()) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(268435456);
                    intent.setAction("android.intent.action.VIEW");
                    if (Build.VERSION.SDK_INT < 24) {
                        uriForFile = Uri.fromFile(file2);
                    } else {
                        uriForFile = FileProvider.getUriForFile(this, aVar.g(), file2);
                        intent.addFlags(3);
                    }
                    if (uriForFile != null) {
                        intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
                        startActivity(intent);
                        c(aVar);
                    }
                } catch (Exception e) {
                    str = "octopus";
                    str2 = "apkFile.exists():" + e;
                    Log.d(str, str2);
                }
            } else {
                try {
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(aVar.a()));
                    request.setTitle(aVar.e());
                    request.setDescription(aVar.f());
                    request.setNotificationVisibility(1);
                    request.setDestinationUri(Uri.fromFile(file));
                    request.setMimeType("application/vnd.android.package-archive");
                    this.a = this.c.enqueue(request);
                    f.b("DownloadService", "mReqId:" + this.a);
                    HashMap<Long, String> map2 = this.j;
                    if (map2 != null) {
                        map2.put(Long.valueOf(this.a), aVar.c());
                    }
                    HashMap<String, Boolean> map3 = this.i;
                    if (map3 != null) {
                        map3.put(aVar.c(), bool);
                    }
                    Toast.makeText(this, "已开始下载…", 0).show();
                    f.a("DownloadService", "BEGIN_DOWNLOAD!");
                    if (aVar.h() != null) {
                        ReportEventUtil.report(aVar.h().b());
                    }
                } catch (Exception e2) {
                    Log.d("octopus", "DownloadManager download fail:" + e2);
                    try {
                        if (!TextUtils.isEmpty(aVar.a()) && aVar.a().contains("http")) {
                            HashMap<String, Boolean> map4 = this.i;
                            if (map4 != null) {
                                map4.put(aVar.c(), bool);
                            }
                            Intent intent2 = new Intent();
                            intent2.setAction("android.intent.action.VIEW");
                            intent2.setData(Uri.parse(aVar.a()));
                            intent2.setFlags(268435456);
                            startActivity(intent2);
                        }
                    } catch (Exception e3) {
                        str = "octopus";
                        str2 = "skip browser fail:" + e3;
                        Log.d(str, str2);
                    }
                }
            }
        }
    }

    private void b() {
        getContentResolver().unregisterContentObserver(this.d);
        unregisterReceiver(this.e);
        unregisterReceiver(this.f);
        f.a("DownloadService", "unregister()");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final com.octopus.ad.utils.a aVar) {
        if (aVar == null) {
            return;
        }
        f.a("DownloadService", "--appUpdate downloadApk start--");
        DownloadFactory.Download downloadCreate = DownloadFactory.create();
        g = downloadCreate;
        downloadCreate.register(new DownloadFactory.DownloadDelegate() { // from class: com.octopus.ad.DownloadService.1
            @Override // com.octopus.ad.internal.utilities.DownloadFactory.DownloadDelegate
            public boolean onCheck(File file) {
                return true;
            }

            @Override // com.octopus.ad.internal.utilities.DownloadFactory.DownloadDelegate
            public void onFail(int i) {
                f.a("DownloadService", "--appUpdate downloadApk onFail--");
                try {
                    String strA = aVar.a();
                    if (TextUtils.isEmpty(strA) || !strA.contains("http")) {
                        return;
                    }
                    if (DownloadService.this.i != null) {
                        DownloadService.this.i.put(aVar.c(), Boolean.TRUE);
                    }
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(strA));
                    intent.setFlags(268435456);
                    DownloadService.this.startActivity(intent);
                } catch (Exception e) {
                    f.a("DownloadService", "skip browser fail:" + e);
                }
            }

            @Override // com.octopus.ad.internal.utilities.DownloadFactory.DownloadDelegate
            public void onProgress(long j, long j2) {
            }

            @Override // com.octopus.ad.internal.utilities.DownloadFactory.DownloadDelegate
            public void onSuccess(File file) {
                f.a("DownloadService", "--appUpdate downloadApk onSuccess--");
                if (DownloadService.this.i != null) {
                    DownloadService.this.i.put(aVar.c(), Boolean.FALSE);
                }
                DownloadService.this.a(DownloadService.this.getApplicationContext(), -1L, aVar);
            }
        });
        g.start(new DownloadFactory.Request(aVar.a(), aVar.d(), aVar.b()));
    }

    private void c() {
        String strG;
        com.octopus.ad.utils.a aVarA = com.octopus.ad.utils.b.a(this).a();
        if (aVarA == null) {
            return;
        }
        HashMap<String, com.octopus.ad.utils.a> map = this.h;
        if (map != null) {
            map.put(aVarA.c(), aVarA);
        }
        HashMap<String, Boolean> map2 = this.i;
        if (map2 != null && map2.get(aVarA.c()) == null) {
            f.a("DownloadService", "not have package status...");
            this.i.put(aVarA.c(), Boolean.FALSE);
        }
        if (TextUtils.isEmpty(aVarA.g())) {
            strG = getPackageName() + ".fileprovider";
        } else {
            strG = aVarA.g();
        }
        this.b = strG;
        d.a(aVarA.d());
        a(aVarA);
    }

    private void c(com.octopus.ad.utils.a aVar) {
        f.a("DownloadService", "BEGIN_INSTALL!");
        if (aVar.h() != null) {
            ReportEventUtil.report(aVar.h().d());
        }
    }

    private void d() {
        DownloadFactory.Download download = g;
        if (download != null) {
            download.destroy();
        }
        if (this.i != null) {
            this.i = null;
        }
        if (this.h != null) {
            this.h = null;
        }
        if (this.j != null) {
            this.j = null;
        }
        com.octopus.ad.utils.b.a(this).c();
        f.a("DownloadService", "releaseResources()");
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f.a("DownloadService", "DownloadService onCreate()");
        this.c = (DownloadManager) getSystemService(g6.OoooOOo);
        this.d = new a(new Handler());
        this.e = new b();
        this.f = new c();
        this.h = new HashMap<>();
        this.i = new HashMap<>();
        this.j = new HashMap<>();
        a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f.a("DownloadService", "DownloadService onDestroy()");
        b();
        d();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 1;
        }
        f.a("DownloadService", "DownloadService onStartCommand()");
        c();
        return super.onStartCommand(intent, i, i2);
    }
}
