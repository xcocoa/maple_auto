package z2;

import android.content.Context;
import android.text.TextUtils;
import com.cyjh.http.bean.response.PhoneConfig;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class dc {
    private static String OooO0O0 = "dc";
    public static int OooO0OO = 1;
    public static int OooO0Oo = 2;
    public static int OooO0o = 0;
    public static int OooO0o0 = 1;
    private static dc OooO0oO;
    private int OooO00o;

    private dc() {
    }

    public static dc OooO00o() {
        if (OooO0oO == null) {
            synchronized (dc.class) {
                if (OooO0oO == null) {
                    OooO0oO = new dc();
                }
            }
        }
        return OooO0oO;
    }

    private String[] OooO0OO(String str) {
        String str2 = "getPackageArr --> packageNames=" + str;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.contains(",") ? str.split(",") : new String[]{str};
    }

    private boolean OooO0Oo(Context context, int i, String[] strArr) {
        String str = "getRecognitionResult --> mode=" + i;
        boolean z = false;
        if (strArr != null) {
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = true;
            for (String str2 : strArr) {
                boolean zOooOooo = ae.OooOooo(context, str2);
                String str3 = "getRecognitionResult --> packageName=" + str2 + ",isInstall=" + zOooOooo;
                if (i == OooO0OO) {
                    z4 = z5 & zOooOooo;
                    z5 = z4;
                } else if (i == OooO0Oo) {
                    z3 |= zOooOooo;
                    z4 = z3;
                }
                if (!z5 || z3) {
                    break;
                }
            }
            z = z4;
        }
        String str4 = "getRecognitionResult --> result=" + z;
        return z;
    }

    public int OooO0O0() {
        return this.OooO00o;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PhoneConfig OooO0o0(Context context, List<PhoneConfig> list) {
        Iterator<PhoneConfig> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PhoneConfig next = it.next();
            boolean zOooO0Oo = OooO0Oo(context, next.getJudgeMode(), OooO0OO(next.getPackage()));
            String str = "init --> recognitionResult=" + zOooO0Oo;
            if (zOooO0Oo) {
                this.OooO00o = next.getCloudPhoneType();
                if (next.getActive() == OooO0o) {
                    return next;
                }
            }
        }
    }
}
