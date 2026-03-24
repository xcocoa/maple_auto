package cn.haorui.sdk.core.utils;

/* JADX INFO: loaded from: classes.dex */
public class MemoryUtil {
    private static int getMaxMemory() {
        return (int) Runtime.getRuntime().maxMemory();
    }

    public static int getTraceMemory() {
        return ((int) (Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()))) / 2;
    }
}
