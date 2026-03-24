package z2;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface x1<R> {

    public interface OooO00o {
        @Nullable
        Drawable getCurrentDrawable();

        View getView();

        void setDrawable(Drawable drawable);
    }

    boolean OooO00o(R r, OooO00o oooO00o);
}
