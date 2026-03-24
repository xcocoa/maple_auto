package com.octopus.ad.internal.b;

import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class p {
    public final String a;
    public final int b;
    public final String c;

    public p(String str, int i, String str2) {
        this.a = str;
        this.b = i;
        this.c = str2;
    }

    public String toString() {
        return "SourceInfo{url='" + this.a + "', length=" + this.b + ", mime='" + this.c + '\'' + MessageFormatter.DELIM_STOP;
    }
}
