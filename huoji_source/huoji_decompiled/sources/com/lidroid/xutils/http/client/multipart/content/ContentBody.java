package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface ContentBody extends ContentDescriptor {
    String getFilename();

    void setCallBackInfo(MultipartEntity.CallBackInfo callBackInfo);

    void writeTo(OutputStream outputStream) throws IOException;
}
