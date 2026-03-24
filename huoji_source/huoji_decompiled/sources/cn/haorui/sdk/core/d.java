package cn.haorui.sdk.core;

import android.content.Context;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface d {
    String getAppId();

    List<String> getNeededPermissions();

    void init(Context context, String str, String str2);
}
