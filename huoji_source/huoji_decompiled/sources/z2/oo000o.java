package z2;

import com.android.volley.VolleyError;
import z2.OooOo;

/* JADX INFO: loaded from: classes.dex */
public class oo000o<T> {
    public final T OooO00o;
    public final OooOo.OooO00o OooO0O0;
    public final VolleyError OooO0OO;
    public boolean OooO0Oo;

    public interface OooO00o {
        void OooO0O0(VolleyError volleyError);
    }

    public interface OooO0O0<T> {
        void onResponse(T t);
    }

    private oo000o(VolleyError volleyError) {
        this.OooO0Oo = false;
        this.OooO00o = null;
        this.OooO0O0 = null;
        this.OooO0OO = volleyError;
    }

    private oo000o(T t, OooOo.OooO00o oooO00o) {
        this.OooO0Oo = false;
        this.OooO00o = t;
        this.OooO0O0 = oooO00o;
        this.OooO0OO = null;
    }

    public static <T> oo000o<T> OooO00o(VolleyError volleyError) {
        return new oo000o<>(volleyError);
    }

    public static <T> oo000o<T> OooO0OO(T t, OooOo.OooO00o oooO00o) {
        return new oo000o<>(t, oooO00o);
    }

    public boolean OooO0O0() {
        return this.OooO0OO == null;
    }
}
