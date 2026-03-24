package z2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class o00OO000 implements o00O0OOO {
    private static boolean OooO00o(PackageInfo packageInfo) {
        ApplicationInfo applicationInfo;
        return (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 1) == 0) ? false : true;
    }

    @Override // z2.o00O0OOO
    public final List<o00OOO00> a(Context context) {
        ApplicationInfo applicationInfo;
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        if (!installedPackages.isEmpty()) {
            Iterator<PackageInfo> it = installedPackages.iterator();
            while (it.hasNext()) {
                PackageInfo next = it.next();
                o00OOO00 o00ooo00 = new o00OOO00();
                o00ooo00.OooO0oo(next.versionName);
                o00ooo00.OooO0o(next.packageName);
                ApplicationInfo applicationInfo2 = next.applicationInfo;
                if (applicationInfo2 != null) {
                    o00ooo00.OooO0oO(applicationInfo2.loadLabel(packageManager).toString());
                    o00ooo00.OooO0o0(((next == null || (applicationInfo = next.applicationInfo) == null || (applicationInfo.flags & 1) == 0) ? 0 : 1) ^ 1);
                }
                arrayList.add(o00ooo00);
            }
        }
        return arrayList;
    }
}
