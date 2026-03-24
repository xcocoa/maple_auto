package z2;

import android.os.Build;
import z2.yd0;

/* JADX INFO: loaded from: classes2.dex */
public final class ae0 implements yd0.OooO0O0 {
    @Override // z2.yd0.OooO0O0
    public String OooO00o(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }

    @Override // z2.yd0.OooO0O0
    public void OooO0O0(String str) {
        System.loadLibrary(str);
    }

    @Override // z2.yd0.OooO0O0
    public String OooO0OO(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // z2.yd0.OooO0O0
    public String[] OooO0Oo() {
        if (Build.VERSION.SDK_INT >= 21) {
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr.length > 0) {
                return strArr;
            }
        }
        String str = Build.CPU_ABI2;
        return !be0.OooO00o(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    @Override // z2.yd0.OooO0O0
    public void OooO0o0(String str) {
        System.load(str);
    }
}
