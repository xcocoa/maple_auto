package com.octopus.ad.internal;

import android.graphics.Rect;
import android.view.View;
import com.octopus.ad.internal.nativead.NativeAdShownListener;
import java.text.DecimalFormat;
import java.text.Format;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    private View a;
    private NativeAdShownListener b;
    private ScheduledExecutorService c;
    private Runnable d;
    private Format e = new DecimalFormat("0.00");

    public g(View view, NativeAdShownListener nativeAdShownListener) {
        this.a = view;
        this.b = nativeAdShownListener;
        a();
    }

    public static g a(View view, NativeAdShownListener nativeAdShownListener) {
        if (view == null) {
            return null;
        }
        return new g(view, nativeAdShownListener);
    }

    private void a() {
        this.d = new Runnable() { // from class: com.octopus.ad.internal.g.1
            @Override // java.lang.Runnable
            public void run() {
                if (g.this.b()) {
                    if (g.this.b != null) {
                        g.this.b.onAdShown();
                    }
                    if (g.this.c != null) {
                        g.this.c.shutdownNow();
                    }
                    g.this.b = null;
                    g.this.a = null;
                    g.this.c = null;
                }
            }
        };
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.c = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.octopus.ad.internal.g.2
            @Override // java.lang.Runnable
            public void run() {
                if (g.this.a != null) {
                    g.this.a.post(g.this.d);
                }
            }
        }, 0L, 250L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        int i;
        View view = this.a;
        if (view == null || view.getVisibility() != 0 || this.a.getParent() == null) {
            return false;
        }
        Rect rect = new Rect();
        this.a.getLocalVisibleRect(rect);
        return (rect.left == 0 && rect.top >= 0 && rect.bottom <= this.a.getHeight() && ((double) Float.parseFloat(this.e.format(Double.valueOf((((double) ((rect.bottom - rect.top) * rect.right)) * 1.0d) / ((double) (this.a.getWidth() * this.a.getHeight())))))) > 0.5d) || (rect.left > 0 && (i = rect.right) >= 0 && i <= this.a.getWidth() && ((double) Float.parseFloat(this.e.format(Double.valueOf((((double) ((rect.right - rect.left) * (rect.bottom - rect.top))) * 1.0d) / ((double) (this.a.getWidth() * this.a.getHeight())))))) > 0.5d);
    }
}
