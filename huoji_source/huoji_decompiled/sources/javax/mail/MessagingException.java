package javax.mail;

/* JADX INFO: loaded from: classes2.dex */
public class MessagingException extends Exception {
    private static final long serialVersionUID = -7569192289819959253L;
    private Exception next;

    public MessagingException() {
        initCause(null);
    }

    public MessagingException(String str) {
        super(str);
        initCause(null);
    }

    public MessagingException(String str, Exception exc) {
        super(str);
        this.next = exc;
        initCause(null);
    }

    private final String superToString() {
        return super.toString();
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        return this.next;
    }

    public synchronized Exception getNextException() {
        return this.next;
    }

    public synchronized boolean setNextException(Exception exc) {
        boolean z;
        Exception exc2 = this;
        while ((exc2 instanceof MessagingException) && ((MessagingException) exc2).next != null) {
            exc2 = ((MessagingException) exc2).next;
        }
        if (exc2 instanceof MessagingException) {
            ((MessagingException) exc2).next = exc;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Throwable
    public synchronized String toString() {
        String string = super.toString();
        Exception exc = this.next;
        if (exc == null) {
            return string;
        }
        if (string == null) {
            string = "";
        }
        StringBuilder sb = new StringBuilder(string);
        while (exc != null) {
            sb.append(";\n  nested exception is:\n\t");
            if (exc instanceof MessagingException) {
                MessagingException messagingException = (MessagingException) exc;
                sb.append(messagingException.superToString());
                exc = messagingException.next;
            } else {
                sb.append(exc.toString());
                exc = null;
            }
        }
        return sb.toString();
    }
}
