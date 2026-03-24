package com.anythink.core.common.o.a;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private static String c = "f";
    public final int a;
    public final ViewTreeObserver.OnPreDrawListener b;
    private int d;
    private final ArrayList<View> e;
    private long f;
    private final Map<View, a> g;
    private final b h;
    private d i;
    private final c j;
    private final Handler k;
    private boolean l;

    public static class a {
        public int a;
        public int b;
        public long c;
        public View d;
        public Integer e;
    }

    public static class b {
        private final Rect a = new Rect();

        private static boolean a(long j, int i) {
            return SystemClock.uptimeMillis() - j >= ((long) i);
        }

        public final boolean a(View view, View view2, int i, Integer num) {
            if (view2 != null && view != null) {
                try {
                    if (view.getParent() == null || view2.getWindowVisibility() != 0 || !view2.isShown() || !view2.getGlobalVisibleRect(this.a)) {
                        return false;
                    }
                    long jHeight = ((long) this.a.height()) * ((long) this.a.width());
                    long height = ((long) view2.getHeight()) * ((long) view2.getWidth());
                    if (height <= 0) {
                        return false;
                    }
                    return (num == null || num.intValue() <= 0) ? jHeight * 100 >= ((long) i) * height : jHeight >= ((long) num.intValue());
                } catch (Throwable th) {
                    Log.e(f.c, "checkVisibilityPercent error: " + th.getMessage());
                    th.printStackTrace();
                }
            }
            return false;
        }
    }

    public class c implements Runnable {
        private final ArrayList<View> c = new ArrayList<>();
        private final ArrayList<View> b = new ArrayList<>();

        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (Map.Entry entry : f.this.g.entrySet()) {
                View view = (View) entry.getKey();
                int i = ((a) entry.getValue()).a;
                int i2 = ((a) entry.getValue()).b;
                Integer num = ((a) entry.getValue()).e;
                View view2 = ((a) entry.getValue()).d;
                if (f.this.h.a(view2, view, i, num)) {
                    this.b.add(view);
                    try {
                        view.getViewTreeObserver().removeOnPreDrawListener(f.this.b);
                    } catch (Throwable unused) {
                    }
                } else if (!f.this.h.a(view2, view, i2, null)) {
                    this.c.add(view);
                }
            }
            if (f.this.i != null) {
                f.this.i.a(this.b);
            }
            this.b.clear();
            this.c.clear();
            f.d(f.this);
        }
    }

    public interface d {
        void a(List<View> list);
    }

    public f() {
        this(new WeakHashMap(10), new b(), new Handler(Looper.getMainLooper()));
    }

    public f(int i) {
        this(new WeakHashMap(10), new b(), new Handler(Looper.getMainLooper()));
        this.d = i;
    }

    private f(Map<View, a> map, b bVar, Handler handler) {
        this.d = 100;
        this.a = 50;
        this.f = 0L;
        this.g = map;
        this.h = bVar;
        this.k = handler;
        this.j = new c();
        this.e = new ArrayList<>(50);
        this.b = new ViewTreeObserver.OnPreDrawListener() { // from class: com.anythink.core.common.o.a.f.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                f.this.c();
                return true;
            }
        };
    }

    private void a(long j) {
        for (Map.Entry<View, a> entry : this.g.entrySet()) {
            if (entry.getValue().c < j) {
                this.e.add(entry.getKey());
            }
        }
        Iterator<View> it = this.e.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        this.e.clear();
    }

    private void a(View view, int i, Integer num) {
        a(view, view, i, i, num);
    }

    private void a(View view, View view2, int i, Integer num) {
        a(view, view2, i, i, num);
    }

    private static boolean a(Context context, View view) {
        View rootView;
        View viewFindViewById = null;
        View viewFindViewById2 = !(context instanceof Activity) ? null : ((Activity) context).getWindow().getDecorView().findViewById(R.id.content);
        if (view != null && (rootView = view.getRootView()) != null && (viewFindViewById = rootView.findViewById(R.id.content)) == null) {
            viewFindViewById = rootView;
        }
        if (viewFindViewById2 == null) {
            viewFindViewById2 = viewFindViewById;
        }
        return viewFindViewById2 != null && viewFindViewById2.getViewTreeObserver().isAlive();
    }

    public static /* synthetic */ boolean d(f fVar) {
        fVar.l = false;
        return false;
    }

    public final void a() {
        this.g.clear();
        this.k.removeMessages(0);
        this.l = false;
    }

    public final void a(View view) {
        this.g.remove(view);
    }

    public final void a(View view, View view2, int i, int i2, Integer num) {
        try {
            if (a(view2.getContext(), view2)) {
                a aVar = this.g.get(view2);
                if (aVar == null) {
                    aVar = new a();
                    this.g.put(view2, aVar);
                    c();
                }
                int iMin = Math.min(i2, i);
                aVar.d = view;
                aVar.a = i;
                aVar.b = iMin;
                aVar.c = this.f;
                aVar.e = num;
                view2.getViewTreeObserver().addOnPreDrawListener(this.b);
                long j = this.f + 1;
                this.f = j;
                if (j % 50 == 0) {
                    a(j - 50);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(d dVar) {
        this.i = dVar;
    }

    public final void b() {
        a();
        this.i = null;
    }

    public final void c() {
        if (this.l) {
            return;
        }
        this.l = true;
        this.k.postDelayed(this.j, this.d);
    }
}
