package javax.mail.search;

import javax.mail.Message;

/* JADX INFO: loaded from: classes2.dex */
public final class NotTerm extends SearchTerm {
    private static final long serialVersionUID = 7152293214217310216L;
    private SearchTerm term;

    public NotTerm(SearchTerm searchTerm) {
        this.term = searchTerm;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof NotTerm) {
            return ((NotTerm) obj).term.equals(this.term);
        }
        return false;
    }

    public final SearchTerm getTerm() {
        return this.term;
    }

    public final int hashCode() {
        return this.term.hashCode() << 1;
    }

    @Override // javax.mail.search.SearchTerm
    public final boolean match(Message message) {
        return !this.term.match(message);
    }
}
