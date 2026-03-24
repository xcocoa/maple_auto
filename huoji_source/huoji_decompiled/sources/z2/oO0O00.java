package z2;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DecodeFormat;
import java.util.HashMap;
import z2.oO0O00o0;

/* JADX INFO: loaded from: classes.dex */
public final class oO0O00 {
    private final oO0OO00o OooO00o;
    private final oO000o00 OooO0O0;
    private final DecodeFormat OooO0OO;
    private final Handler OooO0Oo = new Handler(Looper.getMainLooper());
    private oO0O000o OooO0o0;

    public oO0O00(oO0OO00o oo0oo00o, oO000o00 oo000o00, DecodeFormat decodeFormat) {
        this.OooO00o = oo0oo00o;
        this.OooO0O0 = oo000o00;
        this.OooO0OO = decodeFormat;
    }

    private static int OooO0O0(oO0O00o0 oo0o00o0) {
        return t2.OooO0oO(oo0o00o0.OooO0Oo(), oo0o00o0.OooO0O0(), oo0o00o0.OooO00o());
    }

    @VisibleForTesting
    public oO0O00O OooO00o(oO0O00o0... oo0o00o0Arr) {
        long jOooO0o0 = (this.OooO00o.OooO0o0() - this.OooO00o.OooO0Oo()) + this.OooO0O0.OooO0o0();
        int iOooO0OO = 0;
        for (oO0O00o0 oo0o00o0 : oo0o00o0Arr) {
            iOooO0OO += oo0o00o0.OooO0OO();
        }
        float f = jOooO0o0 / iOooO0OO;
        HashMap map = new HashMap();
        for (oO0O00o0 oo0o00o02 : oo0o00o0Arr) {
            map.put(oo0o00o02, Integer.valueOf(Math.round(oo0o00o02.OooO0OO() * f) / OooO0O0(oo0o00o02)));
        }
        return new oO0O00O(map);
    }

    public void OooO0OO(oO0O00o0.OooO00o... oooO00oArr) {
        oO0O000o oo0o000o = this.OooO0o0;
        if (oo0o000o != null) {
            oo0o000o.OooO0O0();
        }
        oO0O00o0[] oo0o00o0Arr = new oO0O00o0[oooO00oArr.length];
        for (int i = 0; i < oooO00oArr.length; i++) {
            oO0O00o0.OooO00o oooO00o = oooO00oArr[i];
            if (oooO00o.OooO0O0() == null) {
                oooO00o.OooO0OO(this.OooO0OO == DecodeFormat.PREFER_ARGB_8888 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            }
            oo0o00o0Arr[i] = oooO00o.OooO00o();
        }
        oO0O000o oo0o000o2 = new oO0O000o(this.OooO0O0, this.OooO00o, OooO00o(oo0o00o0Arr));
        this.OooO0o0 = oo0o000o2;
        this.OooO0Oo.post(oo0o000o2);
    }
}
