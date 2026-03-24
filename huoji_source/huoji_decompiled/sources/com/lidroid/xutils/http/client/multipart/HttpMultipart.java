package com.lidroid.xutils.http.client.multipart;

import com.anythink.expressad.d.a.b;
import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.apache.http.util.ByteArrayBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class HttpMultipart {
    private static /* synthetic */ int[] $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode;
    private static final ByteArrayBuffer CR_LF;
    private static final ByteArrayBuffer FIELD_SEP;
    private static final ByteArrayBuffer TWO_DASHES;
    private final String boundary;
    private final Charset charset;
    private final HttpMultipartMode mode;
    private final List<FormBodyPart> parts;
    private String subType;

    public static /* synthetic */ int[] $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode() {
        int[] iArr = $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[HttpMultipartMode.valuesCustom().length];
        try {
            iArr2[HttpMultipartMode.BROWSER_COMPATIBLE.ordinal()] = 2;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[HttpMultipartMode.STRICT.ordinal()] = 1;
        } catch (NoSuchFieldError unused2) {
        }
        $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode = iArr2;
        return iArr2;
    }

    static {
        Charset charset = MIME.DEFAULT_CHARSET;
        FIELD_SEP = encode(charset, ": ");
        CR_LF = encode(charset, IOUtils.LINE_SEPARATOR_WINDOWS);
        TWO_DASHES = encode(charset, "--");
    }

    public HttpMultipart(String str, String str2) {
        this(str, null, str2);
    }

    public HttpMultipart(String str, Charset charset, String str2) {
        this(str, charset, str2, HttpMultipartMode.STRICT);
    }

    public HttpMultipart(String str, Charset charset, String str2, HttpMultipartMode httpMultipartMode) {
        if (str == null) {
            throw new IllegalArgumentException("Multipart subtype may not be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Multipart boundary may not be null");
        }
        this.subType = str;
        this.charset = charset == null ? MIME.DEFAULT_CHARSET : charset;
        this.boundary = str2;
        this.parts = new ArrayList();
        this.mode = httpMultipartMode;
    }

    private void doWriteTo(HttpMultipartMode httpMultipartMode, OutputStream outputStream, MultipartEntity.CallBackInfo callBackInfo, boolean z) throws IOException {
        callBackInfo.pos = 0L;
        ByteArrayBuffer byteArrayBufferEncode = encode(this.charset, getBoundary());
        for (FormBodyPart formBodyPart : this.parts) {
            if (!callBackInfo.doCallBack(true)) {
                throw new InterruptedIOException(b.dO);
            }
            ByteArrayBuffer byteArrayBuffer = TWO_DASHES;
            writeBytes(byteArrayBuffer, outputStream);
            callBackInfo.pos += (long) byteArrayBuffer.length();
            writeBytes(byteArrayBufferEncode, outputStream);
            callBackInfo.pos += (long) byteArrayBufferEncode.length();
            ByteArrayBuffer byteArrayBuffer2 = CR_LF;
            writeBytes(byteArrayBuffer2, outputStream);
            callBackInfo.pos += (long) byteArrayBuffer2.length();
            MinimalFieldHeader header = formBodyPart.getHeader();
            int i = $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode()[httpMultipartMode.ordinal()];
            if (i == 1) {
                for (MinimalField minimalField : header) {
                    writeField(minimalField, outputStream);
                    callBackInfo.pos = callBackInfo.pos + ((long) (encode(MIME.DEFAULT_CHARSET, String.valueOf(minimalField.getName()) + minimalField.getBody()).length() + FIELD_SEP.length() + CR_LF.length()));
                }
            } else if (i == 2) {
                MinimalField field = header.getField("Content-Disposition");
                writeField(field, this.charset, outputStream);
                long j = callBackInfo.pos;
                int length = encode(this.charset, String.valueOf(field.getName()) + field.getBody()).length();
                ByteArrayBuffer byteArrayBuffer3 = FIELD_SEP;
                callBackInfo.pos = j + ((long) (length + byteArrayBuffer3.length() + byteArrayBuffer2.length()));
                if (formBodyPart.getBody().getFilename() != null) {
                    MinimalField field2 = header.getField("Content-Type");
                    writeField(field2, this.charset, outputStream);
                    callBackInfo.pos = callBackInfo.pos + ((long) (encode(this.charset, String.valueOf(field2.getName()) + field2.getBody()).length() + byteArrayBuffer3.length() + byteArrayBuffer2.length()));
                }
            }
            ByteArrayBuffer byteArrayBuffer4 = CR_LF;
            writeBytes(byteArrayBuffer4, outputStream);
            callBackInfo.pos += (long) byteArrayBuffer4.length();
            if (z) {
                ContentBody body = formBodyPart.getBody();
                body.setCallBackInfo(callBackInfo);
                body.writeTo(outputStream);
            }
            writeBytes(byteArrayBuffer4, outputStream);
            callBackInfo.pos += (long) byteArrayBuffer4.length();
        }
        ByteArrayBuffer byteArrayBuffer5 = TWO_DASHES;
        writeBytes(byteArrayBuffer5, outputStream);
        callBackInfo.pos += (long) byteArrayBuffer5.length();
        writeBytes(byteArrayBufferEncode, outputStream);
        callBackInfo.pos += (long) byteArrayBufferEncode.length();
        writeBytes(byteArrayBuffer5, outputStream);
        callBackInfo.pos += (long) byteArrayBuffer5.length();
        ByteArrayBuffer byteArrayBuffer6 = CR_LF;
        writeBytes(byteArrayBuffer6, outputStream);
        callBackInfo.pos += (long) byteArrayBuffer6.length();
        callBackInfo.doCallBack(true);
    }

    private void doWriteTo(HttpMultipartMode httpMultipartMode, OutputStream outputStream, boolean z) throws IOException {
        doWriteTo(httpMultipartMode, outputStream, MultipartEntity.CallBackInfo.DEFAULT, z);
    }

    private static ByteArrayBuffer encode(Charset charset, String str) {
        ByteBuffer byteBufferEncode = charset.encode(CharBuffer.wrap(str));
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(byteBufferEncode.remaining());
        byteArrayBuffer.append(byteBufferEncode.array(), byteBufferEncode.position(), byteBufferEncode.remaining());
        return byteArrayBuffer;
    }

    private static void writeBytes(String str, OutputStream outputStream) throws IOException {
        writeBytes(encode(MIME.DEFAULT_CHARSET, str), outputStream);
    }

    private static void writeBytes(String str, Charset charset, OutputStream outputStream) throws IOException {
        writeBytes(encode(charset, str), outputStream);
    }

    private static void writeBytes(ByteArrayBuffer byteArrayBuffer, OutputStream outputStream) throws IOException {
        outputStream.write(byteArrayBuffer.buffer(), 0, byteArrayBuffer.length());
        outputStream.flush();
    }

    private static void writeField(MinimalField minimalField, OutputStream outputStream) throws IOException {
        writeBytes(minimalField.getName(), outputStream);
        writeBytes(FIELD_SEP, outputStream);
        writeBytes(minimalField.getBody(), outputStream);
        writeBytes(CR_LF, outputStream);
    }

    private static void writeField(MinimalField minimalField, Charset charset, OutputStream outputStream) throws IOException {
        writeBytes(minimalField.getName(), charset, outputStream);
        writeBytes(FIELD_SEP, outputStream);
        writeBytes(minimalField.getBody(), charset, outputStream);
        writeBytes(CR_LF, outputStream);
    }

    public void addBodyPart(FormBodyPart formBodyPart) {
        if (formBodyPart == null) {
            return;
        }
        this.parts.add(formBodyPart);
    }

    public List<FormBodyPart> getBodyParts() {
        return this.parts;
    }

    public String getBoundary() {
        return this.boundary;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public HttpMultipartMode getMode() {
        return this.mode;
    }

    public String getSubType() {
        return this.subType;
    }

    public long getTotalLength() {
        Iterator<FormBodyPart> it = this.parts.iterator();
        long j = 0;
        while (it.hasNext()) {
            long contentLength = it.next().getBody().getContentLength();
            if (contentLength < 0) {
                return -1L;
            }
            j += contentLength;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            doWriteTo(this.mode, byteArrayOutputStream, false);
            return j + ((long) byteArrayOutputStream.toByteArray().length);
        } catch (Throwable unused) {
            return -1L;
        }
    }

    public void setSubType(String str) {
        this.subType = str;
    }

    public void writeTo(OutputStream outputStream, MultipartEntity.CallBackInfo callBackInfo) throws IOException {
        doWriteTo(this.mode, outputStream, callBackInfo, true);
    }
}
