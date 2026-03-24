package com.anythink.basead.ui.animplayerview.redpacket;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.anythink.core.common.o.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class RedPacketView extends View {
    public static final String TAG = "RedPacketView";
    private static final double a = 0.15d;
    private static final double b = 0.2d;
    private static final int c = 400;
    private final Matrix d;
    private final List<a> e;
    private final Map<Integer, Float> f;
    private List<Integer> g;
    private Paint h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private Bitmap n;
    private boolean o;

    public RedPacketView(Context context) {
        this(context, null);
    }

    public RedPacketView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RedPacketView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new Matrix();
        this.e = new ArrayList();
        this.f = new HashMap();
        Paint paint = new Paint();
        this.h = paint;
        paint.setFilterBitmap(true);
        this.h.setDither(true);
        this.h.setAntiAlias(true);
        setLayerType(2, null);
    }

    private static int a(int i) {
        int i2 = i % 4;
        return i2 == 0 ? (i / 4) * 9 : i2 == 1 ? ((i / 4) * 9) + 2 : i2 == 2 ? ((i / 4) * 9) + 4 : i2 == 3 ? ((i / 4) * 9) + 8 : i2;
    }

    private void a() {
        Paint paint = new Paint();
        this.h = paint;
        paint.setFilterBitmap(true);
        this.h.setDither(true);
        this.h.setAntiAlias(true);
        setLayerType(2, null);
    }

    private void a(Bitmap bitmap) {
        int height = (int) (((double) this.m) / (((((double) this.l) * b) * ((double) bitmap.getHeight())) / ((double) bitmap.getWidth())));
        this.k = height;
        this.j = 3;
        this.i = ((height * 3) * 4) / 9;
    }

    private void a(Canvas canvas) {
        a next;
        Bitmap bitmapC;
        Iterator<a> it = this.e.iterator();
        while (it.hasNext() && (bitmapC = (next = it.next()).c()) != null) {
            this.d.setTranslate((-next.b()) >> 1, (-next.a()) >> 1);
            this.d.postRotate(next.e());
            this.d.postTranslate((next.b() >> 1) + next.a, (next.a() >> 1) + next.b);
            canvas.drawBitmap(bitmapC, this.d, this.h);
        }
    }

    private void a(a aVar, int i) {
        Float f;
        if (aVar.b() <= 0 || aVar.a() <= 0) {
            return;
        }
        int i2 = i % 4;
        if (i2 == 0) {
            i2 = (i / 4) * 9;
        } else if (i2 == 1) {
            i2 = ((i / 4) * 9) + 2;
        } else if (i2 == 2) {
            i2 = ((i / 4) * 9) + 4;
        } else if (i2 == 3) {
            i2 = ((i / 4) * 9) + 8;
        }
        int i3 = this.j;
        int i4 = i2 / i3;
        int i5 = i2 % i3;
        int i6 = this.l / i3;
        int i7 = this.m / this.k;
        int iB = aVar.b();
        int iA = aVar.a();
        aVar.a = (i5 * i6) + ((i6 - iB) >> 1);
        int iNextInt = new Random().nextInt(21) - 10;
        int i8 = iA / 3;
        int iNextInt2 = new Random().nextInt(i8) + i8;
        if (i4 > 0 && (f = this.f.get(Integer.valueOf(i2 - this.j))) != null) {
            float fFloatValue = f.floatValue() + iNextInt2 + iNextInt;
            aVar.b = fFloatValue;
            if ((this.m - fFloatValue) - b() < iA) {
                if (this.g == null) {
                    this.g = new ArrayList();
                }
                this.g.add(Integer.valueOf(i));
            }
        }
        if (aVar.b == 0.0f) {
            aVar.b = (i4 * i7) + iNextInt2 + iNextInt;
        }
        float f2 = iA;
        if (aVar.b + f2 > this.m) {
            aVar.b = (r3 - iA) - b();
        }
        if (aVar.b < 0.0f) {
            aVar.b = iA >> 1;
        }
        this.f.put(Integer.valueOf(i2), Float.valueOf(aVar.b + f2));
    }

    private int b() {
        return i.a(getContext(), 5.0f);
    }

    private a b(Bitmap bitmap) {
        return new a(getContext(), bitmap, this.l);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028 A[Catch: Exception -> 0x01a1, TryCatch #0 {Exception -> 0x01a1, blocks: (B:7:0x000e, B:8:0x0024, B:10:0x0028, B:12:0x002e, B:15:0x005b, B:16:0x0061, B:18:0x0065, B:20:0x0078, B:23:0x0080, B:25:0x0084, B:33:0x00a3, B:35:0x00de, B:37:0x00ee, B:39:0x0109, B:41:0x010d, B:42:0x0114, B:43:0x011d, B:45:0x0124, B:46:0x012b, B:48:0x0136, B:49:0x013f, B:51:0x0145, B:52:0x014a, B:28:0x008c, B:30:0x0094, B:32:0x009d, B:53:0x015a, B:54:0x0163, B:56:0x0167, B:58:0x016d, B:59:0x0173, B:61:0x0179, B:63:0x0185, B:65:0x018d, B:67:0x0197, B:68:0x019a), top: B:75:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002e A[Catch: Exception -> 0x01a1, TryCatch #0 {Exception -> 0x01a1, blocks: (B:7:0x000e, B:8:0x0024, B:10:0x0028, B:12:0x002e, B:15:0x005b, B:16:0x0061, B:18:0x0065, B:20:0x0078, B:23:0x0080, B:25:0x0084, B:33:0x00a3, B:35:0x00de, B:37:0x00ee, B:39:0x0109, B:41:0x010d, B:42:0x0114, B:43:0x011d, B:45:0x0124, B:46:0x012b, B:48:0x0136, B:49:0x013f, B:51:0x0145, B:52:0x014a, B:28:0x008c, B:30:0x0094, B:32:0x009d, B:53:0x015a, B:54:0x0163, B:56:0x0167, B:58:0x016d, B:59:0x0173, B:61:0x0179, B:63:0x0185, B:65:0x018d, B:67:0x0197, B:68:0x019a), top: B:75:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initRedPacketList(Bitmap bitmap) {
        Bitmap bitmap2;
        Float f;
        this.n = bitmap;
        if (this.o) {
            return;
        }
        this.o = true;
        if (bitmap == null) {
            try {
                this.n = BitmapFactory.decodeResource(getResources(), i.a(getContext(), "myoffer_icon_red_packet", com.anythink.expressad.foundation.h.i.c));
                bitmap2 = this.n;
                if (bitmap2 != null) {
                    Log.e(TAG, "redPacketBitmap is null, decodeResource failed.");
                    return;
                }
                int height = (int) (((double) this.m) / (((((double) this.l) * b) * ((double) bitmap2.getHeight())) / ((double) bitmap2.getWidth())));
                this.k = height;
                this.j = 3;
                int i = ((height * 3) * 4) / 9;
                this.i = i;
                if (i <= 0 || height <= 0) {
                    return;
                }
                this.e.clear();
                for (int i2 = 0; i2 < this.i; i2++) {
                    a aVar = new a(getContext(), this.n, this.l);
                    if (aVar.b() > 0 && aVar.a() > 0) {
                        int i3 = i2 % 4;
                        if (i3 == 0) {
                            i3 = (i2 / 4) * 9;
                        } else if (i3 == 1) {
                            i3 = ((i2 / 4) * 9) + 2;
                        } else if (i3 == 2) {
                            i3 = ((i2 / 4) * 9) + 4;
                        } else if (i3 == 3) {
                            i3 = ((i2 / 4) * 9) + 8;
                        }
                        int i4 = this.j;
                        int i5 = i3 / i4;
                        int i6 = i3 % i4;
                        int i7 = this.l / i4;
                        int i8 = this.m / this.k;
                        int iB = aVar.b();
                        int iA = aVar.a();
                        aVar.a = (i6 * i7) + ((i7 - iB) >> 1);
                        int iNextInt = new Random().nextInt(21) - 10;
                        int iNextInt2 = new Random().nextInt(iA / 3) + (iA / 3);
                        if (i5 > 0 && (f = this.f.get(Integer.valueOf(i3 - this.j))) != null) {
                            float fFloatValue = f.floatValue() + iNextInt2 + iNextInt;
                            aVar.b = fFloatValue;
                            if ((this.m - fFloatValue) - b() < iA) {
                                if (this.g == null) {
                                    this.g = new ArrayList();
                                }
                                this.g.add(Integer.valueOf(i2));
                            }
                        }
                        if (aVar.b == 0.0f) {
                            aVar.b = (i5 * i8) + iNextInt2 + iNextInt;
                        }
                        float f2 = iA;
                        if (aVar.b + f2 > this.m) {
                            aVar.b = (r7 - iA) - b();
                        }
                        if (aVar.b < 0.0f) {
                            aVar.b = iA >> 1;
                        }
                        this.f.put(Integer.valueOf(i3), Float.valueOf(aVar.b + f2));
                    }
                    this.e.add(aVar);
                }
                List<Integer> list = this.g;
                if (list != null && list.size() > 0) {
                    Iterator<Integer> it = this.g.iterator();
                    while (it.hasNext()) {
                        int iIntValue = it.next().intValue();
                        if (iIntValue >= 0 && iIntValue < this.e.size()) {
                            a aVar2 = this.e.get(iIntValue);
                            if (aVar2 != null) {
                                aVar2.d();
                            }
                            this.e.remove(iIntValue);
                        }
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "initRedPacketList failed: " + e.getMessage());
            }
        } else {
            bitmap2 = this.n;
            if (bitmap2 != null) {
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        a next;
        Bitmap bitmapC;
        super.onDraw(canvas);
        Iterator<a> it = this.e.iterator();
        while (it.hasNext() && (bitmapC = (next = it.next()).c()) != null) {
            this.d.setTranslate((-next.b()) >> 1, (-next.a()) >> 1);
            this.d.postRotate(next.e());
            this.d.postTranslate((next.b() >> 1) + next.a, (next.a() >> 1) + next.b);
            canvas.drawBitmap(bitmapC, this.d, this.h);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.l = getMeasuredWidth();
        this.m = getMeasuredHeight();
    }

    public void release() {
        this.o = false;
        try {
            Bitmap bitmap = this.n;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.n.recycle();
            }
            Iterator<a> it = this.e.iterator();
            while (it.hasNext()) {
                it.next().d();
            }
            this.e.clear();
            Map<Integer, Float> map = this.f;
            if (map != null) {
                map.clear();
            }
            List<Integer> list = this.g;
            if (list != null) {
                list.clear();
            }
        } catch (Exception e) {
            Log.e(TAG, "release failed: " + e.getMessage());
        }
    }
}
