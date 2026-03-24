package com.anythink.core.basead.adx.api;

import com.anythink.core.api.ATAdConst;

/* JADX INFO: loaded from: classes.dex */
public class ATAdxBidFloorInfo {
    public double bidFloor;
    public ATAdConst.CURRENCY currency;

    public ATAdxBidFloorInfo(double d, ATAdConst.CURRENCY currency) {
        this.bidFloor = d;
        this.currency = currency;
    }

    public double getBidFloor() {
        return this.bidFloor;
    }

    public ATAdConst.CURRENCY getCurrency() {
        return this.currency;
    }
}
