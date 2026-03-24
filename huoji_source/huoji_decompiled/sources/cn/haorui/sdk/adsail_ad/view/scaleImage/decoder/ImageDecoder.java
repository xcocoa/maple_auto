package cn.haorui.sdk.adsail_ad.view.scaleImage.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public interface ImageDecoder {
    Bitmap decode(Context context, Uri uri);
}
