package com.octopus.ad.internal.b.a;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class g extends e {
    private final long a;

    public g(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.a = j;
    }

    @Override // com.octopus.ad.internal.b.a.e, com.octopus.ad.internal.b.a.a
    public /* bridge */ /* synthetic */ void a(File file) throws IOException {
        super.a(file);
    }

    @Override // com.octopus.ad.internal.b.a.e
    public boolean a(File file, long j, int i) {
        return j <= this.a;
    }
}
