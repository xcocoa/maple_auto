package com.anythink.core.b;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.common.o.j;
import com.anythink.core.common.o.v;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class i {
    public static String a = "i";
    public com.anythink.core.common.f.a b;
    public Map<String, Object> c;
    public a d;

    /* JADX INFO: renamed from: com.anythink.core.b.i$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ ATBaseAdAdapter a;
        public final /* synthetic */ av b;

        public AnonymousClass1(ATBaseAdAdapter aTBaseAdAdapter, av avVar) {
            this.a = aTBaseAdAdapter;
            this.b = avVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            i.a(i.this, this.a, this.b);
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.b.i$2, reason: invalid class name */
    public class AnonymousClass2 implements ATBidRequestInfoListener {
        public final /* synthetic */ av a;

        public AnonymousClass2(av avVar) {
            this.a = avVar;
        }

        @Override // com.anythink.core.api.ATBidRequestInfoListener
        public final void onFailed(String str) {
            a aVar = i.this.d;
            if (aVar != null) {
                aVar.a(str, this.a);
            }
        }

        @Override // com.anythink.core.api.ATBidRequestInfoListener
        public final void onSuccess(ATBidRequestInfo aTBidRequestInfo) {
            i.a(i.this, this.a, aTBidRequestInfo);
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.b.i$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public final /* synthetic */ ATBidRequestInfo a;
        public final /* synthetic */ av b;

        public AnonymousClass3(ATBidRequestInfo aTBidRequestInfo, av avVar) {
            this.a = aTBidRequestInfo;
            this.b = avVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            JSONObject requestJSONObject;
            ATAdxBidFloorInfo aTAdxBidFloorInfo;
            try {
                ATBidRequestInfo aTBidRequestInfo = this.a;
                if (aTBidRequestInfo != null && (requestJSONObject = aTBidRequestInfo.toRequestJSONObject()) != null) {
                    ATBidRequestInfo.fillBaseCommonParams(requestJSONObject, String.valueOf(i.this.b.f), i.this.b.n.a(), this.b);
                    if (this.b.m() == 3) {
                        try {
                            requestJSONObject.put("unit_id", this.b.u());
                            requestJSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.EXCLUDE_OFFER, n.a().k());
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        if (i.this.b.z == 1) {
                            requestJSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.GET_OFFER, 2);
                        }
                        if (i.this.b.s.X() && (aTAdxBidFloorInfo = i.this.b.A) != null) {
                            double bidFloor = aTAdxBidFloorInfo.getBidFloor();
                            ATAdConst.CURRENCY currency = aTAdxBidFloorInfo.getCurrency();
                            if (currency == null) {
                                currency = ATAdConst.CURRENCY.USD;
                            }
                            double dC = i.this.b.n.a().C();
                            if (currency != ATAdConst.CURRENCY.RMB) {
                                if (currency == ATAdConst.CURRENCY.RMB_CENT) {
                                    bidFloor /= 100.0d;
                                    bidFloor *= dC;
                                }
                                requestJSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.C_BID_FLOOR, bidFloor);
                            } else {
                                bidFloor *= dC;
                                requestJSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.C_BID_FLOOR, bidFloor);
                            }
                        }
                    }
                    a aVar = i.this.d;
                    if (aVar != null) {
                        aVar.a(this.b, requestJSONObject);
                        return;
                    }
                    return;
                }
                a aVar2 = i.this.d;
                if (aVar2 != null) {
                    aVar2.a(ATBidRequestInfo.RETURN_PARAMS_ERROR_TYPE, this.b);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
                a aVar3 = i.this.d;
                if (aVar3 != null) {
                    aVar3.a(th2.getMessage(), this.b);
                }
            }
        }
    }

    public interface a {
        void a(av avVar, ATBaseAdAdapter aTBaseAdAdapter);

        void a(av avVar, JSONObject jSONObject);

        void a(String str, av avVar);
    }

    public i(com.anythink.core.common.f.a aVar) {
        this.b = aVar;
        this.c = aVar.q;
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter, av avVar) {
        try {
            com.anythink.core.d.f fVarA = this.b.n.a();
            com.anythink.core.common.f.a aVar = this.b;
            Map<String, Object> mapA = fVarA.a(aVar.e, aVar.d, avVar);
            com.anythink.core.common.f.h hVarV = this.b.s.V();
            v.a(hVarV, avVar, 0, false);
            com.anythink.core.common.o.h.a(mapA, hVarV);
            aTBaseAdAdapter.getBidRequestInfo(this.b.b, mapA, this.c, new AnonymousClass2(avVar));
            a aVar2 = this.d;
            if (aVar2 != null) {
                aVar2.a(avVar, aTBaseAdAdapter);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            a aVar3 = this.d;
            if (aVar3 != null) {
                aVar3.a(th.getMessage(), avVar);
            }
        }
    }

    public static /* synthetic */ void a(i iVar, ATBaseAdAdapter aTBaseAdAdapter, av avVar) {
        try {
            com.anythink.core.d.f fVarA = iVar.b.n.a();
            com.anythink.core.common.f.a aVar = iVar.b;
            Map<String, Object> mapA = fVarA.a(aVar.e, aVar.d, avVar);
            com.anythink.core.common.f.h hVarV = iVar.b.s.V();
            v.a(hVarV, avVar, 0, false);
            com.anythink.core.common.o.h.a(mapA, hVarV);
            aTBaseAdAdapter.getBidRequestInfo(iVar.b.b, mapA, iVar.c, iVar.new AnonymousClass2(avVar));
            a aVar2 = iVar.d;
            if (aVar2 != null) {
                aVar2.a(avVar, aTBaseAdAdapter);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            a aVar3 = iVar.d;
            if (aVar3 != null) {
                aVar3.a(th.getMessage(), avVar);
            }
        }
    }

    public static /* synthetic */ void a(i iVar, av avVar, ATBidRequestInfo aTBidRequestInfo) {
        com.anythink.core.common.o.b.b.a().a(iVar.new AnonymousClass3(aTBidRequestInfo, avVar));
    }

    private void a(av avVar, ATBidRequestInfo aTBidRequestInfo) {
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass3(aTBidRequestInfo, avVar));
    }

    private void a(av avVar, a aVar) {
        this.d = aVar;
        ATBaseAdAdapter aTBaseAdAdapterA = j.a(avVar);
        if (aTBaseAdAdapterA == null) {
            aVar.a(ATBidRequestInfo.NO_ADAPTER_ERROR_TYPE, avVar);
        } else {
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass1(aTBaseAdAdapterA, avVar));
        }
    }
}
