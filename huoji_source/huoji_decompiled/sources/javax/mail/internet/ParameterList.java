package javax.mail.internet;

import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.PropUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.mail.internet.HeaderTokenizer;
import org.slf4j.Marker;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterList {
    private String lastName;
    private Map<String, Object> list;
    private Set<String> multisegmentNames;
    private Map<String, Object> slist;
    private static final boolean encodeParameters = PropUtil.getBooleanSystemProperty("mail.mime.encodeparameters", true);
    private static final boolean decodeParameters = PropUtil.getBooleanSystemProperty("mail.mime.decodeparameters", true);
    private static final boolean decodeParametersStrict = PropUtil.getBooleanSystemProperty("mail.mime.decodeparameters.strict", false);
    private static final boolean applehack = PropUtil.getBooleanSystemProperty("mail.mime.applefilenames", false);
    private static final boolean windowshack = PropUtil.getBooleanSystemProperty("mail.mime.windowsfilenames", false);
    private static final boolean parametersStrict = PropUtil.getBooleanSystemProperty("mail.mime.parameters.strict", true);
    private static final boolean splitLongParameters = PropUtil.getBooleanSystemProperty("mail.mime.splitlongparameters", true);
    private static final char[] hex = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static class LiteralValue {
        public String value;

        private LiteralValue() {
        }
    }

    public static class MultiValue extends ArrayList<Object> {
        private static final long serialVersionUID = 699561094618751023L;
        public String value;

        private MultiValue() {
        }
    }

    public static class ParamEnum implements Enumeration<String> {
        private Iterator<String> it;

        public ParamEnum(Iterator<String> it) {
            this.it = it;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.it.hasNext();
        }

        @Override // java.util.Enumeration
        public String nextElement() {
            return this.it.next();
        }
    }

    public static class ToStringBuffer {
        private StringBuilder sb = new StringBuilder();
        private int used;

        public ToStringBuffer(int i) {
            this.used = i;
        }

        public void addNV(String str, String str2) {
            this.sb.append("; ");
            this.used += 2;
            if (this.used + str.length() + str2.length() + 1 > 76) {
                this.sb.append("\r\n\t");
                this.used = 8;
            }
            StringBuilder sb = this.sb;
            sb.append(str);
            sb.append('=');
            int length = this.used + str.length() + 1;
            this.used = length;
            if (length + str2.length() <= 76) {
                this.sb.append(str2);
                this.used += str2.length();
                return;
            }
            String strFold = MimeUtility.fold(this.used, str2);
            this.sb.append(strFold);
            if (strFold.lastIndexOf(10) >= 0) {
                this.used += (strFold.length() - r5) - 1;
            } else {
                this.used += strFold.length();
            }
        }

        public String toString() {
            return this.sb.toString();
        }
    }

    public static class Value {
        public String charset;
        public String encodedValue;
        public String value;

        private Value() {
        }
    }

    public ParameterList() {
        this.list = new LinkedHashMap();
        this.lastName = null;
        if (decodeParameters) {
            this.multisegmentNames = new HashSet();
            this.slist = new HashMap();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x015a, code lost:
    
        if (javax.mail.internet.ParameterList.decodeParameters == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x015c, code lost:
    
        combineMultisegmentNames(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0160, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ParameterList(String str) throws ParseException {
        HeaderTokenizer.Token next;
        String str2;
        this();
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(str, HeaderTokenizer.MIME);
        while (true) {
            next = headerTokenizer.next();
            int type = next.getType();
            if (type == -4) {
                break;
            }
            if (((char) type) == ';') {
                HeaderTokenizer.Token next2 = headerTokenizer.next();
                if (next2.getType() == -4) {
                    break;
                }
                if (next2.getType() != -1) {
                    throw new ParseException("In parameter list <" + str + ">, expected parameter name, got \"" + next2.getValue() + "\"");
                }
                String lowerCase = next2.getValue().toLowerCase(Locale.ENGLISH);
                HeaderTokenizer.Token next3 = headerTokenizer.next();
                if (((char) next3.getType()) != '=') {
                    throw new ParseException("In parameter list <" + str + ">, expected '=', got \"" + next3.getValue() + "\"");
                }
                HeaderTokenizer.Token next4 = (windowshack && (lowerCase.equals("name") || lowerCase.equals("filename"))) ? headerTokenizer.next(';', true) : parametersStrict ? headerTokenizer.next() : headerTokenizer.next(';');
                int type2 = next4.getType();
                if (type2 != -1 && type2 != -2) {
                    throw new ParseException("In parameter list <" + str + ">, expected parameter value, got \"" + next4.getValue() + "\"");
                }
                String value = next4.getValue();
                this.lastName = lowerCase;
                if (decodeParameters) {
                    putEncodedName(lowerCase, value);
                } else {
                    this.list.put(lowerCase, value);
                }
            } else {
                if (type != -1 || (str2 = this.lastName) == null || (!(applehack && (str2.equals("name") || this.lastName.equals("filename"))) && parametersStrict)) {
                    break;
                }
                this.list.put(this.lastName, ((String) this.list.get(this.lastName)) + o4.OooO00o.OooO0Oo + next.getValue());
            }
        }
        throw new ParseException("In parameter list <" + str + ">, expected ';', got \"" + next.getValue() + "\"");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0080 A[Catch: UnsupportedEncodingException -> 0x0076, all -> 0x00fe, TryCatch #0 {UnsupportedEncodingException -> 0x0076, blocks: (B:23:0x0071, B:27:0x007a, B:31:0x0086, B:32:0x008a, B:33:0x008d, B:29:0x0080), top: B:83:0x0071, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0086 A[Catch: UnsupportedEncodingException -> 0x0076, all -> 0x00fe, TryCatch #0 {UnsupportedEncodingException -> 0x0076, blocks: (B:23:0x0071, B:27:0x007a, B:31:0x0086, B:32:0x008a, B:33:0x008d, B:29:0x0080), top: B:83:0x0071, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008d A[Catch: UnsupportedEncodingException -> 0x0076, all -> 0x00fe, TRY_LEAVE, TryCatch #0 {UnsupportedEncodingException -> 0x0076, blocks: (B:23:0x0071, B:27:0x007a, B:31:0x0086, B:32:0x008a, B:33:0x008d, B:29:0x0080), top: B:83:0x0071, outer: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void combineMultisegmentNames(boolean z) throws ParseException {
        try {
            for (String str : this.multisegmentNames) {
                String strJavaCharset = null;
                MultiValue multiValue = new MultiValue();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                int i = 0;
                while (true) {
                    String str2 = str + Marker.ANY_MARKER + i;
                    Object obj = this.slist.get(str2);
                    if (obj == null) {
                        break;
                    }
                    multiValue.add(obj);
                    try {
                        if (obj instanceof Value) {
                            Value value = (Value) obj;
                            if (i == 0) {
                                strJavaCharset = value.charset;
                            } else if (strJavaCharset == null) {
                                this.multisegmentNames.remove(str);
                                break;
                            }
                            decodeBytes(value.value, byteArrayOutputStream);
                        } else {
                            byteArrayOutputStream.write(ASCIIUtility.getBytes((String) obj));
                        }
                    } catch (IOException unused) {
                    }
                    this.slist.remove(str2);
                    i++;
                }
                if (i == 0) {
                    this.list.remove(str);
                } else if (strJavaCharset != null) {
                    try {
                        strJavaCharset = MimeUtility.javaCharset(strJavaCharset);
                        if (strJavaCharset != null || strJavaCharset.length() == 0) {
                            strJavaCharset = MimeUtility.getDefaultJavaCharset();
                        }
                        multiValue.value = strJavaCharset == null ? byteArrayOutputStream.toString(strJavaCharset) : byteArrayOutputStream.toString();
                    } catch (UnsupportedEncodingException e) {
                        if (decodeParametersStrict) {
                            throw new ParseException(e.toString());
                        }
                        try {
                            multiValue.value = byteArrayOutputStream.toString("iso-8859-1");
                        } catch (UnsupportedEncodingException unused2) {
                        }
                    }
                    this.list.put(str, multiValue);
                } else if (strJavaCharset != null) {
                    strJavaCharset = MimeUtility.getDefaultJavaCharset();
                    multiValue.value = strJavaCharset == null ? byteArrayOutputStream.toString(strJavaCharset) : byteArrayOutputStream.toString();
                    this.list.put(str, multiValue);
                }
            }
            if (this.slist.size() > 0) {
                for (Object obj2 : this.slist.values()) {
                    if (obj2 instanceof Value) {
                        Value value2 = (Value) obj2;
                        try {
                            value2.value = decodeBytes(value2.value, value2.charset);
                        } catch (UnsupportedEncodingException e2) {
                            if (decodeParametersStrict) {
                                throw new ParseException(e2.toString());
                            }
                        }
                    }
                }
                this.list.putAll(this.slist);
            }
            this.multisegmentNames.clear();
            this.slist.clear();
        } catch (Throwable th) {
            if (z) {
                if (this.slist.size() > 0) {
                    for (Object obj3 : this.slist.values()) {
                        if (obj3 instanceof Value) {
                            Value value3 = (Value) obj3;
                            try {
                                value3.value = decodeBytes(value3.value, value3.charset);
                            } catch (UnsupportedEncodingException e3) {
                                if (decodeParametersStrict) {
                                    throw new ParseException(e3.toString());
                                }
                            }
                        }
                    }
                    this.list.putAll(this.slist);
                }
                this.multisegmentNames.clear();
                this.slist.clear();
            }
            throw th;
        }
    }

    private static String decodeBytes(String str, String str2) throws ParseException, UnsupportedEncodingException {
        byte[] bArr = new byte[str.length()];
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                try {
                    cCharAt = (char) Integer.parseInt(str.substring(i + 1, i + 3), 16);
                    i += 2;
                } catch (NumberFormatException e) {
                    if (decodeParametersStrict) {
                        throw new ParseException(e.toString());
                    }
                } catch (StringIndexOutOfBoundsException e2) {
                    if (decodeParametersStrict) {
                        throw new ParseException(e2.toString());
                    }
                }
            }
            bArr[i2] = (byte) cCharAt;
            i++;
            i2++;
        }
        if (str2 != null) {
            str2 = MimeUtility.javaCharset(str2);
        }
        if (str2 == null || str2.length() == 0) {
            str2 = MimeUtility.getDefaultJavaCharset();
        }
        return new String(bArr, 0, i2, str2);
    }

    private static void decodeBytes(String str, OutputStream outputStream) throws ParseException, IOException {
        int i = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                try {
                    cCharAt = (char) Integer.parseInt(str.substring(i + 1, i + 3), 16);
                    i += 2;
                } catch (NumberFormatException e) {
                    if (decodeParametersStrict) {
                        throw new ParseException(e.toString());
                    }
                } catch (StringIndexOutOfBoundsException e2) {
                    if (decodeParametersStrict) {
                        throw new ParseException(e2.toString());
                    }
                }
            }
            outputStream.write((byte) cCharAt);
            i++;
        }
    }

    private static Value encodeValue(String str, String str2) {
        if (MimeUtility.checkAscii(str) == 1) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes(MimeUtility.javaCharset(str2));
            StringBuffer stringBuffer = new StringBuffer(bytes.length + str2.length() + 2);
            stringBuffer.append(str2);
            stringBuffer.append("''");
            for (byte b : bytes) {
                char c = (char) (b & 255);
                if (c <= ' ' || c >= 127 || c == '*' || c == '\'' || c == '%' || HeaderTokenizer.MIME.indexOf(c) >= 0) {
                    stringBuffer.append('%');
                    char[] cArr = hex;
                    stringBuffer.append(cArr[c >> 4]);
                    c = cArr[c & 15];
                }
                stringBuffer.append(c);
            }
            Value value = new Value();
            value.charset = str2;
            value.value = str;
            value.encodedValue = stringBuffer.toString();
            return value;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    private static Value extractCharset(String str) throws ParseException {
        int iIndexOf;
        Value value = new Value();
        value.encodedValue = str;
        value.value = str;
        try {
            iIndexOf = str.indexOf(39);
        } catch (NumberFormatException e) {
            if (decodeParametersStrict) {
                throw new ParseException(e.toString());
            }
        } catch (StringIndexOutOfBoundsException e2) {
            if (decodeParametersStrict) {
                throw new ParseException(e2.toString());
            }
        }
        if (iIndexOf < 0) {
            if (decodeParametersStrict) {
                throw new ParseException("Missing charset in encoded value: ".concat(String.valueOf(str)));
            }
            return value;
        }
        String strSubstring = str.substring(0, iIndexOf);
        int iIndexOf2 = str.indexOf(39, iIndexOf + 1);
        if (iIndexOf2 < 0) {
            if (decodeParametersStrict) {
                throw new ParseException("Missing language in encoded value: ".concat(String.valueOf(str)));
            }
            return value;
        }
        value.value = str.substring(iIndexOf2 + 1);
        value.charset = strSubstring;
        return value;
    }

    private void putEncodedName(String str, String str2) throws ParseException {
        Map<String, Object> map;
        Value valueExtractCharset;
        Object obj;
        int iIndexOf = str.indexOf(42);
        Object obj2 = str2;
        if (iIndexOf < 0) {
            map = this.list;
            obj = obj2;
        } else if (iIndexOf == str.length() - 1) {
            str = str.substring(0, iIndexOf);
            Value valueExtractCharset2 = extractCharset(str2);
            try {
                valueExtractCharset2.value = decodeBytes(valueExtractCharset2.value, valueExtractCharset2.charset);
                obj2 = valueExtractCharset2;
            } catch (UnsupportedEncodingException e) {
                obj2 = valueExtractCharset2;
                if (decodeParametersStrict) {
                    throw new ParseException(e.toString());
                }
            }
            map = this.list;
            obj = obj2;
        } else {
            String strSubstring = str.substring(0, iIndexOf);
            this.multisegmentNames.add(strSubstring);
            this.list.put(strSubstring, "");
            Object obj3 = str2;
            if (str.endsWith(Marker.ANY_MARKER)) {
                if (str.endsWith("*0*")) {
                    valueExtractCharset = extractCharset(str2);
                } else {
                    Value value = new Value();
                    value.encodedValue = str2;
                    value.value = str2;
                    valueExtractCharset = value;
                }
                str = str.substring(0, str.length() - 1);
                obj3 = valueExtractCharset;
            }
            map = this.slist;
            obj = obj3;
        }
        map.put(str, obj);
    }

    private static String quote(String str) {
        return MimeUtility.quote(str, HeaderTokenizer.MIME);
    }

    public void combineSegments() {
        if (!decodeParameters || this.multisegmentNames.size() <= 0) {
            return;
        }
        try {
            combineMultisegmentNames(true);
        } catch (ParseException unused) {
        }
    }

    public String get(String str) {
        Object obj = this.list.get(str.trim().toLowerCase(Locale.ENGLISH));
        return obj instanceof MultiValue ? ((MultiValue) obj).value : obj instanceof LiteralValue ? ((LiteralValue) obj).value : obj instanceof Value ? ((Value) obj).value : (String) obj;
    }

    public Enumeration<String> getNames() {
        return new ParamEnum(this.list.keySet().iterator());
    }

    public void remove(String str) {
        this.list.remove(str.trim().toLowerCase(Locale.ENGLISH));
    }

    public void set(String str, String str2) {
        String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
        if (decodeParameters) {
            try {
                putEncodedName(lowerCase, str2);
                return;
            } catch (ParseException unused) {
            }
        }
        this.list.put(lowerCase, str2);
    }

    public void set(String str, String str2, String str3) {
        if (!encodeParameters) {
            set(str, str2);
            return;
        }
        Value valueEncodeValue = encodeValue(str2, str3);
        if (valueEncodeValue != null) {
            this.list.put(str.trim().toLowerCase(Locale.ENGLISH), valueEncodeValue);
        } else {
            set(str, str2);
        }
    }

    public void setLiteral(String str, String str2) {
        LiteralValue literalValue = new LiteralValue();
        literalValue.value = str2;
        this.list.put(str, literalValue);
    }

    public int size() {
        return this.list.size();
    }

    public String toString() {
        return toString(0);
    }

    public String toString(int i) {
        String str;
        String str2;
        String strSubstring;
        ToStringBuffer toStringBuffer = new ToStringBuffer(i);
        for (Map.Entry<String, Object> entry : this.list.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof MultiValue) {
                MultiValue multiValue = (MultiValue) value;
                String str3 = key + Marker.ANY_MARKER;
                for (int i2 = 0; i2 < multiValue.size(); i2++) {
                    Object obj = multiValue.get(i2);
                    if (obj instanceof Value) {
                        str = str3 + i2 + Marker.ANY_MARKER;
                        str2 = ((Value) obj).encodedValue;
                    } else {
                        str = str3 + i2;
                        str2 = (String) obj;
                    }
                    toStringBuffer.addNV(str, quote(str2));
                }
            } else {
                if (value instanceof LiteralValue) {
                    strSubstring = ((LiteralValue) value).value;
                } else if (value instanceof Value) {
                    key = key + Marker.ANY_MARKER;
                    strSubstring = ((Value) value).encodedValue;
                } else {
                    strSubstring = (String) value;
                    if (strSubstring.length() > 60 && splitLongParameters && encodeParameters) {
                        String str4 = key + Marker.ANY_MARKER;
                        int i3 = 0;
                        while (strSubstring.length() > 60) {
                            toStringBuffer.addNV(str4 + i3, quote(strSubstring.substring(0, 60)));
                            strSubstring = strSubstring.substring(60);
                            i3++;
                        }
                        if (strSubstring.length() > 0) {
                            key = str4 + i3;
                        }
                    }
                }
                toStringBuffer.addNV(key, quote(strSubstring));
            }
        }
        return toStringBuffer.toString();
    }
}
