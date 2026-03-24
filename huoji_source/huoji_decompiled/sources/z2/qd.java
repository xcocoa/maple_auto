package z2;

import android.content.Context;
import android.util.Log;
import com.android.volley.Request;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class qd {
    public static final String OooO0OO = "z2.qd";
    private static qd OooO0Oo;
    private o00Ooo OooO00o;
    private Map<Context, HashSet<Request>> OooO0O0 = new HashMap();

    private qd() {
    }

    public static qd OooO0OO() {
        if (OooO0Oo == null) {
            OooO0Oo = new qd();
        }
        return OooO0Oo;
    }

    public void OooO00o(Context context, Object obj, Request request) {
        if (this.OooO00o == null) {
            Log.i(OooO0OO, "你应该在 application中初始化队列");
            return;
        }
        if (context != null) {
            HashSet<Request> hashSet = this.OooO0O0.get(context);
            if (hashSet == null) {
                hashSet = new HashSet<>();
            }
            hashSet.add(request);
        }
        OooO0o(obj);
        request.Oooo0oO(obj);
        this.OooO00o.OooO00o(request);
    }

    public void OooO0O0(Object obj, Request request) {
        if (this.OooO00o == null) {
            Log.i(OooO0OO, "你应该在 application中初始化队列");
            return;
        }
        OooO0o(obj);
        request.Oooo0oO(obj);
        this.OooO00o.OooO00o(request);
        this.OooO00o.OooO();
    }

    public void OooO0Oo(Context context) {
        if (this.OooO00o == null) {
            this.OooO00o = o0000OO0.OooO00o(context);
        }
    }

    public void OooO0o(Object obj) {
        o00Ooo o00ooo = this.OooO00o;
        if (o00ooo != null) {
            o00ooo.OooO0Oo(obj);
        } else {
            Log.i(OooO0OO, "你应该在 application中初始化队列");
        }
    }

    public void OooO0o0(Context context) {
        if (this.OooO00o == null) {
            Log.i(OooO0OO, "你应该在 application中初始化队列");
            return;
        }
        HashSet<Request> hashSet = this.OooO0O0.get(context);
        if (hashSet != null) {
            Iterator<Request> it = hashSet.iterator();
            while (it.hasNext()) {
                this.OooO00o.OooO0Oo(it.next().OooOoO());
            }
        }
    }
}
