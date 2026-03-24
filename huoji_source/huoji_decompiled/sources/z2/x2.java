package z2;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class x2 {
    private static final boolean OooO00o = false;

    public static class OooO0O0 extends x2 {
        private volatile RuntimeException OooO0O0;

        public OooO0O0() {
            super();
        }

        @Override // z2.x2
        public void OooO0O0(boolean z) {
            this.OooO0O0 = z ? new RuntimeException("Released") : null;
        }

        @Override // z2.x2
        public void OooO0OO() {
            if (this.OooO0O0 != null) {
                throw new IllegalStateException("Already released", this.OooO0O0);
            }
        }
    }

    public static class OooO0OO extends x2 {
        private volatile boolean OooO0O0;

        public OooO0OO() {
            super();
        }

        @Override // z2.x2
        public void OooO0O0(boolean z) {
            this.OooO0O0 = z;
        }

        @Override // z2.x2
        public void OooO0OO() {
            if (this.OooO0O0) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    private x2() {
    }

    @NonNull
    public static x2 OooO00o() {
        return new OooO0OO();
    }

    public abstract void OooO0O0(boolean z);

    public abstract void OooO0OO();
}
