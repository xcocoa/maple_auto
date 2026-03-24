package com.octopus.ad.internal.nativead;

import android.util.Log;
import com.octopus.ad.AdRequest;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.R;
import com.octopus.ad.internal.d;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.o;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.utils.b.h;
import java.lang.ref.SoftReference;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes2.dex */
public class b extends o {
    private final SoftReference<a> a;

    public b(a aVar) {
        this.a = new SoftReference<>(aVar);
    }

    @Override // com.octopus.ad.internal.e
    public void a() {
        a aVar = this.a.get();
        if (aVar == null) {
            HaoboLog.e(HaoboLog.baseLogTag, "Before execute request manager, you should set ad request!");
            return;
        }
        e();
        try {
            aVar.a(this);
            aVar.executeOnExecutor(h.b().c(), new Void[0]);
        } catch (IllegalStateException e) {
            Log.d("octopus", "ignored:" + e.getMessage());
        } catch (RejectedExecutionException e2) {
            HaoboLog.e(HaoboLog.baseLogTag, "Concurrent Thread Exception while firing new ad request: " + e2.getMessage());
        }
    }

    @Override // com.octopus.ad.internal.e
    public void a(int i) {
        f();
        a aVar = this.a.get();
        if (aVar != null) {
            aVar.f().a(i);
        }
    }

    @Override // com.octopus.ad.internal.e
    public void a(final ServerResponse serverResponse) {
        a aVar = this.a.get();
        if (aVar != null) {
            if (!serverResponse.containsAds()) {
                HaoboLog.w(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.response_no_ads));
                aVar.f().a(AdRequest.ERROR_CODE_NO_FILL);
            } else {
                final c cVar = (c) serverResponse.getNativeAdResponse();
                cVar.a(aVar.e().a());
                cVar.a(aVar.a());
                a(new com.octopus.ad.internal.network.b() { // from class: com.octopus.ad.internal.nativead.b.1
                    @Override // com.octopus.ad.internal.network.b
                    public l a() {
                        return l.NATIVE;
                    }

                    @Override // com.octopus.ad.internal.network.b
                    public com.octopus.ad.internal.view.b b() {
                        return null;
                    }

                    @Override // com.octopus.ad.internal.network.b
                    public NativeAdResponse c() {
                        return cVar;
                    }

                    @Override // com.octopus.ad.internal.network.b
                    public String d() {
                        return "";
                    }

                    @Override // com.octopus.ad.internal.network.b
                    public int e() {
                        return serverResponse.getPrice();
                    }

                    @Override // com.octopus.ad.internal.network.b
                    public String f() {
                        return serverResponse.getTagId();
                    }

                    @Override // com.octopus.ad.internal.network.b
                    public String g() {
                        return null;
                    }

                    @Override // com.octopus.ad.internal.network.b
                    public void h() {
                        cVar.destroy();
                    }
                });
            }
        }
    }

    public void a(com.octopus.ad.internal.network.b bVar) {
        f();
        a aVar = this.a.get();
        if (aVar != null) {
            aVar.f().a(bVar);
        } else {
            bVar.h();
        }
    }

    @Override // com.octopus.ad.internal.e
    public d b() {
        a aVar = this.a.get();
        if (aVar != null) {
            return aVar.e();
        }
        return null;
    }

    @Override // com.octopus.ad.internal.o
    public void c() {
        a aVar = this.a.get();
        if (aVar != null) {
            aVar.cancel(true);
        }
    }
}
