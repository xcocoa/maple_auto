package z2;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public class kj implements TypeEvaluator<Matrix> {
    private final float[] OooO00o = new float[9];
    private final float[] OooO0O0 = new float[9];
    private final Matrix OooO0OO = new Matrix();

    @Override // android.animation.TypeEvaluator
    /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
    public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.OooO00o);
        matrix2.getValues(this.OooO0O0);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.OooO0O0;
            float f2 = fArr[i];
            float[] fArr2 = this.OooO00o;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.OooO0OO.setValues(this.OooO0O0);
        return this.OooO0OO;
    }
}
