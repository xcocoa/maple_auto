package com.anythink.core.common.b;

import android.util.Log;
import com.anythink.core.api.ATAdSourceStatusListener;
import com.anythink.core.api.AdError;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public WeakReference<ATAdSourceStatusListener> a;

    private ATAdSourceStatusListener a() {
        WeakReference<ATAdSourceStatusListener> weakReference = this.a;
        if (weakReference == null) {
            return null;
        }
        ATAdSourceStatusListener aTAdSourceStatusListener = weakReference.get();
        if (aTAdSourceStatusListener == null) {
            Log.e("anythink", "ATAdSourceStatusListener had been released.");
        }
        return aTAdSourceStatusListener;
    }

    public static /* synthetic */ ATAdSourceStatusListener a(b bVar) {
        WeakReference<ATAdSourceStatusListener> weakReference = bVar.a;
        if (weakReference == null) {
            return null;
        }
        ATAdSourceStatusListener aTAdSourceStatusListener = weakReference.get();
        if (aTAdSourceStatusListener == null) {
            Log.e("anythink", "ATAdSourceStatusListener had been released.");
        }
        return aTAdSourceStatusListener;
    }

    public final void a(ATAdSourceStatusListener aTAdSourceStatusListener) {
        if (aTAdSourceStatusListener == null) {
            return;
        }
        this.a = new WeakReference<>(aTAdSourceStatusListener);
    }

    public final void a(com.anythink.core.common.f.h hVar) {
        final j jVarA = j.a(hVar, (d) null);
        n.a().b(new Runnable() { // from class: com.anythink.core.common.b.b.1
            @Override // java.lang.Runnable
            public final void run() {
                ATAdSourceStatusListener aTAdSourceStatusListenerA = b.a(b.this);
                if (aTAdSourceStatusListenerA != null) {
                    aTAdSourceStatusListenerA.onAdSourceBiddingAttempt(jVarA);
                }
            }
        });
    }

    public final void a(com.anythink.core.common.f.h hVar, final AdError adError) {
        final j jVarA = j.a(hVar, (d) null);
        n.a().b(new Runnable() { // from class: com.anythink.core.common.b.b.3
            @Override // java.lang.Runnable
            public final void run() {
                ATAdSourceStatusListener aTAdSourceStatusListenerA = b.a(b.this);
                if (aTAdSourceStatusListenerA != null) {
                    aTAdSourceStatusListenerA.onAdSourceBiddingFail(jVarA, adError);
                }
            }
        });
    }

    public final void b(com.anythink.core.common.f.h hVar) {
        final j jVarA = j.a(hVar, (d) null);
        n.a().b(new Runnable() { // from class: com.anythink.core.common.b.b.2
            @Override // java.lang.Runnable
            public final void run() {
                ATAdSourceStatusListener aTAdSourceStatusListenerA = b.a(b.this);
                if (aTAdSourceStatusListenerA != null) {
                    aTAdSourceStatusListenerA.onAdSourceBiddingFilled(jVarA);
                }
            }
        });
    }

    public final void b(com.anythink.core.common.f.h hVar, final AdError adError) {
        final j jVarA = j.a(hVar, (d) null);
        n.a().b(new Runnable() { // from class: com.anythink.core.common.b.b.6
            @Override // java.lang.Runnable
            public final void run() {
                ATAdSourceStatusListener aTAdSourceStatusListenerA = b.a(b.this);
                if (aTAdSourceStatusListenerA != null) {
                    aTAdSourceStatusListenerA.onAdSourceLoadFail(jVarA, adError);
                }
            }
        });
    }

    public final void c(com.anythink.core.common.f.h hVar) {
        final j jVarA = j.a(hVar, (d) null);
        n.a().b(new Runnable() { // from class: com.anythink.core.common.b.b.4
            @Override // java.lang.Runnable
            public final void run() {
                ATAdSourceStatusListener aTAdSourceStatusListenerA = b.a(b.this);
                if (aTAdSourceStatusListenerA != null) {
                    aTAdSourceStatusListenerA.onAdSourceAttempt(jVarA);
                }
            }
        });
    }

    public final void d(com.anythink.core.common.f.h hVar) {
        final j jVarA = j.a(hVar, (d) null);
        n.a().b(new Runnable() { // from class: com.anythink.core.common.b.b.5
            @Override // java.lang.Runnable
            public final void run() {
                ATAdSourceStatusListener aTAdSourceStatusListenerA = b.a(b.this);
                if (aTAdSourceStatusListenerA != null) {
                    aTAdSourceStatusListenerA.onAdSourceLoadFilled(jVarA);
                }
            }
        });
    }
}
