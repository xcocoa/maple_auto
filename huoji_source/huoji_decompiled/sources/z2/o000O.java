package z2;

import java.io.Closeable;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
public class o000O {
    public static final int OooOOoo = 1;
    public static final int OooOo = -101;
    public static final int OooOo0 = 3;
    public static final int OooOo00 = 2;
    public static final int OooOo0O = 4;
    public static final int OooOo0o = 5;
    public static final int OooOoO = -103;
    public static final int OooOoO0 = -102;
    private long OooO;
    private int OooO00o;
    private String OooO0O0;
    private String OooO0OO;
    private byte[] OooO0Oo;
    private Date OooO0o;
    private File OooO0o0;
    private boolean OooO0oO;
    private DefaultHttpClient OooO0oo;
    private int OooOO0;
    private long OooOO0O;
    private boolean OooOO0o;
    private boolean OooOOO;
    private boolean OooOOO0;
    private String OooOOOO;
    private HttpContext OooOOOo;
    private Closeable OooOOo;
    private Header[] OooOOo0;

    public o000O() {
        this.OooO00o = 200;
        this.OooO0O0 = "OK";
        this.OooO0o = new Date();
        this.OooOO0 = 1;
        this.OooOO0O = System.currentTimeMillis();
    }

    public o000O(int i, String str) {
        this.OooO00o = 200;
        this.OooO0O0 = "OK";
        this.OooO0o = new Date();
        this.OooOO0 = 1;
        this.OooOO0O = System.currentTimeMillis();
        this.OooO00o = i;
        this.OooO0O0 = str;
    }

    public boolean OooO(long j) {
        return System.currentTimeMillis() - this.OooO0o.getTime() > j && OooOoO() != 1;
    }

    public o000O OooO00o(DefaultHttpClient defaultHttpClient) {
        this.OooO0oo = defaultHttpClient;
        return this;
    }

    public void OooO0O0() {
        o00O000.OooO0o(this.OooOOo);
        this.OooOOo = null;
    }

    public void OooO0OO(Closeable closeable) {
        this.OooOOo = closeable;
    }

    public o000O OooO0Oo(int i) {
        this.OooO00o = i;
        return this;
    }

    public o000O OooO0o(byte[] bArr) {
        this.OooO0Oo = bArr;
        return this;
    }

    public o000O OooO0o0(HttpContext httpContext) {
        this.OooOOOo = httpContext;
        return this;
    }

    public o000O OooO0oO() {
        this.OooO = System.currentTimeMillis() - this.OooOO0O;
        this.OooOO0o = true;
        this.OooOOO = false;
        return this;
    }

    public o000O OooO0oo(String str) {
        this.OooOOOO = str;
        return this;
    }

    public o000O OooOO0(File file) {
        this.OooO0o0 = file;
        return this;
    }

    public DefaultHttpClient OooOO0O() {
        return this.OooO0oo;
    }

    public int OooOO0o() {
        return this.OooO00o;
    }

    public byte[] OooOOO() {
        return this.OooO0Oo;
    }

    public List<Cookie> OooOOO0() {
        CookieStore cookieStore;
        HttpContext httpContext = this.OooOOOo;
        if (httpContext != null && (cookieStore = (CookieStore) httpContext.getAttribute("http.cookie-store")) != null) {
            return cookieStore.getCookies();
        }
        return Collections.emptyList();
    }

    public boolean OooOOOO() {
        return this.OooOO0o;
    }

    public long OooOOOo() {
        return this.OooO;
    }

    public File OooOOo() {
        return this.OooO0o0;
    }

    public String OooOOo0() {
        return this.OooOOOO;
    }

    public String OooOOoo(String str) {
        if (this.OooOOo0 == null) {
            return null;
        }
        int i = 0;
        while (true) {
            Header[] headerArr = this.OooOOo0;
            if (i >= headerArr.length) {
                return null;
            }
            if (str.equalsIgnoreCase(headerArr[i].getName())) {
                return this.OooOOo0[i].getValue();
            }
            i++;
        }
    }

    public String OooOo() {
        return this.OooO0OO;
    }

    public boolean OooOo0() {
        return this.OooOOO0;
    }

    public List<Header> OooOo00() {
        Header[] headerArr = this.OooOOo0;
        return headerArr == null ? Collections.emptyList() : Arrays.asList(headerArr);
    }

    public String OooOo0O() {
        return this.OooO0O0;
    }

    public boolean OooOo0o() {
        return this.OooOOO;
    }

    public int OooOoO() {
        return this.OooOO0;
    }

    public boolean OooOoO0() {
        return this.OooO0oO;
    }

    public Date OooOoOO() {
        return this.OooO0o;
    }

    public o000O OooOoo() {
        this.OooOOO0 = true;
        return this;
    }

    public o000O OooOoo0(Header[] headerArr) {
        this.OooOOo0 = headerArr;
        return this;
    }

    public o000O OooOooO(String str) {
        this.OooO0O0 = str;
        return this;
    }

    public o000O OooOooo(boolean z) {
        this.OooOOO = z;
        return this;
    }

    public o000O Oooo0(int i) {
        this.OooOO0 = i;
        return this;
    }

    public o000O Oooo000(String str) {
        this.OooO0OO = str;
        return this;
    }

    public o000O Oooo00O(boolean z) {
        this.OooO0oO = z;
        return this;
    }

    public o000O Oooo00o() {
        this.OooO = System.currentTimeMillis() - this.OooOO0O;
        this.OooOO0o = false;
        OooO0O0();
        return this;
    }

    public o000O Oooo0O0(Date date) {
        this.OooO0o = date;
        return this;
    }
}
