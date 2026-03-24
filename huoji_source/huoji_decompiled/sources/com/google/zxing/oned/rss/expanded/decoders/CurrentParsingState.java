package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes2.dex */
public final class CurrentParsingState {
    private int OooO00o = 0;
    private State OooO0O0 = State.NUMERIC;

    public enum State {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    public final void OooO(int i) {
        this.OooO00o = i;
    }

    public final int OooO00o() {
        return this.OooO00o;
    }

    public final void OooO0O0(int i) {
        this.OooO00o += i;
    }

    public final boolean OooO0OO() {
        return this.OooO0O0 == State.ALPHA;
    }

    public final boolean OooO0Oo() {
        return this.OooO0O0 == State.ISO_IEC_646;
    }

    public final void OooO0o() {
        this.OooO0O0 = State.ALPHA;
    }

    public final boolean OooO0o0() {
        return this.OooO0O0 == State.NUMERIC;
    }

    public final void OooO0oO() {
        this.OooO0O0 = State.ISO_IEC_646;
    }

    public final void OooO0oo() {
        this.OooO0O0 = State.NUMERIC;
    }
}
