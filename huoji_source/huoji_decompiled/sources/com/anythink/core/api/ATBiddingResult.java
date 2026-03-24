package com.anythink.core.api;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.f.o;

/* JADX INFO: loaded from: classes.dex */
public class ATBiddingResult extends o {
    private ATBiddingResult(boolean z, double d, double d2, String str, ATBiddingNotice aTBiddingNotice, String str2, ATAdConst.CURRENCY currency) {
        super(z, d, d2, str, aTBiddingNotice, str2, currency);
    }

    public static ATBiddingResult fail(String str) {
        return new ATBiddingResult(false, 0.0d, 0.0d, null, null, str, ATAdConst.CURRENCY.USD);
    }

    public static ATBiddingResult success(double d, double d2, String str, ATBiddingNotice aTBiddingNotice, ATAdConst.CURRENCY currency) {
        return new ATBiddingResult(true, d, d2, str, aTBiddingNotice, null, currency);
    }

    public static ATBiddingResult success(double d, String str, ATBiddingNotice aTBiddingNotice) {
        return new ATBiddingResult(true, d, d, str, aTBiddingNotice, null, ATAdConst.CURRENCY.USD);
    }

    public static ATBiddingResult success(double d, String str, ATBiddingNotice aTBiddingNotice, ATAdConst.CURRENCY currency) {
        return new ATBiddingResult(true, d, d, str, aTBiddingNotice, null, currency);
    }
}
