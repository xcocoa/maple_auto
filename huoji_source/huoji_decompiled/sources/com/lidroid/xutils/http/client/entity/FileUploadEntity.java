package com.lidroid.xutils.http.client.entity;

import com.anythink.expressad.d.a.b;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.FileEntity;

/* JADX INFO: loaded from: classes2.dex */
public class FileUploadEntity extends FileEntity implements UploadEntity {
    private RequestCallBackHandler callBackHandler;
    private long fileSize;
    private long uploadedSize;

    public FileUploadEntity(File file, String str) {
        super(file, str);
        this.uploadedSize = 0L;
        this.callBackHandler = null;
        this.fileSize = file.length();
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    @Override // org.apache.http.entity.FileEntity, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws Throwable {
        BufferedInputStream bufferedInputStream;
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(((FileEntity) this).file));
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int i = bufferedInputStream.read(bArr);
                if (i == -1) {
                    outputStream.flush();
                    RequestCallBackHandler requestCallBackHandler = this.callBackHandler;
                    if (requestCallBackHandler != null) {
                        requestCallBackHandler.updateProgress(this.fileSize, this.uploadedSize, true);
                    }
                    IOUtils.closeQuietly(bufferedInputStream);
                    return;
                }
                outputStream.write(bArr, 0, i);
                long j = this.uploadedSize + ((long) i);
                this.uploadedSize = j;
                RequestCallBackHandler requestCallBackHandler2 = this.callBackHandler;
                if (requestCallBackHandler2 != null && !requestCallBackHandler2.updateProgress(this.fileSize, j, false)) {
                    throw new InterruptedIOException(b.dO);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            IOUtils.closeQuietly(bufferedInputStream2);
            throw th;
        }
    }
}
