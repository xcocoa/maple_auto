package cn.haorui.sdk.core.utils;

import cn.haorui.sdk.core.domain.HttpResponse;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public interface HttpGetBytesCallback {
    void onFailure(@NotNull IOException iOException);

    void onResponse(HttpResponse<byte[]> httpResponse);
}
