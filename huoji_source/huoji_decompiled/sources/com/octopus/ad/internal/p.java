package com.octopus.ad.internal;

import com.octopus.ad.RewardItem;

/* JADX INFO: loaded from: classes2.dex */
public class p implements RewardItem {
    private String a;
    private int b;

    public p(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // com.octopus.ad.RewardItem
    public int getAmount() {
        return this.b;
    }

    @Override // com.octopus.ad.RewardItem
    public String getType() {
        return this.a;
    }
}
