package com.anythink.expressad.exoplayer.g;

import com.anythink.expressad.exoplayer.k.o;
import com.anythink.expressad.exoplayer.m;

/* JADX INFO: loaded from: classes.dex */
public interface d {
    public static final d a = new d() { // from class: com.anythink.expressad.exoplayer.g.d.1
        @Override // com.anythink.expressad.exoplayer.g.d
        public final boolean a(m mVar) {
            String str = mVar.h;
            return o.V.equals(str) || o.ai.equals(str) || o.ag.equals(str);
        }

        @Override // com.anythink.expressad.exoplayer.g.d
        public final b b(m mVar) {
            String str = mVar.h;
            str.hashCode();
            switch (str) {
                case "application/id3":
                    return new com.anythink.expressad.exoplayer.g.b.g();
                case "application/x-emsg":
                    return new com.anythink.expressad.exoplayer.g.a.b();
                case "application/x-scte35":
                    return new com.anythink.expressad.exoplayer.g.c.c();
                default:
                    throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
            }
        }
    };

    boolean a(m mVar);

    b b(m mVar);
}
