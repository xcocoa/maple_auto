package javax.mail;

/* JADX INFO: loaded from: classes2.dex */
public class SendFailedException extends MessagingException {
    private static final long serialVersionUID = -6457531621682372913L;
    public transient Address[] invalid;
    public transient Address[] validSent;
    public transient Address[] validUnsent;

    public SendFailedException() {
    }

    public SendFailedException(String str) {
        super(str);
    }

    public SendFailedException(String str, Exception exc) {
        super(str, exc);
    }

    public SendFailedException(String str, Exception exc, Address[] addressArr, Address[] addressArr2, Address[] addressArr3) {
        super(str, exc);
        this.validSent = addressArr;
        this.validUnsent = addressArr2;
        this.invalid = addressArr3;
    }

    public Address[] getInvalidAddresses() {
        return this.invalid;
    }

    public Address[] getValidSentAddresses() {
        return this.validSent;
    }

    public Address[] getValidUnsentAddresses() {
        return this.validUnsent;
    }
}
