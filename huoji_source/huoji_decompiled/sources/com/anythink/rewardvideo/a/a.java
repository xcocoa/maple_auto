package com.anythink.rewardvideo.a;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.IExHandler;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.b.j;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f;
import com.anythink.core.common.f.h;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.v;
import com.anythink.rewardvideo.api.ATRewardVideoListener;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = "a";
    private static Map<String, a> e = new ConcurrentHashMap(3);
    private Context b;
    private String c;
    private final f d;

    private a(Context context, String str) {
        this.b = context.getApplicationContext();
        this.c = str;
        this.d = f.a(context, str, "1");
    }

    public static a a(Context context, String str) {
        a aVar = e.get(str);
        if (aVar == null) {
            synchronized (a.class) {
                if (aVar == null) {
                    aVar = new a(context, str);
                    e.put(str, aVar);
                }
            }
        }
        return aVar;
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.d.a(context, map);
    }

    public final List<ATAdInfo> a(Context context) {
        return this.d.b(context);
    }

    public final synchronized void a(final Activity activity, final String str, final ATRewardVideoListener aTRewardVideoListener, final ATEventInterface aTEventInterface, final Map<String, Object> map) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final com.anythink.core.common.f.b bVarA = this.d.a((Context) activity, false, true, map);
        if (bVarA != null && (bVarA.d() instanceof CustomRewardVideoAdapter)) {
            this.d.a(bVarA);
            bVarA.a(bVarA.c() + 1);
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.rewardvideo.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    h trackingInfo = bVarA.d().getTrackingInfo();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (trackingInfo != null) {
                        trackingInfo.B = str;
                        trackingInfo.h(com.anythink.core.common.o.h.a(trackingInfo.ai(), trackingInfo.F(), jCurrentTimeMillis));
                        v.a(a.this.b, trackingInfo);
                        v.a((Map<String, Object>) map, trackingInfo);
                        v.a(a.this.c, trackingInfo);
                    }
                    com.anythink.core.common.a.a().a(a.this.b, bVarA);
                    com.anythink.core.common.n.c.a(a.this.b).a(13, trackingInfo, bVarA.d().getUnitGroupInfo(), jCurrentTimeMillis);
                    final CustomRewardVideoAdapter customRewardVideoAdapter = (CustomRewardVideoAdapter) bVarA.d();
                    Activity activity2 = activity;
                    if (activity2 != null) {
                        customRewardVideoAdapter.refreshActivityContext(activity2);
                    }
                    n.a().b(new Runnable() { // from class: com.anythink.rewardvideo.a.a.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            customRewardVideoAdapter.setScenario(str);
                            IExHandler iExHandlerB = n.a().b();
                            if (iExHandlerB != null) {
                                CustomRewardVideoAdapter customRewardVideoAdapter2 = customRewardVideoAdapter;
                                customRewardVideoAdapter2.setAdDownloadListener(iExHandlerB.createDownloadListener(customRewardVideoAdapter2, null, aTEventInterface));
                            }
                            CustomRewardVideoAdapter customRewardVideoAdapter3 = customRewardVideoAdapter;
                            customRewardVideoAdapter3.internalShow(activity, new d(customRewardVideoAdapter3, n.a().B(), aTRewardVideoListener));
                            h trackingInfo2 = customRewardVideoAdapter.getTrackingInfo();
                            e.a("4", trackingInfo2.ai(), trackingInfo2.ah(), trackingInfo2.F(), trackingInfo2.P(), 4, SystemClock.elapsedRealtime() - jElapsedRealtime);
                        }
                    });
                }
            });
        } else {
            if (this.d.a((ATAdStatusInfo) null)) {
                a(n.a().E(), 7, null, null, map, null);
            }
            AdError errorCode = ErrorCode.getErrorCode(ErrorCode.noADError, "", "No Cache.");
            if (aTRewardVideoListener != null) {
                aTRewardVideoListener.onRewardedVideoAdPlayFailed(errorCode, j.a((com.anythink.core.common.b.d) null));
            }
        }
    }

    public final void a(Context context, int i, com.anythink.core.common.b.a aVar, com.anythink.core.common.b.b bVar, Map<String, Object> map, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        com.anythink.core.common.f.v vVar = new com.anythink.core.common.f.v();
        vVar.a(context);
        vVar.d = i;
        vVar.e = bVar;
        if (map != null) {
            try {
                vVar.g = new HashMap(map);
            } catch (Throwable unused) {
            }
        }
        vVar.l = aTAdxBidFloorInfo;
        this.d.b(this.b, "1", this.c, vVar, aVar);
    }
}
