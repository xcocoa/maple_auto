package z2;

import java.io.PrintWriter;
import java.io.StringWriter;
import junit.framework.AssertionFailedError;

/* JADX INFO: loaded from: classes2.dex */
public class iw {
    public gw OooO00o;
    public Throwable OooO0O0;

    public iw(gw gwVar, Throwable th) {
        this.OooO00o = gwVar;
        this.OooO0O0 = th;
    }

    public String OooO00o() {
        return OooO0Oo().getMessage();
    }

    public gw OooO0O0() {
        return this.OooO00o;
    }

    public boolean OooO0OO() {
        return OooO0Oo() instanceof AssertionFailedError;
    }

    public Throwable OooO0Oo() {
        return this.OooO0O0;
    }

    public String OooO0o0() {
        StringWriter stringWriter = new StringWriter();
        OooO0Oo().printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public String toString() {
        return this.OooO00o + ": " + this.OooO0O0.getMessage();
    }
}
