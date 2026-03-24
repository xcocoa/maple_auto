package javax.mail;

import java.net.InetAddress;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Authenticator {
    private int requestingPort;
    private String requestingPrompt;
    private String requestingProtocol;
    private InetAddress requestingSite;
    private String requestingUserName;

    public final String getDefaultUserName() {
        return this.requestingUserName;
    }

    public PasswordAuthentication getPasswordAuthentication() {
        return null;
    }

    public final int getRequestingPort() {
        return this.requestingPort;
    }

    public final String getRequestingPrompt() {
        return this.requestingPrompt;
    }

    public final String getRequestingProtocol() {
        return this.requestingProtocol;
    }

    public final InetAddress getRequestingSite() {
        return this.requestingSite;
    }

    public final synchronized PasswordAuthentication requestPasswordAuthentication(InetAddress inetAddress, int i, String str, String str2, String str3) {
        this.requestingSite = inetAddress;
        this.requestingPort = i;
        this.requestingProtocol = str;
        this.requestingPrompt = str2;
        this.requestingUserName = str3;
        return getPasswordAuthentication();
    }
}
