package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class oO0Oo0o0<A, B> {
    private static final int OooO0O0 = 250;
    private final o2<OooO0O0<A>, B> OooO00o;

    public class OooO00o extends o2<OooO0O0<A>, B> {
        public OooO00o(long j) {
            super(j);
        }

        @Override // z2.o2
        /* JADX INFO: renamed from: OooOOo, reason: merged with bridge method [inline-methods] */
        public void OooOOO(@NonNull OooO0O0<A> oooO0O0, @Nullable B b) {
            oooO0O0.OooO0OO();
        }
    }

    @VisibleForTesting
    public static final class OooO0O0<A> {
        private static final Queue<OooO0O0<?>> OooO0Oo = t2.OooO0o(0);
        private int OooO00o;
        private int OooO0O0;
        private A OooO0OO;

        private OooO0O0() {
        }

        public static <A> OooO0O0<A> OooO00o(A a, int i, int i2) {
            OooO0O0<A> oooO0O0;
            Queue<OooO0O0<?>> queue = OooO0Oo;
            synchronized (queue) {
                oooO0O0 = (OooO0O0) queue.poll();
            }
            if (oooO0O0 == null) {
                oooO0O0 = new OooO0O0<>();
            }
            oooO0O0.OooO0O0(a, i, i2);
            return oooO0O0;
        }

        private void OooO0O0(A a, int i, int i2) {
            this.OooO0OO = a;
            this.OooO0O0 = i;
            this.OooO00o = i2;
        }

        public void OooO0OO() {
            Queue<OooO0O0<?>> queue = OooO0Oo;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OooO0O0)) {
                return false;
            }
            OooO0O0 oooO0O0 = (OooO0O0) obj;
            return this.OooO0O0 == oooO0O0.OooO0O0 && this.OooO00o == oooO0O0.OooO00o && this.OooO0OO.equals(oooO0O0.OooO0OO);
        }

        public int hashCode() {
            return (((this.OooO00o * 31) + this.OooO0O0) * 31) + this.OooO0OO.hashCode();
        }
    }

    public oO0Oo0o0() {
        this(250L);
    }

    public oO0Oo0o0(long j) {
        this.OooO00o = new OooO00o(j);
    }

    public void OooO00o() {
        this.OooO00o.OooO0O0();
    }

    @Nullable
    public B OooO0O0(A a, int i, int i2) {
        OooO0O0<A> oooO0O0OooO00o = OooO0O0.OooO00o(a, i, i2);
        B bOooOO0O = this.OooO00o.OooOO0O(oooO0O0OooO00o);
        oooO0O0OooO00o.OooO0OO();
        return bOooOO0O;
    }

    public void OooO0OO(A a, int i, int i2, B b) {
        this.OooO00o.OooOOOO(OooO0O0.OooO00o(a, i, i2), b);
    }
}
