package com.anythink.expressad.exoplayer.h;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.s;
import com.anythink.expressad.exoplayer.h.t;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class f<T> extends c {
    private final HashMap<T, b> a = new HashMap<>();
    private com.anythink.expressad.exoplayer.h b;
    private Handler c;

    /* JADX WARN: Field signature parse error: b
    jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: TT at position 1 ('T'), unexpected: T
    	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
    	at jadx.core.dex.visitors.SignatureProcessor.parseFieldSignature(SignatureProcessor.java:161)
    	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:37)
     */
    public final class a implements t {

        @Nullable
        private final Object b;
        private t.a c;

        /* JADX WARN: Failed to parse method signature: (TT)V
        jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: (TT)V at position 2 ('T'), unexpected: T
        	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
        	at jadx.core.dex.nodes.parser.SignatureParser.consumeMethodArgs(SignatureParser.java:336)
        	at jadx.core.dex.visitors.SignatureProcessor.parseMethodSignature(SignatureProcessor.java:187)
        	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:40)
         */
        public a(@Nullable Object obj) {
            this.c = f.this.a((s.a) null);
            this.b = obj;
        }

        private t.c a(t.c cVar) {
            long jA = f.this.a(cVar.f);
            long jA2 = f.this.a(cVar.g);
            return (jA == cVar.f && jA2 == cVar.g) ? cVar : new t.c(cVar.a, cVar.b, cVar.c, cVar.d, cVar.e, jA, jA2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private boolean d(int i, @Nullable s.a aVar) {
            s.a aVarA;
            if (aVar != null) {
                aVarA = f.this.a(this.b, aVar);
                if (aVarA == null) {
                    return false;
                }
            } else {
                aVarA = null;
            }
            int iA = f.this.a(this.b, i);
            t.a aVar2 = this.c;
            if (aVar2.a == iA && com.anythink.expressad.exoplayer.k.af.a(aVar2.b, aVarA)) {
                return true;
            }
            this.c = f.this.a(iA, aVarA);
            return true;
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void a(int i, s.a aVar) {
            if (d(i, aVar)) {
                this.c.a();
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void a(int i, @Nullable s.a aVar, t.b bVar, t.c cVar) {
            if (d(i, aVar)) {
                this.c.a(bVar, a(cVar));
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void a(int i, @Nullable s.a aVar, t.b bVar, t.c cVar, IOException iOException, boolean z) {
            if (d(i, aVar)) {
                this.c.a(bVar, a(cVar), iOException, z);
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void a(int i, @Nullable s.a aVar, t.c cVar) {
            if (d(i, aVar)) {
                this.c.a(a(cVar));
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void b(int i, s.a aVar) {
            if (d(i, aVar)) {
                this.c.b();
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void b(int i, @Nullable s.a aVar, t.b bVar, t.c cVar) {
            if (d(i, aVar)) {
                this.c.b(bVar, a(cVar));
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void b(int i, @Nullable s.a aVar, t.c cVar) {
            if (d(i, aVar)) {
                this.c.b(a(cVar));
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void c(int i, s.a aVar) {
            if (d(i, aVar)) {
                this.c.c();
            }
        }

        @Override // com.anythink.expressad.exoplayer.h.t
        public final void c(int i, @Nullable s.a aVar, t.b bVar, t.c cVar) {
            if (d(i, aVar)) {
                this.c.c(bVar, a(cVar));
            }
        }
    }

    public static final class b {
        public final s a;
        public final s.b b;
        public final t c;

        public b(s sVar, s.b bVar, t tVar) {
            this.a = sVar;
            this.b = bVar;
            this.c = tVar;
        }
    }

    public int a(@Nullable T t, int i) {
        return i;
    }

    public long a(long j) {
        return j;
    }

    @Nullable
    public s.a a(@Nullable T t, s.a aVar) {
        return aVar;
    }

    @Override // com.anythink.expressad.exoplayer.h.c
    @CallSuper
    public void a() {
        for (b bVar : this.a.values()) {
            bVar.a.a(bVar.b);
            bVar.a.a(bVar.c);
        }
        this.a.clear();
        this.b = null;
    }

    @Override // com.anythink.expressad.exoplayer.h.c
    @CallSuper
    public void a(com.anythink.expressad.exoplayer.h hVar, boolean z) {
        this.b = hVar;
        this.c = new Handler();
    }

    public final void a(@Nullable T t) {
        b bVarRemove = this.a.remove(t);
        bVarRemove.a.a(bVarRemove.b);
        bVarRemove.a.a(bVarRemove.c);
    }

    public final void a(@Nullable final T t, s sVar) {
        com.anythink.expressad.exoplayer.k.a.a(!this.a.containsKey(t));
        s.b bVar = new s.b() { // from class: com.anythink.expressad.exoplayer.h.f.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.anythink.expressad.exoplayer.h.s.b
            public final void a(s sVar2, com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj) {
                f.this.a(t, sVar2, aeVar, obj);
            }
        };
        a aVar = new a(t);
        this.a.put(t, new b(sVar, bVar, aVar));
        sVar.a(this.c, aVar);
        sVar.a(this.b, false, bVar);
    }

    public abstract void a(@Nullable T t, s sVar, com.anythink.expressad.exoplayer.ae aeVar, @Nullable Object obj);

    @Override // com.anythink.expressad.exoplayer.h.s
    @CallSuper
    public void b() {
        Iterator<b> it = this.a.values().iterator();
        while (it.hasNext()) {
            it.next().a.b();
        }
    }
}
