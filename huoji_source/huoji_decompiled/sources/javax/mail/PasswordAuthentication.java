package javax.mail;

/* JADX INFO: loaded from: classes2.dex */
public final class PasswordAuthentication {
    private final String password;
    private final String userName;

    public PasswordAuthentication(String str, String str2) {
        this.userName = str;
        this.password = str2;
    }

    public final String getPassword() {
        return this.password;
    }

    public final String getUserName() {
        return this.userName;
    }
}
