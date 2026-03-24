package z2;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.TlsVersion;

/* JADX INFO: loaded from: classes2.dex */
public final class ax {
    public static final ax OooO;
    private static final xw[] OooO0o;
    private static final xw[] OooO0o0;
    public static final ax OooO0oO;
    public static final ax OooO0oo;
    public static final ax OooOO0;
    public final boolean OooO00o;
    public final boolean OooO0O0;

    @Nullable
    public final String[] OooO0OO;

    @Nullable
    public final String[] OooO0Oo;

    public static final class OooO00o {
        public boolean OooO00o;

        @Nullable
        public String[] OooO0O0;

        @Nullable
        public String[] OooO0OO;
        public boolean OooO0Oo;

        public OooO00o(ax axVar) {
            this.OooO00o = axVar.OooO00o;
            this.OooO0O0 = axVar.OooO0OO;
            this.OooO0OO = axVar.OooO0Oo;
            this.OooO0Oo = axVar.OooO0O0;
        }

        public OooO00o(boolean z) {
            this.OooO00o = z;
        }

        public OooO00o OooO00o() {
            if (!this.OooO00o) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            this.OooO0O0 = null;
            return this;
        }

        public OooO00o OooO0O0() {
            if (!this.OooO00o) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            this.OooO0OO = null;
            return this;
        }

        public ax OooO0OO() {
            return new ax(this);
        }

        public OooO00o OooO0Oo(String... strArr) {
            if (!this.OooO00o) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.OooO0O0 = (String[]) strArr.clone();
            return this;
        }

        public OooO00o OooO0o(boolean z) {
            if (!this.OooO00o) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.OooO0Oo = z;
            return this;
        }

        public OooO00o OooO0o0(xw... xwVarArr) {
            if (!this.OooO00o) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[xwVarArr.length];
            for (int i = 0; i < xwVarArr.length; i++) {
                strArr[i] = xwVarArr[i].OooO00o;
            }
            return OooO0Oo(strArr);
        }

        public OooO00o OooO0oO(String... strArr) {
            if (!this.OooO00o) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.OooO0OO = (String[]) strArr.clone();
            return this;
        }

        public OooO00o OooO0oo(TlsVersion... tlsVersionArr) {
            if (!this.OooO00o) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[tlsVersionArr.length];
            for (int i = 0; i < tlsVersionArr.length; i++) {
                strArr[i] = tlsVersionArr[i].javaName;
            }
            return OooO0oO(strArr);
        }
    }

    static {
        xw xwVar = xw.o000;
        xw xwVar2 = xw.o000O000;
        xw xwVar3 = xw.o000OoO;
        xw xwVar4 = xw.o000O0o;
        xw xwVar5 = xw.o000Ooo;
        xw xwVar6 = xw.o0000OOO;
        xw xwVar7 = xw.o0000OoO;
        xw xwVar8 = xw.o0000OOo;
        xw xwVar9 = xw.o0000o0;
        xw xwVar10 = xw.o0000oOo;
        xw xwVar11 = xw.o0000oOO;
        xw[] xwVarArr = {xwVar, xwVar2, xwVar3, xwVar4, xwVar5, xwVar6, xwVar7, xwVar8, xwVar9, xwVar10, xwVar11};
        OooO0o0 = xwVarArr;
        xw[] xwVarArr2 = {xwVar, xwVar2, xwVar3, xwVar4, xwVar5, xwVar6, xwVar7, xwVar8, xwVar9, xwVar10, xwVar11, xw.o00000Oo, xw.o00000o0, xw.OoooooO, xw.Ooooooo, xw.Oooo00O, xw.Oooo0OO, xw.OooOO0O};
        OooO0o = xwVarArr2;
        OooO00o oooO00oOooO0o0 = new OooO00o(true).OooO0o0(xwVarArr);
        TlsVersion tlsVersion = TlsVersion.TLS_1_3;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_2;
        OooO0oO = oooO00oOooO0o0.OooO0oo(tlsVersion, tlsVersion2).OooO0o(true).OooO0OO();
        OooO00o oooO00oOooO0o02 = new OooO00o(true).OooO0o0(xwVarArr2);
        TlsVersion tlsVersion3 = TlsVersion.TLS_1_0;
        OooO0oo = oooO00oOooO0o02.OooO0oo(tlsVersion, tlsVersion2, TlsVersion.TLS_1_1, tlsVersion3).OooO0o(true).OooO0OO();
        OooO = new OooO00o(true).OooO0o0(xwVarArr2).OooO0oo(tlsVersion3).OooO0o(true).OooO0OO();
        OooOO0 = new OooO00o(false).OooO0OO();
    }

