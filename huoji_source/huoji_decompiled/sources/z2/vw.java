package z2;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class vw {
    public static final vw OooO0OO = new OooO00o().OooO0O0();
    private final Set<OooO0O0> OooO00o;

    @Nullable
    private final yz OooO0O0;

    public static final class OooO00o {
        private final List<OooO0O0> OooO00o = new ArrayList();

        public OooO00o OooO00o(String str, String... strArr) {
            Objects.requireNonNull(str, "pattern == null");
            for (String str2 : strArr) {
                this.OooO00o.add(new OooO0O0(str, str2));
            }
            return this;
        }

        public vw OooO0O0() {
            return new vw(new LinkedHashSet(this.OooO00o), null);
        }
    }

    public static final class OooO0O0 {
        private static final String OooO0o0 = "*.";
        public final String OooO00o;
        public final String OooO0O0;
        public final String OooO0OO;
        public final ByteString OooO0Oo;

        public OooO0O0(String str, String str2) {
            StringBuilder sb;
            int i;
            this.OooO00o = str;
            if (str.startsWith(OooO0o0)) {
                sb = new StringBuilder();
                sb.append("http://");
                str = str.substring(2);
            } else {
                sb = new StringBuilder();
                sb.append("http://");
            }
            sb.append(str);
            this.OooO0O0 = kx.OooOOO0(sb.toString()).OooOOOo();
            if (str2.startsWith("sha1/")) {
                this.OooO0OO = "sha1/";
                i = 5;
            } else {
                if (!str2.startsWith("sha256/")) {
                    throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
                }
                this.OooO0OO = "sha256/";
                i = 7;
            }
            this.OooO0Oo = ByteString.decodeBase64(str2.substring(i));
            if (this.OooO0Oo != null) {
                return;
            }
            throw new IllegalArgumentException("pins must be base64: " + str2);
        }

        public boolean OooO00o(String str) {
            if (!this.OooO00o.startsWith(OooO0o0)) {
                return str.equals(this.OooO0O0);
            }
            int iIndexOf = str.indexOf(46);
            if ((str.length() - iIndexOf) - 1 == this.OooO0O0.length()) {
                String str2 = this.OooO0O0;
                if (str.regionMatches(false, iIndexOf + 1, str2, 0, str2.length())) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof OooO0O0) {
                OooO0O0 oooO0O0 = (OooO0O0) obj;
                if (this.OooO00o.equals(oooO0O0.OooO00o) && this.OooO0OO.equals(oooO0O0.OooO0OO) && this.OooO0Oo.equals(oooO0O0.OooO0Oo)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.OooO00o.hashCode()) * 31) + this.OooO0OO.hashCode()) * 31) + this.OooO0Oo.hashCode();
        }

        public String toString() {
            return this.OooO0OO + this.OooO0Oo.base64();
        }
    }

    public vw(Set<OooO0O0> set, @Nullable yz yzVar) {
        this.OooO00o = set;
        this.OooO0O0 = yzVar;
    }

    public static String OooO0Oo(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + OooO0o((X509Certificate) certificate).base64();
    }

    public static ByteString OooO0o(X509Certificate x509Certificate) {
        return ByteString.of(x509Certificate.getPublicKey().getEncoded()).sha256();
    }

    public static ByteString OooO0o0(X509Certificate x509Certificate) {
        return ByteString.of(x509Certificate.getPublicKey().getEncoded()).sha1();
    }

    public void OooO00o(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<OooO0O0> listOooO0OO = OooO0OO(str);
        if (listOooO0OO.isEmpty()) {
            return;
        }
        yz yzVar = this.OooO0O0;
        if (yzVar != null) {
            list = yzVar.OooO00o(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            int size2 = listOooO0OO.size();
            ByteString byteStringOooO0o = null;
            ByteString byteStringOooO0o0 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                OooO0O0 oooO0O0 = listOooO0OO.get(i2);
                if (oooO0O0.OooO0OO.equals("sha256/")) {
                    if (byteStringOooO0o == null) {
                        byteStringOooO0o = OooO0o(x509Certificate);
                    }
                    if (oooO0O0.OooO0Oo.equals(byteStringOooO0o)) {
                        return;
                    }
                } else {
                    if (!oooO0O0.OooO0OO.equals("sha1/")) {
                        throw new AssertionError("unsupported hashAlgorithm: " + oooO0O0.OooO0OO);
                    }
                    if (byteStringOooO0o0 == null) {
                        byteStringOooO0o0 = OooO0o0(x509Certificate);
                    }
                    if (oooO0O0.OooO0Oo.equals(byteStringOooO0o0)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
            sb.append("\n    ");
            sb.append(OooO0Oo(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = listOooO0OO.size();
        for (int i4 = 0; i4 < size4; i4++) {
            OooO0O0 oooO0O02 = listOooO0OO.get(i4);
            sb.append("\n    ");
            sb.append(oooO0O02);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public void OooO0O0(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        OooO00o(str, Arrays.asList(certificateArr));
    }

    public List<OooO0O0> OooO0OO(String str) {
        List<OooO0O0> listEmptyList = Collections.emptyList();
        for (OooO0O0 oooO0O0 : this.OooO00o) {
            if (oooO0O0.OooO00o(str)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                listEmptyList.add(oooO0O0);
            }
        }
        return listEmptyList;
    }

    public vw OooO0oO(@Nullable yz yzVar) {
        return zx.OooOOo(this.OooO0O0, yzVar) ? this : new vw(this.OooO00o, yzVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof vw) {
            vw vwVar = (vw) obj;
            if (zx.OooOOo(this.OooO0O0, vwVar.OooO0O0) && this.OooO00o.equals(vwVar.OooO00o)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        yz yzVar = this.OooO0O0;
        return ((yzVar != null ? yzVar.hashCode() : 0) * 31) + this.OooO00o.hashCode();
    }
}
