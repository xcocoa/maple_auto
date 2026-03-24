package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.widget.RelativeLayout;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.x;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseEndCardView extends RelativeLayout {
    public String a;
    public l b;
    public m c;
    public n d;
    private boolean e;

    public BaseEndCardView(Context context, l lVar, m mVar) {
        super(context);
        this.a = getClass().getSimpleName();
        super.setWillNotDraw(false);
        this.b = lVar;
        this.c = mVar;
        this.d = mVar.n;
    }

    private static RectF a(int i, int i2) {
        int i3 = i / 2;
        float f = i2;
        int i4 = (int) (1.0f * f);
        RectF rectF = new RectF();
        rectF.left = i3 - i4;
        rectF.top = i2 - (i4 * 2);
        rectF.right = i3 + i4;
        rectF.bottom = f;
        return rectF;
    }

    public abstract void a();

    public Drawable b() {
        return null;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        try {
            if (this.e) {
                int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
                super.draw(canvas);
                int width = getWidth();
                int height = getHeight();
                int width2 = getWidth();
                int i = width2 / 2;
                float height2 = getHeight();
                int i2 = (int) (1.0f * height2);
                RectF rectF = new RectF();
                rectF.left = i - i2;
                rectF.top = r4 - (i2 * 2);
                rectF.right = i + i2;
                rectF.bottom = height2;
                x.a(canvas, width, height, rectF);
                canvas.restoreToCount(iSaveLayer);
                return;
            }
        } catch (Exception unused) {
        }
        super.draw(canvas);
    }

    public void setNeedArc(boolean z) {
        this.e = z;
        postInvalidate();
    }
}
