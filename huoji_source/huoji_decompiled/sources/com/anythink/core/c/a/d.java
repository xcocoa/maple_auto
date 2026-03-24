package com.anythink.core.c.a;

import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public double a;
    public String b;

    public d(double d, String str) {
        this.a = d;
        this.b = str;
    }

    public final String toString() {
        return "RecentLoadedHighPriceInfo{price=" + this.a + ", adSourceId='" + this.b + '\'' + MessageFormatter.DELIM_STOP;
    }
}
