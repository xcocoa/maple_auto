package z2;

import android.R;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class el {
    private static final int[] OooO;
    public static final boolean OooO00o;
    private static final int[] OooO0O0;
    private static final int[] OooO0OO;
    private static final int[] OooO0Oo;
    private static final int[] OooO0o;
    private static final int[] OooO0o0;
    private static final int[] OooO0oO;
    private static final int[] OooO0oo;
    private static final int[] OooOO0;

    static {
        OooO00o = Build.VERSION.SDK_INT >= 21;
        OooO0O0 = new int[]{R.attr.state_pressed};
        OooO0OO = new int[]{R.attr.state_hovered, R.attr.state_focused};
        OooO0Oo = new int[]{R.attr.state_focused};
        OooO0o0 = new int[]{R.attr.state_hovered};
        OooO0o = new int[]{R.attr.state_selected, R.attr.state_pressed};
        OooO0oO = new int[]{R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
        OooO0oo = new int[]{R.attr.state_selected, R.attr.state_focused};
        OooO = new int[]{R.attr.state_selected, R.attr.state_hovered};
        OooOO0 = new int[]{R.attr.state_selected};
    }

    private el() {
    }

    @NonNull
    public static ColorStateList OooO00o(@Nullable ColorStateList colorStateList) {
        if (OooO00o) {
            return new ColorStateList(new int[][]{OooOO0, StateSet.NOTHING}, new int[]{OooO0OO(colorStateList, OooO0o), OooO0OO(colorStateList, OooO0O0)});
        }
        int[] iArr = OooO0o;
        int[] iArr2 = OooO0oO;
        int[] iArr3 = OooO0oo;
        int[] iArr4 = OooO;
        int[] iArr5 = OooO0O0;
        int[] iArr6 = OooO0OO;
        int[] iArr7 = OooO0Oo;
        int[] iArr8 = OooO0o0;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, OooOO0, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{OooO0OO(colorStateList, iArr), OooO0OO(colorStateList, iArr2), OooO0OO(colorStateList, iArr3), OooO0OO(colorStateList, iArr4), 0, OooO0OO(colorStateList, iArr5), OooO0OO(colorStateList, iArr6), OooO0OO(colorStateList, iArr7), OooO0OO(colorStateList, iArr8), 0});
    }

    @ColorInt
    @TargetApi(21)
    private static int OooO0O0(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, Math.min(Color.alpha(i) * 2, 255));
    }

    @ColorInt
    private static int OooO0OO(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return OooO00o ? OooO0O0(colorForState) : colorForState;
    }
}
