package com.anythink.core.b.b;

import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATBiddingListener;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements ATBiddingListener {
    public ATBaseAdAdapter c;

    public c(ATBaseAdAdapter aTBaseAdAdapter) {
        this.c = aTBaseAdAdapter;
    }

    private void a() {
        this.c = null;
    }
}
