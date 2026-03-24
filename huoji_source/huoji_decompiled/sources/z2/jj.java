package z2;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class jj extends Property<ImageView, Matrix> {
    private final Matrix OooO00o;

    public jj() {
        super(Matrix.class, "imageMatrixProperty");
        this.OooO00o = new Matrix();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
    public Matrix get(ImageView imageView) {
        this.OooO00o.set(imageView.getImageMatrix());
        return this.OooO00o;
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
