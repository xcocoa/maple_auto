package javax.mail.internet;

/* JADX INFO: loaded from: classes2.dex */
public class AddressException extends ParseException {
    private static final long serialVersionUID = 9134583443539323120L;
    public int pos;
    public String ref;

    public AddressException() {
        this.ref = null;
        this.pos = -1;
    }

    public AddressException(String str) {
        super(str);
        this.ref = null;
        this.pos = -1;
    }

    public AddressException(String str, String str2) {
        super(str);
        this.ref = null;
        this.pos = -1;
        this.ref = str2;
    }

    public AddressException(String str, String str2, int i) {
        super(str);
        this.ref = null;
        this.pos = -1;
        this.ref = str2;
        this.pos = i;
    }

    public int getPos() {
        return this.pos;
    }

    public String getRef() {
        return this.ref;
    }

    @Override // javax.mail.MessagingException, java.lang.Throwable
    public String toString() {
        String string = super.toString();
        if (this.ref == null) {
            return string;
        }
        String str = string + " in string ``" + this.ref + "''";
        if (this.pos < 0) {
            return str;
        }
        return str + " at position " + this.pos;
    }
}
