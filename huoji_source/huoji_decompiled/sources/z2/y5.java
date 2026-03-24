package z2;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class y5 extends RecyclerView.ItemDecoration {
    private Paint OooO00o;
    private Drawable OooO0O0;
    private int OooO0OO;
    private int OooO0Oo;
    private int OooO0o0;

    public y5(Context context, int i) {
        this.OooO0Oo = 1;
        this.OooO0o0 = 1;
        OooO00o(context, i);
    }

    public y5(Context context, int i, int i2, int i3) {
        this.OooO0Oo = 1;
        this.OooO0o0 = 1;
        this.OooO0OO = i2;
        this.OooO0Oo = i3;
        OooO00o(context, i);
    }

    private void OooO00o(Context context, int i) {
        this.OooO0o0 = i;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("请输入正确的参数");
        }
        this.OooO0o0 = i;
        OooO0O0(context);
    }

    private void OooO0O0(Context context) {
        Paint paint = new Paint();
        this.OooO00o = paint;
        paint.setFlags(1);
        this.OooO00o.setStyle(Paint.Style.FILL);
        this.OooO00o.setColor(context.getResources().getColor(this.OooO0OO));
    }

    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int paddingTop = recyclerView.getPaddingTop();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            canvas.drawRect(childAt.getRight() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).rightMargin, paddingTop, this.OooO0Oo + r5, childAt.getBottom(), this.OooO00o);
        }
    }

    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int paddingLeft = recyclerView.getPaddingLeft();
        int measuredWidth = recyclerView.getMeasuredWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            canvas.drawRect(paddingLeft, childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin, measuredWidth, this.OooO0Oo + r4, this.OooO00o);
        }
    }

    public void OooO0OO(int i) {
        this.OooO00o.setColor(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        if (this.OooO0o0 == 1) {
            rect.set(0, 0, 0, this.OooO0Oo);
        } else {
            rect.set(0, 0, this.OooO0Oo, 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        if (this.OooO0o0 == 0) {
            drawHorizontal(canvas, recyclerView);
        } else {
            drawVertical(canvas, recyclerView);
        }
    }
}
