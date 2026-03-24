package z2;

import android.os.Handler;
import android.os.Looper;
import com.android.volley.Request;

/* JADX INFO: loaded from: classes.dex */
public class o000OOo extends Request<Object> {
    private final OooOo o00o0O;
    private final Runnable o00ooo;

    public o000OOo(OooOo oooOo, Runnable runnable) {
        super(0, null, null);
        this.o00o0O = oooOo;
        this.o00ooo = runnable;
    }

    @Override // com.android.volley.Request
    public void OooO0o(Object obj) {
    }

    @Override // com.android.volley.Request
    public Request.Priority OooOo0o() {
        return Request.Priority.IMMEDIATE;
    }

    @Override // com.android.volley.Request
    public boolean OooOooo() {
        this.o00o0O.clear();
        if (this.o00ooo == null) {
            return true;
        }
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.o00ooo);
        return true;
    }

    @Override // com.android.volley.Request
    public oo000o<Object> Oooo00o(o00Oo0 o00oo0) {
        return null;
    }
}
