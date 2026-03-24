package z2;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.util.HashMap;
import java.util.LinkedList;
import z2.o0000Ooo;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public class o00000OO {
    private final o00Ooo OooO00o;
    private final OooOO0 OooO0OO;
    private Runnable OooO0oO;
    private int OooO0O0 = 100;
    private final HashMap<String, OooO> OooO0Oo = new HashMap<>();
    private final HashMap<String, OooO> OooO0o0 = new HashMap<>();
    private final Handler OooO0o = new Handler(Looper.getMainLooper());

    public class OooO {
        private final Request<?> OooO00o;
        private Bitmap OooO0O0;
        private VolleyError OooO0OO;
        private final LinkedList<OooOO0O> OooO0Oo;

        public OooO(Request<?> request, OooOO0O oooOO0O) {
            LinkedList<OooOO0O> linkedList = new LinkedList<>();
            this.OooO0Oo = linkedList;
            this.OooO00o = request;
            linkedList.add(oooOO0O);
        }

        public void OooO0Oo(OooOO0O oooOO0O) {
            this.OooO0Oo.add(oooOO0O);
        }

        public boolean OooO0o(OooOO0O oooOO0O) {
            this.OooO0Oo.remove(oooOO0O);
            if (this.OooO0Oo.size() != 0) {
                return false;
            }
            this.OooO00o.OooO0OO();
            return true;
        }

        public VolleyError OooO0o0() {
            return this.OooO0OO;
        }

        public void OooO0oO(VolleyError volleyError) {
            this.OooO0OO = volleyError;
        }
    }

    public static class OooO00o implements OooOOO0 {
        public final /* synthetic */ int OoooOoO;
        public final /* synthetic */ ImageView OoooOoo;
        public final /* synthetic */ int Ooooo00;

        public OooO00o(int i, ImageView imageView, int i2) {
            this.OoooOoO = i;
            this.OoooOoo = imageView;
            this.Ooooo00 = i2;
        }

        @Override // z2.o00000OO.OooOOO0
        public void OooO00o(OooOO0O oooOO0O, boolean z) {
            if (oooOO0O.OooO0Oo() != null) {
                this.OoooOoo.setImageBitmap(oooOO0O.OooO0Oo());
                return;
            }
            int i = this.Ooooo00;
            if (i != 0) {
                this.OoooOoo.setImageResource(i);
            }
        }

        @Override // z2.oo000o.OooO00o
        public void OooO0O0(VolleyError volleyError) {
            int i = this.OoooOoO;
            if (i != 0) {
                this.OoooOoo.setImageResource(i);
            }
        }
    }

    public class OooO0O0 implements oo000o.OooO0O0<Bitmap> {
        public final /* synthetic */ String OoooOoO;

        public OooO0O0(String str) {
            this.OoooOoO = str;
        }

        @Override // z2.oo000o.OooO0O0
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public void onResponse(Bitmap bitmap) {
            o00000OO.this.OooOOOo(this.OoooOoO, bitmap);
        }
    }

    public class OooO0OO implements oo000o.OooO00o {
        public final /* synthetic */ String OoooOoO;

        public OooO0OO(String str) {
            this.OoooOoO = str;
        }

        @Override // z2.oo000o.OooO00o
        public void OooO0O0(VolleyError volleyError) {
            o00000OO.this.OooOOOO(this.OoooOoO, volleyError);
        }
    }

    public class OooO0o implements Runnable {
        public OooO0o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (OooO oooO : o00000OO.this.OooO0o0.values()) {
                for (OooOO0O oooOO0O : oooO.OooO0Oo) {
                    if (oooOO0O.OooO0O0 != null) {
                        if (oooO.OooO0o0() == null) {
                            oooOO0O.OooO00o = oooO.OooO0O0;
                            oooOO0O.OooO0O0.OooO00o(oooOO0O, false);
                        } else {
                            oooOO0O.OooO0O0.OooO0O0(oooO.OooO0o0());
                        }
                    }
                }
            }
            o00000OO.this.OooO0o0.clear();
            o00000OO.this.OooO0oO = null;
        }
    }

    public interface OooOO0 {
        Bitmap OooO00o(String str);

        void OooO0O0(String str, Bitmap bitmap);
    }

    public class OooOO0O {
        private Bitmap OooO00o;
        private final OooOOO0 OooO0O0;
        private final String OooO0OO;
        private final String OooO0Oo;

        public OooOO0O(Bitmap bitmap, String str, String str2, OooOOO0 oooOOO0) {
            this.OooO00o = bitmap;
            this.OooO0Oo = str;
            this.OooO0OO = str2;
            this.OooO0O0 = oooOOO0;
        }

        public void OooO0OO() {
            HashMap map;
            if (this.OooO0O0 == null) {
                return;
            }
            OooO oooO = (OooO) o00000OO.this.OooO0Oo.get(this.OooO0OO);
            if (oooO == null) {
                OooO oooO2 = (OooO) o00000OO.this.OooO0o0.get(this.OooO0OO);
                if (oooO2 == null) {
                    return;
                }
                oooO2.OooO0o(this);
                if (oooO2.OooO0Oo.size() != 0) {
                    return;
                } else {
                    map = o00000OO.this.OooO0o0;
                }
            } else if (!oooO.OooO0o(this)) {
                return;
            } else {
                map = o00000OO.this.OooO0Oo;
            }
            map.remove(this.OooO0OO);
        }

        public Bitmap OooO0Oo() {
            return this.OooO00o;
        }

        public String OooO0o0() {
            return this.OooO0Oo;
        }
    }

    public interface OooOOO0 extends oo000o.OooO00o {
        void OooO00o(OooOO0O oooOO0O, boolean z);
    }

    public o00000OO(o00Ooo o00ooo, OooOO0 oooOO0) {
        this.OooO00o = o00ooo;
        this.OooO0OO = oooOO0;
    }

    private static String OooO(String str, int i, int i2, ImageView.ScaleType scaleType, o0000Ooo.OooO00o oooO00o) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("#W");
        sb.append(i);
        sb.append("#H");
        sb.append(i2);
        sb.append("#S");
        sb.append(scaleType.toString());
        if (oooO00o != null) {
            sb.append("#T");
            sb.append(oooO00o.key());
        }
        return sb.toString();
    }

    private void OooO0Oo(String str, OooO oooO) {
        this.OooO0o0.put(str, oooO);
        if (this.OooO0oO == null) {
            OooO0o oooO0o = new OooO0o();
            this.OooO0oO = oooO0o;
            this.OooO0o.postDelayed(oooO0o, this.OooO0O0);
        }
    }

    public static OooOOO0 OooOO0(ImageView imageView, int i, int i2) {
        return new OooO00o(i2, imageView, i);
    }

    private void OooOOo() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
        }
    }

    public OooOO0O OooO0o(String str, OooOOO0 oooOOO0, int i, int i2) {
        return OooO0oo(str, oooOOO0, i, i2, ImageView.ScaleType.CENTER_INSIDE, null);
    }

    public OooOO0O OooO0o0(String str, OooOOO0 oooOOO0) {
        return OooO0oO(str, oooOOO0, 0, 0, ImageView.ScaleType.CENTER_INSIDE);
    }

    public OooOO0O OooO0oO(String str, OooOOO0 oooOOO0, int i, int i2, ImageView.ScaleType scaleType) {
        return OooO0oo(str, oooOOO0, i, i2, scaleType, null);
    }

    public OooOO0O OooO0oo(String str, OooOOO0 oooOOO0, int i, int i2, ImageView.ScaleType scaleType, o0000Ooo.OooO00o oooO00o) {
        OooOOo();
        String strOooO = OooO(str, i, i2, scaleType, oooO00o);
        Bitmap bitmapOooO00o = this.OooO0OO.OooO00o(strOooO);
        if (bitmapOooO00o != null) {
            OooOO0O oooOO0O = new OooOO0O(bitmapOooO00o, str, null, null);
            oooOOO0.OooO00o(oooOO0O, true);
            return oooOO0O;
        }
        OooOO0O oooOO0O2 = new OooOO0O(null, str, strOooO, oooOOO0);
        oooOOO0.OooO00o(oooOO0O2, true);
        OooO oooO = this.OooO0Oo.get(strOooO);
        if (oooO != null) {
            oooO.OooO0Oo(oooOO0O2);
            return oooOO0O2;
        }
        Request<Bitmap> requestOooOOO = OooOOO(str, i, i2, scaleType, strOooO, oooO00o);
        this.OooO00o.OooO00o(requestOooOOO);
        this.OooO0Oo.put(strOooO, new OooO(requestOooOOO, oooOO0O2));
        return oooOO0O2;
    }

    public boolean OooOO0O(String str, int i, int i2) {
        return OooOOO0(str, i, i2, ImageView.ScaleType.CENTER_INSIDE, null);
    }

    public boolean OooOO0o(String str, int i, int i2, ImageView.ScaleType scaleType) {
        return OooOOO0(str, i, i2, scaleType, null);
    }

    public Request<Bitmap> OooOOO(String str, int i, int i2, ImageView.ScaleType scaleType, String str2, o0000Ooo.OooO00o oooO00o) {
        return new o0000Ooo(str, new OooO0O0(str2), i, i2, scaleType, Bitmap.Config.RGB_565, oooO00o, new OooO0OO(str2));
    }

    public boolean OooOOO0(String str, int i, int i2, ImageView.ScaleType scaleType, o0000Ooo.OooO00o oooO00o) {
        OooOOo();
        return this.OooO0OO.OooO00o(OooO(str, i, i2, scaleType, oooO00o)) != null;
    }

    public void OooOOOO(String str, VolleyError volleyError) {
        OooO oooORemove = this.OooO0Oo.remove(str);
        if (oooORemove != null) {
            oooORemove.OooO0oO(volleyError);
            OooO0Oo(str, oooORemove);
        }
    }

    public void OooOOOo(String str, Bitmap bitmap) {
        this.OooO0OO.OooO0O0(str, bitmap);
        OooO oooORemove = this.OooO0Oo.remove(str);
        if (oooORemove != null) {
            oooORemove.OooO0O0 = bitmap;
            OooO0Oo(str, oooORemove);
        }
    }

    public void OooOOo0(int i) {
        this.OooO0O0 = i;
    }
}
