package z2;

import com.github.kevinsawicki.http.HttpRequest;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class mx {
    private static final String OooO0o = "\"([^\"]*)\"";
    private static final String OooO0o0 = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    private static final Pattern OooO0oO = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern OooO0oo = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
    private final String OooO00o;
    private final String OooO0O0;
    private final String OooO0OO;

    @Nullable
    private final String OooO0Oo;

    private mx(String str, String str2, String str3, @Nullable String str4) {
        this.OooO00o = str;
        this.OooO0O0 = str2;
        this.OooO0OO = str3;
        this.OooO0Oo = str4;
    }

    public static mx OooO0OO(String str) {
        Matcher matcher = OooO0oO.matcher(str);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
        }
        String strGroup = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = strGroup.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        String str2 = null;
        Matcher matcher2 = OooO0oo.matcher(str);
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                throw new IllegalArgumentException("Parameter is not formatted correctly: \"" + str.substring(iEnd) + "\" for: \"" + str + '\"');
            }
            String strGroup2 = matcher2.group(1);
            if (strGroup2 != null && strGroup2.equalsIgnoreCase(HttpRequest.PARAM_CHARSET)) {
                String strGroup3 = matcher2.group(2);
                if (strGroup3 == null) {
                    strGroup3 = matcher2.group(3);
                } else if (strGroup3.startsWith("'") && strGroup3.endsWith("'") && strGroup3.length() > 2) {
                    strGroup3 = strGroup3.substring(1, strGroup3.length() - 1);
                }
                if (str2 != null && !strGroup3.equalsIgnoreCase(str2)) {
                    throw new IllegalArgumentException("Multiple charsets defined: \"" + str2 + "\" and: \"" + strGroup3 + "\" for: \"" + str + '\"');
                }
                str2 = strGroup3;
            }
        }
        return new mx(str, lowerCase, lowerCase2, str2);
    }

    @Nullable
    public static mx OooO0Oo(String str) {
        try {
            return OooO0OO(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Nullable
    public Charset OooO00o() {
        return OooO0O0(null);
    }

    @Nullable
    public Charset OooO0O0(@Nullable Charset charset) {
        try {
            String str = this.OooO0Oo;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public String OooO0o() {
        return this.OooO0O0;
    }

    public String OooO0o0() {
        return this.OooO0OO;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof mx) && ((mx) obj).OooO00o.equals(this.OooO00o);
    }

    public int hashCode() {
        return this.OooO00o.hashCode();
    }

    public String toString() {
        return this.OooO00o;
    }
}
