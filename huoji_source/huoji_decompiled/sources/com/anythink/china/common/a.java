package com.anythink.china.common;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.anythink.china.common.a.a;
import com.anythink.china.common.a.e;
import com.anythink.china.common.a.g;
import com.anythink.china.common.service.ApkDownloadService;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.k;
import com.anythink.core.common.o.h;
import com.anythink.core.common.o.i;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a implements g {
    public static final String a = "a";
    public static final String b = "action_offer_download_start";
    public static final String c = "action_offer_download_end";
    public static final String d = "action_offer_install_start";
    public static final String e = "action_offer_install_successful";
    public static final String f = "receiver_extra_offer_id";
    public static final String g = "receiver_extra_click_id";
    private static volatile a h;
    private Context i;
    private ConcurrentHashMap<String, e> n;
    private ConcurrentHashMap<String, e> o;
    private ConcurrentHashMap<String, e> p;
    private Map<String, e> q;
    private BroadcastReceiver t;
    private ApkDownloadService.a u;
    private BroadcastReceiver v;
    private final int r = 1;
    private long s = 604800000;
    private ServiceConnection w = new ServiceConnection() { // from class: com.anythink.china.common.a.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            String str = a.a;
            try {
                a.this.u = (ApkDownloadService.a) iBinder;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            String str = a.a;
            a.this.u = null;
        }
    };
    private List<e> j = Collections.synchronizedList(new LinkedList());
    private ConcurrentHashMap<String, e> k = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, e> l = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, a.InterfaceC0077a> m = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.anythink.china.common.a$3, reason: invalid class name */
    public class AnonymousClass3 implements a.InterfaceC0077a {
        public AnonymousClass3() {
        }

        @Override // com.anythink.china.common.a.a.InterfaceC0077a
        public final void a(final e eVar, final long j) {
            Log.i(a.a, "onSuccess: " + eVar.c);
            n.a().b(new Runnable() { // from class: com.anythink.china.common.a.3.2
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.m.remove(eVar.n);
                    a.this.k.remove(eVar.n);
                    if (a.this.n == null) {
                        a.this.n = new ConcurrentHashMap();
                    }
                    ConcurrentHashMap concurrentHashMap = a.this.n;
                    e eVar2 = eVar;
                    concurrentHashMap.put(eVar2.n, eVar2);
                    Intent intent = new Intent();
                    intent.setAction(a.c);
                    intent.setPackage(a.this.i.getPackageName());
                    intent.putExtra(a.f, eVar.f);
                    intent.putExtra(a.g, eVar.m);
                    k.a(a.this.i).a(intent);
                    a.this.b(eVar);
                    com.anythink.china.common.b.a.a(a.this.i).c(eVar);
                    com.anythink.china.common.b.a.a(a.this.i).a(eVar);
                    e eVar3 = eVar;
                    com.anythink.core.common.n.e.a(eVar3.a, eVar3.f, eVar3.b, 2, (String) null, j, eVar3.h);
                    a.this.b();
                }
            });
        }

        @Override // com.anythink.china.common.a.a.InterfaceC0077a
        public final void a(final e eVar, final long j, final long j2) {
            String str = a.a;
            new StringBuilder("onStartBefore: ").append(eVar.b);
            n.a().b(new Runnable() { // from class: com.anythink.china.common.a.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (j < j2) {
                        a.this.d("正在下载： " + eVar.c);
                        com.anythink.china.common.b.a.a(a.this.i).c(eVar);
                        com.anythink.china.common.b.a.a(a.this.i).a(eVar, j, j2);
                    }
                    Intent intent = new Intent();
                    intent.setAction(a.b);
                    intent.setPackage(a.this.i.getPackageName());
                    intent.putExtra(a.f, eVar.f);
                    intent.putExtra(a.g, eVar.m);
                    k.a(a.this.i).a(intent);
                    e eVar2 = eVar;
                    com.anythink.core.common.n.e.a(eVar2.a, eVar2.f, eVar2.b, 1, (String) null, 0L, j2);
                }
            });
        }

        @Override // com.anythink.china.common.a.a.InterfaceC0077a
        public final void a(final e eVar, final long j, final long j2, final int i) {
            String str = a.a;
            n.a().b(new Runnable() { // from class: com.anythink.china.common.a.3.5
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.k.remove(eVar.n);
                    com.anythink.china.common.b.a.a(a.this.i).c(eVar);
                    int i2 = i;
                    if (i2 == 2) {
                        Log.e(a.a, "(" + eVar.c + ") pause download");
                        com.anythink.china.common.b.a.a(a.this.i).a(eVar, j, j2);
                        a.this.b();
                        return;
                    }
                    if (i2 == 3) {
                        Log.e(a.a, "(" + eVar.c + ") stop download");
                    }
                }
            });
        }

        @Override // com.anythink.china.common.a.a.InterfaceC0077a
        public final void a(final e eVar, final String str) {
            Log.e(a.a, "(" + eVar.c + ") download fail: " + str);
            n.a().b(new Runnable() { // from class: com.anythink.china.common.a.3.4
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.d("下载失败： " + eVar.c);
                    a.this.m.remove(eVar.n);
                    a.this.k.remove(eVar.n);
                    if (a.this.q == null) {
                        a.this.q = Collections.synchronizedMap(new HashMap());
                    }
                    Map map = a.this.q;
                    e eVar2 = eVar;
                    map.put(eVar2.n, eVar2);
                    com.anythink.china.common.b.a.a(a.this.i).c(eVar);
                    com.anythink.china.common.b.a.a(a.this.i).a(eVar, 0L, 100L);
                    e eVar3 = eVar;
                    com.anythink.core.common.n.e.a(eVar3.a, eVar3.f, eVar3.b, 3, str, 0L, eVar3.h);
                    a.this.b();
                }
            });
        }

        @Override // com.anythink.china.common.a.a.InterfaceC0077a
        public final void b(final e eVar, final long j, final long j2) {
            n.a().b(new Runnable() { // from class: com.anythink.china.common.a.3.3
                @Override // java.lang.Runnable
                public final void run() {
                    com.anythink.china.common.b.a.a(a.this.i).a(eVar, j, j2);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.anythink.china.common.a$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (a.this.q != null) {
                synchronized (a.this.q) {
                    Iterator it = a.this.q.entrySet().iterator();
                    while (it.hasNext()) {
                        e eVar = (e) ((Map.Entry) it.next()).getValue();
                        Log.i(a.a, "(" + eVar.c + ") retry to download");
                        eVar.e();
                        a.this.d(eVar);
                        it.remove();
                    }
                }
            }
        }
    }

    private a(Context context) {
        this.i = context.getApplicationContext();
        String strA = com.anythink.china.common.c.b.a();
        if (!TextUtils.isEmpty(strA)) {
            File file = new File(strA);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        try {
            this.v = new BroadcastReceiver() { // from class: com.anythink.china.common.a.2
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent) {
                    try {
                        ConnectivityManager connectivityManager = (ConnectivityManager) context2.getSystemService("connectivity");
                        if (connectivityManager == null || !i.a("android.permission.ACCESS_NETWORK_STATE", context2)) {
                            return;
                        }
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (i.a(context2) && activeNetworkInfo.getType() == 1) {
                            a.a(a.this);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            this.i.registerReceiver(this.v, intentFilter);
        } catch (Throwable unused) {
        }
    }

    public static a a(Context context) {
        if (h == null) {
            synchronized (a.class) {
                if (h == null) {
                    h = new a(context);
                }
            }
        }
        return h;
    }

    private void a(long j) {
        if (j > 0) {
            this.s = j;
        }
    }

    private static void a(e eVar, boolean z) {
        com.anythink.core.common.g.b bVar = eVar.l;
        if (bVar != null) {
            bVar.a(eVar.j, eVar.a, eVar.b, z);
        }
    }

    public static /* synthetic */ void a(a aVar) {
        com.anythink.core.common.o.b.b.a().a((Runnable) aVar.new AnonymousClass4(), 2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final String str) {
        n.a().b(new Runnable() { // from class: com.anythink.china.common.a.5
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Toast.makeText(a.this.i, str, 0).show();
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void e(e eVar) {
        this.k.put(eVar.n, eVar);
        this.m.put(eVar.n, new AnonymousClass3());
        try {
            ApkDownloadService.a aVar = this.u;
            if (aVar != null) {
                aVar.a(eVar.n);
                return;
            }
            Intent intent = new Intent();
            intent.setClass(this.i, ApkDownloadService.class);
            intent.putExtra(ApkDownloadService.a, eVar.n);
            this.i.bindService(intent, this.w, 1);
        } catch (Throwable unused) {
        }
    }

    private static String f(e eVar) {
        return com.anythink.china.common.c.b.a(eVar.n) + com.anythink.china.common.a.a.g;
    }

    private void g() {
        com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass4(), 2, true);
    }

    private void h() {
        try {
            if (this.t != null) {
                return;
            }
            this.t = new b();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
            intentFilter.addDataScheme("package");
            this.i.registerReceiver(this.t, intentFilter);
        } catch (Throwable unused) {
        }
    }

    private void i() {
        try {
            BroadcastReceiver broadcastReceiver = this.t;
            if (broadcastReceiver != null) {
                this.i.unregisterReceiver(broadcastReceiver);
                this.t = null;
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.china.common.a.g
    public final int a() {
        return 1;
    }

    @Override // com.anythink.china.common.a.g
    public final void a(Context context, m mVar, l lVar, String str, String str2, Runnable runnable, com.anythink.core.common.g.b bVar) {
        File[] fileArrListFiles;
        if (com.anythink.china.common.c.a.a(context, lVar.F())) {
            com.anythink.china.common.c.a.b(context, lVar.F());
            return;
        }
        if (runnable != null) {
            runnable.run();
        }
        e eVar = new e();
        eVar.n = h.a(lVar);
        eVar.a = mVar.d;
        eVar.f = lVar.t();
        eVar.b = str;
        eVar.m = str2;
        eVar.e = lVar.F();
        eVar.c = lVar.v();
        eVar.j = lVar;
        com.anythink.core.common.f.n nVar = mVar.n;
        if (nVar != null) {
            eVar.o = nVar.j() == 1;
            eVar.q = mVar.n.P();
            eVar.p = mVar.n.O();
        }
        int iApplyDimension = (int) TypedValue.applyDimension(1, 50.0f, context.getResources().getDisplayMetrics());
        eVar.d = com.anythink.core.common.res.b.a(context).a(new com.anythink.core.common.res.e(1, lVar.x()), iApplyDimension, iApplyDimension);
        if (lVar.D() != null) {
            String strD = lVar.D();
            String str3 = mVar.d;
            if (str3 == null) {
                str3 = "";
            }
            eVar.k = strD.replaceAll("\\{req_id\\}", str3);
        }
        eVar.l = bVar;
        ConcurrentHashMap<String, e> concurrentHashMap = this.p;
        if (concurrentHashMap != null) {
            concurrentHashMap.remove(eVar.n);
        }
        Map<String, e> map = this.q;
        if (map != null) {
            map.remove(eVar.n);
        }
        a aVarA = a(context);
        long jG = mVar.n.G();
        if (jG > 0) {
            aVarA.s = jG;
        }
        a aVarA2 = a(context);
        try {
            String strA = com.anythink.china.common.c.b.a();
            if (!TextUtils.isEmpty(strA) && ((fileArrListFiles = new File(strA).listFiles()) == null || fileArrListFiles.length != 0)) {
                ArrayList arrayList = new ArrayList();
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = aVarA2.s;
                for (File file : fileArrListFiles) {
                    if ((file.getName().endsWith(com.anythink.china.common.a.a.g) && com.anythink.china.common.c.a.b(aVarA2.i, file)) || file.lastModified() + j < jCurrentTimeMillis) {
                        arrayList.add(file);
                    }
                }
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    Log.i(a, "clean expired file -> " + ((File) arrayList.get(i)).getName());
                    ((File) arrayList.get(i)).delete();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        a(context).d(eVar);
    }

    @Override // com.anythink.china.common.a.g
    public final void a(e eVar) {
        if (eVar == null) {
            return;
        }
        if (this.k.containsKey(eVar.n)) {
            File file = new File(com.anythink.china.common.c.b.a(eVar.n) + com.anythink.china.common.a.a.e);
            File file2 = new File(com.anythink.china.common.c.b.a(eVar.n) + ".log");
            if (file.exists() && file2.exists()) {
                Log.i(a, "(" + eVar.c + ") is downloading, do nothing");
                StringBuilder sb = new StringBuilder("正在下载中： ");
                sb.append(eVar.c);
                d(sb.toString());
                return;
            }
            this.k.remove(eVar.n);
        }
        int size = this.j.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(eVar.n, this.j.get(i).n)) {
                Log.i(a, "(" + eVar.c + ") is waiting for downloading, do nothing");
                StringBuilder sb2 = new StringBuilder("等待下载： ");
                sb2.append(eVar.c);
                d(sb2.toString());
                return;
            }
        }
        this.j.add(eVar);
        com.anythink.china.common.b.a.a(this.i).c(eVar);
        com.anythink.china.common.b.a.a(this.i).a(eVar, 0L, 100L, true);
    }

    @Override // com.anythink.china.common.a.g
    public final void a(String str, String str2) {
        e eVar;
        ConcurrentHashMap<String, e> concurrentHashMap;
        ConcurrentHashMap<String, e> concurrentHashMap2;
        Map<String, e> map;
        try {
            if (str2.equals(e.a.FAIL.toString()) && (map = this.q) != null && map.containsKey(str)) {
                e eVar2 = this.q.get(str);
                Log.i(a, "(" + eVar2.c + ") onCleanNotification: download fail");
                com.anythink.china.common.b.a.a(this.i).c(eVar2);
                this.q.remove(str);
            }
            if (str2.equals(e.a.FINISH.toString()) && (concurrentHashMap2 = this.n) != null && concurrentHashMap2.containsKey(str)) {
                e eVar3 = this.n.get(str);
                Log.i(a, "(" + eVar3.c + ") onCleanNotification: download success");
                com.anythink.china.common.b.a.a(this.i).c(eVar3);
                this.n.remove(str);
            }
            if (str2.equals(e.a.INSTALLED.toString()) && (concurrentHashMap = this.p) != null && concurrentHashMap.containsKey(str)) {
                e eVar4 = this.p.get(str);
                Log.i(a, "(" + eVar4.c + ") onCleanNotification: install success");
                com.anythink.china.common.b.a.a(this.i).c(eVar4);
                this.p.remove(str);
            }
            if (!str2.equals(e.a.PAUSE.toString()) || (eVar = this.l.get(str)) == null) {
                return;
            }
            ApkDownloadService.a aVar = this.u;
            if (aVar != null) {
                aVar.c(eVar.n);
            }
            this.l.remove(str);
            Log.i(a, "(" + eVar.c + ") onCleanNotification: stop download");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.china.common.a.g
    public final void a(String str, String str2, int i) {
        e eVar;
        try {
            if (str2.equals(e.a.FAIL.toString())) {
                Map<String, e> map = this.q;
                if (map != null) {
                    e eVarRemove = map.remove(str);
                    if (eVarRemove == null) {
                        com.anythink.china.common.b.a.a(this.i).a(i);
                        return;
                    }
                    eVarRemove.e();
                    Log.i(a, "(" + eVarRemove.c + ") onClickNotification: download fail to retry");
                    d(eVarRemove);
                    return;
                }
                return;
            }
            if (str2.equals(e.a.FINISH.toString())) {
                ConcurrentHashMap<String, e> concurrentHashMap = this.n;
                if (concurrentHashMap != null) {
                    e eVar2 = concurrentHashMap.get(str);
                    if (eVar2 == null) {
                        com.anythink.china.common.b.a.a(this.i).a(i);
                        return;
                    }
                    Log.i(a, "(" + eVar2.c + ") onClickNotification: start intall");
                    com.anythink.china.common.b.a.a(this.i).c(eVar2);
                    com.anythink.china.common.b.a.a(this.i).a(eVar2);
                    b(eVar2);
                    return;
                }
                return;
            }
            if (str2.equals(e.a.INSTALLED.toString())) {
                ConcurrentHashMap<String, e> concurrentHashMap2 = this.p;
                if (concurrentHashMap2 != null) {
                    e eVar3 = concurrentHashMap2.get(str);
                    if (eVar3 == null) {
                        com.anythink.china.common.b.a.a(this.i).a(i);
                        return;
                    }
                    Log.i(a, "(" + eVar3.c + ") onClickNotification: start open");
                    com.anythink.china.common.b.a.a(this.i).c(eVar3);
                    a(eVar3, true);
                    return;
                }
                return;
            }
            if (str2.equals(e.a.LOADING.toString())) {
                e eVar4 = this.k.get(str);
                if (eVar4 == null) {
                    com.anythink.china.common.b.a.a(this.i).a(i);
                    return;
                }
                if (!eVar4.d() || eVar4.q == 2) {
                    return;
                }
                Log.i(a, "(" + eVar4.c + ") onClickNotification: pause download");
                ApkDownloadService.a aVar = this.u;
                if (aVar != null) {
                    aVar.b(eVar4.n);
                }
                this.l.put(eVar4.n, eVar4);
                return;
            }
            if (str2.equals(e.a.PAUSE.toString())) {
                e eVar5 = this.l.get(str);
                if (eVar5 == null) {
                    com.anythink.china.common.b.a.a(this.i).a(i);
                    return;
                }
                Log.i(a, "(" + eVar5.c + ") onClickNotification: resume download");
                d(eVar5);
                return;
            }
            if (str2.equals(e.a.IDLE.toString())) {
                synchronized (this.j) {
                    Iterator<e> it = this.j.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            eVar = null;
                            break;
                        }
                        e next = it.next();
                        if (next.n.equals(str)) {
                            if (next.q == 2) {
                                return;
                            }
                            Log.i(a, "(" + next.c + ") onClickNotification: pause download");
                            this.j.remove(next);
                            eVar = next;
                        }
                    }
                    if (eVar == null) {
                        com.anythink.china.common.b.a.a(this.i).a(i);
                        return;
                    }
                    eVar.k();
                    this.l.put(eVar.n, eVar);
                    com.anythink.china.common.b.a.a(this.i).c(eVar);
                    com.anythink.china.common.b.a.a(this.i).a(eVar, 0L, 100L, true);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final boolean a(l lVar) {
        String strA = h.a(lVar);
        ConcurrentHashMap<String, e> concurrentHashMap = this.k;
        return concurrentHashMap != null && concurrentHashMap.containsKey(strA);
    }

    @Override // com.anythink.china.common.a.g
    public final boolean a(String str) {
        String str2 = com.anythink.china.common.c.b.a(str) + com.anythink.china.common.a.a.g;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return new File(str2).exists();
    }

    public final int b(l lVar) {
        String strA = h.a(lVar);
        synchronized (this.j) {
            for (int i = 0; i < this.j.size(); i++) {
                e eVar = this.j.get(i);
                if (eVar != null && eVar.n.equals(strA)) {
                    return 0;
                }
            }
            ConcurrentHashMap<String, e> concurrentHashMap = this.k;
            if (concurrentHashMap != null && concurrentHashMap.containsKey(strA)) {
                return 0;
            }
            ConcurrentHashMap<String, e> concurrentHashMap2 = this.l;
            if (concurrentHashMap2 != null && concurrentHashMap2.containsKey(strA)) {
                return 6;
            }
            ConcurrentHashMap<String, e> concurrentHashMap3 = this.n;
            if ((concurrentHashMap3 == null || !concurrentHashMap3.containsKey(strA)) && !a(strA)) {
                return com.anythink.china.common.c.a.a(this.i, lVar.F()) ? 5 : 1;
            }
            return 4;
        }
    }

    @Override // com.anythink.china.common.a.g
    public final void b() {
        synchronized (this.j) {
            int size = this.j.size();
            if (size == 0) {
                return;
            }
            int size2 = this.k.size();
            if (size2 > 0) {
                return;
            }
            int iMin = Math.min(1 - size2, size);
            for (int i = 0; i < iMin && this.j.size() > 0; i++) {
                e eVarRemove = this.j.remove(0);
                this.k.put(eVarRemove.n, eVarRemove);
                this.m.put(eVarRemove.n, new AnonymousClass3());
                try {
                    ApkDownloadService.a aVar = this.u;
                    if (aVar != null) {
                        aVar.a(eVarRemove.n);
                    } else {
                        Intent intent = new Intent();
                        intent.setClass(this.i, ApkDownloadService.class);
                        intent.putExtra(ApkDownloadService.a, eVarRemove.n);
                        this.i.bindService(intent, this.w, 1);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // com.anythink.china.common.a.g
    public final void b(e eVar) {
        Uri uriForFile;
        Intent intent = new Intent();
        intent.setAction(d);
        intent.setPackage(this.i.getPackageName());
        intent.putExtra(f, eVar.f);
        intent.putExtra(g, eVar.m);
        k.a(this.i).a(intent);
        if (this.o == null) {
            this.o = new ConcurrentHashMap<>();
        }
        if (TextUtils.isEmpty(eVar.e)) {
            String strF = f(eVar);
            if (!TextUtils.isEmpty(strF)) {
                eVar.e = com.anythink.china.common.c.a.a(this.i, new File(strF));
            }
        }
        this.o.put(eVar.e, eVar);
        try {
            if (this.t == null) {
                this.t = new b();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
                intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
                intentFilter.addDataScheme("package");
                this.i.registerReceiver(this.t, intentFilter);
            }
        } catch (Throwable unused) {
        }
        String strF2 = f(eVar);
        if (TextUtils.isEmpty(strF2)) {
            return;
        }
        new StringBuilder("install: ").append(eVar.c);
        File file = new File(strF2);
        try {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                intent2.addFlags(1);
                uriForFile = FileProvider.getUriForFile(this.i, this.i.getPackageName() + ".anythink.fileProvider", file);
            } else {
                uriForFile = Uri.parse("file://".concat(String.valueOf(strF2)));
            }
            intent2.setDataAndType(uriForFile, "application/vnd.android.package-archive");
            this.i.startActivity(intent2);
            com.anythink.core.common.n.e.a(eVar.a, eVar.f, eVar.b, 4, (String) null, 0L, file.length());
        } catch (Throwable th) {
            th.printStackTrace();
            com.anythink.core.common.n.e.a(eVar.a, eVar.f, eVar.b, 10, th.getMessage(), 0L, file.length());
        }
    }

    public final void b(String str) {
        e eVar;
        try {
            if (this.o.containsKey(str) && (eVar = this.o.get(str)) != null) {
                String strF = f(eVar);
                if (!TextUtils.isEmpty(strF)) {
                    new File(strF).delete();
                }
                eVar.m();
                this.o.remove(str);
                if (this.p == null) {
                    this.p = new ConcurrentHashMap<>();
                }
                this.p.put(eVar.n, eVar);
                ConcurrentHashMap<String, e> concurrentHashMap = this.n;
                if (concurrentHashMap != null) {
                    concurrentHashMap.remove(eVar.n);
                }
                com.anythink.china.common.b.a.a(this.i).c(eVar);
                com.anythink.china.common.b.a.a(this.i).a(eVar, 0L, 100L, true);
                Intent intent = new Intent();
                intent.setAction(e);
                intent.setPackage(this.i.getPackageName());
                intent.putExtra(f, eVar.f);
                intent.putExtra(g, eVar.m);
                k.a(this.i).a(intent);
                com.anythink.core.common.n.e.a(eVar.a, eVar.f, eVar.b, 5, (String) null, 0L, 0L);
                if (this.o.size() == 0) {
                    try {
                        BroadcastReceiver broadcastReceiver = this.t;
                        if (broadcastReceiver != null) {
                            this.i.unregisterReceiver(broadcastReceiver);
                            this.t = null;
                        }
                    } catch (Throwable unused) {
                    }
                }
                a(eVar, false);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final a.InterfaceC0077a c(String str) {
        return this.m.get(str);
    }

    @Override // com.anythink.china.common.a.g
    public final void c(e eVar) {
        Uri uriForFile;
        String strF = f(eVar);
        if (TextUtils.isEmpty(strF)) {
            return;
        }
        new StringBuilder("install: ").append(eVar.c);
        File file = new File(strF);
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(1);
                uriForFile = FileProvider.getUriForFile(this.i, this.i.getPackageName() + ".anythink.fileProvider", file);
            } else {
                uriForFile = Uri.parse("file://".concat(String.valueOf(strF)));
            }
            intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
            this.i.startActivity(intent);
            com.anythink.core.common.n.e.a(eVar.a, eVar.f, eVar.b, 4, (String) null, 0L, file.length());
        } catch (Throwable th) {
            th.printStackTrace();
            com.anythink.core.common.n.e.a(eVar.a, eVar.f, eVar.b, 10, th.getMessage(), 0L, file.length());
        }
    }

    @Override // com.anythink.china.common.a.g
    public final boolean c() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.i.getPackageManager().canRequestPackageInstalls();
        }
        return true;
    }

    @Override // com.anythink.china.common.a.g
    @TargetApi(26)
    public final void d() {
        Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + this.i.getPackageName()));
        intent.addFlags(268435456);
        this.i.startActivity(intent);
    }

    @Override // com.anythink.china.common.a.g
    public final void d(e eVar) {
        try {
            if (a(eVar.n)) {
                eVar.l();
                b(eVar);
                return;
            }
            e eVar2 = this.l.get(eVar.n);
            if (eVar2 != null) {
                this.l.remove(eVar.n);
                eVar2.e();
                a(eVar2);
            } else {
                a(eVar);
            }
            b();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.china.common.a.g
    public final void e() {
        try {
            String strA = com.anythink.china.common.c.b.a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            File[] fileArrListFiles = new File(strA).listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length != 0) {
                ArrayList arrayList = new ArrayList();
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = this.s;
                for (File file : fileArrListFiles) {
                    if ((file.getName().endsWith(com.anythink.china.common.a.a.g) && com.anythink.china.common.c.a.b(this.i, file)) || file.lastModified() + j < jCurrentTimeMillis) {
                        arrayList.add(file);
                    }
                }
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    Log.i(a, "clean expired file -> " + ((File) arrayList.get(i)).getName());
                    ((File) arrayList.get(i)).delete();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final Map<String, e> f() {
        return this.k;
    }
}
