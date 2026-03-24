package com.anythink.core.common.o;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.anythink.core.common.o.a.f;

/* JADX INFO: loaded from: classes.dex */
public final class x {
    private static boolean a;

    private static Path a(int i, int i2, int i3) {
        Path path = new Path();
        float f = i;
        path.moveTo(f, 0.0f);
        float f2 = i2 - i;
        path.lineTo(f2, 0.0f);
        float f3 = i2;
        path.quadTo(f3, 0.0f, f3, f);
        float f4 = i3 - i;
        path.lineTo(f3, f4);
        float f5 = i3;
        path.quadTo(f3, f5, f2, f5);
        path.lineTo(f, f5);
        path.quadTo(0.0f, f5, 0.0f, f4);
        path.lineTo(0.0f, f);
        path.quadTo(0.0f, 0.0f, f, 0.0f);
        path.close();
        return path;
    }

    public static void a(Canvas canvas, int i, int i2, int i3) {
        try {
            Paint paint = new Paint(1);
            paint.setColor(-1);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            Path path = new Path();
            float f = i3;
            path.moveTo(f, 0.0f);
            float f2 = i - i3;
            path.lineTo(f2, 0.0f);
            float f3 = i;
            path.quadTo(f3, 0.0f, f3, f);
            float f4 = i2 - i3;
            path.lineTo(f3, f4);
            float f5 = i2;
            path.quadTo(f3, f5, f2, f5);
            path.lineTo(f, f5);
            path.quadTo(0.0f, f5, 0.0f, f4);
            path.lineTo(0.0f, f);
            path.quadTo(0.0f, 0.0f, f, 0.0f);
            path.close();
            canvas2.drawPath(path, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Canvas canvas, int i, int i2, RectF rectF) {
        try {
            Paint paint = new Paint(1);
            paint.setColor(-1);
            paint.setStyle(Paint.Style.FILL);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawArc(rectF, 0.0f, 180.0f, true, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(View view) {
        if (view != null) {
            try {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(final View view, final float f) {
        final View view2 = (View) view.getParent();
        view2.post(new Runnable() { // from class: com.anythink.core.common.o.x.2
            @Override // java.lang.Runnable
            public final void run() {
                Rect rect = new Rect();
                view.getHitRect(rect);
                int iWidth = ((int) (rect.width() * (f - 1.0f))) / 2;
                int iHeight = ((int) (rect.height() * (f - 1.0f))) / 2;
                int i = rect.top;
                if (i - iHeight < 0) {
                    rect.top = 0;
                } else {
                    rect.top = i - iHeight;
                }
                if (rect.bottom + iHeight > view2.getHeight()) {
                    rect.bottom = view2.getHeight();
                } else {
                    rect.bottom += iHeight;
                }
                int i2 = rect.left;
                if (i2 - iWidth < 0) {
                    rect.left = 0;
                } else {
                    rect.left = i2 - iWidth;
                }
                if (rect.right + iWidth > view2.getWidth()) {
                    rect.right = view2.getWidth();
                } else {
                    rect.right += iWidth;
                }
                view2.setTouchDelegate(new TouchDelegate(rect, view));
            }
        });
    }

    private static void a(final View view, final int i) {
        final View view2 = (View) view.getParent();
        view2.post(new Runnable() { // from class: com.anythink.core.common.o.x.1
            @Override // java.lang.Runnable
            public final void run() {
                Rect rect = new Rect();
                view.getHitRect(rect);
                int i2 = rect.top;
                int i3 = i;
                rect.top = i2 - i3;
                rect.bottom += i3;
                rect.left -= i3;
                rect.right += i3;
                view2.setTouchDelegate(new TouchDelegate(rect, view));
            }
        });
    }

    public static void a(boolean z) {
        a = z;
    }

    public static boolean a(View view, f.b bVar) {
        if (view != null && view.getParent() != null && bVar != null) {
            Object parent = view.getParent();
            if ((parent instanceof View) && bVar.a((View) parent, view, 100, 0) && !a) {
                return true;
            }
        }
        return false;
    }

    public static int[] a(int i, int i2, float f) {
        if (f > i / i2) {
            i2 = (int) Math.ceil(r0 / f);
        } else {
            i = (int) Math.ceil(r1 * f);
        }
        return new int[]{i, i2};
    }

    private static boolean b(View view, float f) {
        Rect rect = new Rect();
        return view.getLocalVisibleRect(rect) && rect.top >= 0 && rect.bottom <= view.getHeight() && ((float) rect.height()) > ((float) view.getHeight()) * f;
    }
}
