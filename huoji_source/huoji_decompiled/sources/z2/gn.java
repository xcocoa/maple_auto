package z2;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class gn extends mn {
    private static final Pattern OooO0o = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final fn OooOO0O(em emVar) {
        Matcher matcher = OooO0o.matcher(mn.OooO0OO(emVar));
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(4);
        try {
            double d = Double.parseDouble(matcher.group(1));
            if (d <= 90.0d && d >= -90.0d) {
                double d2 = Double.parseDouble(matcher.group(2));
                if (d2 <= 180.0d && d2 >= -180.0d) {
                    double d3 = 0.0d;
                    if (matcher.group(3) != null) {
                        double d4 = Double.parseDouble(matcher.group(3));
                        if (d4 < 0.0d) {
                            return null;
                        }
                        d3 = d4;
                    }
                    return new fn(d, d2, d3, strGroup);
                }
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }
}
