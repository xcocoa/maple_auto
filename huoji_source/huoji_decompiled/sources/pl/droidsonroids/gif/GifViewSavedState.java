package pl.droidsonroids.gif;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.annotation.NonNull;
import z2.ed0;

/* JADX INFO: loaded from: classes2.dex */
public class GifViewSavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<GifViewSavedState> CREATOR = new OooO00o();
    public final long[][] mStates;

    public class OooO00o implements Parcelable.Creator<GifViewSavedState> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public GifViewSavedState createFromParcel(Parcel parcel) {
            return new GifViewSavedState(parcel, (OooO00o) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public GifViewSavedState[] newArray(int i) {
            return new GifViewSavedState[i];
        }
    }

    private GifViewSavedState(Parcel parcel) {
        super(parcel);
        this.mStates = new long[parcel.readInt()][];
        int i = 0;
        while (true) {
            long[][] jArr = this.mStates;
            if (i >= jArr.length) {
                return;
            }
            jArr[i] = parcel.createLongArray();
            i++;
        }
    }

    public /* synthetic */ GifViewSavedState(Parcel parcel, OooO00o oooO00o) {
        this(parcel);
    }

    public GifViewSavedState(Parcelable parcelable, long[] jArr) {
        super(parcelable);
        this.mStates = new long[][]{jArr};
    }

    public GifViewSavedState(Parcelable parcelable, Drawable... drawableArr) {
        super(parcelable);
        this.mStates = new long[drawableArr.length][];
        for (int i = 0; i < drawableArr.length; i++) {
            Drawable drawable = drawableArr[i];
            if (drawable instanceof ed0) {
                this.mStates[i] = ((ed0) drawable).OooooOo.OooOOOO();
            } else {
                this.mStates[i] = null;
            }
        }
    }

    public void restoreState(Drawable drawable, int i) {
        if (this.mStates[i] == null || !(drawable instanceof ed0)) {
            return;
        }
        ((ed0) drawable).Oooo0O0(r3.OooooOo.OooOooo(r0[i], r3.OooooOO));
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.mStates.length);
        for (long[] jArr : this.mStates) {
            parcel.writeLongArray(jArr);
        }
    }
}
