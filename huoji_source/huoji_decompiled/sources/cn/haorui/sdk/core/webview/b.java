package cn.haorui.sdk.core.webview;

import android.os.SystemClock;
import android.text.TextUtils;
import cn.haorui.sdk.core.utils.HttpUtil;
import com.google.gson.Gson;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b implements Runnable {
    public final /* synthetic */ cn.haorui.sdk.core.taskcenter.b a;
    public final /* synthetic */ Gson b;
    public final /* synthetic */ List c;
    public final /* synthetic */ List d;
    public final /* synthetic */ TaskCenterJs e;

    public b(TaskCenterJs taskCenterJs, cn.haorui.sdk.core.taskcenter.b bVar, Gson gson, List list, List list2) {
        this.e = taskCenterJs;
        this.a = bVar;
        this.b = gson;
        this.c = list;
        this.d = list2;
    }

    @Override // java.lang.Runnable
    public void run() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        boolean z = false;
        while (true) {
            if (SystemClock.uptimeMillis() - jUptimeMillis > UMAmapConfig.AMAP_CACHE_WRITE_TIME && !z) {
                this.a.getClass();
                TaskCenterJs.a(this.e, "javascript:reportOpenApplication(" + this.b.toJson(this.a) + ")");
                List list = this.c;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (String str : this.c) {
                    if (!TextUtils.isEmpty(str)) {
                        HttpUtil.asyncGetTaskReport(str);
                    }
                }
                return;
            }
            TaskCenterWebActivity taskCenterWebActivity = this.e.a;
            if (taskCenterWebActivity.d && !taskCenterWebActivity.isFinishing()) {
                z = true;
            }
            if (z) {
                long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
                TaskCenterJs taskCenterJs = this.e;
                long j = taskCenterJs.e;
                TaskCenterWebActivity taskCenterWebActivity2 = taskCenterJs.a;
                boolean z3 = taskCenterWebActivity2.d;
                if (jUptimeMillis2 <= j) {
                    if (!z3 || taskCenterWebActivity2.isFinishing()) {
                        break;
                    }
                } else if (z3 && !taskCenterWebActivity2.isFinishing()) {
                    this.a.getClass();
                    TaskCenterJs.a(this.e, "javascript:reportOpenApplication(" + this.b.toJson(this.a) + ")");
                    List list2 = this.d;
                    if (list2 == null || list2.size() <= 0) {
                        return;
                    }
                    for (String str2 : this.d) {
                        if (!TextUtils.isEmpty(str2)) {
                            HttpUtil.asyncGetTaskReport(str2);
                        }
                    }
                    return;
                }
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.a.getClass();
        TaskCenterJs.a(this.e, "javascript:reportOpenApplication(" + this.b.toJson(this.a) + ")");
        List list3 = this.c;
        if (list3 == null || list3.size() <= 0) {
            return;
        }
        for (String str3 : this.c) {
            if (!TextUtils.isEmpty(str3)) {
                HttpUtil.asyncGetTaskReport(str3);
            }
        }
    }
}
