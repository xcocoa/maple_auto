package com.anythink.core.b;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.o;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.y;
import com.anythink.core.common.o.j;
import com.anythink.core.common.o.p;
import com.anythink.core.common.o.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a extends d {
    public static final String a = "a";
    private List<av> b;
    private com.anythink.core.b.b.b c;
    private long d;

    public a(com.anythink.core.common.f.a aVar) {
        super(aVar);
        this.b = Collections.synchronizedList(new ArrayList(this.f.j));
    }

    public static /* synthetic */ int a(ATBiddingResult aTBiddingResult) {
        if (aTBiddingResult.isSuccessWithUseType()) {
            return 0;
        }
        return TextUtils.equals(aTBiddingResult.errorMsg, ATBidRequestInfo.BID_TYPE_ERROR_TYPE) ? -10 : -1;
    }

    private static ATBiddingResult a(String str) {
        return ATBiddingResult.fail(str);
    }

    private q a(av avVar, o oVar, long j, com.anythink.core.b.c.a aVar) {
        avVar.a(j);
        avVar.a(oVar.currency);
        double dA = a(oVar.getSortPrice(), avVar);
        boolean zIsSamePrice = oVar.isSamePrice();
        double dA2 = zIsSamePrice ? dA : a(oVar.getPrice(), avVar);
        if (dA <= 0.0d) {
            Log.w(p.a, "NetworkName:" + avVar.e() + ",AdSourceId:" + avVar.u() + " c2s sort price return 0,please check network placement c2s config");
            dA = com.anythink.core.common.o.h.a(avVar);
        }
        double d = dA;
        if (dA2 <= 0.0d) {
            Log.w(p.a, "NetworkName:" + avVar.e() + ",AdSourceId:" + avVar.u() + " c2s real price return 0,please check network placement c2s config");
            dA2 = com.anythink.core.common.o.h.a(avVar);
        }
        q qVar = new q(oVar.isSuccessWithUseType(), d, dA2, oVar.token, oVar.winNoticeUrl, oVar.loseNoticeUrl, oVar.displayNoticeUrl, "");
        qVar.l = a(avVar);
        qVar.setBiddingNotice(oVar.biddingNotice);
        qVar.f = avVar.o() + System.currentTimeMillis();
        qVar.e = avVar.o();
        qVar.k = avVar.u();
        qVar.d = avVar.d();
        qVar.r = aVar;
        qVar.s = aVar != null;
        a(avVar.d(), qVar, 0.0d, zIsSamePrice);
        return qVar;
    }

    private synchronized void a(ATBiddingResult aTBiddingResult, av avVar) {
        a(false, aTBiddingResult, avVar, -1, (com.anythink.core.b.c.a) null);
    }

    private void a(av avVar, o oVar, long j, int i, com.anythink.core.b.c.a aVar) {
        a(avVar, oVar, j, i, aVar, false);
    }

    private void a(q qVar, av avVar, double d) {
        com.anythink.core.b.d.b.a(qVar, new y(2, avVar, this.f.s, d), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void a(boolean z, ATBiddingResult aTBiddingResult, av avVar, int i, com.anythink.core.b.c.a aVar) {
        boolean z3;
        double dAe = avVar.ae();
        if (z && avVar.aB() && dAe > 0.0d) {
            ATAdConst.CURRENCY currency = aTBiddingResult.currency;
            if (currency != ATAdConst.CURRENCY.USD) {
                dAe = a(dAe, currency);
            }
            aTBiddingResult.getPrice();
            z3 = aTBiddingResult.getPrice() < dAe;
        } else {
            z3 = false;
        }
        if (z) {
            f fVarA = f.a();
            String strU = avVar.u();
            ConcurrentHashMap<String, Integer> concurrentHashMap = fVarA.b;
            if (concurrentHashMap != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(strU);
                sb.append("_c2sfirstStatus");
                boolean z4 = concurrentHashMap.get(sb.toString()) == null;
                com.anythink.core.common.n.e.a(this.f.e, avVar, z4, SystemClock.elapsedRealtime() - this.d, this.f);
            }
        }
        f fVarA2 = f.a();
        String strU2 = avVar.u();
        if (fVarA2.b == null) {
            fVarA2.b = new ConcurrentHashMap<>();
        }
        fVarA2.b.put(strU2 + "_c2sfirstStatus", 1);
        if (this.h.get()) {
            q qVarA = a(avVar, aTBiddingResult, SystemClock.elapsedRealtime() - this.d, aVar);
            com.anythink.core.b.d.b.a(qVarA, new y(4, avVar, this.f.s, qVarA.getPrice()), true);
            return;
        }
        boolean zA = a(avVar, aTBiddingResult, SystemClock.elapsedRealtime() - this.d, i, aVar, z3);
        List<av> listSynchronizedList = Collections.synchronizedList(new ArrayList(1));
        listSynchronizedList.add(avVar);
        this.b.remove(avVar);
        if (this.b.size() == 0) {
            this.h.set(true);
        }
        if (this.c != null) {
            if (!zA) {
                zA = a(avVar, aTBiddingResult.errorMsg, -1);
            }
            if (zA) {
                this.c.a(listSynchronizedList, (List<av>) null);
                return;
            }
            this.c.a((List<av>) null, listSynchronizedList);
        }
    }

    private boolean a(av avVar, o oVar, long j, int i, com.anythink.core.b.c.a aVar, boolean z) {
        q qVarA;
        double price;
        boolean zIsSuccessWithUseType = oVar.isSuccessWithUseType();
        if (zIsSuccessWithUseType || z) {
            qVarA = a(avVar, oVar, j, aVar);
            price = qVarA.getPrice();
        } else {
            qVarA = null;
            price = 0.0d;
        }
        if (!zIsSuccessWithUseType || z) {
            if (z) {
                d.a(avVar, ATBidRequestInfo.LESS_THAN_BID_FLOOR_TYPE, j, -11);
                avVar.a(price);
                avVar.d(price);
                a(qVarA, avVar, avVar.ae());
            } else {
                d.a(avVar, oVar.errorMsg, j, i);
            }
            String str = h.n.m;
            com.anythink.core.common.f.a aVar2 = this.f;
            p.a(str, aVar2.e, com.anythink.core.common.o.h.d(String.valueOf(aVar2.f)), avVar);
            return false;
        }
        StringBuilder sb = new StringBuilder("C2S Bidding Success: , AdSourceId:");
        sb.append(avVar.u());
        sb.append(", NetworkFirmId:");
        sb.append(avVar.d());
        sb.append(" | price:");
        sb.append(oVar.getPrice());
        sb.append(" | sortPrice:");
        sb.append(oVar.getSortPrice());
        sb.append(" | currency:");
        sb.append(oVar.currency.toString());
        a(avVar, qVarA);
        String str2 = h.n.l;
        com.anythink.core.common.f.a aVar3 = this.f;
        p.a(str2, aVar3.e, com.anythink.core.common.o.h.d(String.valueOf(aVar3.f)), avVar);
        return true;
    }

    private static int b(ATBiddingResult aTBiddingResult) {
        if (aTBiddingResult.isSuccessWithUseType()) {
            return 0;
        }
        return TextUtils.equals(aTBiddingResult.errorMsg, ATBidRequestInfo.BID_TYPE_ERROR_TYPE) ? -10 : -1;
    }

    @Override // com.anythink.core.b.d
    public final synchronized void a() {
        if (!this.h.get()) {
            this.h.set(true);
            ArrayList arrayList = new ArrayList(3);
            ArrayList arrayList2 = new ArrayList(3);
            for (av avVar : this.b) {
                if (a(avVar, "bid timeout", -3)) {
                    arrayList.add(avVar);
                } else {
                    a(avVar, ATBiddingResult.fail("bid timeout!"), SystemClock.elapsedRealtime() - this.d, -3, (com.anythink.core.b.c.a) null);
                    arrayList2.add(avVar);
                }
            }
            this.b.clear();
            com.anythink.core.b.b.b bVar = this.c;
            if (bVar != null) {
                bVar.a(arrayList, arrayList2);
            }
            this.c = null;
        }
    }

    @Override // com.anythink.core.b.d
    public final void a(com.anythink.core.b.b.b bVar) {
        this.c = bVar;
        List<av> list = this.f.j;
        int size = list.size();
        this.d = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            final av avVar = list.get(i);
            ATBaseAdAdapter aTBaseAdAdapterA = j.a(avVar);
            if (aTBaseAdAdapterA == null) {
                a(false, ATBiddingResult.fail(avVar.i() + " not exist!"), avVar, -9, (com.anythink.core.b.c.a) null);
            } else {
                try {
                    com.anythink.core.b.b.c cVar = new com.anythink.core.b.b.c(aTBaseAdAdapterA) { // from class: com.anythink.core.b.a.1
                        private void a(final ATBiddingResult aTBiddingResult, final com.anythink.core.b.c.a aVar) {
                            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.b.a.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    a.this.a(aTBiddingResult.isSuccessWithUseType(), aTBiddingResult, avVar, a.a(aTBiddingResult), aVar);
                                }
                            });
                        }

                        @Override // com.anythink.core.api.ATBiddingListener
                        public final void onC2SBidResult(ATBiddingResult aTBiddingResult) {
                            ATBaseAdAdapter aTBaseAdAdapter = this.c;
                            if (aTBaseAdAdapter != null) {
                                aTBaseAdAdapter.releaseLoadResource();
                            }
                            a(aTBiddingResult, null);
                        }

                        @Override // com.anythink.core.api.ATBiddingListener
                        public final void onC2SBiddingResultWithCache(ATBiddingResult aTBiddingResult, BaseAd baseAd) {
                            ATBaseAdAdapter aTBaseAdAdapter = this.c;
                            if (aTBaseAdAdapter != null) {
                                aTBaseAdAdapter.releaseLoadResource();
                            }
                            a(aTBiddingResult, new com.anythink.core.b.c.a(this.c, baseAd));
                        }
                    };
                    new StringBuilder("start c2s bid request: ").append(aTBaseAdAdapterA.getInternalNetworkName());
                    com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(this.f.b).a(this.f.e);
                    com.anythink.core.common.f.a aVar = this.f;
                    Map<String, Object> mapA = fVarA.a(aVar.e, aVar.d, avVar);
                    try {
                        double dAe = avVar.ae();
                        if (dAe > 0.0d) {
                            mapA.put("bid_floor", Double.valueOf(dAe * a(avVar)));
                        }
                    } catch (Throwable th) {
                        Log.w(p.a, "C2S startBidRequest with exception:" + th.getMessage());
                    }
                    com.anythink.core.common.f.h hVarV = this.f.s.V();
                    v.a(hVarV, avVar, 0, false);
                    com.anythink.core.common.o.h.a(mapA, hVarV);
                    com.anythink.core.common.f.a aVar2 = this.f;
                    if (aVar2.t == 8) {
                        double d = aVar2.u;
                        mapA.put(h.p.j, d < 0.0d ? "0" : Double.valueOf(d));
                    }
                    if (avVar.d() == 22) {
                        com.anythink.core.common.o.b.a(fVarA, mapA, avVar, this.f.x);
                    }
                    com.anythink.core.common.f.v vVar = this.f.c;
                    Context contextA = vVar != null ? vVar.a() : null;
                    if (contextA == null) {
                        contextA = this.f.b;
                    }
                    boolean zInternalStartBiddingRequest = aTBaseAdAdapterA.internalStartBiddingRequest(contextA, mapA, this.f.q, new com.anythink.core.b.b.a(this.f.s, avVar.u(), mapA, cVar));
                    bVar.a(avVar, aTBaseAdAdapterA);
                    if (!zInternalStartBiddingRequest) {
                        a(ATBiddingResult.fail("This network don't support head bidding in current TopOn's version."), avVar);
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    a(ATBiddingResult.fail(th2.getMessage()), avVar);
                }
            }
        }
    }

    @Override // com.anythink.core.b.d
    public final void a(av avVar, o oVar, long j) {
        a(avVar, oVar, j, -1, (com.anythink.core.b.c.a) null);
    }
}
