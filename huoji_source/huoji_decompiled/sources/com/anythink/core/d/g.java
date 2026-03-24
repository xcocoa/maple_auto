package com.anythink.core.d;

import android.util.Log;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.am;
import com.anythink.core.common.o.s;
import com.anythink.core.d.h;

/* JADX INFO: loaded from: classes.dex */
public class g implements com.anythink.core.common.h.k {
    private static final String a = "g";
    private final h b;
    private final am c;
    private final h.b d;
    private final f e;
    private com.anythink.core.common.m.a f;
    private boolean[] g;
    private com.anythink.core.common.m.b h;

    public g(h hVar, am amVar, h.b bVar, f fVar) {
        this.b = hVar;
        this.c = amVar;
        this.d = bVar;
        this.e = fVar;
    }

    public g(h hVar, am amVar, h.b bVar, f fVar, com.anythink.core.common.m.a aVar, com.anythink.core.common.m.b bVar2, boolean[] zArr) {
        this.b = hVar;
        this.c = amVar;
        this.d = bVar;
        this.f = aVar;
        this.g = zArr;
        this.h = bVar2;
        this.e = fVar;
    }

    private void a() {
        com.anythink.core.common.m.b bVar;
        com.anythink.core.common.m.a aVar = this.f;
        if (aVar == null || (bVar = this.h) == null) {
            return;
        }
        aVar.b(bVar);
    }

    @Override // com.anythink.core.common.h.k
    public void onLoadCanceled(int i) {
        a();
        h.b bVar = this.d;
        if (bVar == null) {
            return;
        }
        f fVar = this.e;
        if (fVar == null) {
            bVar.a(ErrorCode.getErrorCode(ErrorCode.exception, "", "by canceled"));
        } else {
            bVar.a(fVar);
        }
    }

    @Override // com.anythink.core.common.h.k
    public void onLoadError(int i, String str, AdError adError) {
        h.b bVar;
        a();
        if (this.c != null && ErrorCode.statuError.equals(adError.getCode()) && (ErrorCode.placementIdError.equals(adError.getPlatformCode()) || ErrorCode.appIdError.equals(adError.getPlatformCode()) || "10001".equals(adError.getPlatformCode()))) {
            String str2 = this.c.a() + this.c.c() + this.c.b();
            StringBuilder sb = new StringBuilder("code: ");
            sb.append(adError.getPlatformCode());
            sb.append("msg: ");
            sb.append(adError.getPlatformMSG());
            sb.append(", key -> ");
            sb.append(str2);
            s.a(n.a().f(), com.anythink.core.common.b.h.E, str2, System.currentTimeMillis());
            if (n.a().A()) {
                Log.e("anythink", "Please check these params in your code (AppId: " + this.c.a() + ", AppKey: " + this.c.b() + ", PlacementId: " + this.c.c() + ")");
            }
        }
        f fVar = this.e;
        if (fVar == null && (bVar = this.d) != null) {
            bVar.a(adError);
            return;
        }
        h.b bVar2 = this.d;
        if (bVar2 != null) {
            bVar2.a(fVar);
        }
    }

    @Override // com.anythink.core.common.h.k
    public void onLoadFinish(int i, Object obj) {
        a();
        h hVar = this.b;
        if (hVar != null) {
            hVar.a(obj, this.c, this.d, this.g, this.e);
        }
    }

    @Override // com.anythink.core.common.h.k
    public void onLoadStart(int i) {
    }
}
