package com.anythink.core.common.l;

import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public int a;
    public String b;
    public int c;
    public int d;
    public double e;

    public final String toString() {
        return "SharedPlaceInfo{format=" + this.a + ", placementId='" + this.b + "', requestInterval=" + this.c + ", adCacheNumThreshold=" + this.d + ", adCachePriceThreshold=" + this.e + MessageFormatter.DELIM_STOP;
    }
}
