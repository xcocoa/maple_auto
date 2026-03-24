package javax.mail;

import javax.activation.DataSource;

/* JADX INFO: loaded from: classes2.dex */
public interface MultipartDataSource extends DataSource {
    BodyPart getBodyPart(int i) throws MessagingException;

    int getCount();
}
