package mobi.oneway.export.b.b;

import com.umeng.commonsdk.amap.UMAmapConfig;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.g.m;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T> implements d {
    public T a;
    public AdType b;
    private long c;
    private Map<String, Boolean> d;
    private Map<String, Boolean> e;
    private volatile boolean f;
    private Timer g;
    private TimerTask h;
    private boolean i;

    public b(AdType adType, List<String> list, long j) {
        this.c = UMAmapConfig.AMAP_CACHE_WRITE_TIME;
        if (j != 0) {
            this.c = j;
        }
        this.b = adType;
        this.d = new ConcurrentHashMap();
        this.e = new ConcurrentHashMap();
        a(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        m.a((Object) "load ad timeout");
        this.f = true;
        i();
        mobi.oneway.export.e.b.a().c(new Runnable() { // from class: mobi.oneway.export.b.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.g()) {
                    b.this.a(true);
                    b.this.a();
                } else {
                    b.this.a(false);
                    b.this.a("load ad timeout");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        Iterator<Map.Entry<String, Boolean>> it = this.d.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().booleanValue()) {
                return true;
            }
        }
        return false;
    }

    private boolean h() {
        Iterator<Map.Entry<String, Boolean>> it = this.e.entrySet().iterator();
        while (it.hasNext()) {
            if (!it.next().getValue().booleanValue()) {
                return false;
            }
        }
        return true;
    }

    private void i() {
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

    public abstract void a();

    public void a(T t) {
        this.a = t;
    }

    public abstract void a(String str);

    public void a(List<String> list) {
        if (list == null) {
            return;
        }
        for (String str : list) {
            Map<String, Boolean> map = this.d;
            Boolean bool = Boolean.FALSE;
            map.put(str, bool);
            this.e.put(str, bool);
        }
    }

    public void a(boolean z) {
        this.i = z;
    }

    public boolean b() {
        return this.i;
    }

    public void c() {
        Boolean bool = Boolean.FALSE;
        Iterator<Map.Entry<String, Boolean>> it = this.d.entrySet().iterator();
        while (it.hasNext()) {
            this.d.put(it.next().getKey(), bool);
        }
        Iterator<Map.Entry<String, Boolean>> it2 = this.e.entrySet().iterator();
        while (it2.hasNext()) {
            this.e.put(it2.next().getKey(), bool);
        }
        if (this.g == null) {
            this.f = false;
            this.h = new TimerTask() { // from class: mobi.oneway.export.b.b.b.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    b.this.f();
                }
            };
            Timer timer = new Timer();
            this.g = timer;
            timer.schedule(this.h, this.c);
        }
    }

    public boolean d() {
        if (!h() || this.f) {
            return false;
        }
        i();
        a(true);
        return true;
    }

    public boolean e() {
        if (this.f || !h()) {
            return false;
        }
        i();
        if (!g()) {
            return true;
        }
        a(true);
        a();
        return false;
    }

    public void f(String str) {
        Map<String, Boolean> map = this.d;
        Boolean bool = Boolean.TRUE;
        map.put(str, bool);
        this.e.put(str, bool);
    }

    public void g(String str) {
        this.e.put(str, Boolean.TRUE);
    }
}
