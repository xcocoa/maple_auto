package z2;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import z2.o50;

/* JADX INFO: loaded from: classes2.dex */
public final class s50 extends q50 {

    public static class OooO00o extends o50.OooO00o {
        public OooO00o(List<Class<?>> list) {
            this(new HashSet(list));
        }

        public OooO00o(Set<Class<?>> set) {
            super(true, null, true, set);
        }

        @Override // z2.o50.OooO00o, z2.c90
        public String OooO0O0() {
            return "excludes " + super.OooO0O0();
        }
    }

    @Override // z2.q50
    public c90 OooO0O0(List<Class<?>> list) {
        return new OooO00o(list);
    }
}
