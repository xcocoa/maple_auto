package com.sun.mail.iap;

import com.sun.mail.util.ASCIIUtility;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Response {
    private static String ASTRING_CHAR_DELIM = " (){%*\"\\";
    private static String ATOM_CHAR_DELIM = " (){%*\"\\]";
    public static final int BAD = 12;
    public static final int BYE = 16;
    public static final int CONTINUATION = 1;
    public static final int NO = 8;
    public static final int OK = 4;
    public static final int SYNTHETIC = 32;
    public static final int TAGGED = 2;
    public static final int TAG_MASK = 3;
    public static final int TYPE_MASK = 28;
    public static final int UNTAGGED = 3;
    private static final int increment = 100;
    public byte[] buffer;
    public Exception ex;
    public int index;
    public int pindex;
    public int size;
    public String tag;
    public int type;
    public boolean utf8;

    public Response(Protocol protocol) throws ProtocolException, IOException {
        this.buffer = null;
        this.type = 0;
        this.tag = null;
        this.buffer = protocol.getInputStream().readResponse(protocol.getResponseBuffer()).getBytes();
        this.size = r0.getCount() - 2;
        this.utf8 = protocol.supportsUtf8();
        parse();
    }

    public Response(Response response) {
        this.buffer = null;
        this.type = 0;
        this.tag = null;
        this.index = response.index;
        this.pindex = response.pindex;
        this.size = response.size;
        this.buffer = response.buffer;
        this.type = response.type;
        this.tag = response.tag;
        this.ex = response.ex;
        this.utf8 = response.utf8;
    }

    public Response(String str) {
        this(str, true);
    }

    public Response(String str, boolean z) {
        this.buffer = null;
        this.type = 0;
        this.tag = null;
        if (z) {
            this.buffer = str.getBytes(StandardCharsets.UTF_8);
        } else {
            this.buffer = str.getBytes(StandardCharsets.US_ASCII);
        }
        this.size = this.buffer.length;
        this.utf8 = z;
        parse();
    }

    public static Response byeResponse(Exception exc) {
        Response response = new Response(("* BYE Jakarta Mail Exception: " + exc.toString()).replace('\r', ' ').replace('\n', ' '));
        response.type = response.type | 32;
        response.ex = exc;
        return response;
    }

    private void parse() {
        int i;
        this.index = 0;
        if (this.size == 0) {
            return;
        }
        byte[] bArr = this.buffer;
        if (bArr[0] == 43) {
            this.type |= 1;
            this.index = 0 + 1;
            return;
        }
        if (bArr[0] == 42) {
            this.type |= 3;
            this.index = 0 + 1;
        } else {
            this.type |= 2;
            String atom = readAtom();
            this.tag = atom;
            if (atom == null) {
                this.tag = "";
            }
        }
        int i2 = this.index;
        String atom2 = readAtom();
        String str = atom2 != null ? atom2 : "";
        if (str.equalsIgnoreCase("OK")) {
            i = this.type | 4;
        } else if (str.equalsIgnoreCase("NO")) {
            i = this.type | 8;
        } else if (str.equalsIgnoreCase("BAD")) {
            i = this.type | 12;
        } else {
            if (!str.equalsIgnoreCase("BYE")) {
                this.index = i2;
                this.pindex = this.index;
            }
            i = this.type | 16;
        }
        this.type = i;
        this.pindex = this.index;
    }

    private Object parseString(boolean z, boolean z3) {
        byte[] bArr;
        int i;
        int i2;
        int i3;
        byte[] bArr2;
        byte b;
        skipSpaces();
        byte[] bArr3 = this.buffer;
        int i4 = this.index;
        byte b2 = bArr3[i4];
        if (b2 == 34) {
            int i5 = i4 + 1;
            this.index = i5;
            int i6 = i5;
            while (true) {
                i2 = this.index;
                i3 = this.size;
                if (i2 >= i3 || (b = (bArr2 = this.buffer)[i2]) == 34) {
                    break;
                }
                if (b == 92) {
                    this.index = i2 + 1;
                }
                int i7 = this.index;
                if (i7 != i6) {
                    bArr2[i6] = bArr2[i7];
                }
                i6++;
                this.index = i7 + 1;
            }
            if (i2 >= i3) {
                return null;
            }
            this.index = i2 + 1;
            return z3 ? toString(this.buffer, i5, i6) : new ByteArray(this.buffer, i5, i6 - i5);
        }
        if (b2 != 123) {
            if (z) {
                return z3 ? readDelimString(ASTRING_CHAR_DELIM) : new ByteArray(this.buffer, i4, this.index);
            }
            if (b2 != 78 && b2 != 110) {
                return null;
            }
            this.index = i4 + 3;
            return null;
        }
        int i8 = i4 + 1;
        this.index = i8;
        while (true) {
            bArr = this.buffer;
            i = this.index;
            if (bArr[i] == 125) {
                try {
                    break;
                } catch (NumberFormatException unused) {
                    return null;
                }
            }
            this.index = i + 1;
        }
        int i9 = ASCIIUtility.parseInt(bArr, i8, i);
        int i10 = this.index + 3;
        int i11 = i10 + i9;
        this.index = i11;
        return z3 ? toString(this.buffer, i10, i11) : new ByteArray(this.buffer, i10, i9);
    }

    private String readDelimString(String str) {
        int i;
        skipSpaces();
        int i2 = this.index;
        if (i2 >= this.size) {
            return null;
        }
        while (true) {
            int i3 = this.index;
            if (i3 >= this.size || (i = this.buffer[i3] & 255) < 32 || str.indexOf((char) i) >= 0 || i == 127) {
                break;
            }
            this.index++;
        }
        return toString(this.buffer, i2, this.index);
    }

    private String[] readStringList(boolean z) {
        skipSpaces();
        byte[] bArr = this.buffer;
        int i = this.index;
        if (bArr[i] != 40) {
            return null;
        }
        this.index = i + 1;
        ArrayList arrayList = new ArrayList();
        while (!isNextNonSpace(')')) {
            String atomString = z ? readAtomString() : readString();
            if (atomString == null) {
                break;
            }
            arrayList.add(atomString);
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private String toString(byte[] bArr, int i, int i2) {
        return this.utf8 ? new String(bArr, i, i2 - i, StandardCharsets.UTF_8) : ASCIIUtility.toString(bArr, i, i2);
    }

    public Exception getException() {
        return this.ex;
    }

    public String getRest() {
        skipSpaces();
        return toString(this.buffer, this.index, this.size);
    }

    public String getTag() {
        return this.tag;
    }

    public int getType() {
        return this.type;
    }

    public boolean isBAD() {
        return (this.type & 28) == 12;
    }

    public boolean isBYE() {
        return (this.type & 28) == 16;
    }

    public boolean isContinuation() {
        return (this.type & 3) == 1;
    }

    public boolean isNO() {
        return (this.type & 28) == 8;
    }

    public boolean isNextNonSpace(char c) {
        skipSpaces();
        int i = this.index;
        if (i >= this.size || this.buffer[i] != ((byte) c)) {
            return false;
        }
        this.index = i + 1;
        return true;
    }

    public boolean isOK() {
        return (this.type & 28) == 4;
    }

    public boolean isSynthetic() {
        return (this.type & 32) == 32;
    }

    public boolean isTagged() {
        return (this.type & 3) == 2;
    }

    public boolean isUnTagged() {
        return (this.type & 3) == 3;
    }

    public byte peekByte() {
        int i = this.index;
        if (i < this.size) {
            return this.buffer[i];
        }
        return (byte) 0;
    }

    public String readAtom() {
        return readDelimString(ATOM_CHAR_DELIM);
    }

    public String readAtomString() {
        return (String) parseString(true, true);
    }

    public String[] readAtomStringList() {
        return readStringList(true);
    }

    public byte readByte() {
        int i = this.index;
        if (i >= this.size) {
            return (byte) 0;
        }
        byte[] bArr = this.buffer;
        this.index = i + 1;
        return bArr[i];
    }

    public ByteArray readByteArray() {
        if (!isContinuation()) {
            return (ByteArray) parseString(false, false);
        }
        skipSpaces();
        byte[] bArr = this.buffer;
        int i = this.index;
        return new ByteArray(bArr, i, this.size - i);
    }

    public ByteArrayInputStream readBytes() {
        ByteArray byteArray = readByteArray();
        if (byteArray != null) {
            return byteArray.toByteArrayInputStream();
        }
        return null;
    }

    public long readLong() {
        skipSpaces();
        int i = this.index;
        while (true) {
            int i2 = this.index;
            if (i2 >= this.size || !Character.isDigit((char) this.buffer[i2])) {
                break;
            }
            this.index++;
        }
        int i3 = this.index;
        if (i3 <= i) {
            return -1L;
        }
        try {
            return ASCIIUtility.parseLong(this.buffer, i, i3);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public int readNumber() {
        skipSpaces();
        int i = this.index;
        while (true) {
            int i2 = this.index;
            if (i2 >= this.size || !Character.isDigit((char) this.buffer[i2])) {
                break;
            }
            this.index++;
        }
        int i3 = this.index;
        if (i3 <= i) {
            return -1;
        }
        try {
            return ASCIIUtility.parseInt(this.buffer, i, i3);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public String readString() {
        return (String) parseString(false, true);
    }

    public String readString(char c) {
        int i;
        skipSpaces();
        int i2 = this.index;
        if (i2 >= this.size) {
            return null;
        }
        while (true) {
            i = this.index;
            if (i >= this.size || this.buffer[i] == c) {
                break;
            }
            this.index = i + 1;
        }
        return toString(this.buffer, i2, i);
    }

    public String[] readStringList() {
        return readStringList(false);
    }

    public void reset() {
        this.index = this.pindex;
    }

    public void skip(int i) {
        this.index += i;
    }

    public void skipSpaces() {
        while (true) {
            int i = this.index;
            if (i >= this.size || this.buffer[i] != 32) {
                return;
            } else {
                this.index = i + 1;
            }
        }
    }

    public void skipToken() {
        while (true) {
            int i = this.index;
            if (i >= this.size || this.buffer[i] == 32) {
                return;
            } else {
                this.index = i + 1;
            }
        }
    }

    public boolean supportsUtf8() {
        return this.utf8;
    }

    public String toString() {
        return toString(this.buffer, 0, this.size);
    }
}
