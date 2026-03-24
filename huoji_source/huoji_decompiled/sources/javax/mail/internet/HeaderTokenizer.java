package javax.mail.internet;

import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderTokenizer {
    private static final Token EOFToken = new Token(-4, null);
    public static final String MIME = "()<>@,;:\\\"\t []/?=";
    public static final String RFC822 = "()<>@,;:\\\"\t .[]";
    private int currentPos;
    private String delimiters;
    private int maxPos;
    private int nextPos;
    private int peekPos;
    private boolean skipComments;
    private String string;

    public static class Token {
        public static final int ATOM = -1;
        public static final int COMMENT = -3;
        public static final int EOF = -4;
        public static final int QUOTEDSTRING = -2;
        private int type;
        private String value;

        public Token(int i, String str) {
            this.type = i;
            this.value = str;
        }

        public int getType() {
            return this.type;
        }

        public String getValue() {
            return this.value;
        }
    }

    public HeaderTokenizer(String str) {
        this(str, RFC822);
    }

    public HeaderTokenizer(String str, String str2) {
        this(str, str2, true);
    }

    public HeaderTokenizer(String str, String str2, boolean z) {
        str = str == null ? "" : str;
        this.string = str;
        this.skipComments = z;
        this.delimiters = str2;
        this.peekPos = 0;
        this.nextPos = 0;
        this.currentPos = 0;
        this.maxPos = str.length();
    }

    private Token collectString(char c, boolean z) throws ParseException {
        int i = this.currentPos;
        boolean z3 = false;
        while (true) {
            int i2 = this.currentPos;
            if (i2 >= this.maxPos) {
                if (c == '\"') {
                    throw new ParseException("Unbalanced quoted string");
                }
                String str = this.string;
                return new Token(-2, trimWhiteSpace(z3 ? filterToken(str, i, i2, z) : str.substring(i, i2)));
            }
            char cCharAt = this.string.charAt(i2);
            if (cCharAt == '\\') {
                this.currentPos++;
            } else {
                if (cCharAt != '\r') {
                    if (cCharAt == c) {
                        int i3 = this.currentPos + 1;
                        this.currentPos = i3;
                        String strFilterToken = z3 ? filterToken(this.string, i, i3 - 1, z) : this.string.substring(i, i3 - 1);
                        if (cCharAt != '\"') {
                            strFilterToken = trimWhiteSpace(strFilterToken);
                            this.currentPos--;
                        }
                        return new Token(-2, strFilterToken);
                    }
                }
                this.currentPos++;
            }
            z3 = true;
            this.currentPos++;
        }
    }

    private static String filterToken(String str, int i, int i2, boolean z) {
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        boolean z4 = false;
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\n' && z3) {
                z3 = false;
            } else if (z4) {
                if (z) {
                    sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                }
                sb.append(cCharAt);
                z3 = false;
                z4 = false;
            } else if (cCharAt == '\\') {
                z3 = false;
                z4 = true;
            } else if (cCharAt == '\r') {
                z3 = true;
            } else {
                sb.append(cCharAt);
                z3 = false;
            }
            i++;
        }
        return sb.toString();
    }

    private Token getNext(char c, boolean z) throws ParseException {
        char cCharAt;
        if (this.currentPos < this.maxPos && skipWhiteSpace() != -4) {
            char cCharAt2 = this.string.charAt(this.currentPos);
            boolean z3 = false;
            while (cCharAt2 == '(') {
                int i = this.currentPos + 1;
                this.currentPos = i;
                int i2 = 1;
                while (i2 > 0) {
                    int i3 = this.currentPos;
                    if (i3 >= this.maxPos) {
                        break;
                    }
                    char cCharAt3 = this.string.charAt(i3);
                    if (cCharAt3 == '\\') {
                        this.currentPos++;
                    } else {
                        if (cCharAt3 != '\r') {
                            if (cCharAt3 == '(') {
                                i2++;
                            } else if (cCharAt3 == ')') {
                                i2--;
                            }
                        }
                        this.currentPos++;
                    }
                    z3 = true;
                    this.currentPos++;
                }
                if (i2 != 0) {
                    throw new ParseException("Unbalanced comments");
                }
                if (!this.skipComments) {
                    String str = this.string;
                    return new Token(-3, z3 ? filterToken(str, i, this.currentPos - 1, z) : str.substring(i, this.currentPos - 1));
                }
                if (skipWhiteSpace() == -4) {
                    return EOFToken;
                }
                cCharAt2 = this.string.charAt(this.currentPos);
            }
            if (cCharAt2 == '\"') {
                this.currentPos++;
                return collectString('\"', z);
            }
            if (cCharAt2 < ' ' || cCharAt2 >= 127 || this.delimiters.indexOf(cCharAt2) >= 0) {
                if (c > 0 && cCharAt2 != c) {
                    return collectString(c, z);
                }
                this.currentPos++;
                return new Token(cCharAt2, new String(new char[]{cCharAt2}));
            }
            int i4 = this.currentPos;
            while (true) {
                int i5 = this.currentPos;
                if (i5 >= this.maxPos) {
                    break;
                }
                cCharAt = this.string.charAt(i5);
                if (cCharAt < ' ' || cCharAt >= 127 || cCharAt == '(' || cCharAt == ' ' || cCharAt == '\"' || this.delimiters.indexOf(cCharAt) >= 0) {
                    break;
                }
                this.currentPos++;
            }
            if (c > 0 && cCharAt != c) {
                this.currentPos = i4;
                return collectString(c, z);
            }
            return new Token(-1, this.string.substring(i4, this.currentPos));
        }
        return EOFToken;
    }

    private int skipWhiteSpace() {
        while (true) {
            int i = this.currentPos;
            if (i >= this.maxPos) {
                return -4;
            }
            char cCharAt = this.string.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                return this.currentPos;
            }
            this.currentPos++;
        }
    }

    private static String trimWhiteSpace(String str) {
        int length = str.length() - 1;
        while (length >= 0) {
            char cCharAt = str.charAt(length);
            if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                break;
            }
            length--;
        }
        return length <= 0 ? "" : str.substring(0, length + 1);
    }

    public String getRemainder() {
        if (this.nextPos >= this.string.length()) {
            return null;
        }
        return this.string.substring(this.nextPos);
    }

    public Token next() throws ParseException {
        return next((char) 0, false);
    }

    public Token next(char c) throws ParseException {
        return next(c, false);
    }

    public Token next(char c, boolean z) throws ParseException {
        this.currentPos = this.nextPos;
        Token next = getNext(c, z);
        int i = this.currentPos;
        this.peekPos = i;
        this.nextPos = i;
        return next;
    }

    public Token peek() throws ParseException {
        this.currentPos = this.peekPos;
        Token next = getNext((char) 0, false);
        this.peekPos = this.currentPos;
        return next;
    }
}
