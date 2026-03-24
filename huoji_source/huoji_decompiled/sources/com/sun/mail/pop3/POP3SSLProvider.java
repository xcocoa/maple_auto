package com.sun.mail.pop3;

import com.sun.mail.util.DefaultProvider;
import javax.mail.Provider;

/* JADX INFO: loaded from: classes2.dex */
@DefaultProvider
public class POP3SSLProvider extends Provider {
    public POP3SSLProvider() {
        super(Provider.Type.STORE, "pop3s", POP3SSLStore.class.getName(), "Oracle", null);
    }
}
