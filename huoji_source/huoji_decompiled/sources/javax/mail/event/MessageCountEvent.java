package javax.mail.event;

import javax.mail.Folder;
import javax.mail.Message;

/* JADX INFO: loaded from: classes2.dex */
public class MessageCountEvent extends MailEvent {
    public static final int ADDED = 1;
    public static final int REMOVED = 2;
    private static final long serialVersionUID = -7447022340837897369L;
    public transient Message[] msgs;
    public boolean removed;
    public int type;

    public MessageCountEvent(Folder folder, int i, boolean z, Message[] messageArr) {
        super(folder);
        this.type = i;
        this.removed = z;
        this.msgs = messageArr;
    }

    @Override // javax.mail.event.MailEvent
    public void dispatch(Object obj) {
        MessageCountListener messageCountListener = (MessageCountListener) obj;
        if (this.type == 1) {
            messageCountListener.messagesAdded(this);
        } else {
            messageCountListener.messagesRemoved(this);
        }
    }

    public Message[] getMessages() {
        return this.msgs;
    }

    public int getType() {
        return this.type;
    }

    public boolean isRemoved() {
        return this.removed;
    }
}
