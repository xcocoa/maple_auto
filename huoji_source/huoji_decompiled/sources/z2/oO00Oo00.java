package z2;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.PrettyPrintTreeMap;
import java.util.NavigableMap;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(19)
public final class oO00Oo00 implements oO00OOO {
    private static final int OooO0Oo = 8;
    private final OooO0O0 OooO00o = new OooO0O0();
    private final oO00O0o<OooO00o, Bitmap> OooO0O0 = new oO00O0o<>();
    private final NavigableMap<Integer, Integer> OooO0OO = new PrettyPrintTreeMap();

    @VisibleForTesting
    public static final class OooO00o implements oO00OOOo {
        private final OooO0O0 OooO00o;
        public int OooO0O0;

        public OooO00o(OooO0O0 oooO0O0) {
            this.OooO00o = oooO0O0;
        }

        @Override // z2.oO00OOOo
        public void OooO00o() {
            this.OooO00o.OooO0OO(this);
        }

        public void OooO0O0(int i) {
            this.OooO0O0 = i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof OooO00o) && this.OooO0O0 == ((OooO00o) obj).OooO0O0;
        }

        public int hashCode() {
            return this.OooO0O0;
        }

        public String toString() {
            return oO00Oo00.OooO0oO(this.OooO0O0);
        }
    }

    @VisibleForTesting
    public static class OooO0O0 extends oO000Oo<OooO00o> {
        @Override // z2.oO000Oo
        /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
        public OooO00o OooO00o() {
            return new OooO00o(this);
        }

        public OooO00o OooO0o0(int i) {
            OooO00o oooO00o = (OooO00o) super.OooO0O0();
            oooO00o.OooO0O0(i);
            return oooO00o;
        }
    }

    private void OooO0o0(Integer num) {
        Integer num2 = (Integer) this.OooO0OO.get(num);
        if (num2.intValue() == 1) {
            this.OooO0OO.remove(num);
        } else {
            this.OooO0OO.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    public static String OooO0oO(int i) {
        return "[" + i + "]";
    }

    private static String OooO0oo(Bitmap bitmap) {
        return OooO0oO(t2.OooO0oo(bitmap));
    }

    @Override // z2.oO00OOO
    public String OooO00o(int i, int i2, Bitmap.Config config) {
        return OooO0oO(t2.OooO0oO(i, i2, config));
    }

    @Override // z2.oO00OOO
    public int OooO0O0(Bitmap bitmap) {
        return t2.OooO0oo(bitmap);
    }

    @Override // z2.oO00OOO
    public String OooO0OO(Bitmap bitmap) {
        return OooO0oo(bitmap);
    }

    @Override // z2.oO00OOO
    public void OooO0Oo(Bitmap bitmap) {
        OooO00o oooO00oOooO0o0 = this.OooO00o.OooO0o0(t2.OooO0oo(bitmap));
        this.OooO0O0.OooO0Oo(oooO00oOooO0o0, bitmap);
        Integer num = (Integer) this.OooO0OO.get(Integer.valueOf(oooO00oOooO0o0.OooO0O0));
        this.OooO0OO.put(Integer.valueOf(oooO00oOooO0o0.OooO0O0), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // z2.oO00OOO
    @Nullable
    public Bitmap OooO0o(int i, int i2, Bitmap.Config config) {
        int iOooO0oO = t2.OooO0oO(i, i2, config);
        OooO00o oooO00oOooO0o0 = this.OooO00o.OooO0o0(iOooO0oO);
        Integer numCeilingKey = this.OooO0OO.ceilingKey(Integer.valueOf(iOooO0oO));
        if (numCeilingKey != null && numCeilingKey.intValue() != iOooO0oO && numCeilingKey.intValue() <= iOooO0oO * 8) {
            this.OooO00o.OooO0OO(oooO00oOooO0o0);
            oooO00oOooO0o0 = this.OooO00o.OooO0o0(numCeilingKey.intValue());
        }
        Bitmap bitmapOooO00o = this.OooO0O0.OooO00o(oooO00oOooO0o0);
        if (bitmapOooO00o != null) {
            bitmapOooO00o.reconfigure(i, i2, config);
            OooO0o0(numCeilingKey);
        }
        return bitmapOooO00o;
    }

    @Override // z2.oO00OOO
    @Nullable
    public Bitmap removeLast() {
        Bitmap bitmapOooO0o = this.OooO0O0.OooO0o();
        if (bitmapOooO0o != null) {
            OooO0o0(Integer.valueOf(t2.OooO0oo(bitmapOooO0o)));
        }
        return bitmapOooO0o;
    }

    public String toString() {
        return "SizeStrategy:\n  " + this.OooO0O0 + "\n  SortedSizes" + this.OooO0OO;
    }
}
