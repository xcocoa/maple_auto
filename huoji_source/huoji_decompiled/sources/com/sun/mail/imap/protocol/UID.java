package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;

/* JADX INFO: loaded from: classes2.dex */
public class UID implements Item {
    public static final char[] name = {'U', 'I', 'D'};
    public int seqnum;
    public long uid;

    public UID(FetchResponse fetchResponse) throws ParsingException {
        this.seqnum = fetchResponse.getNumber();
        fetchResponse.skipSpaces();
        this.uid = fetchResponse.readLong();
    }
}
