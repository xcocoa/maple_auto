package com.elfin.ad.model.yunjing;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.elfin.ad.R;

/* JADX INFO: loaded from: classes2.dex */
public class YunjingNativeAdView extends LinearLayout {
    public YunjingNativeAdView(Context context) {
        super(context);
        OooO00o();
    }

    public YunjingNativeAdView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        OooO00o();
    }

    public YunjingNativeAdView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooO00o();
    }

    private void OooO00o() {
        String str = "ۚۤۦۘۤۚۙۘۨۖۗۡۗۨۡۡۘۙۨۧۤۛۢۡۤ۬ۤ۫۫ۤۧۙ۟ۨ۟۠ۚۦۘۤۧۗۢۡۢ۠ۜۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 762) ^ 367) ^ 705) ^ 1207429674) {
                case 1120180611:
                    LayoutInflater.from(getContext()).inflate(R.layout.layout_yunjing_native_ad, this);
                    str = "ۛۚۜۘۦۙۙۥۗۥۘۗ۠ۖۧ۟۟ۦۚۗۡۥۧ۬ۢۜۘۙۨۖۘۦۡۚ";
                    break;
                case 1371754504:
                    str = "ۘۘۘ۫ۙ۬ۜۤۜۘۙ۠ۗۧۢۖۧۚۜۘۗۤۘۨ۫ۜۘ۠ۢ۬ۦۨۤۨۡۦۥۖۘۘ۫ۗۢ۬ۤ۠ۖۤۡۘۢۥۡۘۢۧۦۡۗۡۘ";
                    break;
                case 1858381964:
                    return;
            }
        }
    }
}
