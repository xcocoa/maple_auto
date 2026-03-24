package z2;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.Arrays;
import z2.oo00oO;

/* JADX INFO: loaded from: classes.dex */
public class u2<T> implements oo00oO.OooO0O0<T>, SizeReadyCallback {
    private int[] OoooOoO;
    private OooO00o OoooOoo;

    public static final class OooO00o extends ViewTarget<View, Object> {
        public OooO00o(@NonNull View view, @NonNull SizeReadyCallback sizeReadyCallback) {
            super(view);
            getSize(sizeReadyCallback);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable x1<? super Object> x1Var) {
        }
    }

    public u2() {
    }

    public u2(@NonNull View view) {
        this.OoooOoo = new OooO00o(view, this);
    }

    @Override // z2.oo00oO.OooO0O0
    @Nullable
    public int[] OooO00o(@NonNull T t, int i, int i2) {
        int[] iArr = this.OoooOoO;
        if (iArr == null) {
            return null;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    public void OooO0O0(@NonNull View view) {
        if (this.OoooOoO == null && this.OoooOoo == null) {
            this.OoooOoo = new OooO00o(view, this);
        }
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void onSizeReady(int i, int i2) {
        this.OoooOoO = new int[]{i, i2};
        this.OoooOoo = null;
    }
}
