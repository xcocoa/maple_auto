package com.anythink.core.common.f;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;

/* JADX INFO: loaded from: classes.dex */
public class o {
    public ATBiddingNotice biddingNotice;
    public ATAdConst.CURRENCY currency;
    public String displayNoticeUrl;
    public String errorMsg;
    public boolean isSuccess;
    public String loseNoticeUrl;
    public double originPrice;
    public double price;
    public double sortPrice;
    public String token;
    public int useType;
    public String winNoticeUrl;

    public o(boolean z, double d, double d2, String str, ATBiddingNotice aTBiddingNotice, String str2, ATAdConst.CURRENCY currency) {
        this(z, d2, str, aTBiddingNotice, str2, currency);
        this.sortPrice = d;
    }

    public o(boolean z, double d, String str, ATBiddingNotice aTBiddingNotice, String str2, ATAdConst.CURRENCY currency) {
        this.useType = 1;
        this.isSuccess = z;
        this.originPrice = d;
        this.price = d;
        this.sortPrice = d;
        this.token = str;
        this.biddingNotice = aTBiddingNotice;
        this.errorMsg = str2;
        this.currency = currency;
    }

    public o(boolean z, double d, String str, String str2, String str3, String str4, String str5, ATAdConst.CURRENCY currency) {
        this.useType = 1;
        this.isSuccess = z;
        this.originPrice = d;
        this.price = d;
        this.sortPrice = d;
        this.token = str;
        this.winNoticeUrl = str2;
        this.loseNoticeUrl = str3;
        this.displayNoticeUrl = str4;
        this.errorMsg = str5;
        this.currency = currency;
    }

    public double getPrice() {
        return this.price;
    }

    public double getSortPrice() {
        return this.sortPrice;
    }

    public boolean isSamePrice() {
        return this.sortPrice == this.originPrice;
    }

    public boolean isSuccessWithUseType() {
        return this.isSuccess && this.useType == 1;
    }

    public void setBiddingNotice(ATBiddingNotice aTBiddingNotice) {
        this.biddingNotice = aTBiddingNotice;
    }

    public void setPrice(double d) {
        this.price = d;
    }

    public void setSortPrice(double d) {
        this.sortPrice = d;
    }
}
