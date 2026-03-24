package com.anythink.expressad.reward.b;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.anythink.core.common.a.i;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.m;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.v;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.video.bt.module.b.h;
import com.anythink.expressad.videocommon.b.j;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class a implements i {
    private static final int A = 9;
    private static final int E = 16;
    private static final int F = 18;
    private static final int G = 17;
    private static final int H = 1001001;
    private static final int I = 1001002;
    public static final int a = 1;
    public static String b = null;
    private static final String i = "RewardVideoController";
    private static final int j = 8;
    private static final int z = 8;
    private int B;
    private int C;
    private int D;
    private boolean N;
    private Queue<Integer> V;
    private String W;
    private List<com.anythink.expressad.foundation.d.c> af;
    private List<com.anythink.expressad.foundation.d.c> ag;
    private Context k;
    private int l;
    private com.anythink.expressad.reward.a.d m;
    private com.anythink.expressad.videocommon.e.d n;
    private com.anythink.expressad.videocommon.e.a o;
    private volatile com.anythink.expressad.videocommon.d.a p;
    private volatile c q;
    private String r;
    private String s;
    private volatile String t;
    private String u;
    private String v;
    private static Map<String, Integer> T = new HashMap();
    public static Map<String, d> c = new HashMap();
    private static ConcurrentHashMap<String, String> U = new ConcurrentHashMap<>();
    private int w = 0;
    private int y = 2;
    private boolean J = false;
    private boolean K = false;
    private boolean L = false;
    private boolean M = false;
    private boolean O = false;
    private ArrayList<Integer> P = new ArrayList<>(7);
    private boolean Q = false;
    private volatile boolean R = false;
    private final Object S = new Object();
    private com.anythink.expressad.foundation.c.c X = null;
    private volatile boolean Y = true;
    private volatile boolean Z = false;
    private volatile boolean aa = false;
    private volatile boolean ab = false;
    private volatile boolean ac = false;
    private volatile boolean ad = false;
    private volatile boolean ae = false;
    public volatile boolean d = false;
    public volatile boolean e = false;
    public volatile boolean f = false;
    public volatile boolean g = false;
    public volatile boolean h = false;
    private Handler x = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.reward.b.a.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 8) {
                if (a.this.af == null || a.this.af.size() <= 0) {
                    return;
                }
                boolean z3 = (a.this.ag == null || a.this.ag.size() <= 0) ? false : !TextUtils.isEmpty(((com.anythink.expressad.foundation.d.c) a.this.ag.get(0)).ar());
                int iAp = ((com.anythink.expressad.foundation.d.c) a.this.af.get(0)).ap();
                if (a.this.m != null && a.this.m.a(a.this.af, z3, iAp)) {
                    if (a.this.q == null || !a.this.N) {
                        return;
                    }
                    c.a(a.this.q, a.this.t, a.this.s);
                    return;
                }
                if (a.this.q == null || !a.this.N) {
                    return;
                }
                com.anythink.expressad.videocommon.a.c(a.this.s);
                com.anythink.expressad.videocommon.a.b();
                c.a(a.this.q, "load timeout");
                return;
            }
            if (i2 == 9) {
                if (a.this.p == null || !a.this.N) {
                    return;
                }
                Object obj = message.obj;
                Bundle data = message.getData();
                if (data != null && data.containsKey(com.anythink.expressad.a.y)) {
                    TextUtils.isEmpty(data.getString(com.anythink.expressad.a.y));
                }
                try {
                    if (a.this.K) {
                        a.b();
                    }
                    a.this.p.b();
                    return;
                } catch (Exception e) {
                    if (com.anythink.expressad.a.a) {
                        e.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            if (i2 != a.I) {
                switch (i2) {
                    case 16:
                    case 18:
                        if (a.this.p != null && a.this.N) {
                            Object obj2 = message.obj;
                            String string = obj2 instanceof String ? obj2.toString() : "";
                            com.anythink.expressad.videocommon.a.c(a.this.s);
                            com.anythink.expressad.videocommon.a.b();
                            try {
                                if (a.this.K) {
                                    a.b();
                                }
                                a.this.p.a(string);
                            } catch (Exception e2) {
                                if (com.anythink.expressad.a.a) {
                                    e2.printStackTrace();
                                    return;
                                }
                                return;
                            }
                            break;
                        }
                        break;
                    case 17:
                        if (a.this.p != null && a.this.N) {
                            Object obj3 = message.obj;
                            Bundle data2 = message.getData();
                            if (data2 != null && data2.containsKey(com.anythink.expressad.a.y)) {
                                TextUtils.isEmpty(data2.getString(com.anythink.expressad.a.y));
                            }
                            try {
                                if (a.this.K) {
                                    a.b();
                                }
                                com.anythink.expressad.videocommon.d.a unused = a.this.p;
                            } catch (Exception e3) {
                                if (com.anythink.expressad.a.a) {
                                    e3.printStackTrace();
                                    return;
                                }
                                return;
                            }
                            break;
                        }
                        break;
                }
                return;
            }
            int iS = a.this.n != null ? a.this.n.S() : 0;
            if (a.this.m == null) {
                c unused2 = a.this.q;
                return;
            }
            if (a.this.m.c()) {
                if (a.this.q != null) {
                    try {
                        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayListF = a.this.m.f();
                        if (copyOnWriteArrayListF != null) {
                            copyOnWriteArrayListF.size();
                        }
                    } catch (Throwable th) {
                        th.getMessage();
                    }
                    c.b(a.this.q, a.this.t, a.this.s);
                    return;
                }
                return;
            }
            if (!a.this.m.f(false)) {
                if (!a.this.m.f(true)) {
                    if (a.this.q != null) {
                        StringBuilder sb = new StringBuilder("load timeout task called for onVideoLoadFail after ");
                        sb.append(iS);
                        sb.append(" s");
                        return;
                    }
                    return;
                }
                if (!a.this.m.c()) {
                    if (a.this.q != null) {
                        StringBuilder sb2 = new StringBuilder("load timeout task called for onVideoLoadFail after ");
                        sb2.append(iS);
                        sb2.append(" s");
                    }
                    a.this.m.e(true);
                    return;
                }
                if (a.this.q != null) {
                    a.this.m.d(true);
                    try {
                        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayListF2 = a.this.m.f();
                        if (copyOnWriteArrayListF2 != null) {
                            copyOnWriteArrayListF2.size();
                        }
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                    c.b(a.this.q, a.this.t, a.this.s);
                    return;
                }
                return;
            }
            if (a.this.m.c()) {
                if (a.this.q != null) {
                    a.this.m.d(false);
                    try {
                        CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayListF3 = a.this.m.f();
                        if (copyOnWriteArrayListF3 != null) {
                            copyOnWriteArrayListF3.size();
                        }
                    } catch (Throwable th3) {
                        th3.getMessage();
                    }
                    c.b(a.this.q, a.this.t, a.this.s);
                    return;
                }
                return;
            }
            a.this.m.e(false);
            if (!a.this.m.f(true)) {
                if (a.this.q != null) {
                    StringBuilder sb3 = new StringBuilder("load timeout task called for onVideoLoadFail after ");
                    sb3.append(iS);
                    sb3.append("s exception");
                    return;
                }
                return;
            }
            if (!a.this.m.c()) {
                if (a.this.q != null) {
                    StringBuilder sb4 = new StringBuilder("load timeout task called for onVideoLoadFail after ");
                    sb4.append(iS);
                    sb4.append("s exception");
                }
                a.this.m.e(true);
                return;
            }
            if (a.this.q != null) {
                a.this.m.d(true);
                try {
                    CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayListF4 = a.this.m.f();
                    if (copyOnWriteArrayListF4 != null) {
                        copyOnWriteArrayListF4.size();
                    }
                } catch (Throwable th4) {
                    th4.getMessage();
                }
                c.b(a.this.q, a.this.t, a.this.s);
            }
        }
    };

    /* JADX INFO: renamed from: com.anythink.expressad.reward.b.a$a, reason: collision with other inner class name */
    public class RunnableC0144a implements Runnable {
        private com.anythink.expressad.reward.a.a b;
        private int c = 1;
        private boolean d = true;

        public RunnableC0144a(com.anythink.expressad.reward.a.a aVar) {
            this.b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            StringBuilder sb = new StringBuilder("adSource=");
            sb.append(this.c);
            sb.append(" CommonCancelTimeTask mIsDevCall:");
            sb.append(this.d);
            a.this.b("v3 is timeout");
        }
    }

    public class b implements com.anythink.expressad.reward.a.b {
        private com.anythink.expressad.reward.a.a b;
        private boolean c = true;
        private Runnable d;

        public b(com.anythink.expressad.reward.a.a aVar) {
            this.b = aVar;
        }

        private Runnable c() {
            return this.d;
        }

        @Override // com.anythink.expressad.reward.a.b
        public final void a() {
            if (this.d != null) {
                a.this.x.removeCallbacks(this.d);
            }
            if (a.this.q != null) {
                c.a(a.this.q, a.this.t, a.this.s);
            }
        }

        public final void a(Runnable runnable) {
            this.d = runnable;
        }

        @Override // com.anythink.expressad.reward.a.b
        public final void a(String str) {
            if (this.d != null) {
                a.this.x.removeCallbacks(this.d);
            }
            com.anythink.expressad.reward.a.a aVar = this.b;
            if (aVar != null) {
                aVar.a(null);
                this.b = null;
            }
            if (a.this.q != null) {
                c.a(a.this.q, str);
            }
        }

        @Override // com.anythink.expressad.reward.a.b
        public final void b() {
            if (this.d != null) {
                a.this.x.removeCallbacks(this.d);
            }
            if (a.this.q != null) {
                c.c(a.this.q, a.this.t, a.this.s);
            }
        }
    }

    public final class c {
        private static final String b = "RewardVideoController_Listener";
        private static final int d = 0;
        private static final int e = 1;
        private static final int f = 2;
        private static final int g = 3;
        private WeakReference<com.anythink.expressad.videocommon.d.a> c;
        private volatile AtomicInteger h;
        private Handler i;
        private String j;
        private List<com.anythink.expressad.foundation.d.c> k;
        private boolean l;

        private c(com.anythink.expressad.videocommon.d.a aVar, Handler handler, String str) {
            this.c = new WeakReference<>(aVar);
            this.h = new AtomicInteger(0);
            this.i = handler;
            this.j = str;
        }

        public /* synthetic */ c(a aVar, com.anythink.expressad.videocommon.d.a aVar2, Handler handler, String str, byte b2) {
            this(aVar2, handler, str);
        }

        private int a() {
            return this.h.get();
        }

        public static /* synthetic */ int a(c cVar) {
            return cVar.h.get();
        }

        private void a(int i) {
            this.h.set(i);
        }

        private void a(com.anythink.expressad.foundation.d.c cVar) {
            com.anythink.expressad.videocommon.d.a aVar;
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || (aVar = weakReference.get()) == null) {
                return;
            }
            aVar.a(cVar);
        }

        public static /* synthetic */ void a(c cVar, String str) {
            Handler handler = cVar.i;
            if (handler != null) {
                handler.removeMessages(a.I);
            }
            StringBuilder sb = new StringBuilder("receive onVideoLoadFail,cur state: ");
            sb.append(cVar.h.get());
            sb.append(" hasCalledVideoLoadFail: ");
            sb.append(a.this.ac);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(str);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = cVar.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((cVar.h.get() == 1 || cVar.h.get() == 3) && cVar.i != null) {
                a.s(a.this);
                if (!a.this.ae || str.contains("resource load timeout")) {
                    a.u(a.this);
                }
                if (a.this.ab) {
                    cVar.h.set(2);
                }
                if (!a.this.ac || !a.this.ad || a.this.ab) {
                    StringBuilder sb2 = new StringBuilder("receive onVideoLoadFail,cur state: ");
                    sb2.append(cVar.h.get());
                    sb2.append(" hasCalledVideoLoadFail: ");
                    sb2.append(a.this.ac);
                    sb2.append(o4.OooO00o.OooO0Oo);
                    sb2.append(str);
                    sb2.append(" 无需响应");
                    return;
                }
                cVar.h.set(2);
                StringBuilder sb3 = new StringBuilder("receive onVideoLoadFail,cur state: ");
                sb3.append(cVar.h.get());
                sb3.append(" hasCalledVideoLoadFail: ");
                sb3.append(a.this.ac);
                sb3.append(o4.OooO00o.OooO0Oo);
                sb3.append(str);
                sb3.append(" 响应");
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 16;
                cVar.i.sendMessage(messageObtain);
            }
        }

        public static /* synthetic */ void a(c cVar, String str, String str2) {
            Handler handler = cVar.i;
            if (handler != null) {
                handler.removeMessages(a.I);
            }
            StringBuilder sb = new StringBuilder("receive onVideoLoadSuccess,cur state: ");
            sb.append(cVar.h.get());
            sb.append(" hasCalledVideoLoadSuccess: ");
            sb.append(a.this.ab);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = cVar.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((cVar.h.get() == 1 || cVar.h.get() == 3) && cVar.i != null) {
                cVar.h.set(2);
                if (a.this.ab) {
                    StringBuilder sb2 = new StringBuilder("receive onVideoLoadSuccess,cur state: ");
                    sb2.append(cVar.h.get());
                    sb2.append(" hasCalledVideoLoadSuccess: ");
                    sb2.append(a.this.ab);
                    sb2.append(" 无需响应");
                    return;
                }
                StringBuilder sb3 = new StringBuilder("receive onVideoLoadSuccess,cur state: ");
                sb3.append(cVar.h.get());
                sb3.append(" hasCalledVideoLoadSuccess: ");
                sb3.append(a.this.ab);
                sb3.append(" 响应");
                a.q(a.this);
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(com.anythink.expressad.a.y, str);
                bundle.putString("unit_id", str2);
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                cVar.i.sendMessage(messageObtain);
            }
        }

        private void a(String str) {
            Handler handler = this.i;
            if (handler != null) {
                handler.removeMessages(a.I);
            }
            StringBuilder sb = new StringBuilder("receive onVideoLoadFail,cur state: ");
            sb.append(this.h.get());
            sb.append(" hasCalledVideoLoadFail: ");
            sb.append(a.this.ac);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(str);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((this.h.get() == 1 || this.h.get() == 3) && this.i != null) {
                a.s(a.this);
                if (!a.this.ae || str.contains("resource load timeout")) {
                    a.u(a.this);
                }
                if (a.this.ab) {
                    this.h.set(2);
                }
                if (!a.this.ac || !a.this.ad || a.this.ab) {
                    StringBuilder sb2 = new StringBuilder("receive onVideoLoadFail,cur state: ");
                    sb2.append(this.h.get());
                    sb2.append(" hasCalledVideoLoadFail: ");
                    sb2.append(a.this.ac);
                    sb2.append(o4.OooO00o.OooO0Oo);
                    sb2.append(str);
                    sb2.append(" 无需响应");
                    return;
                }
                this.h.set(2);
                StringBuilder sb3 = new StringBuilder("receive onVideoLoadFail,cur state: ");
                sb3.append(this.h.get());
                sb3.append(" hasCalledVideoLoadFail: ");
                sb3.append(a.this.ac);
                sb3.append(o4.OooO00o.OooO0Oo);
                sb3.append(str);
                sb3.append(" 响应");
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 16;
                this.i.sendMessage(messageObtain);
            }
        }

        private void a(String str, String str2) {
            StringBuilder sb = new StringBuilder("receive onCampaignLoadSuccess,cur state: ");
            sb.append(this.h.get());
            sb.append(" hasCalledCampaignLoadSuccess: ");
            sb.append(a.this.aa);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((this.h.get() == 1 || this.h.get() == 3) && this.i != null) {
                if (a.this.aa) {
                    StringBuilder sb2 = new StringBuilder("receive onCampaignLoadSuccess,cur state: ");
                    sb2.append(this.h.get());
                    sb2.append(" hasCalledCampaignLoadSuccess: ");
                    sb2.append(a.this.aa);
                    sb2.append(" 无需响应");
                    return;
                }
                StringBuilder sb3 = new StringBuilder("receive onCampaignLoadSuccess,cur state: ");
                sb3.append(this.h.get());
                sb3.append(" hasCalledCampaignLoadSuccess: ");
                sb3.append(a.this.aa);
                sb3.append(" response");
                a.o(a.this);
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(com.anythink.expressad.a.y, str);
                bundle.putString("unit_id", str2);
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 17;
                this.i.sendMessage(messageObtain);
            }
        }

        private void a(List<com.anythink.expressad.foundation.d.c> list) {
            this.k = list;
        }

        private void a(boolean z) {
            this.l = z;
        }

        private void a(boolean z, String str, float f2) {
            com.anythink.expressad.videocommon.d.a aVar;
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || (aVar = weakReference.get()) == null) {
                return;
            }
            if (a.this.K) {
                a.b();
                a.this.a();
            }
            aVar.a(z, str, f2);
        }

        private void b() {
            com.anythink.expressad.videocommon.d.a aVar;
            a.l(a.this);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || (aVar = weakReference.get()) == null) {
                return;
            }
            aVar.c();
        }

        public static /* synthetic */ void b(c cVar) {
            cVar.h.set(1);
        }

        public static /* synthetic */ void b(c cVar, String str) {
            cVar.h.set(2);
            if (cVar.i != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 18;
                cVar.i.sendMessage(messageObtain);
            }
        }

        public static /* synthetic */ void b(c cVar, String str, String str2) {
            Handler handler = cVar.i;
            if (handler != null) {
                handler.removeMessages(a.I);
            }
            StringBuilder sb = new StringBuilder("receive onVideoLoadSuccessForCache,cur state: ");
            sb.append(cVar.h.get());
            sb.append(" hasCalledVideoLoadSuccess: ");
            sb.append(a.this.ab);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = cVar.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((cVar.h.get() == 1 || cVar.h.get() == 3) && cVar.i != null) {
                if (cVar.h.get() == 1) {
                    cVar.h.set(3);
                }
                if (a.this.ab) {
                    StringBuilder sb2 = new StringBuilder("receive onVideoLoadSuccessForCache,cur state: ");
                    sb2.append(cVar.h.get());
                    sb2.append(" hasCalledVideoLoadSuccess: ");
                    sb2.append(a.this.ab);
                    sb2.append(" 无需响应");
                    return;
                }
                StringBuilder sb3 = new StringBuilder("receive onVideoLoadSuccessForCache,cur state: ");
                sb3.append(cVar.h.get());
                sb3.append(" hasCalledVideoLoadSuccess: ");
                sb3.append(a.this.ab);
                sb3.append(" 响应");
                a.q(a.this);
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(com.anythink.expressad.a.y, str);
                bundle.putString("unit_id", str2);
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                cVar.i.sendMessage(messageObtain);
                if (a.this.ac) {
                    cVar.h.set(2);
                }
            }
        }

        private void b(String str) {
            this.h.set(2);
            if (this.i != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 18;
                this.i.sendMessage(messageObtain);
            }
        }

        private void b(String str, String str2) {
            StringBuilder sb = new StringBuilder("receive onCampaignLoadSuccessForCache,cur state: ");
            sb.append(this.h.get());
            sb.append(" hasCalledCampaignLoadSuccess: ");
            sb.append(a.this.aa);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || weakReference.get() == null || this.i == null) {
                return;
            }
            if (a.this.aa) {
                StringBuilder sb2 = new StringBuilder("receive onCampaignLoadSuccessForCache,cur state: ");
                sb2.append(this.h.get());
                sb2.append(" hasCalledCampaignLoadSuccess: ");
                sb2.append(a.this.aa);
                sb2.append(" 无需响应");
                return;
            }
            StringBuilder sb3 = new StringBuilder("receive onCampaignLoadSuccessForCache,curstate: ");
            sb3.append(this.h.get());
            sb3.append(" hasCalledCampaignLoadSuccess: ");
            sb3.append(a.this.aa);
            sb3.append(" response");
            a.o(a.this);
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putString(com.anythink.expressad.a.y, str);
            bundle.putString("unit_id", str2);
            messageObtain.setData(bundle);
            messageObtain.obj = str2;
            messageObtain.what = 17;
            this.i.sendMessage(messageObtain);
        }

        private void c() {
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference != null) {
                weakReference.get();
            }
        }

        public static /* synthetic */ void c(c cVar, String str, String str2) {
            StringBuilder sb = new StringBuilder("receive onCampaignLoadSuccess,cur state: ");
            sb.append(cVar.h.get());
            sb.append(" hasCalledCampaignLoadSuccess: ");
            sb.append(a.this.aa);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = cVar.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((cVar.h.get() == 1 || cVar.h.get() == 3) && cVar.i != null) {
                if (a.this.aa) {
                    StringBuilder sb2 = new StringBuilder("receive onCampaignLoadSuccess,cur state: ");
                    sb2.append(cVar.h.get());
                    sb2.append(" hasCalledCampaignLoadSuccess: ");
                    sb2.append(a.this.aa);
                    sb2.append(" 无需响应");
                    return;
                }
                StringBuilder sb3 = new StringBuilder("receive onCampaignLoadSuccess,cur state: ");
                sb3.append(cVar.h.get());
                sb3.append(" hasCalledCampaignLoadSuccess: ");
                sb3.append(a.this.aa);
                sb3.append(" response");
                a.o(a.this);
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(com.anythink.expressad.a.y, str);
                bundle.putString("unit_id", str2);
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 17;
                cVar.i.sendMessage(messageObtain);
            }
        }

        private void c(String str) {
            if (this.i != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 18;
                this.i.sendMessage(messageObtain);
            }
        }

        private void c(String str, String str2) {
            Handler handler = this.i;
            if (handler != null) {
                handler.removeMessages(a.I);
            }
            StringBuilder sb = new StringBuilder("receive onVideoLoadSuccess,cur state: ");
            sb.append(this.h.get());
            sb.append(" hasCalledVideoLoadSuccess: ");
            sb.append(a.this.ab);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((this.h.get() == 1 || this.h.get() == 3) && this.i != null) {
                this.h.set(2);
                if (a.this.ab) {
                    StringBuilder sb2 = new StringBuilder("receive onVideoLoadSuccess,cur state: ");
                    sb2.append(this.h.get());
                    sb2.append(" hasCalledVideoLoadSuccess: ");
                    sb2.append(a.this.ab);
                    sb2.append(" 无需响应");
                    return;
                }
                StringBuilder sb3 = new StringBuilder("receive onVideoLoadSuccess,cur state: ");
                sb3.append(this.h.get());
                sb3.append(" hasCalledVideoLoadSuccess: ");
                sb3.append(a.this.ab);
                sb3.append(" 响应");
                a.q(a.this);
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(com.anythink.expressad.a.y, str);
                bundle.putString("unit_id", str2);
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                this.i.sendMessage(messageObtain);
            }
        }

        private void d() {
            com.anythink.expressad.videocommon.d.a aVar;
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || (aVar = weakReference.get()) == null) {
                return;
            }
            aVar.d();
        }

        private void d(String str) {
            StringBuilder sb = new StringBuilder("receive onVideoLoadFailForCache,cur state: ");
            sb.append(this.h.get());
            sb.append(" hasCalledVideoLoadFailedForCache: ");
            sb.append(a.this.ad);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(str);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((this.h.get() == 1 || this.h.get() == 3) && this.i != null) {
                a.u(a.this);
                if (str.contains("resource load timeout")) {
                    a.s(a.this);
                }
                if (!a.this.ad || !a.this.ac || a.this.ab) {
                    StringBuilder sb2 = new StringBuilder("receive onVideoLoadFailForCache,cur state: ");
                    sb2.append(this.h.get());
                    sb2.append(" hasCalledVideoLoadFailedForCache: ");
                    sb2.append(a.this.ad);
                    sb2.append(o4.OooO00o.OooO0Oo);
                    sb2.append(str);
                    sb2.append(" 无需响应");
                    return;
                }
                this.h.set(2);
                StringBuilder sb3 = new StringBuilder("receive hasCalledVideoLoadFailedForCache,cur state: ");
                sb3.append(this.h.get());
                sb3.append(" hasCalledVideoLoadFailedForCache: ");
                sb3.append(a.this.ad);
                sb3.append(o4.OooO00o.OooO0Oo);
                sb3.append(str);
                sb3.append(" 响应");
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 16;
                this.i.sendMessage(messageObtain);
            }
        }

        private void d(String str, String str2) {
            Handler handler = this.i;
            if (handler != null) {
                handler.removeMessages(a.I);
            }
            StringBuilder sb = new StringBuilder("receive onVideoLoadSuccessForCache,cur state: ");
            sb.append(this.h.get());
            sb.append(" hasCalledVideoLoadSuccess: ");
            sb.append(a.this.ab);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            if ((this.h.get() == 1 || this.h.get() == 3) && this.i != null) {
                if (this.h.get() == 1) {
                    this.h.set(3);
                }
                if (a.this.ab) {
                    StringBuilder sb2 = new StringBuilder("receive onVideoLoadSuccessForCache,cur state: ");
                    sb2.append(this.h.get());
                    sb2.append(" hasCalledVideoLoadSuccess: ");
                    sb2.append(a.this.ab);
                    sb2.append(" 无需响应");
                    return;
                }
                StringBuilder sb3 = new StringBuilder("receive onVideoLoadSuccessForCache,cur state: ");
                sb3.append(this.h.get());
                sb3.append(" hasCalledVideoLoadSuccess: ");
                sb3.append(a.this.ab);
                sb3.append(" 响应");
                a.q(a.this);
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(com.anythink.expressad.a.y, str);
                bundle.putString("unit_id", str2);
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                this.i.sendMessage(messageObtain);
                if (a.this.ac) {
                    this.h.set(2);
                }
            }
        }

        private void e(String str) {
            com.anythink.expressad.videocommon.d.a aVar;
            a.l(a.this);
            WeakReference<com.anythink.expressad.videocommon.d.a> weakReference = this.c;
            if (weakReference == null || (aVar = weakReference.get()) == null) {
                return;
            }
            aVar.b(str);
        }
    }

    public final class d implements h {
        private a b;
        private int c;
        private Handler d;
        private int e;

        public /* synthetic */ d(a aVar, a aVar2, Handler handler) {
            this(aVar2, handler, (byte) 0);
        }

        private d(a aVar, Handler handler, byte b) {
            this.e = 0;
            this.b = aVar;
            this.c = 1;
            this.d = handler;
        }

        private void d() {
            a.this.P.clear();
            this.b = null;
        }

        @Override // com.anythink.expressad.video.bt.module.b.h
        public final void a() {
            a.l(a.this);
            try {
                a aVar = this.b;
                if (aVar != null) {
                    aVar.Q = true;
                    if (this.b.m != null) {
                        this.b.m.n = "";
                    }
                    if (this.b.p != null) {
                        if (a.this.K) {
                            a.b();
                        }
                        this.b.p.c();
                        this.e = 2;
                    }
                }
            } catch (Throwable th) {
                if (com.anythink.expressad.a.a) {
                    th.printStackTrace();
                }
            }
        }

        @Override // com.anythink.expressad.video.bt.module.b.h
        public final void a(com.anythink.expressad.foundation.d.c cVar) {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.p == null) {
                    return;
                }
                try {
                    if (a.this.K) {
                        a.b();
                    }
                    this.b.p.a(cVar);
                } catch (Exception e) {
                    if (com.anythink.expressad.a.a) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // com.anythink.expressad.video.bt.module.b.h
        public final void a(String str) {
            a.l(a.this);
            try {
                if (this.b != null) {
                    if (a.this.K) {
                        a.b();
                    }
                    this.b.Q = false;
                    if (this.b.p != null) {
                        try {
                            if (a.this.af != null) {
                                a.this.af.size();
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            this.b.p.b(str);
                        } catch (Exception e) {
                            if (com.anythink.expressad.a.a) {
                                e.printStackTrace();
                            }
                        }
                        this.e = 4;
                    }
                }
            } catch (Exception e2) {
                this.e = 0;
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // com.anythink.expressad.video.bt.module.b.h
        public final void a(boolean z, int i) {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.p == null) {
                    return;
                }
                this.b.Q = false;
                try {
                    com.anythink.expressad.videocommon.d.a unused = this.b.p;
                } catch (Exception e) {
                    if (com.anythink.expressad.a.a) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // com.anythink.expressad.video.bt.module.b.h
        public final void a(boolean z, com.anythink.expressad.videocommon.c.c cVar) {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.p == null) {
                    return;
                }
                if (cVar == null) {
                    cVar = com.anythink.expressad.videocommon.c.c.b(this.b.v);
                }
                if (a.this.K) {
                    a.b();
                    a.this.a();
                }
                this.b.p.a(z, cVar.a(), cVar.b());
                this.e = 7;
                this.b.Q = false;
                a.this.P.clear();
                this.b = null;
            } catch (Exception e) {
                if (com.anythink.expressad.a.a) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.anythink.expressad.video.bt.module.b.h
        public final void b() {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.p == null) {
                    return;
                }
                try {
                    this.b.p.d();
                } catch (Exception e) {
                    if (com.anythink.expressad.a.a) {
                        e.printStackTrace();
                    }
                }
                this.e = 5;
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // com.anythink.expressad.video.bt.module.b.h
        public final void c() {
            try {
                a aVar = this.b;
                if (aVar == null || aVar.p == null) {
                    return;
                }
                try {
                    com.anythink.expressad.videocommon.d.a unused = this.b.p;
                    com.anythink.expressad.foundation.f.b.a().b("_2", 2);
                } catch (Exception e) {
                    if (com.anythink.expressad.a.a) {
                        e.printStackTrace();
                    }
                }
                this.e = 6;
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static int a(String str) {
        Map<String, Integer> map;
        Integer num;
        try {
            if (!w.b(str) || (map = T) == null || !map.containsKey(str) || (num = T.get(str)) == null) {
                return 0;
            }
            return num.intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    private static List<com.anythink.expressad.foundation.d.c> a(String str, List<com.anythink.expressad.foundation.d.c> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0 && !TextUtils.isEmpty(str)) {
            for (com.anythink.expressad.foundation.d.c cVar : list) {
                if (cVar != null && str.equals(cVar.B())) {
                    arrayList.add(cVar);
                }
            }
        }
        return arrayList;
    }

    private void a(int i2, int i3, int i4) {
        this.B = i2;
        this.C = i3;
        if (i3 == com.anythink.expressad.foundation.g.a.cu) {
            this.D = i4 < 0 ? 5 : i4;
        }
        if (i3 == com.anythink.expressad.foundation.g.a.ct) {
            this.D = i4 < 0 ? 80 : i4;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ivRewardEnable", 1);
            jSONObject.put("ivRewardMode", i2 == com.anythink.expressad.foundation.g.a.cr ? 0 : 1);
            jSONObject.put("ivRewardPlayValueMode", i3 == com.anythink.expressad.foundation.g.a.ct ? 0 : 1);
            jSONObject.put("ivRewardPlayValue", i4);
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.d.b.e(this.s, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    private void a(Activity activity, String str, m mVar) {
        Map<String, Integer> mapI;
        try {
            com.anythink.expressad.videocommon.e.a aVar = this.o;
            int iIntValue = (aVar == null || (mapI = aVar.i()) == null || !mapI.containsKey("1")) ? 0 : mapI.get("1").intValue();
            if (v.b(this.k, this.t + "_1", 0) != null) {
                this.l = ((Integer) v.b(this.k, this.t + "_1", 0)).intValue();
            }
            if (this.m == null) {
                i();
            }
            com.anythink.expressad.reward.a.d dVar = this.m;
            if (dVar != null && dVar.c()) {
                if (this.l >= iIntValue && iIntValue > 0) {
                    this.R = false;
                    return;
                }
                d dVar2 = new d(this, this, this.x);
                c.put(this.s, dVar2);
                this.m.a(activity, dVar2, str, this.r, this.y, this.u, mVar);
                return;
            }
            this.R = false;
            if (this.p != null) {
                try {
                    this.p.b("can't show because load is failed");
                } catch (Exception e) {
                    if (com.anythink.expressad.a.a) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.getLocalizedMessage();
            }
            if (this.p != null) {
                try {
                    this.p.b("show exception");
                } catch (Exception unused) {
                    if (com.anythink.expressad.a.a) {
                        e2.printStackTrace();
                    }
                }
            }
            this.R = false;
        }
    }

    public static void a(String str, int i2) {
        try {
            if (T == null || !w.b(str)) {
                return;
            }
            T.put(str, Integer.valueOf(i2));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str)) {
            v.a(this.k, "Anythink_ConfirmTitle" + this.s, str.trim());
        }
        if (!TextUtils.isEmpty(str2)) {
            v.a(this.k, "Anythink_ConfirmContent" + this.s, str2.trim());
        }
        if (!TextUtils.isEmpty(str4)) {
            v.a(this.k, "Anythink_CancelText" + this.s, str4.trim());
        }
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        v.a(this.k, "Anythink_ConfirmText" + this.s, str3.trim());
    }

    private static void a(boolean z3, boolean z4) {
        int i2;
        try {
            Map<String, d> map = c;
            if (map != null) {
                map.clear();
            }
            if (z3) {
                i2 = com.anythink.expressad.foundation.g.a.aU;
                if (z4) {
                    com.anythink.expressad.videocommon.a.a(i2);
                } else {
                    com.anythink.expressad.videocommon.a.b(i2);
                }
            } else {
                i2 = 94;
                if (z4) {
                    com.anythink.expressad.videocommon.a.a(i2);
                }
                com.anythink.expressad.videocommon.a.b(i2);
            }
            com.anythink.expressad.videocommon.a.a();
            com.anythink.expressad.videocommon.a.b();
        } catch (Throwable unused) {
        }
    }

    private static void a(boolean z3, boolean z4, String str) {
        int i2;
        try {
            Map<String, d> map = c;
            if (map != null) {
                map.clear();
            }
            if (z3) {
                i2 = com.anythink.expressad.foundation.g.a.aU;
                if (z4) {
                    com.anythink.expressad.videocommon.a.a(i2);
                } else {
                    com.anythink.expressad.videocommon.a.b(i2);
                }
            } else {
                i2 = 94;
                if (z4) {
                    com.anythink.expressad.videocommon.a.a(i2);
                }
                com.anythink.expressad.videocommon.a.b(i2);
            }
            com.anythink.expressad.videocommon.a.c(str);
            com.anythink.expressad.videocommon.a.b();
        } catch (Throwable unused) {
        }
    }

    private com.anythink.expressad.videocommon.c.b b(int i2) {
        com.anythink.expressad.videocommon.e.d dVar = this.n;
        com.anythink.expressad.videocommon.c.b bVar = null;
        if (dVar != null) {
            int size = dVar.I().size();
            for (int i3 = 0; i3 < size; i3++) {
                if (this.n.I().get(i3).a() == i2) {
                    bVar = this.n.I().get(i3);
                }
            }
        }
        return bVar;
    }

    public static /* synthetic */ void b() {
    }

    private void b(com.anythink.expressad.foundation.d.d dVar) {
        try {
            c(dVar);
        } catch (Exception e) {
            try {
                b("load mv api error:" + e.getMessage());
            } catch (Exception e2) {
                b(com.anythink.expressad.foundation.g.b.b.b);
                if (com.anythink.expressad.a.a) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (this.q != null) {
            this.ad = true;
            c.a(this.q, str);
        }
    }

    private static void b(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (concurrentHashMap = U) == null || concurrentHashMap.containsKey(str)) {
            return;
        }
        U.put(str, str2);
    }

    private void b(boolean z3) {
        this.K = z3;
    }

    private static void c() {
    }

    private void c(com.anythink.expressad.foundation.d.d dVar) {
        try {
            com.anythink.expressad.reward.a.d dVar2 = this.m;
            if (dVar2 == null || !this.s.equals(dVar2.e())) {
                com.anythink.expressad.reward.a.d dVar3 = new com.anythink.expressad.reward.a.d(this.k, this.t, this.s);
                this.m = dVar3;
                dVar3.a(this.J);
                this.m.b(this.K);
            }
            if (this.J) {
                this.m.a(this.B, this.C, this.D);
            }
            this.m.a(this.y);
            this.m.a(this.n);
            RunnableC0144a runnableC0144a = new RunnableC0144a(this.m);
            b bVar = new b(this.m);
            bVar.a(runnableC0144a);
            this.m.a(bVar);
            this.m.a(dVar);
        } catch (Exception e) {
            b(e.getMessage());
        }
    }

    private void c(boolean z3) {
        this.O = z3;
    }

    private String d() {
        com.anythink.expressad.reward.a.d dVar = this.m;
        return dVar != null ? dVar.c(this.Q) : "";
    }

    private static void e() {
        com.anythink.expressad.foundation.h.m.a();
    }

    private void f() {
        try {
            List<com.anythink.expressad.videocommon.c.b> listI = this.n.I();
            if (listI == null || listI.size() <= 0) {
                return;
            }
            for (int i2 = 0; i2 < listI.size(); i2++) {
                com.anythink.expressad.videocommon.c.b bVar = listI.get(i2);
                v.a(this.k, this.t + "_" + bVar.a(), 0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean g() {
        int iIntValue;
        try {
            List<com.anythink.expressad.videocommon.c.b> listI = this.n.I();
            if (this.o == null) {
                this.o = com.anythink.expressad.videocommon.e.c.a().b();
            }
            Map<String, Integer> mapI = this.o.i();
            if (listI == null || listI.size() <= 0) {
                return true;
            }
            for (int i2 = 0; i2 < listI.size(); i2++) {
                com.anythink.expressad.videocommon.c.b bVar = listI.get(i2);
                StringBuilder sb = new StringBuilder();
                sb.append(bVar.a());
                if (mapI.containsKey(sb.toString())) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(bVar.a());
                    iIntValue = mapI.get(sb2.toString()).intValue();
                } else {
                    iIntValue = 0;
                }
                Object objB = v.b(this.k, this.t + "_" + bVar.a(), 0);
                if ((objB != null ? ((Integer) objB).intValue() : 0) < iIntValue) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            e.getMessage();
            return true;
        }
    }

    private boolean h() {
        if (this.m == null) {
            i();
        }
        com.anythink.expressad.reward.a.d dVar = this.m;
        if (dVar != null) {
            return dVar.c();
        }
        return false;
    }

    private void i() {
        com.anythink.expressad.reward.a.d dVar = new com.anythink.expressad.reward.a.d(this.k, this.t, this.s);
        this.m = dVar;
        dVar.a(this.J);
        this.m.b(this.K);
        if (this.J) {
            this.m.a(this.B, this.C, this.D);
        }
        this.m.a(this.n);
    }

    private boolean j() {
        try {
            if (this.X != null) {
                return false;
            }
            this.X = com.anythink.expressad.foundation.c.c.a(n.a().f());
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static /* synthetic */ boolean l(a aVar) {
        aVar.R = false;
        return false;
    }

    public static /* synthetic */ boolean o(a aVar) {
        aVar.aa = true;
        return true;
    }

    public static /* synthetic */ boolean q(a aVar) {
        aVar.ab = true;
        return true;
    }

    public static /* synthetic */ boolean s(a aVar) {
        aVar.ac = true;
        return true;
    }

    public static /* synthetic */ boolean u(a aVar) {
        aVar.ad = true;
        return true;
    }

    public final void a() {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (!this.Q || (concurrentHashMap = U) == null || concurrentHashMap.containsKey(d())) {
            return;
        }
        U.remove(d());
    }

    public final void a(int i2) {
        this.y = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Activity activity, String str, String str2, String str3, m mVar) {
        Map<String, Integer> mapI;
        try {
            this.v = str;
            this.r = str2;
            this.u = str3;
        } catch (Exception e) {
            if (com.anythink.expressad.a.a) {
            }
            if (this.p != null) {
            }
            this.R = false;
        }
        synchronized (this.S) {
            if (this.R) {
                if (this.p != null) {
                    try {
                        this.p.b(com.anythink.expressad.foundation.g.b.b.g);
                    } catch (Exception e2) {
                        if (com.anythink.expressad.a.a) {
                            e2.printStackTrace();
                        }
                    }
                }
                return;
            }
            this.R = true;
            if (this.q != null && this.q.h.get() == 1) {
                if (this.p != null) {
                    try {
                        this.p.b(com.anythink.expressad.foundation.g.b.b.c);
                    } catch (Exception e3) {
                        if (com.anythink.expressad.a.a) {
                            e3.printStackTrace();
                        }
                    }
                }
                this.R = false;
                return;
            }
            Context context = this.k;
            if (context == null) {
                if (this.p != null) {
                    try {
                        this.p.b(com.anythink.expressad.foundation.g.b.b.a);
                    } catch (Exception e4) {
                        if (com.anythink.expressad.a.a) {
                            e4.printStackTrace();
                        }
                    }
                }
                this.R = false;
                return;
            }
            if (this.J && !t.b(context)) {
                if (this.p != null) {
                    try {
                        this.p.b(com.anythink.expressad.foundation.g.b.b.d);
                    } catch (Exception e5) {
                        if (com.anythink.expressad.a.a) {
                            e5.printStackTrace();
                        }
                    }
                }
                this.R = false;
                return;
            }
            j();
            try {
                String str4 = new SimpleDateFormat("dd").format(new Date());
                String str5 = (String) v.b(this.k, com.anythink.expressad.foundation.g.a.bK, "0");
                if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str4) && !str5.equals(str4)) {
                    v.a(this.k, com.anythink.expressad.foundation.g.a.bK, str4);
                    v.a(this.k, this.t + "_1", 0);
                }
            } catch (Exception unused) {
            }
            try {
                com.anythink.expressad.videocommon.e.a aVar = this.o;
                int iIntValue = (aVar == null || (mapI = aVar.i()) == null || !mapI.containsKey("1")) ? 0 : mapI.get("1").intValue();
                if (v.b(this.k, this.t + "_1", 0) != null) {
                    this.l = ((Integer) v.b(this.k, this.t + "_1", 0)).intValue();
                }
                if (this.m == null) {
                    i();
                }
                com.anythink.expressad.reward.a.d dVar = this.m;
                if (dVar != null && dVar.c()) {
                    if (this.l >= iIntValue && iIntValue > 0) {
                        this.R = false;
                        return;
                    }
                    d dVar2 = new d(this, this, this.x);
                    c.put(this.s, dVar2);
                    this.m.a(activity, dVar2, str, this.r, this.y, this.u, mVar);
                    return;
                }
                this.R = false;
                if (this.p != null) {
                    try {
                        this.p.b("can't show because load is failed");
                        return;
                    } catch (Exception e6) {
                        if (com.anythink.expressad.a.a) {
                            e6.printStackTrace();
                            return;
                        }
                        return;
                    }
                }
                return;
            } catch (Exception e7) {
                if (com.anythink.expressad.a.a) {
                    e7.getLocalizedMessage();
                }
                if (this.p != null) {
                    try {
                        this.p.b("show exception");
                    } catch (Exception unused2) {
                        if (com.anythink.expressad.a.a) {
                            e7.printStackTrace();
                        }
                    }
                }
                this.R = false;
                return;
            }
            if (com.anythink.expressad.a.a) {
                e.getLocalizedMessage();
            }
            if (this.p != null) {
                try {
                    this.p.b("show exception");
                } catch (Exception unused3) {
                    if (com.anythink.expressad.a.a) {
                        e.printStackTrace();
                    }
                }
            }
            this.R = false;
        }
    }

    public final void a(com.anythink.expressad.foundation.d.d dVar) {
        if (dVar == null) {
            c.b(this.q, com.anythink.expressad.foundation.g.b.b.f);
            return;
        }
        if (this.q == null || c.a(this.q) != 3) {
            this.Y = true;
            c.b(this.q);
        } else {
            this.Y = false;
        }
        this.N = true;
        this.x.removeMessages(H);
        this.ab = false;
        this.aa = false;
        this.ac = false;
        this.ad = false;
        com.anythink.expressad.reward.a.c.a();
        try {
            this.n = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.s, this.J);
            if (!TextUtils.isEmpty(this.t)) {
                this.n.b(this.t);
            }
            int iS = this.n.S() * 1000;
            if (this.x != null) {
                StringBuilder sb = new StringBuilder("start load timeout for ");
                sb.append(iS);
                sb.append(" ms");
                this.x.sendEmptyMessageDelayed(I, iS);
            }
            this.V = this.n.Q();
            try {
                if (g()) {
                    f();
                }
            } catch (Exception e) {
                if (com.anythink.expressad.a.a) {
                    e.printStackTrace();
                }
            }
            try {
                c(dVar);
            } catch (Exception e2) {
                try {
                    b("load mv api error:" + e2.getMessage());
                } catch (Exception e3) {
                    b(com.anythink.expressad.foundation.g.b.b.b);
                    if (com.anythink.expressad.a.a) {
                        e3.printStackTrace();
                    }
                }
            }
        } catch (Exception e4) {
            if (this.q != null) {
                c.a(this.q, "load exception");
            }
            if (com.anythink.expressad.a.a) {
                e4.printStackTrace();
            }
        }
    }

    public final void a(com.anythink.expressad.videocommon.d.a aVar) {
        this.p = aVar;
        this.q = new c(this, aVar, this.x, this.s, (byte) 0);
    }

    public final void a(String str, String str2) {
        try {
            this.k = n.a().f();
            this.s = str2;
            this.t = str;
            this.o = com.anythink.expressad.videocommon.e.c.a().b();
            com.anythink.expressad.foundation.h.m.b();
            com.anythink.expressad.videocommon.b.m.a().b();
            j.a().b();
            com.anythink.expressad.videocommon.e.c.a().a(this.s, this.J);
            if (this.X == null) {
                this.X = com.anythink.expressad.foundation.c.c.a(n.a().f());
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void a(boolean z3) {
        this.J = z3;
    }

    @Override // com.anythink.core.common.a.i
    public boolean isReady() {
        try {
            j();
            if (this.K) {
                return false;
            }
            if (this.m == null) {
                i();
            }
            com.anythink.expressad.reward.a.d dVar = this.m;
            if (dVar != null) {
                return dVar.c();
            }
            return false;
        } catch (Throwable th) {
            if (!com.anythink.expressad.a.a) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }
}
