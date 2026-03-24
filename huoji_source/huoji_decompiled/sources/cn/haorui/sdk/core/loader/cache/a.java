package cn.haorui.sdk.core.loader.cache;

import android.os.SystemClock;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class a implements Comparable<a> {
    public String a;
    public SdkAdInfo b;
    public int c;
    public Object d;
    public boolean e;
    public long f;
    public long g;
    public HRAdInfo h;

    public boolean a() {
        long j = this.g;
        return SystemClock.uptimeMillis() - (this.e ? this.f : this.b.getLoadedTime()) < ((j > 0L ? 1 : (j == 0L ? 0 : -1)) <= 0 ? 1740000L : j * 1000);
    }

    @Override // java.lang.Comparable
    public int compareTo(a aVar) {
        return aVar.c - this.c;
    }

    public String toString() {
        return "CacheEntity{key =" + this.a + ",ad =" + this.d + ",sdkAdInfo=" + this.b.getSdk() + ", cacheScore=" + this.c + MessageFormatter.DELIM_STOP;
    }
}
