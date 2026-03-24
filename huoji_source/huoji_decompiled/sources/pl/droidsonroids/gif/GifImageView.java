package pl.droidsonroids.gif;

import android.content.Context;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import z2.kd0;

/* JADX INFO: loaded from: classes2.dex */
public class GifImageView extends ImageView {
    private boolean OoooOoO;

    public GifImageView(Context context) {
        super(context);
    }

    public GifImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        OooO00o(kd0.OooO0OO(this, attributeSet, 0, 0));
    }

    public GifImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooO00o(kd0.OooO0OO(this, attributeSet, i, 0));
    }

    @RequiresApi(21)
    public GifImageView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        OooO00o(kd0.OooO0OO(this, attributeSet, i, i2));
    }

    private void OooO00o(kd0.OooO00o oooO00o) {
        this.OoooOoO = oooO00o.OooO00o;
        int i = oooO00o.OooO0OO;
        if (i > 0) {
            super.setImageResource(i);
        }
        int i2 = oooO00o.OooO0Oo;
        if (i2 > 0) {
            super.setBackgroundResource(i2);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        gifViewSavedState.restoreState(getDrawable(), 0);
        gifViewSavedState.restoreState(getBackground(), 1);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new GifViewSavedState(super.onSaveInstanceState(), this.OoooOoO ? getDrawable() : null, this.OoooOoO ? getBackground() : null);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        if (kd0.OooO0o0(this, false, i)) {
            return;
        }
        super.setBackgroundResource(i);
    }

    public void setFreezesAnimation(boolean z) {
        this.OoooOoO = z;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        if (kd0.OooO0o0(this, true, i)) {
            return;
        }
        super.setImageResource(i);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        if (kd0.OooO0Oo(this, uri)) {
            return;
        }
        super.setImageURI(uri);
    }
}
