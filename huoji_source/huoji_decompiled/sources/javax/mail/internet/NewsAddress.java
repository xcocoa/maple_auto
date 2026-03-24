package javax.mail.internet;

import java.util.ArrayList;
import java.util.Locale;
import java.util.StringTokenizer;
import javax.mail.Address;

/* JADX INFO: loaded from: classes2.dex */
public class NewsAddress extends Address {
    private static final long serialVersionUID = -4203797299824684143L;
    public String host;
    public String newsgroup;

    public NewsAddress() {
    }

    public NewsAddress(String str) {
        this(str, null);
    }

    public NewsAddress(String str, String str2) {
        this.newsgroup = str.replaceAll("\\s+", "");
        this.host = str2;
    }

    public static NewsAddress[] parse(String str) throws AddressException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(new NewsAddress(stringTokenizer.nextToken()));
        }
        return (NewsAddress[]) arrayList.toArray(new NewsAddress[arrayList.size()]);
    }

    public static String toString(Address[] addressArr) {
        if (addressArr == null || addressArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder(((NewsAddress) addressArr[0]).toString());
        int length = sb.length();
        for (int i = 1; i < addressArr.length; i++) {
            sb.append(",");
            int i2 = length + 1;
            String string = ((NewsAddress) addressArr[i]).toString();
            if (string.length() + i2 > 76) {
                sb.append("\r\n\t");
                i2 = 8;
            }
            sb.append(string);
            length = i2 + string.length();
        }
        return sb.toString();
    }

    @Override // javax.mail.Address
    public boolean equals(Object obj) {
        String str;
        if (!(obj instanceof NewsAddress)) {
            return false;
        }
        NewsAddress newsAddress = (NewsAddress) obj;
        String str2 = this.newsgroup;
        if ((str2 == null && newsAddress.newsgroup == null) || (str2 != null && str2.equals(newsAddress.newsgroup))) {
            String str3 = this.host;
            if (str3 == null && newsAddress.host == null) {
                return true;
            }
            if (str3 != null && (str = newsAddress.host) != null && str3.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public String getHost() {
        return this.host;
    }

    public String getNewsgroup() {
        return this.newsgroup;
    }

    @Override // javax.mail.Address
    public String getType() {
        return "news";
    }

    public int hashCode() {
        String str = this.newsgroup;
        int iHashCode = str != null ? 0 + str.hashCode() : 0;
        String str2 = this.host;
        return str2 != null ? iHashCode + str2.toLowerCase(Locale.ENGLISH).hashCode() : iHashCode;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setNewsgroup(String str) {
        this.newsgroup = str;
    }

    @Override // javax.mail.Address
    public String toString() {
        return this.newsgroup;
    }
}
