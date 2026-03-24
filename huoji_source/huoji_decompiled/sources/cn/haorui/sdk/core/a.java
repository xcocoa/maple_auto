package cn.haorui.sdk.core;

import cn.haorui.sdk.platform.PlatformFactory;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static Map<String, e> a = PlatformFactory.createAll();

    public static e a(@NotNull String str) {
        return a.get(str);
    }
}
