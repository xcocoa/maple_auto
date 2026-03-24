package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.o.c;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.x;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;

/* JADX INFO: loaded from: classes.dex */
public class SimpleMediaATView extends FrameLayout {
    public ImageView a;
    public ImageView b;
    private int c;
    private int d;
    private int e;
    private Bitmap f;

    /* JADX INFO: renamed from: com.anythink.basead.ui.SimpleMediaATView$1, reason: invalid class name */
    public class AnonymousClass1 implements b.a {
        public final /* synthetic */ String a;

        public AnonymousClass1(String str) {
            this.a = str;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, final Bitmap bitmap) {
            if (TextUtils.equals(str, this.a)) {
                SimpleMediaATView.this.post(new Runnable() { // from class: com.anythink.basead.ui.SimpleMediaATView.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SimpleMediaATView.this.f = bitmap;
                        SimpleMediaATView.this.a(bitmap);
                        SimpleMediaATView.this.a.setImageBitmap(bitmap);
                        SimpleMediaATView.this.a.setVisibility(0);
                        c.a(SimpleMediaATView.this.getContext(), bitmap, new c.a() { // from class: com.anythink.basead.ui.SimpleMediaATView.1.1.1
                            @Override // com.anythink.core.common.o.c.a
                            public final void a() {
                            }

                            @Override // com.anythink.core.common.o.c.a
                            public final void a(Bitmap bitmap2) {
                                SimpleMediaATView.this.b.setImageBitmap(bitmap2);
                                SimpleMediaATView.this.b.setVisibility(0);
                            }
                        });
                    }
                });
            }
        }
    }

    public SimpleMediaATView(Context context) {
        this(context, null);
    }

    public SimpleMediaATView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimpleMediaATView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap) {
        int[] iArrA = x.a(this.c, this.d, bitmap.getWidth() / bitmap.getHeight());
        ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
        layoutParams.width = iArrA[0];
        layoutParams.height = iArrA[1];
        this.a.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
        if (layoutParams2 != null) {
            int i = layoutParams2.width == -2 ? iArrA[0] : this.c;
            int i2 = layoutParams2.height == -2 ? iArrA[1] : this.d;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (!childAt.equals(this.a)) {
                    if (childAt != null) {
                        ViewGroup.LayoutParams layoutParams3 = childAt.getLayoutParams();
                        layoutParams3.width = i;
                        childAt.setLayoutParams(layoutParams3);
                    }
                    if (childAt != null) {
                        ViewGroup.LayoutParams layoutParams4 = childAt.getLayoutParams();
                        layoutParams4.height = i2;
                        childAt.setLayoutParams(layoutParams4);
                    }
                }
            }
        }
    }

    private static void a(View view, int i) {
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = i;
            view.setLayoutParams(layoutParams);
        }
    }

    private static void b(View view, int i) {
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = i;
            view.setLayoutParams(layoutParams);
        }
    }

    public void initView(l lVar) {
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_simple_media_ad_view", "layout"), this);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.e = iMax;
        this.c = iMax;
        this.d = iMax;
        this.b = (ImageView) findViewById(i.a(getContext(), "myoffer_simple_background", "id"));
        ImageView imageView = (ImageView) findViewById(i.a(getContext(), "myoffer_simple_main_image", "id"));
        this.a = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        String strY = lVar.y();
        try {
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, strY), new AnonymousClass1(strY));
        } catch (Throwable unused) {
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        Bitmap bitmap = this.f;
        if (bitmap == null) {
            if (size != 0 && size < this.c) {
                this.c = size;
            }
            if (size2 == 0 || size2 >= this.d) {
                return;
            }
            this.d = size2;
            return;
        }
        boolean z = false;
        boolean z3 = true;
        if (size != 0 && size < this.c) {
            this.c = size;
            z = true;
        }
        if (size2 == 0 || size2 >= this.d) {
            z3 = z;
        } else {
            this.d = size2;
        }
        if (z3) {
            a(bitmap);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0031 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        boolean z;
        int i;
        Bitmap bitmap;
        super.setLayoutParams(layoutParams);
        int i2 = layoutParams.width;
        boolean z3 = true;
        if (i2 != -1 && i2 != -2) {
            if (this.c != i2) {
                this.c = i2;
                z = true;
            }
            i = layoutParams.height;
            if (i == -1 && i != -2) {
                if (this.d != i) {
                    this.d = i;
                }
                bitmap = this.f;
                if (bitmap == null || !z3) {
                    return;
                }
                a(bitmap);
                return;
            }
            this.d = this.e;
            z3 = z;
            bitmap = this.f;
            if (bitmap == null) {
                return;
            } else {
                return;
            }
        }
        this.c = this.e;
        z = false;
        i = layoutParams.height;
        if (i == -1) {
            this.d = this.e;
            z3 = z;
        }
        bitmap = this.f;
        if (bitmap == null) {
        }
    }
}
