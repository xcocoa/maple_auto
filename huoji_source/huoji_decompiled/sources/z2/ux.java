package z2;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class ux {
    public final pw OooO00o;
    public final Proxy OooO0O0;
    public final InetSocketAddress OooO0OO;

    public ux(pw pwVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        Objects.requireNonNull(pwVar, "address == null");
        Objects.requireNonNull(proxy, "proxy == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.OooO00o = pwVar;
        this.OooO0O0 = proxy;
        this.OooO0OO = inetSocketAddress;
    }

    public pw OooO00o() {
        return this.OooO00o;
    }

    public Proxy OooO0O0() {
        return this.OooO0O0;
    }

    public boolean OooO0OO() {
        return this.OooO00o.OooO != null && this.OooO0O0.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress OooO0Oo() {
        return this.OooO0OO;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ux) {
            ux uxVar = (ux) obj;
            if (uxVar.OooO00o.equals(this.OooO00o) && uxVar.OooO0O0.equals(this.OooO0O0) && uxVar.OooO0OO.equals(this.OooO0OO)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.OooO00o.hashCode()) * 31) + this.OooO0O0.hashCode()) * 31) + this.OooO0OO.hashCode();
    }

    public String toString() {
        return "Route{" + this.OooO0OO + "}";
    }
}
