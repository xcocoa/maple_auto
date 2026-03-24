package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
import z2.OooOo;
import z2.Oooo0;
import z2.o00Oo0;
import z2.o00Ooo;
import z2.o0OOO0o;
import z2.o0ooOOo;
import z2.o4;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public abstract class Request<T> implements Comparable<Request<T>> {
    private static final String o00Oo0 = "UTF-8";
    private static final long o00Ooo = 3000;
    private final o0OOO0o.OooO00o OoooOoO;
    private final int OoooOoo;
    private final String Ooooo00;
    private final int Ooooo0o;
    private final oo000o.OooO00o OooooO0;
    private Integer OooooOO;
    private o00Ooo OooooOo;
    private boolean Oooooo;
    private boolean Oooooo0;
    private boolean OoooooO;
    private long Ooooooo;
    private Object o00O0O;
    private o0ooOOo o0OoOo0;
    private OooOo.OooO00o ooOO;

    public class OooO00o implements Runnable {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ long OoooOoo;

        public OooO00o(String str, long j) {
            this.OoooOoO = str;
            this.OoooOoo = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            Request.this.OoooOoO.OooO00o(this.OoooOoO, this.OoooOoo);
            Request.this.OoooOoO.OooO0O0(toString());
        }
    }

    public interface OooO0O0 {
        public static final int OooO = 7;
        public static final int OooO00o = -1;
        public static final int OooO0O0 = 0;
        public static final int OooO0OO = 1;
        public static final int OooO0Oo = 2;
        public static final int OooO0o = 4;
        public static final int OooO0o0 = 3;
        public static final int OooO0oO = 5;
        public static final int OooO0oo = 6;
    }

    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public Request(int i, String str, oo000o.OooO00o oooO00o) {
        this.OoooOoO = o0OOO0o.OooO00o.OooO0OO ? new o0OOO0o.OooO00o() : null;
        this.Oooooo0 = true;
        this.Oooooo = false;
        this.OoooooO = false;
        this.Ooooooo = 0L;
        this.ooOO = null;
        this.OoooOoo = i;
        this.Ooooo00 = str;
        this.OooooO0 = oooO00o;
        Oooo0OO(new Oooo0());
        this.Ooooo0o = OooO0oo(str);
    }

    @Deprecated
    public Request(String str, oo000o.OooO00o oooO00o) {
        this(-1, str, oooO00o);
    }

    private byte[] OooO0oO(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    private static int OooO0oo(String str) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (host = uri.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public void OooO(String str) {
        o00Ooo o00ooo = this.OooooOo;
        if (o00ooo != null) {
            o00ooo.OooO0o0(this);
        }
        if (!o0OOO0o.OooO00o.OooO0OO) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.Ooooooo;
            if (jElapsedRealtime >= 3000) {
                o0OOO0o.OooO0O0("%d ms: %s", Long.valueOf(jElapsedRealtime), toString());
                return;
            }
            return;
        }
        long id = Thread.currentThread().getId();
        if (Looper.myLooper() != Looper.getMainLooper()) {
            new Handler(Looper.getMainLooper()).post(new OooO00o(str, id));
        } else {
            this.OoooOoO.OooO00o(str, id);
            this.OoooOoO.OooO0O0(toString());
        }
    }

    public void OooO0O0(String str) {
        if (o0OOO0o.OooO00o.OooO0OO) {
            this.OoooOoO.OooO00o(str, Thread.currentThread().getId());
        } else if (this.Ooooooo == 0) {
            this.Ooooooo = SystemClock.elapsedRealtime();
        }
    }

    public void OooO0OO() {
        this.Oooooo = true;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public int compareTo(Request<T> request) {
        Priority priorityOooOo0o = OooOo0o();
        Priority priorityOooOo0o2 = request.OooOo0o();
        return priorityOooOo0o == priorityOooOo0o2 ? this.OooooOO.intValue() - request.OooooOO.intValue() : priorityOooOo0o2.ordinal() - priorityOooOo0o.ordinal();
    }

    public abstract void OooO0o(T t);

    public void OooO0o0(VolleyError volleyError) {
        oo000o.OooO00o oooO00o = this.OooooO0;
        if (oooO00o != null) {
            oooO00o.OooO0O0(volleyError);
        }
    }

    public byte[] OooOO0() throws AuthFailureError {
        Map<String, String> mapOooOOo0 = OooOOo0();
        if (mapOooOOo0 == null || mapOooOOo0.size() <= 0) {
            return null;
        }
        return OooO0oO(mapOooOOo0, OooOOo());
    }

    public String OooOO0O() {
        return "application/x-www-form-urlencoded; charset=" + OooOOo();
    }

    public OooOo.OooO00o OooOO0o() {
        return this.ooOO;
    }

    public oo000o.OooO00o OooOOO() {
        return this.OooooO0;
    }

    public String OooOOO0() {
        return OooOoo();
    }

    public Map<String, String> OooOOOO() throws AuthFailureError {
        return Collections.emptyMap();
    }

    public int OooOOOo() {
        return this.OoooOoo;
    }

    public String OooOOo() {
        return "UTF-8";
    }

    public Map<String, String> OooOOo0() throws AuthFailureError {
        return null;
    }

    @Deprecated
    public byte[] OooOOoo() throws AuthFailureError {
        Map<String, String> mapOooOo0 = OooOo0();
        if (mapOooOo0 == null || mapOooOo0.size() <= 0) {
            return null;
        }
        return OooO0oO(mapOooOo0, OooOo0O());
    }

    public o0ooOOo OooOo() {
        return this.o0OoOo0;
    }

    @Deprecated
    public Map<String, String> OooOo0() throws AuthFailureError {
        return OooOOo0();
    }

    @Deprecated
    public String OooOo00() {
        return OooOO0O();
    }

    @Deprecated
    public String OooOo0O() {
        return OooOOo();
    }

    public Priority OooOo0o() {
        return Priority.NORMAL;
    }

    public Object OooOoO() {
        return this.o00O0O;
    }

    public final int OooOoO0() {
        Integer num = this.OooooOO;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public final int OooOoOO() {
        return this.o0OoOo0.OooO0O0();
    }

    public String OooOoo() {
        return this.Ooooo00;
    }

    public int OooOoo0() {
        return this.Ooooo0o;
    }

    public boolean OooOooO() {
        return this.OoooooO;
    }

    public boolean OooOooo() {
        return this.Oooooo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> Oooo0(OooOo.OooO00o oooO00o) {
        this.ooOO = oooO00o;
        return this;
    }

    public void Oooo000() {
        this.OoooooO = true;
    }

    public VolleyError Oooo00O(VolleyError volleyError) {
        return volleyError;
    }

    public abstract oo000o<T> Oooo00o(o00Oo0 o00oo0);

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> Oooo0O0(o00Ooo o00ooo) {
        this.OooooOo = o00ooo;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> Oooo0OO(o0ooOOo o0ooooo) {
        this.o0OoOo0 = o0ooooo;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> Oooo0o(boolean z) {
        this.Oooooo0 = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> Oooo0o0(int i) {
        this.OooooOO = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> Oooo0oO(Object obj) {
        this.o00O0O = obj;
        return this;
    }

    public final boolean Oooo0oo() {
        return this.Oooooo0;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(OooOoo0());
        StringBuilder sb = new StringBuilder();
        sb.append(this.Oooooo ? "[X] " : "[ ] ");
        sb.append(OooOoo());
        sb.append(o4.OooO00o.OooO0Oo);
        sb.append(str);
        sb.append(o4.OooO00o.OooO0Oo);
        sb.append(OooOo0o());
        sb.append(o4.OooO00o.OooO0Oo);
        sb.append(this.OooooOO);
        return sb.toString();
    }
}
