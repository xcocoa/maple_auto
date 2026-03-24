package z2;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public final class a00 implements HostnameVerifier {
    public static final a00 OooO00o = new a00();
    private static final int OooO0O0 = 2;
    private static final int OooO0OO = 7;

    private a00() {
    }

    public static List<String> OooO00o(X509Certificate x509Certificate) {
        List<String> listOooO0O0 = OooO0O0(x509Certificate, 7);
        List<String> listOooO0O02 = OooO0O0(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(listOooO0O0.size() + listOooO0O02.size());
        arrayList.addAll(listOooO0O0);
        arrayList.addAll(listOooO0O02);
        return arrayList;
    }

    private static List<String> OooO0O0(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    private boolean OooO0o(String str, X509Certificate x509Certificate) {
        List<String> listOooO0O0 = OooO0O0(x509Certificate, 7);
        int size = listOooO0O0.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(listOooO0O0.get(i))) {
                return true;
            }
        }
        return false;
    }

    private boolean OooO0o0(String str, X509Certificate x509Certificate) {
        String lowerCase = str.toLowerCase(Locale.US);
        Iterator<String> it = OooO0O0(x509Certificate, 2).iterator();
        while (it.hasNext()) {
            if (OooO0Oo(lowerCase, it.next())) {
                return true;
            }
        }
        return false;
    }

    public boolean OooO0OO(String str, X509Certificate x509Certificate) {
        return zx.Oooo0OO(str) ? OooO0o(str, x509Certificate) : OooO0o0(str, x509Certificate);
    }

    public boolean OooO0Oo(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(".") && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(".") && !str2.endsWith("..")) {
            if (!str.endsWith(".")) {
                str = str + FilenameUtils.EXTENSION_SEPARATOR;
            }
            if (!str2.endsWith(".")) {
                str2 = str2 + FilenameUtils.EXTENSION_SEPARATOR;
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains(Marker.ANY_MARKER)) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String strSubstring = lowerCase.substring(1);
            if (!str.endsWith(strSubstring)) {
                return false;
            }
            int length = str.length() - strSubstring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return OooO0OO(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
