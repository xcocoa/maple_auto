package z2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.hardware.Camera;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.tools.utils.ThreadUtils;
import com.yanzhenjie.zbar.Image;
import com.yanzhenjie.zbar.ImageScanner;
import com.yanzhenjie.zbar.Symbol;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class v7 {
    public ImageScanner OooO00o;
    private OooO0OO OooO0O0;

    public class OooO00o extends ThreadUtils.OooO0o<String> {
        public final /* synthetic */ String o00Oo0;
        public final /* synthetic */ OooO0O0 o00Ooo;

        public OooO00o(String str, OooO0O0 oooO0O0) {
            this.o00Oo0 = str;
            this.o00Ooo = oooO0O0;
        }

        @Override // com.cyjh.elfin.tools.utils.ThreadUtils.OooOO0
        /* JADX INFO: renamed from: OooOOo, reason: merged with bridge method [inline-methods] */
        public String OooO0o() throws Throwable {
            Bitmap bitmapOooO0oO = v7.this.OooO0oO(this.o00Oo0);
            if (bitmapOooO0oO == null) {
                return null;
            }
            int width = bitmapOooO0oO.getWidth();
            int height = bitmapOooO0oO.getHeight();
            Image image = new Image(width, height, "RGB4");
            int[] iArr = new int[width * height];
            bitmapOooO0oO.getPixels(iArr, 0, width, 0, 0, width, height);
            image.setData(iArr);
            return v7.this.OooO(image.convert("Y800"));
        }

        @Override // com.cyjh.elfin.tools.utils.ThreadUtils.OooOO0
        /* JADX INFO: renamed from: OooOOoo, reason: merged with bridge method [inline-methods] */
        public void OooOOO0(String str) {
            if (TextUtils.isEmpty(str)) {
                this.o00Ooo.error();
            } else {
                this.o00Ooo.OooO00o(str);
            }
        }
    }

    public interface OooO0O0 {
        void OooO00o(String str);

        void error();
    }

    public class OooO0OO extends Thread {
        private final Image OoooOoO;
        private final OooO0O0 OoooOoo;
        public boolean Ooooo00;

        public OooO0OO(Image image, OooO0O0 oooO0O0) {
            this.OoooOoO = image;
            this.OoooOoo = oooO0O0;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                try {
                    this.Ooooo00 = true;
                    v7.this.OooO0o0(this.OoooOoO, this.OoooOoo);
                } catch (Exception e) {
                    e.printStackTrace();
                    OooO0O0 oooO0O0 = this.OoooOoo;
                    if (oooO0O0 != null) {
                        oooO0O0.error();
                    }
                }
            } finally {
                this.Ooooo00 = false;
            }
        }
    }

    static {
        System.loadLibrary("iconv");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String OooO(Image image) {
        if (this.OooO00o.scanImage(image) == 0) {
            return null;
        }
        for (Symbol symbol : this.OooO00o.getResults()) {
            if (symbol.getType() != 0) {
                String str = Build.VERSION.SDK_INT >= 19 ? new String(symbol.getDataBytes(), StandardCharsets.UTF_8) : symbol.getData();
                if (!TextUtils.isEmpty(str)) {
                    return str;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0o0(Image image, OooO0O0 oooO0O0) throws Exception {
        if (this.OooO00o.scanImage(image) != 0) {
            Iterator<Symbol> it = this.OooO00o.getResults().iterator();
            if (it.hasNext()) {
                Symbol next = it.next();
                if (oooO0O0 != null) {
                    oooO0O0.OooO00o(next.getData().trim());
                    return;
                }
                return;
            }
        }
        if (oooO0O0 != null) {
            oooO0O0.error();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap OooO0oO(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int i = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int i2 = options.outHeight / 400;
            if (i2 > 0) {
                i = i2;
            }
            options.inSampleSize = i;
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void OooO0Oo() {
        ImageScanner imageScanner = new ImageScanner();
        this.OooO00o = imageScanner;
        imageScanner.setConfig(0, 256, 3);
        this.OooO00o.setConfig(0, 257, 3);
    }

    public void OooO0o(byte[] bArr, Camera camera, View view, OooO0O0 oooO0O0) {
        try {
            OooO0OO oooO0OO = this.OooO0O0;
            if (oooO0OO != null && oooO0OO.Ooooo00) {
                throw new Exception();
            }
            Camera.Size previewSize = camera.getParameters().getPreviewSize();
            Image image = new Image(previewSize.width, previewSize.height, "Y800");
            int iOooO0o0 = u7.OooO0o0(AppContext.OooO00o());
            u7.OooO0OO(AppContext.OooO00o());
            float f = (float) ((((double) iOooO0o0) * 1.0d) / ((double) previewSize.height));
            image.setData(bArr);
            image.setCrop((int) (view.getTop() / f), (int) (view.getLeft() / f), (int) (view.getBottom() / f), (int) (view.getRight() / f));
            OooO0OO oooO0OO2 = new OooO0OO(image, oooO0O0);
            this.OooO0O0 = oooO0OO2;
            oooO0OO2.start();
        } catch (Exception unused) {
            if (oooO0O0 != null) {
                oooO0O0.error();
            }
        }
    }

    public void OooO0oo(String str, OooO0O0 oooO0O0) {
        ThreadUtils.OooOOoo(new OooO00o(str, oooO0O0));
    }
}
