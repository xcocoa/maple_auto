package z2;

import android.content.Context;
import com.cyjh.http.bean.request.DdyStatisticsData;
import com.cyjh.http.bean.request.DdyStatisticsRequestParamsInfo;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes.dex */
public class pc extends hc {
    private static final String OooO0OO = "pc";
    private static pc OooO0Oo;
    private OooO00o OooO0O0;

    public interface OooO00o {
        void OooO00o(int i, String str);

        void onSuccess();
    }

    private pc() {
    }

    public static pc OooO0o() {
        if (OooO0Oo == null) {
            synchronized (pc.class) {
                if (OooO0Oo == null) {
                    OooO0Oo = new pc();
                }
            }
        }
        return OooO0Oo;
    }

    private void OooO0oo(int i, String str) {
        OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.OooO00o(i, str);
        }
    }

    public void OooO(Context context) {
        try {
            DdyStatisticsRequestParamsInfo ddyStatisticsRequestParamsInfo = new DdyStatisticsRequestParamsInfo(gc.OooO0OO().OooO00o(context));
            ddyStatisticsRequestParamsInfo.IsDDYun = 1;
            ddyStatisticsRequestParamsInfo.IsChargeStatistics = 1;
            this.OooO00o.OooO0oO(context, getClass().getCanonicalName(), k3.OooO0o0 + URLEncoder.encode(n4.OooO0O0(new DdyStatisticsData(DdyStatisticsData.DAILY_STATISTICS, ddyStatisticsRequestParamsInfo)), "UTF-8"));
        } catch (Exception unused) {
        }
    }

    @Override // z2.nd
    public void OooO00o(Object obj) {
        OooO00o oooO00o = this.OooO0O0;
        if (oooO00o != null) {
            oooO00o.onSuccess();
        }
    }

    @Override // z2.hc
    public void OooO0O0(String str) {
        OooO0oo(-1, str);
    }

    public void OooO0OO() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
            this.OooO00o.OooOOO(getClass().getSimpleName());
            this.OooO00o.OooOOO(getClass().getName());
        }
    }

    public void OooO0oO() {
        od odVar = this.OooO00o;
        if (odVar != null) {
            odVar.OooOOO(getClass().getCanonicalName());
        }
    }

    public pc OooOO0(OooO00o oooO00o) {
        this.OooO0O0 = oooO00o;
        return this;
    }
}
