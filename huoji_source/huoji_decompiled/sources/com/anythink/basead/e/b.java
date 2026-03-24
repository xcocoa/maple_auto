package com.anythink.basead.e;

import com.anythink.core.common.a.b;
import com.anythink.core.common.n.a;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static final String a = "b";
    private Map<String, AbstractC0061b> b;

    public static class a {
        private static final b a = new b(0);

        private a() {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.e.b$b, reason: collision with other inner class name */
    public static abstract class AbstractC0061b implements Serializable {
        private Map<String, Object> a;
        private int b;
        private volatile boolean c = false;

        public AbstractC0061b() {
        }

        public AbstractC0061b(Map<String, Object> map, final String str) {
            this.a = map;
            com.anythink.core.common.n.a.a().a(str, new a.InterfaceC0089a() { // from class: com.anythink.basead.e.b.b.1
                @Override // com.anythink.core.common.n.a.InterfaceC0089a
                public final void a(String str2) {
                    if (!str.equals(str2) || AbstractC0061b.this.c) {
                        return;
                    }
                    AbstractC0061b.this.a(3);
                    AbstractC0061b.this.d();
                }
            });
        }

        public abstract void a();

        public final void a(int i) {
            this.b = i;
        }

        public abstract void a(com.anythink.basead.c.e eVar);

        public abstract void a(i iVar);

        public abstract void a(boolean z);

        public abstract void b();

        public abstract void b(i iVar);

        public abstract void c();

        public void d() {
            if (this.c) {
                return;
            }
            this.c = true;
            Map<String, Object> map = this.a;
            if (map != null) {
                map.put(b.C0083b.a, Integer.valueOf(this.b));
            }
        }

        public final int e() {
            return this.b;
        }
    }

    private b() {
        this.b = new HashMap(2);
    }

    public /* synthetic */ b(byte b) {
        this();
    }

    public static b a() {
        return a.a;
    }

    public final AbstractC0061b a(String str) {
        return this.b.get(str);
    }

    public final void a(String str, AbstractC0061b abstractC0061b) {
        this.b.put(str, abstractC0061b);
    }

    public final void b(String str) {
        this.b.remove(str);
    }
}
