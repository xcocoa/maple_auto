package com.anythink.core.b;

import android.os.SystemClock;
import android.util.Log;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.MediationBidManager;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.o;
import com.anythink.core.common.f.q;
import com.anythink.core.common.o.j;
import com.anythink.core.common.o.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class h extends d {
    private String a;
    private long b;
    private com.anythink.core.b.b.b c;

    public h(com.anythink.core.common.f.a aVar) {
        super(aVar);
        this.a = "IH Bidding";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(List<av> list, int i) {
        if (this.h.get()) {
            return;
        }
        this.h.set(true);
        List<av> arrayList = list == null ? new ArrayList<>() : list;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.b;
        ArrayList arrayList2 = new ArrayList();
        Iterator<av> it = this.f.j.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            av next = it.next();
            Iterator<av> it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                av next2 = it2.next();
                if (next.u().equals(next2.u())) {
                    next2.a(jElapsedRealtime);
                    next2.g(0);
                    q qVar = new q(true, next2.y(), next2.z(), "", "", "", "");
                    qVar.f = next2.o() + System.currentTimeMillis();
                    qVar.e = next2.o();
                    a(next2, qVar);
                    z = true;
                    break;
                }
            }
            if (!z) {
                if (MediationBidManager.NO_BID_TOKEN_ERROR.equals(next.A())) {
                    b(next, "No Bid Info.", 0L, -2);
                } else {
                    b(next, "No Bid Info.", jElapsedRealtime, i);
                }
                if (a(next, "No Bid Info.", i)) {
                    arrayList.add(next);
                } else {
                    arrayList2.add(next);
                }
            }
        }
        if (ATSDK.isNetworkLogDebug()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("IH Bidding Success List", d.a(arrayList));
                jSONObject.put("IH Bidding Fail List", d.a(arrayList2));
            } catch (Exception unused) {
            }
            p.a(this.a, jSONObject.toString(), false);
        }
        this.h.set(true);
        com.anythink.core.b.b.b bVar = this.c;
        if (bVar != null) {
            bVar.a(arrayList, arrayList2);
        }
    }

    private void b(av avVar) {
        q qVar = new q(true, avVar.y(), avVar.z(), "", "", "", "");
        qVar.f = avVar.o() + System.currentTimeMillis();
        qVar.e = avVar.o();
        a(avVar, qVar);
    }

    private static void b(av avVar, String str, long j, int i) {
        d.a(avVar, str, j, i);
    }

    @Override // com.anythink.core.b.d
    public final void a() {
        a((List<av>) null, -3);
    }

    @Override // com.anythink.core.b.d
    public final void a(final com.anythink.core.b.b.b bVar) {
        this.c = bVar;
        this.b = SystemClock.elapsedRealtime();
        List<av> list = this.f.j;
        if (ATSDK.isNetworkLogDebug()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("Start IH Bidding List", d.a(list));
            } catch (Exception unused) {
            }
            p.a(p.a, jSONObject.toString(), false);
        }
        if (f.a().b() == null) {
            Iterator<av> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ATBaseAdAdapter aTBaseAdAdapterA = j.a(it.next());
                if (aTBaseAdAdapterA != null) {
                    MediationBidManager bidManager = aTBaseAdAdapterA.getBidManager();
                    if (bidManager != null) {
                        f.a().a(bidManager);
                    }
                }
            }
        }
        MediationBidManager mediationBidManagerB = f.a().b();
        if (mediationBidManagerB == null) {
            Log.i(p.a, "No BidManager.");
            a((List<av>) null, -9);
        } else {
            mediationBidManagerB.setBidRequestUrl(this.f.o);
            mediationBidManagerB.startBid(this.f, new MediationBidManager.BidListener() { // from class: com.anythink.core.b.h.1
                @Override // com.anythink.core.api.MediationBidManager.BidListener
                public final void onBidFail(String str) {
                }

                @Override // com.anythink.core.api.MediationBidManager.BidListener
                public final void onBidStart(av avVar, ATBaseAdAdapter aTBaseAdAdapter) {
                    com.anythink.core.b.b.b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a(avVar, aTBaseAdAdapter);
                    }
                }

                @Override // com.anythink.core.api.MediationBidManager.BidListener
                public final void onBidSuccess(List<av> list2) {
                    h.this.a(list2, -1);
                }
            });
        }
    }

    @Override // com.anythink.core.b.d
    public final void a(av avVar, o oVar, long j) {
    }
}
