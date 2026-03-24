package z2;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@rk("The shapes API is currently experimental and subject to change")
public class nl {
    public float OooO00o;
    public float OooO0O0;
    public float OooO0OO;
    public float OooO0Oo;
    private final List<OooO0OO> OooO0o0 = new ArrayList();

    public static class OooO00o extends OooO0OO {
        private static final RectF OooO0oo = new RectF();
        public float OooO0O0;
        public float OooO0OO;
        public float OooO0Oo;
        public float OooO0o;
        public float OooO0o0;
        public float OooO0oO;

        public OooO00o(float f, float f2, float f3, float f4) {
            this.OooO0O0 = f;
            this.OooO0OO = f2;
            this.OooO0Oo = f3;
            this.OooO0o0 = f4;
        }

        @Override // z2.nl.OooO0OO
        public void OooO00o(Matrix matrix, Path path) {
            Matrix matrix2 = this.OooO00o;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = OooO0oo;
            rectF.set(this.OooO0O0, this.OooO0OO, this.OooO0Oo, this.OooO0o0);
            path.arcTo(rectF, this.OooO0o, this.OooO0oO, false);
            path.transform(matrix);
        }
    }

    public static class OooO0O0 extends OooO0OO {
        private float OooO0O0;
        private float OooO0OO;

        @Override // z2.nl.OooO0OO
        public void OooO00o(Matrix matrix, Path path) {
            Matrix matrix2 = this.OooO00o;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.OooO0O0, this.OooO0OO);
            path.transform(matrix);
        }
    }

    public static abstract class OooO0OO {
        public final Matrix OooO00o = new Matrix();

        public abstract void OooO00o(Matrix matrix, Path path);
    }

    public static class OooO0o extends OooO0OO {
        public float OooO0O0;
        public float OooO0OO;
        public float OooO0Oo;
        public float OooO0o0;

        @Override // z2.nl.OooO0OO
        public void OooO00o(Matrix matrix, Path path) {
            Matrix matrix2 = this.OooO00o;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(this.OooO0O0, this.OooO0OO, this.OooO0Oo, this.OooO0o0);
            path.transform(matrix);
        }
    }

    public nl() {
        OooO0o0(0.0f, 0.0f);
    }

    public nl(float f, float f2) {
        OooO0o0(f, f2);
    }

    public void OooO00o(float f, float f2, float f3, float f4, float f5, float f6) {
        OooO00o oooO00o = new OooO00o(f, f2, f3, f4);
        oooO00o.OooO0o = f5;
        oooO00o.OooO0oO = f6;
        this.OooO0o0.add(oooO00o);
        double d = f5 + f6;
        this.OooO0OO = ((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d))));
        this.OooO0Oo = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d))));
    }

    public void OooO0O0(Matrix matrix, Path path) {
        int size = this.OooO0o0.size();
        for (int i = 0; i < size; i++) {
            this.OooO0o0.get(i).OooO00o(matrix, path);
        }
    }

    public void OooO0OO(float f, float f2) {
        OooO0O0 oooO0O0 = new OooO0O0();
        oooO0O0.OooO0O0 = f;
        oooO0O0.OooO0OO = f2;
        this.OooO0o0.add(oooO0O0);
        this.OooO0OO = f;
        this.OooO0Oo = f2;
    }

    public void OooO0Oo(float f, float f2, float f3, float f4) {
        OooO0o oooO0o = new OooO0o();
        oooO0o.OooO0O0 = f;
        oooO0o.OooO0OO = f2;
        oooO0o.OooO0Oo = f3;
        oooO0o.OooO0o0 = f4;
        this.OooO0o0.add(oooO0o);
        this.OooO0OO = f3;
        this.OooO0Oo = f4;
    }

    public void OooO0o0(float f, float f2) {
        this.OooO00o = f;
        this.OooO0O0 = f2;
        this.OooO0OO = f;
        this.OooO0Oo = f2;
        this.OooO0o0.clear();
    }
}
