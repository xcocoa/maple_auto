package com.cyjh.elfin.ui.view.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes.dex */
public class RTDViewPager extends ViewPager {
    public RTDViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        String str = "ۜۖۖۤۨۛۡۙۚۥۘۡۘۢۗ۬ۖ۬۟۬ۖۜۘۨۤۜۗۡۧۘۛۜ۟ۜۙۢ۫۟۟";
        while (true) {
            switch ((((str.hashCode() ^ 999) ^ 767) ^ 634) ^ (-1230819297)) {
                case -1757962449:
                    return false;
                case 797639257:
                    str = "ۛۥۨۘۘۛ۫ۖۛ۬ۢۛۢۜۧۜۘ۫ۜۨۘ۠ۡ۠ۖۨ۬ۖ۟ۖۘ۠ۦۖ۫ۘۖۧۤۦ";
                    break;
                case 1534684911:
                    str = "ۧۛۧ۟ۢۚۛۨۧۜۖۡۘۗۥ۫ۤ۠ۛۢۖ۬ۙۦۚ۬ۜۥۡۙۜۥۦۤۛۢ۠ۦۥۘۘ۫ۙ۬ۤۜۘۘۦۨۚ۬ۘ۠۫۟";
                    break;
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        String str = "ۨۙ۟۬ۢۥۘ۫ۦۡۘ۟ۗۡۘۡۧۡۘۦۛۦۘ۟ۙۧۚۗ۟ۨۧۜ۫۠ۥۘۚۤۜۘۘۖ۟۟ۡ۬ۚۚۗ";
        while (true) {
            switch ((((str.hashCode() ^ 126) ^ 744) ^ 942) ^ 979450410) {
                case -1908552314:
                    str = "۬ۗۢ۟ۖۜۘۧۙۦۖۛۙۢۡۨۘ۠ۗۛۤ۠ۦۡۧۤ۫ۖۛ۫۟ۦ۫ۨۡۥۨ";
                    break;
                case -529817959:
                    return false;
                case 453955604:
                    str = "ۥۗۘ۬ۛۦۨ۟ۦۜۘۧۛۤۚۗۘۧۘ۠ۛ۬ۖۡۖۦۢۖۛ۬ۦ";
                    break;
            }
        }
    }
}
