package cn.haorui.sdk.adsail_ad.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes.dex */
public class HRImageView2 extends AppCompatImageView {
    private static final int PADDING_DP = 6;
    private static final int ROUND_DP = 6;
    private static final int STROKE_WIDTH_DP = 0;
    private Paint paint;
    private RectF rectF;
    private Path roundPath;
    private float scaledDensity;

    public HRImageView2(Context context) {
        super(context);
        this.rectF = new RectF();
        this.roundPath = new Path();
        this.paint = new Paint();
        init();
    }

    public HRImageView2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.rectF = new RectF();
        this.roundPath = new Path();
        this.paint = new Paint();
        init();
    }

    public HRImageView2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.rectF = new RectF();
        this.roundPath = new Path();
        this.paint = new Paint();
        init();
    }

    private void init() {
        this.scaledDensity = getResources().getDisplayMetrics().scaledDensity;
        this.paint.setAntiAlias(true);
        this.paint.setDither(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(this.scaledDensity * 0.0f);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        this.rectF.set(0.0f, 0.0f, getWidth(), getHeight());
        this.roundPath.reset();
        Path path = this.roundPath;
        RectF rectF = this.rectF;
        float f = this.scaledDensity * 6.0f;
        path.addRoundRect(rectF, f, f, Path.Direction.CW);
        canvas.clipPath(this.roundPath);
        super.onDraw(canvas);
    }
}
