package z2;

import com.google.zxing.client.result.ParsedResultType;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class zm extends jn {
    private final String[] OooO;
    private final String OooO0O0;
    private final long OooO0OO;
    private final boolean OooO0Oo;
    private final boolean OooO0o;
    private final long OooO0o0;
    private final String OooO0oO;
    private final String OooO0oo;
    private final String OooOO0;
    private final double OooOO0O;
    private final double OooOO0o;
    private static final Pattern OooOOO0 = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");
    private static final long[] OooOOO = {604800000, 86400000, 3600000, 60000, 1000};
    private static final Pattern OooOOOO = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");

    public zm(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, String str7, double d, double d2) {
        super(ParsedResultType.CALENDAR);
        this.OooO0O0 = str;
        try {
            long jOooOOoo = OooOOoo(str2);
            this.OooO0OO = jOooOOoo;
            if (str3 == null) {
                long jOooOo0 = OooOo0(str4);
                this.OooO0o0 = jOooOo0 < 0 ? -1L : jOooOOoo + jOooOo0;
            } else {
                try {
                    this.OooO0o0 = OooOOoo(str3);
                } catch (ParseException e) {
                    throw new IllegalArgumentException(e.toString());
                }
            }
            this.OooO0Oo = str2.length() == 8;
            this.OooO0o = str3 != null && str3.length() == 8;
            this.OooO0oO = str5;
            this.OooO0oo = str6;
            this.OooO = strArr;
            this.OooOO0 = str7;
            this.OooOO0O = d;
            this.OooOO0o = d2;
        } catch (ParseException e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    private static String OooO0o0(boolean z, long j) {
        if (j < 0) {
            return null;
        }
        return (z ? DateFormat.getDateInstance(2) : DateFormat.getDateTimeInstance(2, 2)).format(Long.valueOf(j));
    }

    private static long OooOOoo(String str) throws ParseException {
        if (!OooOOOO.matcher(str).matches()) {
            throw new ParseException(str, 0);
        }
        if (str.length() == 8) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        }
        if (str.length() != 16 || str.charAt(15) != 'Z') {
            return OooOo00(str);
        }
        long jOooOo00 = OooOo00(str.substring(0, 15));
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        long j = jOooOo00 + ((long) gregorianCalendar.get(15));
        gregorianCalendar.setTime(new Date(j));
        return j + ((long) gregorianCalendar.get(16));
    }

    private static long OooOo0(CharSequence charSequence) {
        if (charSequence == null) {
            return -1L;
        }
        Matcher matcher = OooOOO0.matcher(charSequence);
        if (!matcher.matches()) {
            return -1L;
        }
        long j = 0;
        int i = 0;
        while (true) {
            long[] jArr = OooOOO;
            if (i >= jArr.length) {
                return j;
            }
            int i2 = i + 1;
            String strGroup = matcher.group(i2);
            if (strGroup != null) {
                j += jArr[i] * ((long) Integer.parseInt(strGroup));
            }
            i = i2;
        }
    }

    private static long OooOo00(String str) throws ParseException {
        return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH).parse(str).getTime();
    }

    public final long OooO() {
        return this.OooO0o0;
    }

    @Override // z2.jn
    public final String OooO00o() {
        StringBuilder sb = new StringBuilder(100);
        jn.OooO0OO(this.OooO0O0, sb);
        jn.OooO0OO(OooO0o0(this.OooO0Oo, this.OooO0OO), sb);
        jn.OooO0OO(OooO0o0(this.OooO0o, this.OooO0o0), sb);
        jn.OooO0OO(this.OooO0oO, sb);
        jn.OooO0OO(this.OooO0oo, sb);
        jn.OooO0Oo(this.OooO, sb);
        jn.OooO0OO(this.OooOO0, sb);
        return sb.toString();
    }

    public final String[] OooO0o() {
        return this.OooO;
    }

    public final String OooO0oO() {
        return this.OooOO0;
    }

    @Deprecated
    public final Date OooO0oo() {
        if (this.OooO0o0 < 0) {
            return null;
        }
        return new Date(this.OooO0o0);
    }

    public final double OooOO0() {
        return this.OooOO0O;
    }

    public final String OooOO0O() {
        return this.OooO0oO;
    }

    public final double OooOO0o() {
        return this.OooOO0o;
    }

    @Deprecated
    public final Date OooOOO() {
        return new Date(this.OooO0OO);
    }

    public final String OooOOO0() {
        return this.OooO0oo;
    }

    public final long OooOOOO() {
        return this.OooO0OO;
    }

    public final String OooOOOo() {
        return this.OooO0O0;
    }

    public final boolean OooOOo() {
        return this.OooO0Oo;
    }

    public final boolean OooOOo0() {
        return this.OooO0o;
    }
}
