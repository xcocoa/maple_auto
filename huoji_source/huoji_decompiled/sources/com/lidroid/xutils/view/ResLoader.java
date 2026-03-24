package com.lidroid.xutils.view;

import android.content.Context;
import android.view.animation.AnimationUtils;

/* JADX INFO: loaded from: classes2.dex */
public class ResLoader {
    private static /* synthetic */ int[] $SWITCH_TABLE$com$lidroid$xutils$view$ResType;

    public static /* synthetic */ int[] $SWITCH_TABLE$com$lidroid$xutils$view$ResType() {
        int[] iArr = $SWITCH_TABLE$com$lidroid$xutils$view$ResType;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[ResType.valuesCustom().length];
        try {
            iArr2[ResType.Animation.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[ResType.Boolean.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[ResType.Color.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[ResType.ColorStateList.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[ResType.Dimension.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[ResType.DimensionPixelOffset.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[ResType.DimensionPixelSize.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[ResType.Drawable.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr2[ResType.IntArray.ordinal()] = 10;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[ResType.Integer.ordinal()] = 9;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr2[ResType.Movie.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr2[ResType.String.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr2[ResType.StringArray.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr2[ResType.Text.ordinal()] = 14;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr2[ResType.TextArray.ordinal()] = 15;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            iArr2[ResType.Xml.ordinal()] = 16;
        } catch (NoSuchFieldError unused16) {
        }
        $SWITCH_TABLE$com$lidroid$xutils$view$ResType = iArr2;
        return iArr2;
    }

    public static Object loadRes(ResType resType, Context context, int i) {
        if (context == null || i <= 0) {
            return null;
        }
        switch ($SWITCH_TABLE$com$lidroid$xutils$view$ResType()[resType.ordinal()]) {
            case 1:
                return AnimationUtils.loadAnimation(context, i);
            case 2:
                return Boolean.valueOf(context.getResources().getBoolean(i));
            case 3:
                return Integer.valueOf(context.getResources().getColor(i));
            case 4:
                return context.getResources().getColorStateList(i);
            case 5:
                return Float.valueOf(context.getResources().getDimension(i));
            case 6:
                return Integer.valueOf(context.getResources().getDimensionPixelOffset(i));
            case 7:
                return Integer.valueOf(context.getResources().getDimensionPixelSize(i));
            case 8:
                return context.getResources().getDrawable(i);
            case 9:
                return Integer.valueOf(context.getResources().getInteger(i));
            case 10:
                return context.getResources().getIntArray(i);
            case 11:
                return context.getResources().getMovie(i);
            case 12:
                return context.getResources().getString(i);
            case 13:
                return context.getResources().getStringArray(i);
            case 14:
                return context.getResources().getText(i);
            case 15:
                return context.getResources().getTextArray(i);
            case 16:
                return context.getResources().getXml(i);
            default:
                return null;
        }
    }
}
