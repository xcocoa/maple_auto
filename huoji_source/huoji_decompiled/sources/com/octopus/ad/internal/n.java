package com.octopus.ad.internal;

import android.util.Log;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.network.a;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.StringUtil;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes2.dex */
public class n extends o {
    private com.octopus.ad.internal.network.a a;
    private d b = new d(m.a().g(), StringUtil.createRequestId());

    @Override // com.octopus.ad.internal.e
    public void a() {
        this.a = new com.octopus.ad.internal.network.a(new a.C0197a());
        e();
        try {
            this.a.a(this);
            this.a.executeOnExecutor(com.octopus.ad.utils.b.h.b().c(), new Void[0]);
        } catch (IllegalStateException e) {
            Log.d("octopus", "ignored:" + e.getMessage());
        } catch (RejectedExecutionException e2) {
            HaoboLog.e(HaoboLog.baseLogTag, "Concurrent Thread Exception while firing new ad request: " + e2.getMessage());
        }
    }

    @Override // com.octopus.ad.internal.e
    public void a(int i) {
        HaoboLog.d(HaoboLog.pbLogTag, "Failed to load prefetch request: " + i);
    }

    @Override // com.octopus.ad.internal.e
    public void a(ServerResponse serverResponse) {
        for (String str : serverResponse.getPrefetchResources()) {
            HaoboLog.d(HaoboLog.baseLogTag, "Prefetch resource: " + str);
        }
    }

    @Override // com.octopus.ad.internal.e
    public d b() {
        return this.b;
    }

    @Override // com.octopus.ad.internal.o
    public void c() {
        com.octopus.ad.internal.network.a aVar = this.a;
        if (aVar != null) {
            aVar.cancel(true);
            this.a = null;
        }
    }
}
