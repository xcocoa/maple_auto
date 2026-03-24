package javax.mail.internet;

import com.sun.mail.imap.IMAPFolder;
import com.sun.mail.util.PropUtil;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Locale;
import java.util.StringTokenizer;
import javax.mail.Address;
import javax.mail.Session;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class InternetAddress extends Address implements Cloneable {
    private static final long serialVersionUID = -7507595530758302903L;
    private static final String specialsNoDot = "()<>,;:\\\"[]@";
    private static final String specialsNoDotNoAt = "()<>,;:\\\"[]";
    public String address;
    public String encodedPersonal;
    public String personal;
    private static final boolean ignoreBogusGroupName = PropUtil.getBooleanSystemProperty("mail.mime.address.ignorebogusgroupname", true);
    private static final boolean useCanonicalHostName = PropUtil.getBooleanSystemProperty("mail.mime.address.usecanonicalhostname", true);
    private static final boolean allowUtf8 = PropUtil.getBooleanSystemProperty("mail.mime.allowutf8", false);
    private static final String rfc822phrase = HeaderTokenizer.RFC822.replace(' ', (char) 0).replace('\t', (char) 0);

    public InternetAddress() {
    }

    public InternetAddress(String str) throws AddressException {
        InternetAddress[] internetAddressArr = parse(str, true);
        if (internetAddressArr.length != 1) {
            throw new AddressException("Illegal address", str);
        }
        this.address = internetAddressArr[0].address;
        this.personal = internetAddressArr[0].personal;
        this.encodedPersonal = internetAddressArr[0].encodedPersonal;
    }

    public InternetAddress(String str, String str2) throws UnsupportedEncodingException {
        this(str, str2, null);
    }

    public InternetAddress(String str, String str2, String str3) throws UnsupportedEncodingException {
        this.address = str;
        setPersonal(str2, str3);
    }

    public InternetAddress(String str, boolean z) throws AddressException {
        this(str);
        if (z) {
            if (isGroup()) {
                getGroup(true);
            } else {
                checkAddress(this.address, true, true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static InternetAddress _getLocalAddress(Session session) throws AddressException, SecurityException, UnknownHostException {
        String property;
        String property2;
        String property3;
        String property4;
        if (session != null) {
            property = session.getProperty("mail.from");
            if (property == null) {
                String property5 = session.getProperty("mail.user");
                if (property5 == null || property5.length() == 0) {
                    property5 = session.getProperty("user.name");
                }
                property3 = (property5 == null || property5.length() == 0) ? System.getProperty("user.name") : property5;
                property2 = session.getProperty("mail.host");
                if (property2 == null || property2.length() == 0) {
                    property4 = property3;
                }
            } else {
                property2 = null;
                property3 = null;
            }
            if (property == null && property3 != null && property3.length() != 0 && property2 != null && property2.length() != 0) {
                property = MimeUtility.quote(property3.trim(), "()<>,;:\\\"[]@\t ") + "@" + property2;
            }
            if (property != null) {
                return null;
            }
            return new InternetAddress(property);
        }
        property4 = System.getProperty("user.name");
        property = null;
        property3 = property4;
        property2 = getLocalHostName();
        if (property == null) {
            property = MimeUtility.quote(property3.trim(), "()<>,;:\\\"[]@\t ") + "@" + property2;
        }
        if (property != null) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0127, code lost:
    
        if (r16.charAt(r8) == '.') goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0129, code lost:
    
        r2 = r8;
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x012b, code lost:
    
        if (r2 >= r1) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x012d, code lost:
    
        r6 = r16.charAt(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0133, code lost:
    
        if (r6 != '[') goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0135, code lost:
    
        if (r2 != r8) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0137, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0140, code lost:
    
        throw new javax.mail.internet.AddressException("Domain literal not at start of domain", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0143, code lost:
    
        if (r6 != ']') goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0147, code lost:
    
        if (r2 != (r1 - 1)) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0149, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0152, code lost:
    
        throw new javax.mail.internet.AddressException("Domain literal end not at end of domain", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0153, code lost:
    
        if (r6 <= ' ') goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0155, code lost:
    
        if (r6 == 127) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0157, code lost:
    
        if (r5 != false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x015d, code lost:
    
        if (java.lang.Character.isLetterOrDigit(r6) != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0161, code lost:
    
        if (r6 == '-') goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0163, code lost:
    
        if (r6 != '.') goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x016d, code lost:
    
        throw new javax.mail.internet.AddressException("Domain contains illegal character", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x016e, code lost:
    
        if (r6 != '.') goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0170, code lost:
    
        if (r7 == '.') goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x017a, code lost:
    
        throw new javax.mail.internet.AddressException("Domain contains dot-dot", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x017b, code lost:
    
        r2 = r2 + 1;
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0186, code lost:
    
        throw new javax.mail.internet.AddressException("Domain contains control or whitespace", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0187, code lost:
    
        if (r7 == '.') goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0189, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0191, code lost:
    
        throw new javax.mail.internet.AddressException("Domain ends with dot", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0199, code lost:
    
        throw new javax.mail.internet.AddressException("Domain starts with dot", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01a1, code lost:
    
        throw new javax.mail.internet.AddressException("Missing domain", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01a9, code lost:
    
        throw new javax.mail.internet.AddressException("Unterminated quote", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0109, code lost:
    
        throw new javax.mail.internet.AddressException("Local address contains control or whitespace", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0111, code lost:
    
        if (r9 != false) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0113, code lost:
    
        if (r6 == '@') goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0115, code lost:
    
        if (r18 != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0117, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x011f, code lost:
    
        throw new javax.mail.internet.AddressException("Missing final '@domain'", r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0120, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0121, code lost:
    
        if (r8 >= r1) goto L142;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void checkAddress(String str, boolean z, boolean z3) throws AddressException {
        int i;
        int i2;
        int i3;
        if (str == null) {
            throw new AddressException("Address is null");
        }
        int length = str.length();
        if (length == 0) {
            throw new AddressException("Empty address", str);
        }
        if (z && str.charAt(0) == '@') {
            i = 0;
            while (true) {
                int iIndexOfAny = indexOfAny(str, ",:", i);
                if (iIndexOfAny < 0) {
                    break;
                }
                if (str.charAt(i) != '@') {
                    throw new AddressException("Illegal route-addr", str);
                }
                if (str.charAt(iIndexOfAny) == ':') {
                    i = iIndexOfAny + 1;
                    break;
                }
                i = iIndexOfAny + 1;
            }
        } else {
            i = 0;
        }
        char c = IMAPFolder.UNKNOWN_SEPARATOR;
        int i4 = i;
        char c2 = IMAPFolder.UNKNOWN_SEPARATOR;
        boolean z4 = false;
        while (true) {
            if (i4 >= length) {
                break;
            }
            char cCharAt = str.charAt(i4);
            if (cCharAt != '\\' && c != '\\') {
                if (cCharAt != '\"') {
                    if (cCharAt == '\r') {
                        int i5 = i4 + 1;
                        if (i5 < length && str.charAt(i5) != '\n') {
                            throw new AddressException("Quoted local address contains CR without LF", str);
                        }
                    } else if (cCharAt == '\n' && (i2 = i4 + 1) < length && str.charAt(i2) != ' ' && str.charAt(i2) != '\t') {
                        throw new AddressException("Quoted local address contains newline without whitespace", str);
                    }
                    if (z4) {
                        continue;
                    } else {
                        if (cCharAt == '.') {
                            if (i4 == i) {
                                throw new AddressException("Local address starts with dot", str);
                            }
                            if (c == '.') {
                                throw new AddressException("Local address contains dot-dot", str);
                            }
                        }
                        if (cCharAt == '@') {
                            if (i4 == 0) {
                                throw new AddressException("Missing local name", str);
                            }
                            if (c == '.') {
                                throw new AddressException("Local address ends with dot", str);
                            }
                            c2 = c;
                            c = cCharAt;
                        } else if (cCharAt <= ' ' || cCharAt == 127) {
                            break;
                        } else if (specialsNoDot.indexOf(cCharAt) >= 0) {
                            throw new AddressException("Local address contains illegal character", str);
                        }
                    }
                } else if (z4) {
                    if (z3 && (i3 = i4 + 1) < length && str.charAt(i3) != '@') {
                        throw new AddressException("Quote not at end of local address", str);
                    }
                    z4 = false;
                } else {
                    if (z3 && i4 != 0) {
                        throw new AddressException("Quote not at start of local address", str);
                    }
                    z4 = true;
                }
            }
            i4++;
            c2 = c;
            c = cCharAt;
        }
    }

    public static InternetAddress getLocalAddress(Session session) {
        try {
            return _getLocalAddress(session);
        } catch (SecurityException | UnknownHostException | AddressException unused) {
            return null;
        }
    }

    private static String getLocalHostName() throws UnknownHostException {
        InetAddress localHost = InetAddress.getLocalHost();
        if (localHost == null) {
            return null;
        }
        String canonicalHostName = useCanonicalHostName ? localHost.getCanonicalHostName() : null;
        if (canonicalHostName == null) {
            canonicalHostName = localHost.getHostName();
        }
        if (canonicalHostName == null) {
            canonicalHostName = localHost.getHostAddress();
        }
        if (canonicalHostName == null || canonicalHostName.length() <= 0 || !isInetAddressLiteral(canonicalHostName)) {
            return canonicalHostName;
        }
        return "[" + canonicalHostName + ']';
    }

    private static int indexOfAny(String str, String str2) {
        return indexOfAny(str, str2, 0);
    }

    private static int indexOfAny(String str, String str2, int i) {
        try {
            int length = str.length();
            while (i < length) {
                if (str2.indexOf(str.charAt(i)) >= 0) {
                    return i;
                }
                i++;
            }
        } catch (StringIndexOutOfBoundsException unused) {
        }
        return -1;
    }

    private static boolean isInetAddressLiteral(String str) {
        boolean z = false;
        boolean z3 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < '0' || cCharAt > '9') && cCharAt != '.') {
                if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                    z = true;
                } else {
                    if (cCharAt != ':') {
                        return false;
                    }
                    z3 = true;
                }
            }
        }
        return !z || z3;
    }

    private boolean isSimple() {
        String str = this.address;
        return str == null || indexOfAny(str, specialsNoDotNoAt) < 0;
    }

    private static int lengthOfFirstSegment(String str) {
        int iIndexOf = str.indexOf(IOUtils.LINE_SEPARATOR_WINDOWS);
        return iIndexOf != -1 ? iIndexOf : str.length();
    }

    private static int lengthOfLastSegment(String str, int i) {
        return str.lastIndexOf(IOUtils.LINE_SEPARATOR_WINDOWS) != -1 ? (r2 - r0) - 2 : str.length() + i;
    }

    public static InternetAddress[] parse(String str) throws AddressException {
        return parse(str, true);
    }

    public static InternetAddress[] parse(String str, boolean z) throws AddressException {
        return parse(str, z, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0256 A[PHI: r2 r8 r9 r13
      0x0256: PHI (r2v37 int) = (r2v33 int), (r2v41 int) binds: [B:198:0x0248, B:184:0x0226] A[DONT_GENERATE, DONT_INLINE]
      0x0256: PHI (r8v16 int) = (r8v14 int), (r8v1 int) binds: [B:198:0x0248, B:184:0x0226] A[DONT_GENERATE, DONT_INLINE]
      0x0256: PHI (r9v11 int) = (r9v1 int), (r9v12 int) binds: [B:198:0x0248, B:184:0x0226] A[DONT_GENERATE, DONT_INLINE]
      0x0256: PHI (r13v7 int) = (r13v1 int), (r13v8 int) binds: [B:198:0x0248, B:184:0x0226] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static InternetAddress[] parse(String str, boolean z, boolean z3) throws AddressException {
        String strUnquote;
        int i;
        String strUnquote2;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z4;
        int i6;
        int i7;
        int i8;
        int i9;
        int length = str.length();
        boolean z5 = z3 && !z;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int i11 = -1;
        int i12 = -1;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        int i13 = -1;
        int i14 = -1;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\t' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ') {
                i = 1;
            } else {
                if (cCharAt == '\"') {
                    if (i11 == -1) {
                        i11 = i10;
                    }
                    i10++;
                    int i15 = i10;
                    while (i15 < length) {
                        char cCharAt2 = str.charAt(i15);
                        if (cCharAt2 != '\"') {
                            if (cCharAt2 == '\\') {
                                i15++;
                            }
                            i15++;
                        } else if (i15 >= length) {
                            i10 = i15;
                        } else if (!z5) {
                            throw new AddressException("Missing '\"'", str, i15);
                        }
                    }
                    if (i15 >= length) {
                    }
                } else if (cCharAt == ',') {
                    if (i11 != -1) {
                        i = 1;
                        i11 = -1;
                        i12 = -1;
                        z7 = false;
                        z8 = false;
                    } else if (z6) {
                        i = 1;
                        z7 = false;
                    } else {
                        if (i12 == -1) {
                            i12 = i10;
                        }
                        String strTrim = str.substring(i11, i12).trim();
                        if (!z8 || i13 < 0) {
                            strUnquote2 = null;
                            if (z3 && !z && strUnquote2 != null && strUnquote2.indexOf(64) >= 0 && strTrim.indexOf(64) < 0 && strTrim.indexOf(33) < 0) {
                                String str2 = strUnquote2;
                                strUnquote2 = strTrim;
                                strTrim = str2;
                            }
                            if (!z8 || z || z3) {
                                if (!z5) {
                                    checkAddress(strTrim, z7, false);
                                }
                                InternetAddress internetAddress = new InternetAddress();
                                internetAddress.setAddress(strTrim);
                                if (strUnquote2 != null) {
                                    internetAddress.encodedPersonal = strUnquote2;
                                }
                                arrayList.add(internetAddress);
                            } else {
                                StringTokenizer stringTokenizer = new StringTokenizer(strTrim);
                                while (stringTokenizer.hasMoreTokens()) {
                                    String strNextToken = stringTokenizer.nextToken();
                                    checkAddress(strNextToken, false, false);
                                    InternetAddress internetAddress2 = new InternetAddress();
                                    internetAddress2.setAddress(strNextToken);
                                    arrayList.add(internetAddress2);
                                }
                            }
                            i = 1;
                            i11 = -1;
                            i12 = -1;
                            z7 = false;
                            z8 = false;
                            i13 = -1;
                            i14 = -1;
                        } else {
                            strUnquote2 = unquote(str.substring(i13, i14).trim());
                            if (strUnquote2.trim().length() == 0) {
                            }
                            if (z3) {
                                String str22 = strUnquote2;
                                strUnquote2 = strTrim;
                                strTrim = str22;
                            }
                            if (z8) {
                                if (!z5) {
                                }
                                InternetAddress internetAddress3 = new InternetAddress();
                                internetAddress3.setAddress(strTrim);
                                if (strUnquote2 != null) {
                                }
                                arrayList.add(internetAddress3);
                                i = 1;
                                i11 = -1;
                                i12 = -1;
                                z7 = false;
                                z8 = false;
                                i13 = -1;
                                i14 = -1;
                            }
                        }
                    }
                } else if (cCharAt == '>') {
                    if (!z5) {
                        throw new AddressException("Missing '<'", str, i10);
                    }
                    if (i11 == -1) {
                    }
                    i = 1;
                } else if (cCharAt != '[') {
                    char c = '(';
                    if (cCharAt == '(') {
                        if (i11 >= 0 && i12 == -1) {
                            i12 = i10;
                        }
                        i10++;
                        int i16 = i10;
                        int i17 = 1;
                        while (i16 < length && i17 > 0) {
                            char cCharAt3 = str.charAt(i16);
                            if (cCharAt3 == c) {
                                i17++;
                            } else if (cCharAt3 == ')') {
                                i17--;
                            } else if (cCharAt3 == '\\') {
                                i16++;
                            }
                            i16++;
                            c = '(';
                        }
                        if (i17 <= 0) {
                            i2 = i16 - 1;
                            if (i13 == -1) {
                                i13 = i10;
                            }
                            if (i14 == -1) {
                                i10 = i2;
                                i14 = i10;
                            } else {
                                i10 = i2;
                            }
                        } else if (!z5) {
                            throw new AddressException("Missing ')'", str, i16);
                        }
                    } else if (cCharAt != ')') {
                        switch (cCharAt) {
                            case ':':
                                if (z6 && !z5) {
                                    throw new AddressException("Nested group", str, i10);
                                }
                                if (i11 == -1) {
                                    i11 = i10;
                                }
                                if (!z3 || z) {
                                    i = 1;
                                    z6 = true;
                                    z8 = true;
                                } else {
                                    int i18 = i10 + 1;
                                    if (i18 < length) {
                                        char cCharAt4 = str.charAt(i18);
                                        if (")>[]:@\\,.".indexOf(cCharAt4) >= 0) {
                                            if (cCharAt4 == '@') {
                                                for (int i19 = i10 + 2; i19 < length && (cCharAt4 = str.charAt(i19)) != ';' && ")>[]:@\\,.".indexOf(cCharAt4) < 0; i19++) {
                                                }
                                                if (cCharAt4 != ';') {
                                                }
                                                z8 = true;
                                            }
                                        }
                                    }
                                    String strSubstring = str.substring(i11, i10);
                                    if (ignoreBogusGroupName && (strSubstring.equalsIgnoreCase("mailto") || strSubstring.equalsIgnoreCase("From") || strSubstring.equalsIgnoreCase("To") || strSubstring.equalsIgnoreCase("Cc") || strSubstring.equalsIgnoreCase("Subject") || strSubstring.equalsIgnoreCase("Re"))) {
                                        i = 1;
                                        i11 = -1;
                                    }
                                    z8 = true;
                                }
                                break;
                                break;
                            case ';':
                                if (i11 != -1) {
                                    if (z6) {
                                        if (!z3 || z || (i3 = i10 + 1) >= length || str.charAt(i3) != '@') {
                                            InternetAddress internetAddress4 = new InternetAddress();
                                            internetAddress4.setAddress(str.substring(i11, i10 + 1).trim());
                                            arrayList.add(internetAddress4);
                                            i = 1;
                                            i11 = -1;
                                            i12 = -1;
                                            z6 = false;
                                            z7 = false;
                                            z8 = false;
                                            i13 = -1;
                                            i14 = -1;
                                        } else {
                                            i = 1;
                                            z6 = false;
                                        }
                                        break;
                                    } else {
                                        if (!z5) {
                                            throw new AddressException("Illegal semicolon, not in group", str, i10);
                                        }
                                        if (i11 != -1) {
                                        }
                                    }
                                }
                                break;
                            case '<':
                                if (z7) {
                                    if (!z5) {
                                        throw new AddressException("Extra route-addr", str, i10);
                                    }
                                    if (i11 != -1) {
                                        if (!z6) {
                                            if (i12 == -1) {
                                                i12 = i10;
                                            }
                                            String strTrim2 = str.substring(i11, i12).trim();
                                            InternetAddress internetAddress5 = new InternetAddress();
                                            internetAddress5.setAddress(strTrim2);
                                            if (i13 >= 0) {
                                                internetAddress5.encodedPersonal = unquote(str.substring(i13, i14).trim());
                                            }
                                            arrayList.add(internetAddress5);
                                            i11 = -1;
                                            i12 = -1;
                                            z7 = false;
                                            z8 = false;
                                            i13 = -1;
                                            i14 = -1;
                                        }
                                        i4 = i10 + 1;
                                        i5 = i4;
                                        z4 = false;
                                        while (true) {
                                            i6 = i4;
                                            if (i5 >= length) {
                                            }
                                            i5++;
                                            i4 = i6;
                                            i12 = i7;
                                        }
                                        if (z4) {
                                        }
                                        if (i12 < length) {
                                        }
                                    }
                                    i = 1;
                                    i11 = -1;
                                    i12 = -1;
                                    z7 = false;
                                    z8 = false;
                                } else {
                                    z8 = true;
                                    i4 = i10 + 1;
                                    i5 = i4;
                                    z4 = false;
                                    while (true) {
                                        i6 = i4;
                                        if (i5 >= length) {
                                            char cCharAt5 = str.charAt(i5);
                                            i7 = i12;
                                            if (cCharAt5 == '\"') {
                                                z4 = !z4;
                                            } else if (cCharAt5 != '>') {
                                                if (cCharAt5 == '\\') {
                                                    i5++;
                                                }
                                            } else if (!z4) {
                                            }
                                            i5++;
                                            i4 = i6;
                                            i12 = i7;
                                        } else {
                                            i7 = i12;
                                        }
                                    }
                                    if (z4) {
                                        i12 = i5;
                                    } else {
                                        if (!z5) {
                                            throw new AddressException("Missing '\"'", str, i5);
                                        }
                                        int i20 = i6;
                                        while (i20 < length) {
                                            char cCharAt6 = str.charAt(i20);
                                            if (cCharAt6 == '\\') {
                                                i20++;
                                                i9 = 1;
                                            } else if (cCharAt6 != '>') {
                                                i9 = 1;
                                            } else {
                                                i12 = i20;
                                            }
                                            i20 += i9;
                                        }
                                        i12 = i20;
                                    }
                                    if (i12 < length) {
                                        if (!z5) {
                                            throw new AddressException("Missing '>'", str, i12);
                                        }
                                        if (i11 == -1) {
                                            i11 = i10;
                                        }
                                        i10 = i6;
                                        i12 = i7;
                                        i = 1;
                                    } else {
                                        if (z6) {
                                            i8 = i11;
                                        } else {
                                            if (i11 < 0) {
                                                i11 = i13;
                                                i10 = i14;
                                            }
                                            i14 = i10;
                                            i13 = i11;
                                            i8 = i6;
                                        }
                                        i11 = i8;
                                        i10 = i12;
                                        i = 1;
                                        z7 = true;
                                    }
                                }
                                break;
                            default:
                                if (i11 == -1) {
                                    i11 = i10;
                                }
                                i = 1;
                                break;
                        }
                    } else {
                        if (!z5) {
                            throw new AddressException("Missing '('", str, i10);
                        }
                        if (i11 == -1) {
                            i11 = i10;
                        }
                        i = 1;
                    }
                } else {
                    if (i11 == -1) {
                        i11 = i10;
                    }
                    i10++;
                    i2 = i10;
                    while (i2 < length) {
                        char cCharAt7 = str.charAt(i2);
                        if (cCharAt7 == '\\') {
                            i2++;
                        } else if (cCharAt7 == ']') {
                            if (i2 < length) {
                                if (!z5) {
                                    throw new AddressException("Missing ']'", str, i2);
                                }
                            }
                        }
                        i2++;
                    }
                    if (i2 < length) {
                    }
                }
                i = 1;
                z8 = true;
            }
            i10 += i;
        }
        if (i11 >= 0) {
            if (i12 != -1) {
                length = i12;
            }
            String strTrim3 = str.substring(i11, length).trim();
            if (!z8 || i13 < 0) {
                strUnquote = null;
                if (z3 && !z && strUnquote != null && strUnquote.indexOf(64) >= 0 && strTrim3.indexOf(64) < 0 && strTrim3.indexOf(33) < 0) {
                    strTrim3 = strUnquote;
                    strUnquote = strTrim3;
                }
                if (!z8 || z || z3) {
                    if (!z5) {
                        checkAddress(strTrim3, z7, false);
                    }
                    InternetAddress internetAddress6 = new InternetAddress();
                    internetAddress6.setAddress(strTrim3);
                    if (strUnquote != null) {
                        internetAddress6.encodedPersonal = strUnquote;
                    }
                    arrayList.add(internetAddress6);
                } else {
                    StringTokenizer stringTokenizer2 = new StringTokenizer(strTrim3);
                    while (stringTokenizer2.hasMoreTokens()) {
                        String strNextToken2 = stringTokenizer2.nextToken();
                        checkAddress(strNextToken2, false, false);
                        InternetAddress internetAddress7 = new InternetAddress();
                        internetAddress7.setAddress(strNextToken2);
                        arrayList.add(internetAddress7);
                    }
                }
            } else {
                strUnquote = unquote(str.substring(i13, i14).trim());
                if (strUnquote.trim().length() == 0) {
                }
                if (z3) {
                    strTrim3 = strUnquote;
                    strUnquote = strTrim3;
                }
                if (z8) {
                    if (!z5) {
                    }
                    InternetAddress internetAddress62 = new InternetAddress();
                    internetAddress62.setAddress(strTrim3);
                    if (strUnquote != null) {
                    }
                    arrayList.add(internetAddress62);
                }
            }
        }
        InternetAddress[] internetAddressArr = new InternetAddress[arrayList.size()];
        arrayList.toArray(internetAddressArr);
        return internetAddressArr;
    }

    public static InternetAddress[] parseHeader(String str, boolean z) throws AddressException {
        return parse(MimeUtility.unfold(str), z, true);
    }

    private static String quotePhrase(String str) {
        int length = str.length();
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"' || cCharAt == '\\') {
                StringBuilder sb = new StringBuilder(length + 3);
                sb.append('\"');
                for (int i2 = 0; i2 < length; i2++) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 == '\"' || cCharAt2 == '\\') {
                        sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    }
                    sb.append(cCharAt2);
                }
                sb.append('\"');
                return sb.toString();
            }
            if ((cCharAt < ' ' && cCharAt != '\r' && cCharAt != '\n' && cCharAt != '\t') || ((cCharAt >= 127 && !allowUtf8) || rfc822phrase.indexOf(cCharAt) >= 0)) {
                z = true;
            }
        }
        if (!z) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(length + 2);
        sb2.append('\"');
        sb2.append(str);
        sb2.append('\"');
        return sb2.toString();
    }

    public static String toString(Address[] addressArr) {
        return toString(addressArr, 0);
    }

    public static String toString(Address[] addressArr, int i) {
        if (addressArr == null || addressArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < addressArr.length; i2++) {
            if (i2 != 0) {
                sb.append(", ");
                i += 2;
            }
            String strFold = MimeUtility.fold(0, addressArr[i2].toString());
            if (lengthOfFirstSegment(strFold) + i > 76) {
                int length = sb.length();
                if (length > 0) {
                    int i3 = length - 1;
                    if (sb.charAt(i3) == ' ') {
                        sb.setLength(i3);
                    }
                }
                sb.append("\r\n\t");
                i = 8;
            }
            sb.append(strFold);
            i = lengthOfLastSegment(strFold, i);
        }
        return sb.toString();
    }

    public static String toUnicodeString(Address[] addressArr) {
        return toUnicodeString(addressArr, 0);
    }

    public static String toUnicodeString(Address[] addressArr, int i) {
        if (addressArr == null || addressArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (int i2 = 0; i2 < addressArr.length; i2++) {
            if (i2 != 0) {
                sb.append(", ");
                i += 2;
            }
            String unicodeString = ((InternetAddress) addressArr[i2]).toUnicodeString();
            if (MimeUtility.checkAscii(unicodeString) != 1) {
                unicodeString = new String(unicodeString.getBytes(StandardCharsets.UTF_8), StandardCharsets.ISO_8859_1);
                z = true;
            }
            String strFold = MimeUtility.fold(0, unicodeString);
            if (lengthOfFirstSegment(strFold) + i > 76) {
                int length = sb.length();
                if (length > 0) {
                    int i3 = length - 1;
                    if (sb.charAt(i3) == ' ') {
                        sb.setLength(i3);
                    }
                }
                sb.append("\r\n\t");
                i = 8;
            }
            sb.append(strFold);
            i = lengthOfLastSegment(strFold, i);
        }
        String string = sb.toString();
        return z ? new String(string.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8) : string;
    }

    private static String unquote(String str) {
        if (!str.startsWith("\"") || !str.endsWith("\"") || str.length() <= 1) {
            return str;
        }
        String strSubstring = str.substring(1, str.length() - 1);
        if (strSubstring.indexOf(92) < 0) {
            return strSubstring;
        }
        StringBuilder sb = new StringBuilder(strSubstring.length());
        int i = 0;
        while (i < strSubstring.length()) {
            char cCharAt = strSubstring.charAt(i);
            if (cCharAt == '\\' && i < strSubstring.length() - 1) {
                i++;
                cCharAt = strSubstring.charAt(i);
            }
            sb.append(cCharAt);
            i++;
        }
        return sb.toString();
    }

    public Object clone() {
        try {
            return (InternetAddress) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @Override // javax.mail.Address
    public boolean equals(Object obj) {
        if (!(obj instanceof InternetAddress)) {
            return false;
        }
        String address = ((InternetAddress) obj).getAddress();
        String str = this.address;
        if (address == str) {
            return true;
        }
        return str != null && str.equalsIgnoreCase(address);
    }

    public String getAddress() {
        return this.address;
    }

    public InternetAddress[] getGroup(boolean z) throws AddressException {
        int iIndexOf;
        String address = getAddress();
        if (address != null && address.endsWith(";") && (iIndexOf = address.indexOf(58)) >= 0) {
            return parseHeader(address.substring(iIndexOf + 1, address.length() - 1), z);
        }
        return null;
    }

    public String getPersonal() {
        String str = this.personal;
        if (str != null) {
            return str;
        }
        String str2 = this.encodedPersonal;
        if (str2 == null) {
            return null;
        }
        try {
            String strDecodeText = MimeUtility.decodeText(str2);
            this.personal = strDecodeText;
            return strDecodeText;
        } catch (Exception unused) {
            return this.encodedPersonal;
        }
    }

    @Override // javax.mail.Address
    public String getType() {
        return "rfc822";
    }

    public int hashCode() {
        String str = this.address;
        if (str == null) {
            return 0;
        }
        return str.toLowerCase(Locale.ENGLISH).hashCode();
    }

    public boolean isGroup() {
        String str = this.address;
        return str != null && str.endsWith(";") && this.address.indexOf(58) > 0;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setPersonal(String str) throws UnsupportedEncodingException {
        this.personal = str;
        this.encodedPersonal = str != null ? MimeUtility.encodeWord(str) : null;
    }

    public void setPersonal(String str, String str2) throws UnsupportedEncodingException {
        this.personal = str;
        if (str != null) {
            this.encodedPersonal = MimeUtility.encodeWord(str, str2, null);
        } else {
            this.encodedPersonal = null;
        }
    }

    @Override // javax.mail.Address
    public String toString() {
        StringBuilder sb;
        String str;
        String str2 = this.address;
        if (str2 == null) {
            str2 = "";
        }
        if (this.encodedPersonal == null && (str = this.personal) != null) {
            try {
                this.encodedPersonal = MimeUtility.encodeWord(str);
            } catch (UnsupportedEncodingException unused) {
            }
        }
        if (this.encodedPersonal != null) {
            sb = new StringBuilder();
            sb.append(quotePhrase(this.encodedPersonal));
            sb.append(" <");
        } else {
            if (isGroup() || isSimple()) {
                return str2;
            }
            sb = new StringBuilder("<");
        }
        sb.append(str2);
        sb.append(">");
        return sb.toString();
    }

    public String toUnicodeString() {
        String personal = getPersonal();
        if (personal != null) {
            return quotePhrase(personal) + " <" + this.address + ">";
        }
        if (isGroup() || isSimple()) {
            return this.address;
        }
        return "<" + this.address + ">";
    }

    public void validate() throws AddressException {
        if (isGroup()) {
            getGroup(true);
        } else {
            checkAddress(getAddress(), true, true);
        }
    }
}
