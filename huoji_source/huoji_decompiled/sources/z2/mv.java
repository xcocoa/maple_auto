package z2;

import android.graphics.Bitmap;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ac.R;
import com.cyjh.elfin.ui.activity.SweepCodeActivity;
import com.zbar.lib.ZbarManager;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class mv extends Handler {
    public SweepCodeActivity OooO00o;

    public mv(SweepCodeActivity sweepCodeActivity) {
        this.OooO00o = null;
        this.OooO00o = sweepCodeActivity;
    }

    private void OooO00o(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                bArr2[(((i4 * i2) + i2) - i3) - 1] = bArr[(i3 * i) + i4];
            }
        }
        String strDecode = new ZbarManager().decode(bArr2, i2, i, true, this.OooO00o.OooOO0(), this.OooO00o.OooOO0O(), this.OooO00o.OooO0oo(), this.OooO00o.OooO0oO());
        SweepCodeActivity sweepCodeActivity = this.OooO00o;
        if (strDecode == null) {
            if (sweepCodeActivity.OooO() != null) {
                this.OooO00o.OooO().sendEmptyMessage(R.id.decode_failed);
                return;
            }
            return;
        }
        if (sweepCodeActivity.OooOOOo()) {
            sv svVar = new sv(bArr2, i2, i, this.OooO00o.OooOO0(), this.OooO00o.OooOO0O(), this.OooO00o.OooO0oo(), this.OooO00o.OooO0oO(), false);
            int[] iArrOooOOO0 = svVar.OooOOO0();
            int iOooOO0o = svVar.OooOO0o();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArrOooOOO0, 0, iOooOO0o, iOooOO0o, svVar.OooOO0O(), Bitmap.Config.ARGB_8888);
            try {
                String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Qrcode/";
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(str + "Qrcode.jpg");
                if (file2.exists()) {
                    file2.delete();
                }
                file2.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.OooO00o.OooO() != null) {
            Message message = new Message();
            message.obj = strDecode;
            message.what = R.id.decode_succeeded;
            this.OooO00o.OooO().sendMessage(message);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == R.id.decode) {
            OooO00o((byte[]) message.obj, message.arg1, message.arg2);
        } else {
            if (i != R.id.quit) {
                return;
            }
            Looper.myLooper().quit();
        }
    }
}
