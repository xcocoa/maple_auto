package z2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import junit.framework.AssertionFailedError;

/* JADX INFO: loaded from: classes2.dex */
public class kw {
    public List<iw> OooO00o = new ArrayList();
    public List<iw> OooO0O0 = new ArrayList();
    public List<jw> OooO0OO = new ArrayList();
    public int OooO0Oo = 0;
    private boolean OooO0o0 = false;

    public class OooO00o implements fw {
        public final /* synthetic */ hw OooO00o;

        public OooO00o(hw hwVar) throws Throwable {
            this.OooO00o = hwVar;
        }

        @Override // z2.fw
        public void OooO00o() throws Throwable {
            this.OooO00o.OoooO0();
        }
    }

    private synchronized List<jw> OooO0Oo() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.OooO0OO);
        return arrayList;
    }

    public synchronized Enumeration<iw> OooO() {
        return Collections.enumeration(this.OooO00o);
    }

    public synchronized void OooO00o(gw gwVar, Throwable th) {
        this.OooO0O0.add(new iw(gwVar, th));
        Iterator<jw> it = OooO0Oo().iterator();
        while (it.hasNext()) {
            it.next().OooO00o(gwVar, th);
        }
    }

    public synchronized void OooO0O0(gw gwVar, AssertionFailedError assertionFailedError) {
        this.OooO00o.add(new iw(gwVar, assertionFailedError));
        Iterator<jw> it = OooO0Oo().iterator();
        while (it.hasNext()) {
            it.next().OooO0O0(gwVar, assertionFailedError);
        }
    }

    public synchronized void OooO0OO(jw jwVar) {
        this.OooO0OO.add(jwVar);
    }

    public synchronized int OooO0o() {
        return this.OooO0O0.size();
    }

    public void OooO0o0(gw gwVar) {
        Iterator<jw> it = OooO0Oo().iterator();
        while (it.hasNext()) {
            it.next().OooO0OO(gwVar);
        }
    }

    public synchronized Enumeration<iw> OooO0oO() {
        return Collections.enumeration(this.OooO0O0);
    }

    public synchronized int OooO0oo() {
        return this.OooO00o.size();
    }

    public synchronized void OooOO0(jw jwVar) {
        this.OooO0OO.remove(jwVar);
    }

    public void OooOO0O(hw hwVar) {
        OooOOOO(hwVar);
        OooOOO0(hwVar, new OooO00o(hwVar));
        OooO0o0(hwVar);
    }

    public synchronized int OooOO0o() {
        return this.OooO0Oo;
    }

    public synchronized boolean OooOOO() {
        return this.OooO0o0;
    }

    public void OooOOO0(gw gwVar, fw fwVar) {
        try {
            fwVar.OooO00o();
        } catch (ThreadDeath e) {
            throw e;
        } catch (AssertionFailedError e2) {
            OooO0O0(gwVar, e2);
        } catch (Throwable th) {
            OooO00o(gwVar, th);
        }
    }

    public void OooOOOO(gw gwVar) {
        int iOooO00o = gwVar.OooO00o();
        synchronized (this) {
            this.OooO0Oo += iOooO00o;
        }
        Iterator<jw> it = OooO0Oo().iterator();
        while (it.hasNext()) {
            it.next().OooO0Oo(gwVar);
        }
    }

    public synchronized void OooOOOo() {
        this.OooO0o0 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean OooOOo0() {
        boolean z;
        if (OooO0oo() == 0) {
            z = OooO0o() == 0;
        }
        return z;
    }
}
