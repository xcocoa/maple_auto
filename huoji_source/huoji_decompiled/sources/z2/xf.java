package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import com.cyjh.mqsdk.R;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class xf {
    public WindowManager OooO00o;
    public View OooO0O0;
    private Handler OooO0OO;
    private Context OooO0Oo;
    private Handler.Callback OooO0o0 = new OooO00o();

    public class OooO00o implements Handler.Callback {
        public OooO00o() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            xf xfVar = xf.this;
            xfVar.OooO00o.removeView(xfVar.OooO0O0);
            return false;
        }
    }

    public xf(Context context) {
        this.OooO0Oo = context;
        this.OooO00o = (WindowManager) context.getSystemService("window");
    }

    public final void OooO0O0(int i, int i2, String str) {
        Bitmap bitmapDecodeStream;
        try {
            if (new File(str).exists() && (bitmapDecodeStream = BitmapFactory.decodeStream(new FileInputStream(str))) != null) {
                int width = bitmapDecodeStream.getWidth();
                int height = bitmapDecodeStream.getHeight();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                if (Build.VERSION.SDK_INT >= 26) {
                    layoutParams.type = 2038;
                } else {
                    layoutParams.type = 2002;
                }
                layoutParams.format = 1;
                layoutParams.gravity = 51;
                layoutParams.flags = 792;
                layoutParams.width = width;
                layoutParams.height = height;
                layoutParams.x = i - (width / 2);
                layoutParams.y = i2 - (height / 2);
                this.OooO0OO = new Handler(this.OooO0Oo.getMainLooper(), this.OooO0o0);
                View viewInflate = LayoutInflater.from(this.OooO0Oo).inflate(R.layout.ui_show_image, (ViewGroup) null);
                this.OooO0O0 = viewInflate;
                ((ImageView) viewInflate.findViewById(R.id.tap_imageview)).setImageBitmap(bitmapDecodeStream);
                this.OooO00o.addView(this.OooO0O0, layoutParams);
                this.OooO0OO.sendEmptyMessageDelayed(0, 1000L);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
