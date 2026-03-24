package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ByteArray;
import com.sun.mail.iap.ParsingException;
import java.io.ByteArrayInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class BODY implements Item {
    public static final char[] name = {'B', 'O', 'D', 'Y'};
    private final ByteArray data;
    private final boolean isHeader;
    private final int msgno;
    private final int origin;
    private final String section;

    public BODY(FetchResponse fetchResponse) throws ParsingException {
        this.msgno = fetchResponse.getNumber();
        fetchResponse.skipSpaces();
        if (fetchResponse.readByte() != 91) {
            throw new ParsingException("BODY parse error: missing ``['' at section start");
        }
        String string = fetchResponse.readString(']');
        this.section = string;
        if (fetchResponse.readByte() != 93) {
            throw new ParsingException("BODY parse error: missing ``]'' at section end");
        }
        this.isHeader = string.regionMatches(true, 0, "HEADER", 0, 6);
        if (fetchResponse.readByte() == 60) {
            this.origin = fetchResponse.readNumber();
            fetchResponse.skip(1);
        } else {
            this.origin = -1;
        }
        this.data = fetchResponse.readByteArray();
    }

    public ByteArray getByteArray() {
        return this.data;
    }

    public ByteArrayInputStream getByteArrayInputStream() {
        ByteArray byteArray = this.data;
        if (byteArray != null) {
            return byteArray.toByteArrayInputStream();
        }
        return null;
    }

    public int getOrigin() {
        return this.origin;
    }

    public String getSection() {
        return this.section;
    }

    public boolean isHeader() {
        return this.isHeader;
    }
}
