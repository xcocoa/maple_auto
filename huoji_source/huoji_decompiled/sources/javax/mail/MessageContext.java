package javax.mail;

/* JADX INFO: loaded from: classes2.dex */
public class MessageContext {
    private Part part;

    public MessageContext(Part part) {
        this.part = part;
    }

    private static Message getMessage(Part part) throws MessagingException {
        while (part != null) {
            if (part instanceof Message) {
                return (Message) part;
            }
            Multipart parent = ((BodyPart) part).getParent();
            if (parent == null) {
                return null;
            }
            part = parent.getParent();
        }
        return null;
    }

    public Message getMessage() {
        try {
            return getMessage(this.part);
        } catch (MessagingException unused) {
            return null;
        }
    }

    public Part getPart() {
        return this.part;
    }

    public Session getSession() {
        Message message = getMessage();
        if (message != null) {
            return message.getSession();
        }
        return null;
    }
}
