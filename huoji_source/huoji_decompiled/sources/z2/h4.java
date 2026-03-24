package z2;

import android.content.Context;
import android.content.res.Resources;
import com.cyjh.common.R;

/* JADX INFO: loaded from: classes.dex */
public class h4 {
    public static final int OooO00o = 1440;
    public static final int OooO0O0 = 60;

    public static String OooO00o(Context context, long j) {
        Resources resources = context.getResources();
        int i = R.string.optionfragment_duetime_day;
        resources.getString(i);
        return j >= 1440 ? String.format(resources.getString(i), Long.valueOf(j / 1440), Long.valueOf((j % 1440) / 60), Long.valueOf(j % 60)) : (j <= 60 || j >= 1440) ? (j > 60 || j <= 0) ? j <= 0 ? resources.getString(R.string.optionfragment_duetime_no) : "" : String.format(resources.getString(R.string.optionfragment_duetime_minute), Long.valueOf(j)) : String.format(resources.getString(R.string.optionfragment_duetime_hour), Long.valueOf(j / 60), Long.valueOf(j % 60));
    }
}
