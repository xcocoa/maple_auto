package com.sun.mail.imap;

import javax.mail.Message;
import javax.mail.search.SearchTerm;

/* JADX INFO: loaded from: classes2.dex */
public final class ModifiedSinceTerm extends SearchTerm {
    private static final long serialVersionUID = 5151457469634727992L;
    private long modseq;

    public ModifiedSinceTerm(long j) {
        this.modseq = j;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ModifiedSinceTerm) && this.modseq == ((ModifiedSinceTerm) obj).modseq;
    }

    public final long getModSeq() {
        return this.modseq;
    }

    public final int hashCode() {
        return (int) this.modseq;
    }

    @Override // javax.mail.search.SearchTerm
    public final boolean match(Message message) {
        try {
            if (message instanceof IMAPMessage) {
                if (((IMAPMessage) message).getModSeq() >= this.modseq) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
