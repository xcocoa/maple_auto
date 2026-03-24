package z2;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class oOo0o0oO implements o0O0O0Oo {
    private static final String OooOO0 = "@#&=*+-_.,:!?()/~'%;$";
    private int OooO;
    private final ooOOO0Oo OooO0OO;

    @Nullable
    private final URL OooO0Oo;

    @Nullable
    private String OooO0o;

    @Nullable
    private final String OooO0o0;

    @Nullable
    private URL OooO0oO;

    @Nullable
    private volatile byte[] OooO0oo;

    public oOo0o0oO(String str) {
        this(str, ooOOO0Oo.OooO0O0);
    }

    public oOo0o0oO(String str, ooOOO0Oo ooooo0oo) {
        this.OooO0Oo = null;
        this.OooO0o0 = r2.OooO0O0(str);
        this.OooO0OO = (ooOOO0Oo) r2.OooO0Oo(ooooo0oo);
    }

    public oOo0o0oO(URL url) {
        this(url, ooOOO0Oo.OooO0O0);
    }

    public oOo0o0oO(URL url, ooOOO0Oo ooooo0oo) {
        this.OooO0Oo = (URL) r2.OooO0Oo(url);
        this.OooO0o0 = null;
        this.OooO0OO = (ooOOO0Oo) r2.OooO0Oo(ooooo0oo);
    }

    private byte[] OooO0Oo() {
        if (this.OooO0oo == null) {
            this.OooO0oo = OooO0OO().getBytes(o0O0O0Oo.OooO0O0);
        }
        return this.OooO0oo;
    }

    private String OooO0o() {
        if (TextUtils.isEmpty(this.OooO0o)) {
            String string = this.OooO0o0;
            if (TextUtils.isEmpty(string)) {
                string = ((URL) r2.OooO0Oo(this.OooO0Oo)).toString();
            }
            this.OooO0o = Uri.encode(string, OooOO0);
        }
        return this.OooO0o;
    }

    private URL OooO0oO() throws MalformedURLException {
        if (this.OooO0oO == null) {
            this.OooO0oO = new URL(OooO0o());
        }
        return this.OooO0oO;
    }

    public URL OooO() throws MalformedURLException {
        return OooO0oO();
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        messageDigest.update(OooO0Oo());
    }

    public String OooO0OO() {
        String str = this.OooO0o0;
        return str != null ? str : ((URL) r2.OooO0Oo(this.OooO0Oo)).toString();
    }

    public Map<String, String> OooO0o0() {
        return this.OooO0OO.OooO00o();
    }

    public String OooO0oo() {
        return OooO0o();
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (!(obj instanceof oOo0o0oO)) {
            return false;
        }
        oOo0o0oO ooo0o0oo = (oOo0o0oO) obj;
        return OooO0OO().equals(ooo0o0oo.OooO0OO()) && this.OooO0OO.equals(ooo0o0oo.OooO0OO);
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        if (this.OooO == 0) {
            int iHashCode = OooO0OO().hashCode();
            this.OooO = iHashCode;
            this.OooO = (iHashCode * 31) + this.OooO0OO.hashCode();
        }
        return this.OooO;
    }

    public String toString() {
        return OooO0OO();
    }
}
