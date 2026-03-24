package com.sun.mail.imap;

import java.util.Date;
import javax.mail.Message;
import javax.mail.search.SearchTerm;

/* JADX INFO: loaded from: classes2.dex */
public final class OlderTerm extends SearchTerm {
    private static final long serialVersionUID = 3951078948727995682L;
    private int interval;

    public OlderTerm(int i) {
        this.interval = i;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof OlderTerm) && this.interval == ((OlderTerm) obj).interval;
    }

    public final int getInterval() {
        return this.interval;
    }

    public final int hashCode() {
        return this.interval;
    }

    @Override // javax.mail.search.SearchTerm
    public final boolean match(Message message) {
        Date receivedDate;
        try {
            receivedDate = message.getReceivedDate();
        } catch (Exception unused) {
        }
        return receivedDate != null && receivedDate.getTime() <= System.currentTimeMillis() - (((long) this.interval) * 1000);
    }
}
