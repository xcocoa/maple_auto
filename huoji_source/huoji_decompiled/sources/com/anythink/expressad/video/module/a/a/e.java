package com.anythink.expressad.video.module.a.a;

import android.graphics.Bitmap;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class e implements com.anythink.expressad.foundation.g.d.c {
    public static final String b = "ImageLoaderListener";
    private com.anythink.expressad.foundation.d.c a;
    public WeakReference<ImageView> c;
    private String d;

    public e(ImageView imageView) {
        this.c = new WeakReference<>(imageView);
    }

    public e(ImageView imageView, com.anythink.expressad.foundation.d.c cVar, String str) {
        this.c = new WeakReference<>(imageView);
        this.a = cVar;
        this.d = str;
    }

    @Override // com.anythink.expressad.foundation.g.d.c
    public void a(Bitmap bitmap, String str) {
        if (bitmap == null) {
            return;
        }
        try {
            WeakReference<ImageView> weakReference = this.c;
            if (weakReference == null || weakReference.get() == null || bitmap.isRecycled()) {
                return;
            }
            this.c.get().setImageBitmap(bitmap);
            this.c.get().setVisibility(0);
        } catch (Throwable th) {
            if (com.anythink.expressad.a.a) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.anythink.expressad.foundation.g.d.c
    public void a(String str, String str2) {
    }
}
