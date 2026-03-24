package com.octopus.ad.internal.b;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public final File a;
    public final com.octopus.ad.internal.b.a.c b;
    public final com.octopus.ad.internal.b.a.a c;
    public final com.octopus.ad.internal.b.b.c d;

    public c(File file, com.octopus.ad.internal.b.a.c cVar, com.octopus.ad.internal.b.a.a aVar, com.octopus.ad.internal.b.b.c cVar2) {
        this.a = file;
        this.b = cVar;
        this.c = aVar;
        this.d = cVar2;
    }

    public File a(String str) {
        return new File(this.a, this.b.a(str));
    }
}
