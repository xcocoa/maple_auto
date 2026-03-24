package com.anythink.core.b;

import android.text.TextUtils;
import com.anythink.core.api.MediationBidManager;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.q;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    private static f e;
    public ConcurrentHashMap<String, Integer> b;
    private MediationBidManager f;
    private final String d = f.class.getSimpleName();
    public ConcurrentHashMap<String, q> a = new ConcurrentHashMap<>();
    public List<Integer> c = new CopyOnWriteArrayList();

    private f() {
    }

    public static f a() {
        if (e == null) {
            e = new f();
        }
        return e;
    }

    private void a(String str) {
        if (this.b == null) {
            this.b = new ConcurrentHashMap<>();
        }
        this.b.put(str + "_c2sfirstStatus", 1);
    }

    private void a(String str, av avVar, q qVar) {
        this.a.put(str + qVar.k, qVar);
        if (avVar.Z()) {
            com.anythink.core.common.a.a.a().a(str, qVar);
        }
    }

    private boolean b(String str) {
        ConcurrentHashMap<String, Integer> concurrentHashMap = this.b;
        if (concurrentHashMap == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_c2sfirstStatus");
        return concurrentHashMap.get(sb.toString()) == null;
    }

    public final q a(String str, av avVar) {
        q qVarA = this.a.get(str + avVar.u());
        if (avVar.Z() && qVarA == null) {
            qVarA = com.anythink.core.common.a.a.a().a(str, avVar.u());
            if (qVarA != null) {
                new StringBuilder("CacehMotify: getCache:: Adx/Direcyly Bidding Cache is exist, it will get it from DB:\n").append(avVar.toString());
                this.a.put(str + avVar.u(), qVarA);
            } else {
                new StringBuilder("CacehMotify: getCache:: Adx/Direcyly Bidding Cache is not exist:\n").append(avVar.toString());
            }
        }
        return qVarA;
    }

    public final void a(int i) {
        synchronized (this.c) {
            if (!this.c.contains(Integer.valueOf(i))) {
                this.c.add(Integer.valueOf(i));
            }
        }
    }

    public final void a(MediationBidManager mediationBidManager) {
        this.f = mediationBidManager;
    }

    public final void a(String str, q qVar) {
        if (qVar == null) {
            return;
        }
        q qVar2 = this.a.get(str + qVar.k);
        if (qVar2 == null || !TextUtils.equals(qVar.token, qVar2.token)) {
            return;
        }
        this.a.remove(str + qVar.k);
    }

    public final MediationBidManager b() {
        return this.f;
    }

    public final boolean b(int i) {
        boolean z;
        synchronized (this.c) {
            z = !this.c.contains(Integer.valueOf(i));
        }
        return z;
    }
}
