package com.anythink.core.common.b;

import android.content.Context;
import android.content.Intent;
import com.anythink.core.activity.AnyThinkGdprAuthActivity;
import com.anythink.core.api.ATGDPRAuthCallback;
import com.anythink.core.api.AdError;
import com.anythink.core.api.NetTrafficeCallback;
import com.anythink.core.common.b.h;
import com.anythink.core.common.o.s;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class q {
    private static volatile q d;
    public Context b;
    public int c;
    public final int a = -100;
    private ConcurrentHashMap<Integer, Boolean> e = new ConcurrentHashMap<>(5);

    private q(Context context) {
        this.c = 2;
        if (context != null) {
            this.b = context.getApplicationContext();
        }
        this.c = s.b(this.b, h.p, h.v.f, 2);
    }

    public static q a(Context context) {
        if (d == null) {
            synchronized (q.class) {
                if (d == null) {
                    d = new q(context);
                }
            }
        }
        return d;
    }

    public final int a() {
        return this.c;
    }

    public final void a(int i) {
        this.c = i;
        s.a(this.b, h.p, h.v.f, i);
    }

    public final void a(final Context context, final ATGDPRAuthCallback aTGDPRAuthCallback) {
        n.a().b(new Runnable() { // from class: com.anythink.core.common.b.q.1
            @Override // java.lang.Runnable
            public final void run() {
                AnyThinkGdprAuthActivity.mCallback = aTGDPRAuthCallback;
                Intent intent = new Intent(context, (Class<?>) AnyThinkGdprAuthActivity.class);
                intent.setFlags(268435456);
                context.startActivity(intent);
            }
        });
    }

    public final void a(final NetTrafficeCallback netTrafficeCallback) {
        int iB = s.b(this.b, h.p, h.v.l, -100);
        if (iB == -100) {
            new com.anythink.core.common.h.j().a(0, new com.anythink.core.common.h.k() { // from class: com.anythink.core.common.b.q.2
                @Override // com.anythink.core.common.h.k
                public final void onLoadCanceled(int i) {
                }

                @Override // com.anythink.core.common.h.k
                public final void onLoadError(int i, String str, AdError adError) {
                    NetTrafficeCallback netTrafficeCallback2 = netTrafficeCallback;
                    if (netTrafficeCallback2 != null) {
                        netTrafficeCallback2.onErrorCallback(adError.printStackTrace());
                    }
                }

                @Override // com.anythink.core.common.h.k
                public final void onLoadFinish(int i, Object obj) {
                    try {
                        if (!(obj instanceof JSONObject)) {
                            NetTrafficeCallback netTrafficeCallback2 = netTrafficeCallback;
                            if (netTrafficeCallback2 != null) {
                                netTrafficeCallback2.onErrorCallback("There is no result.");
                                return;
                            }
                            return;
                        }
                        JSONObject jSONObject = (JSONObject) obj;
                        if (!jSONObject.has("is_eu")) {
                            NetTrafficeCallback netTrafficeCallback3 = netTrafficeCallback;
                            if (netTrafficeCallback3 != null) {
                                netTrafficeCallback3.onErrorCallback("There is no result.");
                                return;
                            }
                            return;
                        }
                        if (jSONObject.optInt("is_eu") == 1) {
                            NetTrafficeCallback netTrafficeCallback4 = netTrafficeCallback;
                            if (netTrafficeCallback4 != null) {
                                netTrafficeCallback4.onResultCallback(true);
                                return;
                            }
                            return;
                        }
                        NetTrafficeCallback netTrafficeCallback5 = netTrafficeCallback;
                        if (netTrafficeCallback5 != null) {
                            netTrafficeCallback5.onResultCallback(false);
                        }
                    } catch (Throwable unused) {
                        NetTrafficeCallback netTrafficeCallback6 = netTrafficeCallback;
                        if (netTrafficeCallback6 != null) {
                            netTrafficeCallback6.onErrorCallback("Internal error");
                        }
                    }
                }

                @Override // com.anythink.core.common.h.k
                public final void onLoadStart(int i) {
                }
            });
            return;
        }
        if (iB == 1) {
            if (netTrafficeCallback != null) {
                netTrafficeCallback.onResultCallback(true);
            }
        } else if (netTrafficeCallback != null) {
            netTrafficeCallback.onResultCallback(false);
        }
    }

    public final void b(final int i) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.b.q.3
            @Override // java.lang.Runnable
            public final void run() {
                if (q.this.c(i)) {
                    return;
                }
                q qVarA = q.a(n.a().f());
                com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
                if (qVarA.c == 2 && aVarB.Y() == 1 && aVarB.K() == 0) {
                    com.anythink.core.common.n.e.a(1, qVarA.c, aVarB.Y(), i);
                }
                if (qVarA.c == 1 && aVarB.W() == 0 && aVarB.Y() == 0) {
                    com.anythink.core.common.n.e.a(2, qVarA.c, aVarB.Y(), i);
                }
                q.this.e.put(Integer.valueOf(i), Boolean.TRUE);
            }
        }, 13, true);
    }

    public final boolean b() {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.b).b(n.a().o());
        if (aVarB == null || aVarB.I()) {
            return this.c != 1;
        }
        if (aVarB.Y() == 0) {
            return true;
        }
        int iV = this.c;
        if (aVarB.W() == 1) {
            iV = aVarB.V();
        }
        return iV == 0;
    }

    public final boolean c() {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.b).b(n.a().o());
        return (aVarB == null || aVarB.I()) ? this.c != 1 : this.c == 2 ? aVarB.Y() == 0 : aVarB.W() == 1 ? aVarB.V() == 0 : this.c == 0 || aVarB.Y() == 0;
    }

    public final boolean c(int i) {
        return this.e.get(Integer.valueOf(i)) != null && this.e.get(Integer.valueOf(i)).booleanValue();
    }

    public final boolean d() {
        return s.b(this.b, h.p, h.v.l, -100) == 1;
    }
}
