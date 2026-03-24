package com.octopus.ad.internal;

import com.octopus.ad.internal.utilities.HaoboLog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o implements e {
    private long a = -1;
    private ArrayList<String> b = new ArrayList<>();

    public abstract void c();

    public void e() {
        this.a = System.currentTimeMillis();
    }

    public void f() {
        if (this.b.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("Mediation Classes: \n");
        for (int size = this.b.size(); size > 0; size--) {
            sb.append(String.format("%d: %s\n", Integer.valueOf(size), this.b.get(size - 1)));
        }
        HaoboLog.i(HaoboLog.mediationLogTag, sb.toString());
        this.b.clear();
    }
}
