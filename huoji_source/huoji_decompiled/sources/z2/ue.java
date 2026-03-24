package z2;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.cyjh.mobileanjian.ipc.ui.SlidingTabLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class ue extends LinearLayout {
    private static final int Oooooo = 0;
    private static final byte OoooooO = 38;
    private static final int Ooooooo = 3;
    private static final int o0OoOo0 = -13388315;
    private final int OoooOoO;
    private final Paint OoooOoo;
    private final int Ooooo00;
    private final Paint Ooooo0o;
    private int OooooO0;
    private float OooooOO;
    public SlidingTabLayout.OooO0o OooooOo;
    public final OooO0O0 Oooooo0;

    public static class OooO0O0 implements SlidingTabLayout.OooO0o {
        public int[] OooO00o;

        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(byte b) {
            this();
        }

        private void OooO00o(int... iArr) {
            this.OooO00o = iArr;
        }

        @Override // com.cyjh.mobileanjian.ipc.ui.SlidingTabLayout.OooO0o
        public final int a(int i) {
            int[] iArr = this.OooO00o;
            return iArr[i % iArr.length];
        }
    }

    public ue(Context context) {
        this(context, (byte) 0);
    }

    private ue(Context context, byte b) {
        super(context, null);
        setWillNotDraw(false);
        float f = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorForeground, typedValue, true);
        int i = typedValue.data;
        int iArgb = Color.argb(38, Color.red(i), Color.green(i), Color.blue(i));
        OooO0O0 oooO0O0 = new OooO0O0((byte) 0);
        this.Oooooo0 = oooO0O0;
        oooO0O0.OooO00o = new int[]{o0OoOo0};
        this.OoooOoO = (int) (0.0f * f);
        Paint paint = new Paint();
        this.OoooOoo = paint;
        paint.setColor(iArgb);
        this.Ooooo00 = (int) (f * 3.0f);
        this.Ooooo0o = new Paint();
    }

    private static int OooO00o(int i) {
        return Color.argb(38, Color.red(i), Color.green(i), Color.blue(i));
    }

    private static int OooO0O0(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.rgb((int) ((Color.red(i) * f) + (Color.red(i2) * f2)), (int) ((Color.green(i) * f) + (Color.green(i2) * f2)), (int) ((Color.blue(i) * f) + (Color.blue(i2) * f2)));
    }

    private void OooO0Oo(SlidingTabLayout.OooO0o oooO0o) {
        this.OooooOo = oooO0o;
        invalidate();
    }

    private void OooO0o0(int... iArr) {
        this.OooooOo = null;
        this.Oooooo0.OooO00o = iArr;
        invalidate();
    }

    public final void OooO0OO(int i, float f) {
        this.OooooO0 = i;
        this.OooooOO = f;
        invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout.OooO0o oooO0o = this.OooooOo;
        if (oooO0o == null) {
            oooO0o = this.Oooooo0;
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.OooooO0);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int iA = oooO0o.a(this.OooooO0);
            if (this.OooooOO > 0.0f && this.OooooO0 < getChildCount() - 1) {
                if (iA != oooO0o.a(this.OooooO0 + 1)) {
                    float f = this.OooooOO;
                    float f2 = 1.0f - f;
                    iA = Color.rgb((int) ((Color.red(r3) * f) + (Color.red(iA) * f2)), (int) ((Color.green(r3) * f) + (Color.green(iA) * f2)), (int) ((Color.blue(r3) * f) + (Color.blue(iA) * f2)));
                }
                View childAt2 = getChildAt(this.OooooO0 + 1);
                float left2 = this.OooooOO * childAt2.getLeft();
                float f3 = this.OooooOO;
                left = (int) (left2 + ((1.0f - f3) * left));
                right = (int) ((f3 * childAt2.getRight()) + ((1.0f - this.OooooOO) * right));
            }
            this.Ooooo0o.setColor(iA);
            canvas.drawRect(left, height - this.Ooooo00, right, height, this.Ooooo0o);
        }
        canvas.drawRect(0.0f, height - this.OoooOoO, getWidth(), height, this.OoooOoo);
    }
}
