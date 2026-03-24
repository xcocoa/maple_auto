package javax.mail;

/* JADX INFO: loaded from: classes2.dex */
public interface QuotaAwareStore {
    Quota[] getQuota(String str) throws MessagingException;

    void setQuota(Quota quota) throws MessagingException;
}
