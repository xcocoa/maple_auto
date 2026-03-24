package z2;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import z2.ek;

/* JADX INFO: loaded from: classes2.dex */
public interface fk extends ek.OooO00o {

    public static class OooO {
        public static final float OooO0Oo = Float.MAX_VALUE;
        public float OooO00o;
        public float OooO0O0;
        public float OooO0OO;

        private OooO() {
        }

        public OooO(float f, float f2, float f3) {
            this.OooO00o = f;
            this.OooO0O0 = f2;
            this.OooO0OO = f3;
        }

        public OooO(OooO oooO) {
            this(oooO.OooO00o, oooO.OooO0O0, oooO.OooO0OO);
        }

        public boolean OooO00o() {
            return this.OooO0OO == Float.MAX_VALUE;
        }

        public void OooO0O0(float f, float f2, float f3) {
            this.OooO00o = f;
            this.OooO0O0 = f2;
            this.OooO0OO = f3;
        }

        public void OooO0OO(OooO oooO) {
            OooO0O0(oooO.OooO00o, oooO.OooO0O0, oooO.OooO0OO);
        }
    }

    public static class OooO0O0 implements TypeEvaluator<OooO> {
        public static final TypeEvaluator<OooO> OooO0O0 = new OooO0O0();
        private final OooO OooO00o = new OooO();

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public OooO evaluate(float f, OooO oooO, OooO oooO2) {
            this.OooO00o.OooO0O0(al.OooO0Oo(oooO.OooO00o, oooO2.OooO00o, f), al.OooO0Oo(oooO.OooO0O0, oooO2.OooO0O0, f), al.OooO0Oo(oooO.OooO0OO, oooO2.OooO0OO, f));
            return this.OooO00o;
        }
    }

    public static class OooO0OO extends Property<fk, OooO> {
        public static final Property<fk, OooO> OooO00o = new OooO0OO("circularReveal");

        private OooO0OO(String str) {
            super(OooO.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public OooO get(fk fkVar) {
            return fkVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void set(fk fkVar, OooO oooO) {
            fkVar.setRevealInfo(oooO);
        }
    }

    public static class OooO0o extends Property<fk, Integer> {
        public static final Property<fk, Integer> OooO00o = new OooO0o("circularRevealScrimColor");

        private OooO0o(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public Integer get(fk fkVar) {
            return Integer.valueOf(fkVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void set(fk fkVar, Integer num) {
            fkVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    void OooO00o();

    void OooO0O0();

    void draw(Canvas canvas);

    @Nullable
    Drawable getCircularRevealOverlayDrawable();

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    OooO getRevealInfo();

    boolean isOpaque();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i);

    void setRevealInfo(@Nullable OooO oooO);
}
