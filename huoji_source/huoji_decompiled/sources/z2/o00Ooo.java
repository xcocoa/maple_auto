package z2;

import android.os.Handler;
import android.os.Looper;
import com.android.volley.Request;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class o00Ooo {
    private static final int OooOO0o = 4;
    private o00O0O[] OooO;
    private AtomicInteger OooO00o;
    private final Map<String, Queue<Request<?>>> OooO0O0;
    private final Set<Request<?>> OooO0OO;
    private final PriorityBlockingQueue<Request<?>> OooO0Oo;
    private final OooOo OooO0o;
    private final PriorityBlockingQueue<Request<?>> OooO0o0;
    private final o0OoOo0 OooO0oO;
    private final o00oO0o OooO0oo;
    private Oooo000 OooOO0;
    private List<OooO0OO> OooOO0O;

    public class OooO00o implements OooO0O0 {
        public final /* synthetic */ Object OooO00o;

        public OooO00o(Object obj) {
            this.OooO00o = obj;
        }

        @Override // z2.o00Ooo.OooO0O0
        public boolean OooO00o(Request<?> request) {
            return request.OooOoO() == this.OooO00o;
        }
    }

    public interface OooO0O0 {
        boolean OooO00o(Request<?> request);
    }

    public interface OooO0OO<T> {
        void OooO00o(Request<T> request);
    }

    public o00Ooo(OooOo oooOo, o0OoOo0 o0oooo0) {
        this(oooOo, o0oooo0, 4);
    }

    public o00Ooo(OooOo oooOo, o0OoOo0 o0oooo0, int i) {
        this(oooOo, o0oooo0, i, new o000oOoO(new Handler(Looper.getMainLooper())));
    }

    public o00Ooo(OooOo oooOo, o0OoOo0 o0oooo0, int i, o00oO0o o00oo0o) {
        this.OooO00o = new AtomicInteger();
        this.OooO0O0 = new HashMap();
        this.OooO0OO = new HashSet();
        this.OooO0Oo = new PriorityBlockingQueue<>();
        this.OooO0o0 = new PriorityBlockingQueue<>();
        this.OooOO0O = new ArrayList();
        this.OooO0o = oooOo;
        this.OooO0oO = o0oooo0;
        this.OooO = new o00O0O[i];
        this.OooO0oo = o00oo0o;
    }

    public void OooO() {
        OooOO0();
        Oooo000 oooo000 = new Oooo000(this.OooO0Oo, this.OooO0o0, this.OooO0o, this.OooO0oo);
        this.OooOO0 = oooo000;
        oooo000.start();
        for (int i = 0; i < this.OooO.length; i++) {
            o00O0O o00o0o = new o00O0O(this.OooO0o0, this.OooO0oO, this.OooO0o, this.OooO0oo);
            this.OooO[i] = o00o0o;
            o00o0o.start();
        }
    }

    public <T> Request<T> OooO00o(Request<T> request) {
        request.Oooo0O0(this);
        synchronized (this.OooO0OO) {
            this.OooO0OO.add(request);
        }
        request.Oooo0o0(OooO0oO());
        request.OooO0O0("add-to-queue");
        if (!request.Oooo0oo()) {
            this.OooO0o0.add(request);
            return request;
        }
        synchronized (this.OooO0O0) {
            String strOooOOO0 = request.OooOOO0();
            if (this.OooO0O0.containsKey(strOooOOO0)) {
                Queue<Request<?>> linkedList = this.OooO0O0.get(strOooOOO0);
                if (linkedList == null) {
                    linkedList = new LinkedList<>();
                }
                linkedList.add(request);
                this.OooO0O0.put(strOooOOO0, linkedList);
                if (o0OOO0o.OooO0O0) {
                    o0OOO0o.OooO0o("Request for cacheKey=%s is in flight, putting on hold.", strOooOOO0);
                }
            } else {
                this.OooO0O0.put(strOooOOO0, null);
                this.OooO0Oo.add(request);
            }
        }
        return request;
    }

    public <T> void OooO0O0(OooO0OO<T> oooO0OO) {
        synchronized (this.OooOO0O) {
            this.OooOO0O.add(oooO0OO);
        }
    }

    public void OooO0OO(OooO0O0 oooO0O0) {
        synchronized (this.OooO0OO) {
            for (Request<?> request : this.OooO0OO) {
                if (oooO0O0.OooO00o(request)) {
                    request.OooO0OO();
                }
            }
        }
    }

    public void OooO0Oo(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Cannot cancelAll with a null tag");
        }
        OooO0OO(new OooO00o(obj));
    }

    public OooOo OooO0o() {
        return this.OooO0o;
    }

    public <T> void OooO0o0(Request<T> request) {
        synchronized (this.OooO0OO) {
            this.OooO0OO.remove(request);
        }
        synchronized (this.OooOO0O) {
            Iterator<OooO0OO> it = this.OooOO0O.iterator();
            while (it.hasNext()) {
                it.next().OooO00o(request);
            }
        }
        if (request.Oooo0oo()) {
            synchronized (this.OooO0O0) {
                String strOooOOO0 = request.OooOOO0();
                Queue<Request<?>> queueRemove = this.OooO0O0.remove(strOooOOO0);
                if (queueRemove != null) {
                    if (o0OOO0o.OooO0O0) {
                        o0OOO0o.OooO0o("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(queueRemove.size()), strOooOOO0);
                    }
                    this.OooO0Oo.addAll(queueRemove);
                }
            }
        }
    }

    public int OooO0oO() {
        return this.OooO00o.incrementAndGet();
    }

    public <T> void OooO0oo(OooO0OO<T> oooO0OO) {
        synchronized (this.OooOO0O) {
            this.OooOO0O.remove(oooO0OO);
        }
    }

    public void OooOO0() {
        Oooo000 oooo000 = this.OooOO0;
        if (oooo000 != null) {
            oooo000.OooO0O0();
        }
        int i = 0;
        while (true) {
            o00O0O[] o00o0oArr = this.OooO;
            if (i >= o00o0oArr.length) {
                return;
            }
            if (o00o0oArr[i] != null) {
                o00o0oArr[i].OooO0OO();
            }
            i++;
        }
    }
}
