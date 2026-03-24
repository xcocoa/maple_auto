package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import com.sun.mail.iap.Response;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Status {
    public static final String[] standardItems = {"MESSAGES", "RECENT", "UNSEEN", "UIDNEXT", "UIDVALIDITY"};
    public long highestmodseq;
    public Map<String, Long> items;
    public String mbox;
    public int recent;
    public int total;
    public long uidnext;
    public long uidvalidity;
    public int unseen;

    public Status(Response response) throws ParsingException {
        this.mbox = null;
        this.total = -1;
        this.recent = -1;
        this.uidnext = -1L;
        this.uidvalidity = -1L;
        this.unseen = -1;
        this.highestmodseq = -1L;
        this.mbox = response.readAtomString();
        if (!response.supportsUtf8()) {
            this.mbox = BASE64MailboxDecoder.decode(this.mbox);
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        while (response.peekByte() != 40 && response.peekByte() != 0) {
            char c = (char) response.readByte();
            sb.append(c);
            if (c != ' ') {
                z = false;
            }
        }
        if (!z) {
            this.mbox = (this.mbox + ((Object) sb)).trim();
        }
        if (response.readByte() != 40) {
            throw new ParsingException("parse error in STATUS");
        }
        do {
            String atom = response.readAtom();
            if (atom == null) {
                throw new ParsingException("parse error in STATUS");
            }
            if (atom.equalsIgnoreCase("MESSAGES")) {
                this.total = response.readNumber();
            } else if (atom.equalsIgnoreCase("RECENT")) {
                this.recent = response.readNumber();
            } else if (atom.equalsIgnoreCase("UIDNEXT")) {
                this.uidnext = response.readLong();
            } else if (atom.equalsIgnoreCase("UIDVALIDITY")) {
                this.uidvalidity = response.readLong();
            } else if (atom.equalsIgnoreCase("UNSEEN")) {
                this.unseen = response.readNumber();
            } else if (atom.equalsIgnoreCase("HIGHESTMODSEQ")) {
                this.highestmodseq = response.readLong();
            } else {
                if (this.items == null) {
                    this.items = new HashMap();
                }
                this.items.put(atom.toUpperCase(Locale.ENGLISH), Long.valueOf(response.readLong()));
            }
        } while (!response.isNextNonSpace(')'));
    }

    public static void add(Status status, Status status2) {
        int i = status2.total;
        if (i != -1) {
            status.total = i;
        }
        int i2 = status2.recent;
        if (i2 != -1) {
            status.recent = i2;
        }
        long j = status2.uidnext;
        if (j != -1) {
            status.uidnext = j;
        }
        long j2 = status2.uidvalidity;
        if (j2 != -1) {
            status.uidvalidity = j2;
        }
        int i3 = status2.unseen;
        if (i3 != -1) {
            status.unseen = i3;
        }
        long j3 = status2.highestmodseq;
        if (j3 != -1) {
            status.highestmodseq = j3;
        }
        Map<String, Long> map = status.items;
        if (map == null) {
            status.items = status2.items;
            return;
        }
        Map<String, Long> map2 = status2.items;
        if (map2 != null) {
            map.putAll(map2);
        }
    }

    public long getItem(String str) {
        int i;
        Long l;
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        Map<String, Long> map = this.items;
        if (map != null && (l = map.get(upperCase)) != null) {
            return l.longValue();
        }
        if (upperCase.equals("MESSAGES")) {
            i = this.total;
        } else if (upperCase.equals("RECENT")) {
            i = this.recent;
        } else {
            if (upperCase.equals("UIDNEXT")) {
                return this.uidnext;
            }
            if (upperCase.equals("UIDVALIDITY")) {
                return this.uidvalidity;
            }
            if (!upperCase.equals("UNSEEN")) {
                if (upperCase.equals("HIGHESTMODSEQ")) {
                    return this.highestmodseq;
                }
                return -1L;
            }
            i = this.unseen;
        }
        return i;
    }
}
