package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.cyjh.elfin.entity.Script;
import com.google.protobuf.ByteString;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class c9 {
    public static final String OooO00o = "c9";
    public static final String OooO0O0 = "script_version";
    private static long OooO0OO;

    public static boolean OooO(Context context, boolean z) {
        return true;
    }

    public static int OooO00o(Context context) {
        String strOooO0o = OooO0o(context, false);
        String strOooO0o2 = OooO0o(context, true);
        try {
            Long lValueOf = TextUtils.isEmpty(strOooO0o) ? 0L : Long.valueOf(Long.parseLong(strOooO0o));
            Long lValueOf2 = TextUtils.isEmpty(strOooO0o2) ? 0L : Long.valueOf(Long.parseLong(strOooO0o2));
            if (lValueOf2.longValue() > lValueOf.longValue()) {
                return 1;
            }
            return lValueOf2.longValue() < lValueOf.longValue() ? -1 : 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String OooO0O0(Context context) {
        try {
            return context.getFilesDir() + File.separator + g6.o0Oo0oo;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0OO(Context context, boolean z) {
        Script scriptOooO0OO;
        try {
            if (z) {
                scriptOooO0OO = z8.OooO0OO(new FileInputStream(new File(OooO0O0(context) + File.separator + f6.OooO0O0)));
            } else {
                scriptOooO0OO = z8.OooO0OO(context.getAssets().open(f6.OooO0O0));
            }
            return scriptOooO0OO.getSelId();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0Oo(Context context) {
        return j4.OooOOo(j4.OooOO0O(context.getFilesDir().getAbsolutePath(), f6.OooO0oO));
    }

    public static String OooO0o(Context context, boolean z) {
        if (!z) {
            return z8.OooO0Oo(context, f6.OooO0oo);
        }
        return z8.OooO0o0(new File(OooO0O0(context) + File.separator + f6.OooO0oo));
    }

    public static String OooO0o0(Context context, boolean z) {
        Script scriptOooO0OO;
        try {
            if (z) {
                scriptOooO0OO = z8.OooO0OO(new FileInputStream(new File(OooO0O0(context) + File.separator + f6.OooO0O0)));
            } else {
                scriptOooO0OO = z8.OooO0OO(context.getAssets().open(f6.OooO0O0));
            }
            return scriptOooO0OO.getId();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0oO(Context context, boolean z) {
        return j4.OooOOoo(j4.OooOO0O(z ? OooO0O0(context) : context.getFilesDir().getAbsolutePath(), f6.OooO0o0), "GBK");
    }

    public static boolean OooO0oo() {
        if ((System.currentTimeMillis() - OooO0OO) / 1000 <= g6.o0OO00O) {
            return false;
        }
        OooO0OO = System.currentTimeMillis();
        return true;
    }

    public static boolean OooOO0(Context context) {
        String strOooO0o0 = OooO0o0(context, false);
        String strOooO0o02 = OooO0o0(context, true);
        String str = "localScriptId=" + strOooO0o0 + ",sdcardScriptId=" + strOooO0o02;
        return strOooO0o0.equals(strOooO0o02);
    }

    public static Bitmap OooOO0O(int i, int i2, ByteString byteString) {
        Bitmap bitmapCreateBitmap = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(byteString.toByteArray()));
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return bitmapCreateBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return bitmapCreateBitmap;
        }
    }
}
