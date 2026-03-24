package com.anythink.core.common.h;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.f.bc;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f extends a {
    public static final int c = 1;
    public String a;
    public int b;
    private bc d;

    private f(String str) {
        this.b = 0;
        this.a = str;
    }

    private f(String str, bc bcVar) {
        this(str);
        this.b = 1;
        this.d = bcVar;
    }

    public static f a(String str) {
        return new f(str);
    }

    public static f a(String str, bc bcVar) {
        return new f(str, bcVar);
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 2;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        bc bcVar;
        if (1 != this.b || (bcVar = this.d) == null) {
            return null;
        }
        bcVar.a("200");
        com.anythink.core.common.n.e.a(this.d);
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        return this.a;
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
        bc bcVar;
        if (1 == this.b && ErrorCode.httpStatuException.equals(adError.getCode()) && (bcVar = this.d) != null) {
            bcVar.a(adError.getPlatformCode());
            this.d.b(adError.getPlatformMSG());
            com.anythink.core.common.n.e.a(this.d);
        }
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, String> c() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final byte[] d() {
        return new byte[0];
    }

    @Override // com.anythink.core.common.h.a
    public final String g() {
        return "";
    }

    @Override // com.anythink.core.common.h.a
    public final String h() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }
}
