package z2;

import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h20 implements n20 {
    private n20 OooO(String str, String str2, String str3, Iterator<? extends t20> it) {
        OooO0oo(str);
        boolean z = false;
        while (it.hasNext()) {
            if (z) {
                OooO0oo(str2);
            }
            OooO0O0(it.next());
            z = true;
        }
        OooO0oo(str3);
        return this;
    }

    private <T> n20 OooOO0(String str, String str2, String str3, Iterator<T> it) {
        return OooO(str, str2, str3, new s30(it));
    }

    private String OooOO0O(Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Exception unused) {
            return obj.getClass().getName() + "@" + Integer.toHexString(obj.hashCode());
        }
    }

    private void OooOO0o(char c) {
        String str;
        if (c == '\t') {
            str = "\\t";
        } else if (c == '\n') {
            str = "\\n";
        } else if (c == '\r') {
            str = "\\r";
        } else {
            if (c != '\"') {
                OooO0oO(c);
                return;
            }
            str = "\\\"";
        }
        OooO0oo(str);
    }

    private void OooOOO0(String str) {
        OooO0oO('\"');
        for (int i = 0; i < str.length(); i++) {
            OooOO0o(str.charAt(i));
        }
        OooO0oO('\"');
    }

    @Override // z2.n20
    public n20 OooO00o(String str, String str2, String str3, Iterable<? extends t20> iterable) {
        return OooO(str, str2, str3, iterable.iterator());
    }

    @Override // z2.n20
    public n20 OooO0O0(t20 t20Var) {
        t20Var.describeTo(this);
        return this;
    }

    @Override // z2.n20
    public <T> n20 OooO0OO(String str, String str2, String str3, T... tArr) {
        return OooO0o(str, str2, str3, Arrays.asList(tArr));
    }

    @Override // z2.n20
    public n20 OooO0Oo(String str) {
        OooO0oo(str);
        return this;
    }

    @Override // z2.n20
    public <T> n20 OooO0o(String str, String str2, String str3, Iterable<T> iterable) {
        return OooOO0(str, str2, str3, iterable.iterator());
    }

    @Override // z2.n20
    public n20 OooO0o0(Object obj) {
        String str;
        if (obj != null) {
            if (obj instanceof String) {
                OooOOO0((String) obj);
            } else if (obj instanceof Character) {
                OooO0oO('\"');
                OooOO0o(((Character) obj).charValue());
                OooO0oO('\"');
            } else if (obj instanceof Short) {
                OooO0oO('<');
                OooO0oo(OooOO0O(obj));
                str = "s>";
            } else if (obj instanceof Long) {
                OooO0oO('<');
                OooO0oo(OooOO0O(obj));
                str = "L>";
            } else if (obj instanceof Float) {
                OooO0oO('<');
                OooO0oo(OooOO0O(obj));
                str = "F>";
            } else if (obj.getClass().isArray()) {
                OooOO0("[", ", ", "]", new p30(obj));
            } else {
                OooO0oO('<');
                OooO0oo(OooOO0O(obj));
                OooO0oO('>');
            }
            return this;
        }
        str = "null";
        OooO0oo(str);
        return this;
    }

    public abstract void OooO0oO(char c);

    public void OooO0oo(String str) {
        for (int i = 0; i < str.length(); i++) {
            OooO0oO(str.charAt(i));
        }
    }
}
