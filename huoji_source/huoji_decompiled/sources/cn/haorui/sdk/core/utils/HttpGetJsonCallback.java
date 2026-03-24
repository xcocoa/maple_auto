package cn.haorui.sdk.core.utils;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public interface HttpGetJsonCallback<response> {
    void onFailure(@NotNull IOException iOException);

    void onResponse(response response);
}
