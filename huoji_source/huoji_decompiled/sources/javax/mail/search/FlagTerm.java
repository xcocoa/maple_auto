package javax.mail.search;

import javax.mail.Flags;
import javax.mail.Message;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes2.dex */
public final class FlagTerm extends SearchTerm {
    private static final long serialVersionUID = -142991500302030647L;
    private Flags flags;
    private boolean set;

    public FlagTerm(Flags flags, boolean z) {
        this.flags = flags;
        this.set = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FlagTerm)) {
            return false;
        }
        FlagTerm flagTerm = (FlagTerm) obj;
        return flagTerm.set == this.set && flagTerm.flags.equals(this.flags);
    }

    public final Flags getFlags() {
        return (Flags) this.flags.clone();
    }

    public final boolean getTestSet() {
        return this.set;
    }

    public final int hashCode() {
        return this.set ? this.flags.hashCode() : ~this.flags.hashCode();
    }

    @Override // javax.mail.search.SearchTerm
    public final boolean match(Message message) {
        try {
            Flags flags = message.getFlags();
            if (this.set) {
                return flags.contains(this.flags);
            }
            for (Flags.Flag flag : this.flags.getSystemFlags()) {
                if (flags.contains(flag)) {
                    return false;
                }
            }
            for (String str : this.flags.getUserFlags()) {
                if (flags.contains(str)) {
                    return false;
                }
            }
            return true;
        } catch (RuntimeException | MessagingException unused) {
            return false;
        }
    }
}
