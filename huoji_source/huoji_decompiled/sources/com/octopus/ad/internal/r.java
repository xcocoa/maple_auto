package com.octopus.ad.internal;

import android.graphics.Rect;
import android.view.View;
import com.octopus.ad.internal.utilities.HaoboLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class r {
    private View b;
    private Runnable d;
    private ScheduledExecutorService e;
    private boolean a = false;
    private ArrayList<a> c = new ArrayList<>();

    public interface a {
        void a(boolean z);
    }

    private r(View view) {
        this.b = view;
        b();
    }

    public static r a(View view) {
        if (view != null) {
            return new r(view);
        }
        HaoboLog.d(HaoboLog.nativeLogTag, "Unable to check visibility");
        return null;
    }

    public View a() {
        return this.b;
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.c.add(aVar);
        }
    }

    public void b() {
        if (this.a) {
            return;
        }
        this.a = true;
        this.d = new Runnable() { // from class: com.octopus.ad.internal.r.1
            @Override // java.lang.Runnable
            public void run() {
                if (r.this.c != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = r.this.c.iterator();
                    while (it.hasNext()) {
                        arrayList.add((a) it.next());
                    }
                    boolean zC = r.this.c();
                    Iterator it2 = arrayList.iterator();
                    if (zC) {
                        while (it2.hasNext()) {
                            ((a) it2.next()).a(true);
                        }
                    } else {
                        while (it2.hasNext()) {
                            ((a) it2.next()).a(false);
                        }
                    }
                }
            }
        };
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.e = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.octopus.ad.internal.r.2
            @Override // java.lang.Runnable
            public void run() {
                r.this.b.post(r.this.d);
            }
        }, 0L, 250L, TimeUnit.MILLISECONDS);
    }

    public boolean b(a aVar) {
        return this.c.remove(aVar);
    }

    public boolean c() {
        View view = this.b;
        if (view == null || view.getVisibility() != 0 || this.b.getParent() == null) {
            return false;
        }
        Rect rect = new Rect();
        if (!this.b.getGlobalVisibleRect(rect)) {
            return false;
        }
        int iHeight = rect.height() * rect.width();
        int height = this.b.getHeight() * this.b.getWidth();
        return height > 0 && iHeight * 100 >= height * 50;
    }

    public void d() {
        ScheduledExecutorService scheduledExecutorService = this.e;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        View view = this.b;
        if (view != null) {
            view.removeCallbacks(this.d);
            this.b = null;
        }
        this.c = null;
    }
}
