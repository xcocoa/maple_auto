package com.octopus.ad.topon;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.octopus.ad.ADBidEvent;
import com.octopus.ad.IBidding;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class OctopusBiddingNotice implements ATBiddingNotice {
    private IBidding octopusAd;

    public OctopusBiddingNotice(IBidding iBidding) {
        this.octopusAd = iBidding;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z, double d) {
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidLoss(String str, double d, Map<String, Object> map) {
        String str2;
        if (this.octopusAd != null) {
            str.hashCode();
            switch (str) {
                case "2":
                    str2 = ADBidEvent.TIMEOUT_FILTER;
                    break;
                case "102":
                case "103":
                    str2 = "1002";
                    break;
                default:
                    str2 = ADBidEvent.OTHER;
                    break;
            }
            this.octopusAd.sendLossNotice((int) d, str2, ADBidEvent.OTHER);
            this.octopusAd = null;
        }
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidWin(double d, double d2, Map<String, Object> map) {
        IBidding iBidding = this.octopusAd;
        if (iBidding != null) {
            iBidding.sendWinNotice((int) d2);
            this.octopusAd = null;
        }
    }
}
