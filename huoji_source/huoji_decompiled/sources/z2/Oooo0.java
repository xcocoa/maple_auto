package z2;

import com.android.volley.VolleyError;

/* JADX INFO: loaded from: classes.dex */
public class Oooo0 implements o0ooOOo {
    public static final int OooO0o = 1;
    public static final int OooO0o0 = 2500;
    public static final float OooO0oO = 1.0f;
    private int OooO00o;
    private int OooO0O0;
    private final int OooO0OO;
    private final float OooO0Oo;

    public Oooo0() {
        this(2500, 1, 1.0f);
    }

    public Oooo0(int i, int i2, float f) {
        this.OooO00o = i;
        this.OooO0OO = i2;
        this.OooO0Oo = f;
    }

    @Override // z2.o0ooOOo
    public void OooO00o(VolleyError volleyError) throws VolleyError {
        this.OooO0O0++;
        int i = this.OooO00o;
        this.OooO00o = (int) (i + (i * this.OooO0Oo));
        if (!OooO0o0()) {
            throw volleyError;
        }
    }

    @Override // z2.o0ooOOo
    public int OooO0O0() {
        return this.OooO00o;
    }

    @Override // z2.o0ooOOo
    public int OooO0OO() {
        return this.OooO0O0;
    }

    public float OooO0Oo() {
        return this.OooO0Oo;
    }

    public boolean OooO0o0() {
        return this.OooO0O0 <= this.OooO0OO;
    }
}
