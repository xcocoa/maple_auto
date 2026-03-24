package javax.mail.event;

import java.util.EventListener;

/* JADX INFO: loaded from: classes2.dex */
public interface MessageCountListener extends EventListener {
    void messagesAdded(MessageCountEvent messageCountEvent);

    void messagesRemoved(MessageCountEvent messageCountEvent);
}
