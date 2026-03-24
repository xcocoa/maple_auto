package com.anythink.core.basead.adx;

import android.util.Log;
import com.anythink.core.b.d.b;
import com.anythink.core.basead.adx.api.IATAdxHandler;
import com.anythink.core.common.d;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.bc;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.y;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a implements IATAdxHandler {
    public static String a = "anythink_adx_handler";
    private q b;
    private av c;
    private h d;
    private boolean e;
    private boolean f;

    /* JADX INFO: renamed from: com.anythink.core.basead.adx.a$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IATAdxHandler.LOSS_REASON.values().length];
            a = iArr;
            try {
                iArr[IATAdxHandler.LOSS_REASON.LOSS_TO_HIGHER_BID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[IATAdxHandler.LOSS_REASON.LOSS_TO_NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public a(q qVar, av avVar, h hVar) {
        this.b = qVar;
        this.c = avVar;
        this.d = hVar;
    }

    @Override // com.anythink.core.basead.adx.api.IATAdxHandler
    public final synchronized void destroy() {
        if (this.f) {
            Log.e(a, "destroy: has call destroy(), do nothing");
            return;
        }
        this.f = true;
        Log.i(a, "destroy, placementId: " + this.d.ah() + ", adSourceId: " + this.c.u());
        try {
            com.anythink.core.common.a.a().a(this.d.ah(), this.c, this.d.ai());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.core.basead.adx.api.IATAdxHandler
    public final synchronized void notifyLose(IATAdxHandler.LOSS_REASON loss_reason, double d, Map<String, Object> map) {
        String string;
        if (this.e) {
            Log.e(a, "notifyWin: win or loss has been sent, do anything");
            return;
        }
        this.e = true;
        if (this.b != null && this.c != null) {
            if (d <= 0.0d) {
                Log.e(a, "notifyLose, winnerPrice: " + d + " <= 0, do nothing");
                return;
            }
            Log.i(a, "notifyLose, lossCode: " + loss_reason + ", winnerPrice: " + d + ", extraMap: " + map);
            try {
                String str = AnonymousClass1.a[loss_reason.ordinal()] != 1 ? "103" : "102";
                q qVar = this.b;
                y yVar = new y(2, this.c, this.d);
                string = "";
                if (map != null) {
                    Object obj = map.get(IATAdxHandler.BIDDER_NAME);
                    string = obj instanceof String ? obj.toString() : "";
                    Object obj2 = map.get(IATAdxHandler.WATERFALL_INFO);
                    if (obj2 instanceof String) {
                        d.a().a(this.d.ah(), (String) obj2);
                    }
                }
                yVar.a(d, string, str);
                b.a(qVar, yVar, false);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.anythink.core.basead.adx.api.IATAdxHandler
    public final synchronized void notifyWin(Map<String, Object> map) {
        String string;
        if (this.e) {
            Log.e(a, "notifyWin: win or loss has been sent, do anything");
            return;
        }
        this.e = true;
        if (this.b != null && this.c != null) {
            Log.i(a, "notifyWin, extraMap: ".concat(String.valueOf(map)));
            try {
                q qVar = this.b;
                av avVar = this.c;
                string = "";
                if (map != null) {
                    Object obj = map.get(IATAdxHandler.SECOND_PRICE);
                    dValueOf = obj instanceof Double ? (Double) obj : null;
                    Object obj2 = map.get(IATAdxHandler.BIDDER_NAME);
                    string = obj2 instanceof String ? obj2.toString() : "";
                    Object obj3 = map.get(IATAdxHandler.WATERFALL_INFO);
                    if (obj3 instanceof String) {
                        d.a().a(this.d.ah(), (String) obj3);
                    }
                }
                if (dValueOf == null) {
                    dValueOf = Double.valueOf(com.anythink.core.common.o.h.a(avVar));
                    string = "TopOn";
                    StringBuilder sb = new StringBuilder("notifyWin: fix second price to: ");
                    sb.append(dValueOf);
                    sb.append(", fix bidderName to TopOn");
                }
                bc bcVar = qVar.u;
                if (bcVar != null) {
                    bcVar.a(dValueOf.doubleValue(), string);
                }
                b.a(qVar, avVar);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
