package com.sun.mail.handlers;

import com.github.kevinsawicki.http.HttpRequest;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import javax.activation.ActivationDataFlavor;
import javax.activation.DataSource;
import javax.mail.internet.ContentType;
import javax.mail.internet.MimeUtility;

/* JADX INFO: loaded from: classes2.dex */
public class text_plain extends handler_base {
    private static ActivationDataFlavor[] myDF = {new ActivationDataFlavor(String.class, "text/plain", "Text String")};

    public static class NoCloseOutputStream extends FilterOutputStream {
        public NoCloseOutputStream(OutputStream outputStream) {
            super(outputStream);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    private String getCharset(String str) {
        try {
            String parameter = new ContentType(str).getParameter(HttpRequest.PARAM_CHARSET);
            if (parameter == null) {
                parameter = "us-ascii";
            }
            return MimeUtility.javaCharset(parameter);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // javax.activation.DataContentHandler
    public Object getContent(DataSource dataSource) throws IOException {
        String charset;
        try {
            charset = getCharset(dataSource.getContentType());
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(dataSource.getInputStream(), charset);
                try {
                    char[] cArr = new char[1024];
                    int i = 0;
                    while (true) {
                        int i2 = inputStreamReader.read(cArr, i, cArr.length - i);
                        if (i2 == -1) {
                            break;
                        }
                        i += i2;
                        if (i >= cArr.length) {
                            int length = cArr.length;
                            char[] cArr2 = new char[length < 262144 ? length + length : length + 262144];
                            System.arraycopy(cArr, 0, cArr2, 0, i);
                            cArr = cArr2;
                        }
                    }
                    return new String(cArr, 0, i);
                } finally {
                    try {
                        inputStreamReader.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (IllegalArgumentException unused2) {
                throw new UnsupportedEncodingException(charset);
            }
        } catch (IllegalArgumentException unused3) {
            charset = null;
        }
    }

    @Override // com.sun.mail.handlers.handler_base
    public ActivationDataFlavor[] getDataFlavors() {
        return myDF;
    }

    @Override // javax.activation.DataContentHandler
    public void writeTo(Object obj, String str, OutputStream outputStream) throws IOException {
        if (!(obj instanceof String)) {
            throw new IOException("\"" + getDataFlavors()[0].getMimeType() + "\" DataContentHandler requires String object, was given object of type " + obj.getClass().toString());
        }
        String charset = null;
        try {
            charset = getCharset(str);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new NoCloseOutputStream(outputStream), charset);
            String str2 = (String) obj;
            outputStreamWriter.write(str2, 0, str2.length());
            outputStreamWriter.close();
        } catch (IllegalArgumentException unused) {
            throw new UnsupportedEncodingException(charset);
        }
    }
}
