package com.squareup.picasso;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes2.dex */
public interface Transformation {
    String key();

    Bitmap transform(Bitmap bitmap);
}
