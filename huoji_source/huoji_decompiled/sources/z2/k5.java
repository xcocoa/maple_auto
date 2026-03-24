package z2;

import android.content.res.Resources;

/* JADX INFO: loaded from: classes.dex */
public final class k5 {
    public static int OooO00o() {
        Resources resources = u5.OooO00o().getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", g6.OooO0O0);
        if (identifier != 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int OooO0O0() {
        Resources resources = u5.OooO00o().getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", g6.OooO0O0));
    }
}
