package z2;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class si {
    public static vi OooO00o(Context context, String str, String str2, String str3) {
        File file = new File(str2);
        return (str2 == null || !file.exists() || file.length() <= 0) ? new ti(context, str, str3) : new ui(context, str2, str3);
    }
}
