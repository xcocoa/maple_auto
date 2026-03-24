package com.sun.mail.imap;

import com.sun.mail.util.DefaultProvider;
import javax.mail.Provider;

/* JADX INFO: loaded from: classes2.dex */
@DefaultProvider
public class IMAPProvider extends Provider {
    public IMAPProvider() {
        super(Provider.Type.STORE, "imap", IMAPStore.class.getName(), "Oracle", null);
    }
}
