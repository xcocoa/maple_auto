package retrofit2;

import java.io.IOException;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import z2.hx;
import z2.j00;
import z2.jx;
import z2.k00;
import z2.kx;
import z2.mx;
import z2.nx;
import z2.qx;
import z2.rx;

/* JADX INFO: loaded from: classes2.dex */
public final class RequestBuilder {
    private static final String PATH_SEGMENT_ALWAYS_ENCODE_SET = " \"<>^`{}|\\?#";
    private final kx baseUrl;

    @Nullable
    private rx body;

    @Nullable
    private mx contentType;

    @Nullable
    private hx.OooO00o formBuilder;
    private final boolean hasBody;
    private final jx.OooO00o headersBuilder;
    private final String method;

    @Nullable
    private nx.OooO00o multipartBuilder;

    @Nullable
    private String relativeUrl;
    private final qx.OooO00o requestBuilder = new qx.OooO00o();

    @Nullable
    private kx.OooO00o urlBuilder;
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final Pattern PATH_TRAVERSAL = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    public static class ContentTypeOverridingRequestBody extends rx {
        private final mx contentType;
        private final rx delegate;

        public ContentTypeOverridingRequestBody(rx rxVar, mx mxVar) {
            this.delegate = rxVar;
            this.contentType = mxVar;
        }

        @Override // z2.rx
        public long contentLength() throws IOException {
            return this.delegate.contentLength();
        }

        @Override // z2.rx
        public mx contentType() {
            return this.contentType;
        }

        @Override // z2.rx
        public void writeTo(k00 k00Var) throws IOException {
            this.delegate.writeTo(k00Var);
        }
    }

    public RequestBuilder(String str, kx kxVar, @Nullable String str2, @Nullable jx jxVar, @Nullable mx mxVar, boolean z, boolean z3, boolean z4) {
        this.method = str;
        this.baseUrl = kxVar;
        this.relativeUrl = str2;
        this.contentType = mxVar;
        this.hasBody = z;
        this.headersBuilder = jxVar != null ? jxVar.OooO() : new jx.OooO00o();
        if (z3) {
            this.formBuilder = new hx.OooO00o();
        } else if (z4) {
            nx.OooO00o oooO00o = new nx.OooO00o();
            this.multipartBuilder = oooO00o;
            oooO00o.OooO0oO(nx.OooOO0);
        }
    }

    private static String canonicalizeForPath(String str, boolean z) {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt >= 127 || PATH_SEGMENT_ALWAYS_ENCODE_SET.indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                j00 j00Var = new j00();
                j00Var.OooOooo(str, 0, iCharCount);
                canonicalizeForPath(j00Var, str, iCharCount, length, z);
                return j00Var.Oooo0oo();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str;
    }

    private static void canonicalizeForPath(j00 j00Var, String str, int i, int i2, boolean z) {
        j00 j00Var2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || PATH_SEGMENT_ALWAYS_ENCODE_SET.indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (j00Var2 == null) {
                        j00Var2 = new j00();
                    }
                    j00Var2.OooO0oO(iCodePointAt);
                    while (!j00Var2.OooOOO()) {
                        int i3 = j00Var2.readByte() & 255;
                        j00Var.OooOOOO(37);
                        char[] cArr = HEX_DIGITS;
                        j00Var.OooOOOO(cArr[(i3 >> 4) & 15]);
                        j00Var.OooOOOO(cArr[i3 & 15]);
                    }
                } else {
                    j00Var.OooO0oO(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    public void addFormField(String str, String str2, boolean z) {
        if (z) {
            this.formBuilder.OooO0O0(str, str2);
        } else {
            this.formBuilder.OooO00o(str, str2);
        }
    }

    public void addHeader(String str, String str2) {
        if (!"Content-Type".equalsIgnoreCase(str)) {
            this.headersBuilder.OooO0O0(str, str2);
            return;
        }
        try {
            this.contentType = mx.OooO0OO(str2);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Malformed content type: " + str2, e);
        }
    }

    public void addHeaders(jx jxVar) {
        this.headersBuilder.OooO0Oo(jxVar);
    }

    public void addPart(jx jxVar, rx rxVar) {
        this.multipartBuilder.OooO0OO(jxVar, rxVar);
    }

    public void addPart(nx.OooO0O0 oooO0O0) {
        this.multipartBuilder.OooO0Oo(oooO0O0);
    }

    public void addPathParam(String str, String str2, boolean z) {
        if (this.relativeUrl == null) {
            throw new AssertionError();
        }
        String strCanonicalizeForPath = canonicalizeForPath(str2, z);
        String strReplace = this.relativeUrl.replace("{" + str + "}", strCanonicalizeForPath);
        if (!PATH_TRAVERSAL.matcher(strReplace).matches()) {
            this.relativeUrl = strReplace;
            return;
        }
        throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
    }

    public void addQueryParam(String str, @Nullable String str2, boolean z) {
        String str3 = this.relativeUrl;
        if (str3 != null) {
            kx.OooO00o oooO00oOooOo00 = this.baseUrl.OooOo00(str3);
            this.urlBuilder = oooO00oOooOo00;
            if (oooO00oOooOo00 == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
            }
            this.relativeUrl = null;
        }
        if (z) {
            this.urlBuilder.OooO0OO(str, str2);
        } else {
            this.urlBuilder.OooO0oO(str, str2);
        }
    }

    public <T> void addTag(Class<T> cls, @Nullable T t) {
        this.requestBuilder.OooOOOO(cls, t);
    }

    public qx.OooO00o get() {
        kx kxVarOooo0oo;
        kx.OooO00o oooO00o = this.urlBuilder;
        if (oooO00o != null) {
            kxVarOooo0oo = oooO00o.OooO0oo();
        } else {
            kxVarOooo0oo = this.baseUrl.Oooo0oo(this.relativeUrl);
            if (kxVarOooo0oo == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
            }
        }
        rx contentTypeOverridingRequestBody = this.body;
        if (contentTypeOverridingRequestBody == null) {
            hx.OooO00o oooO00o2 = this.formBuilder;
            if (oooO00o2 != null) {
                contentTypeOverridingRequestBody = oooO00o2.OooO0OO();
            } else {
                nx.OooO00o oooO00o3 = this.multipartBuilder;
                if (oooO00o3 != null) {
                    contentTypeOverridingRequestBody = oooO00o3.OooO0o();
                } else if (this.hasBody) {
                    contentTypeOverridingRequestBody = rx.create((mx) null, new byte[0]);
                }
            }
        }
        mx mxVar = this.contentType;
        if (mxVar != null) {
            if (contentTypeOverridingRequestBody != null) {
                contentTypeOverridingRequestBody = new ContentTypeOverridingRequestBody(contentTypeOverridingRequestBody, mxVar);
            } else {
                this.headersBuilder.OooO0O0("Content-Type", mxVar.toString());
            }
        }
        return this.requestBuilder.OooOOoo(kxVarOooo0oo).OooO(this.headersBuilder.OooO0oo()).OooOO0(this.method, contentTypeOverridingRequestBody);
    }

    public void setBody(rx rxVar) {
        this.body = rxVar;
    }

    public void setRelativeUrl(Object obj) {
        this.relativeUrl = obj.toString();
    }
}
