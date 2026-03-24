package z2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.android.volley.ParseError;
import com.android.volley.Request;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public class o0000Ooo extends Request<Bitmap> {
    private static final float o0OOO0o = 2.0f;
    private static final Object o0Oo0oo = new Object();
    private static final int o0ooOOo = 1000;
    private static final int o0ooOoO = 2;
    private final oo000o.OooO0O0<Bitmap> o00o0O;
    private ImageView.ScaleType o00oO0O;
    private final int o00oO0o;
    private final Bitmap.Config o00ooo;
    private OooO00o o0ooOO0;
    private final int oo000o;

    public interface OooO00o {
        Bitmap OooO00o(Bitmap bitmap, int i, int i2);

        String key();
    }

    public o0000Ooo(String str, oo000o.OooO0O0<Bitmap> oooO0O0, int i, int i2, Bitmap.Config config, oo000o.OooO00o oooO00o) {
        this(str, oooO0O0, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, null, oooO00o);
    }

    public o0000Ooo(String str, oo000o.OooO0O0<Bitmap> oooO0O0, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, OooO00o oooO00o, oo000o.OooO00o oooO00o2) {
        super(0, str, oooO00o2);
        Oooo0OO(new Oooo0(1000, 2, o0OOO0o));
        this.o00o0O = oooO0O0;
        this.o00ooo = config;
        this.oo000o = i;
        this.o00oO0o = i2;
        this.o00oO0O = scaleType;
        this.o0ooOO0 = oooO00o;
    }

    public o0000Ooo(String str, oo000o.OooO0O0<Bitmap> oooO0O0, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, oo000o.OooO00o oooO00o) {
        this(str, oooO0O0, i, i2, scaleType, config, null, oooO00o);
    }

    public static int OoooO0(int i, int i2, int i3, int i4) {
        double dMin = Math.min(((double) i) / ((double) i3), ((double) i2) / ((double) i4));
        float f = 1.0f;
        while (true) {
            float f2 = o0OOO0o * f;
            if (f2 > dMin) {
                return (int) f;
            }
            f = f2;
        }
    }

    private oo000o<Bitmap> OoooO00(o00Oo0 o00oo0) {
        Bitmap bitmapDecodeByteArray;
        byte[] bArr = o00oo0.OooO0O0;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.oo000o == 0 && this.o00oO0o == 0) {
            options.inPreferredConfig = this.o00ooo;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int iOoooO0O = OoooO0O(this.oo000o, this.o00oO0o, i, i2, this.o00oO0O);
            int iOoooO0O2 = OoooO0O(this.o00oO0o, this.oo000o, i2, i, this.o00oO0O);
            options.inJustDecodeBounds = false;
            options.inSampleSize = OoooO0(i, i2, iOoooO0O, iOoooO0O2);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && iOoooO0O > 0 && iOoooO0O2 > 0 && (bitmapDecodeByteArray.getWidth() > iOoooO0O || bitmapDecodeByteArray.getHeight() > iOoooO0O2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iOoooO0O, iOoooO0O2, true);
                bitmapDecodeByteArray.recycle();
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        if (bitmapDecodeByteArray == null) {
            return oo000o.OooO00o(new ParseError(o00oo0));
        }
        OooO00o oooO00o = this.o0ooOO0;
        if (oooO00o != null) {
            bitmapDecodeByteArray = oooO00o.OooO00o(bitmapDecodeByteArray, this.oo000o, this.o00oO0o);
        }
        return oo000o.OooO0OO(bitmapDecodeByteArray, o00000.OooO00o(o00oo0));
    }

    private static int OoooO0O(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            return (int) (((double) i3) * (((double) i2) / ((double) i4)));
        }
        if (i2 == 0) {
            return i;
        }
        double d = ((double) i4) / ((double) i3);
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d2 = i2;
            return ((double) i) * d < d2 ? (int) (d2 / d) : i;
        }
        double d3 = i2;
        return ((double) i) * d > d3 ? (int) (d3 / d) : i;
    }

    @Override // com.android.volley.Request
    public Request.Priority OooOo0o() {
        return Request.Priority.LOW;
    }

    @Override // com.android.volley.Request
    /* JADX INFO: renamed from: Oooo, reason: merged with bridge method [inline-methods] */
    public void OooO0o(Bitmap bitmap) {
        this.o00o0O.onResponse(bitmap);
    }

    @Override // com.android.volley.Request
    public oo000o<Bitmap> Oooo00o(o00Oo0 o00oo0) {
        oo000o<Bitmap> oo000oVarOoooO00;
        synchronized (o0Oo0oo) {
            try {
                try {
                    oo000oVarOoooO00 = OoooO00(o00oo0);
                } catch (OutOfMemoryError e) {
                    o0OOO0o.OooO0OO("Caught OOM for %d byte image, url=%s", Integer.valueOf(o00oo0.OooO0O0.length), OooOoo());
                    return oo000o.OooO00o(new ParseError(e));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return oo000oVarOoooO00;
    }
}