    public ax(OooO00o oooO00o) {
        this.OooO00o = oooO00o.OooO00o;
        this.OooO0OO = oooO00o.OooO0O0;
        this.OooO0Oo = oooO00o.OooO0OO;
        this.OooO0O0 = oooO00o.OooO0Oo;
    }

    private ax OooO0o0(SSLSocket sSLSocket, boolean z) {
        String[] strArrOooOoOO = this.OooO0OO != null ? zx.OooOoOO(xw.OooO0O0, sSLSocket.getEnabledCipherSuites(), this.OooO0OO) : sSLSocket.getEnabledCipherSuites();
        String[] strArrOooOoOO2 = this.OooO0Oo != null ? zx.OooOoOO(zx.OooOOo0, sSLSocket.getEnabledProtocols(), this.OooO0Oo) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iOooOo = zx.OooOo(xw.OooO0O0, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && iOooOo != -1) {
            strArrOooOoOO = zx.OooOO0(strArrOooOoOO, supportedCipherSuites[iOooOo]);
        }
        return new OooO00o(this).OooO0Oo(strArrOooOoOO).OooO0oO(strArrOooOoOO2).OooO0OO();
    }

    public void OooO00o(SSLSocket sSLSocket, boolean z) {
        ax axVarOooO0o0 = OooO0o0(sSLSocket, z);
        String[] strArr = axVarOooO0o0.OooO0Oo;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = axVarOooO0o0.OooO0OO;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    @Nullable
    public List<xw> OooO0O0() {
        String[] strArr = this.OooO0OO;
        if (strArr != null) {
            return xw.OooO0O0(strArr);
        }
        return null;
    }

    public boolean OooO0OO(SSLSocket sSLSocket) {
        if (!this.OooO00o) {
            return false;
        }
        String[] strArr = this.OooO0Oo;
        if (strArr != null && !zx.OooOoo(zx.OooOOo0, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.OooO0OO;
        return strArr2 == null || zx.OooOoo(xw.OooO0O0, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean OooO0Oo() {
        return this.OooO00o;
    }

    public boolean OooO0o() {
        return this.OooO0O0;
    }

    @Nullable
    public List<TlsVersion> OooO0oO() {
        String[] strArr = this.OooO0Oo;
        if (strArr != null) {
            return TlsVersion.forJavaNames(strArr);
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ax)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ax axVar = (ax) obj;
        boolean z = this.OooO00o;
        if (z != axVar.OooO00o) {
            return false;
        }
        return !z || (Arrays.equals(this.OooO0OO, axVar.OooO0OO) && Arrays.equals(this.OooO0Oo, axVar.OooO0Oo) && this.OooO0O0 == axVar.OooO0O0);
    }

    public int hashCode() {
        if (this.OooO00o) {
            return ((((527 + Arrays.hashCode(this.OooO0OO)) * 31) + Arrays.hashCode(this.OooO0Oo)) * 31) + (!this.OooO0O0 ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.OooO00o) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.OooO0OO != null ? OooO0O0().toString() : "[all enabled]") + ", tlsVersions=" + (this.OooO0Oo != null ? OooO0oO().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.OooO0O0 + ")";
    }
}
