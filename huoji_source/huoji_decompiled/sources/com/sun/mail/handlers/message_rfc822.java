package com.sun.mail.handlers;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;
import javax.activation.ActivationDataFlavor;
import javax.activation.DataSource;
import javax.mail.Message;
import javax.mail.MessageAware;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import z2.g6;

/* JADX INFO: loaded from: classes2.dex */
public class message_rfc822 extends handler_base {
    private static ActivationDataFlavor[] ourDataFlavor = {new ActivationDataFlavor(Message.class, "message/rfc822", g6.OooO0Oo)};

    @Override // javax.activation.DataContentHandler
    public Object getContent(DataSource dataSource) throws IOException {
        try {
            return new MimeMessage(dataSource instanceof MessageAware ? ((MessageAware) dataSource).getMessageContext().getSession() : Session.getDefaultInstance(new Properties(), null), dataSource.getInputStream());
        } catch (MessagingException e) {
            IOException iOException = new IOException("Exception creating MimeMessage in message/rfc822 DataContentHandler");
            iOException.initCause(e);
            throw iOException;
        }
    }

    @Override // com.sun.mail.handlers.handler_base
    public ActivationDataFlavor[] getDataFlavors() {
        return ourDataFlavor;
    }

    @Override // javax.activation.DataContentHandler
    public void writeTo(Object obj, String str, OutputStream outputStream) throws IOException {
        if (obj instanceof Message) {
            try {
                ((Message) obj).writeTo(outputStream);
                return;
            } catch (MessagingException e) {
                IOException iOException = new IOException("Exception writing message");
                iOException.initCause(e);
                throw iOException;
            }
        }
        throw new IOException("\"" + getDataFlavors()[0].getMimeType() + "\" DataContentHandler requires Message object, was given object of type " + obj.getClass().toString() + "; obj.cl " + obj.getClass().getClassLoader() + ", Message.cl " + Message.class.getClassLoader());
    }
}
