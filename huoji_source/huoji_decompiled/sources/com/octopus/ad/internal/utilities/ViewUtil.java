package com.octopus.ad.internal.utilities;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Point;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.octopus.ad.R;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.network.ServerResponse;

/* JADX INFO: loaded from: classes2.dex */
public class ViewUtil {
    public static void convertFromDPToPixels(Activity activity, int[] iArr) {
        float f = activity.getResources().getDisplayMetrics().density;
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = (int) ((iArr[i] * f) + 0.5f);
        }
    }

    public static void convertFromPixelsToDP(Activity activity, int[] iArr) {
        float f = activity.getResources().getDisplayMetrics().density;
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = (int) ((iArr[i] / f) + 0.5f);
        }
    }

    public static FrameLayout createAdImageView(Context context, ServerResponse.AdLogoInfo adLogoInfo) {
        View view;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setVisibility(4);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        if (adLogoInfo != null) {
            if (adLogoInfo.getType() == ServerResponse.AdLogoInfo.TYPE_PIC) {
                ImageView imageView = new ImageView(context);
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(85, 42, 83);
                layoutParams.setMargins(0, 0, 0, 0);
                imageView.setLayoutParams(layoutParams);
                imageView.setVisibility(0);
                ImageManager.with(context).load(adLogoInfo.getAdurl()).into(imageView);
                view = imageView;
            } else if (adLogoInfo.getType() == ServerResponse.AdLogoInfo.TYPE_TEXT) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_count_down_background));
                appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.oct_text_selector));
                appCompatTextView.setTextSize(2, 12.0f);
                appCompatTextView.setGravity(17);
                appCompatTextView.setText(adLogoInfo.getAdurl());
                new FrameLayout.LayoutParams(85, 42, 83).setMargins(0, 0, 0, 0);
                view = appCompatTextView;
            }
            frameLayout.addView(view);
        }
        return frameLayout;
    }

    public static AppCompatTextView createCloseButton(Context context) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_close_background));
        appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.oct_text_selector));
        appCompatTextView.setTextSize(2, 12.0f);
        appCompatTextView.setGravity(17);
        appCompatTextView.setText(R.string.skip_ad);
        m mVarA = m.a();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388661);
        layoutParams.setMargins((int) TypedValue.applyDimension(1, 5.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 10.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 42.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 10.0f, mVarA.o()));
        appCompatTextView.setLayoutParams(layoutParams);
        return appCompatTextView;
    }

    public static AppCompatTextView createCloseButton(Context context, int i, int i2, int i3, int i4) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_close_background));
        appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.oct_text_selector));
        appCompatTextView.setTextSize(2, 12.0f);
        appCompatTextView.setGravity(17);
        appCompatTextView.setText(R.string.skip_ad);
        m mVarA = m.a();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388661);
        layoutParams.setMargins((int) TypedValue.applyDimension(1, i + 5, mVarA.o()), (int) TypedValue.applyDimension(1, i2 + 10, mVarA.o()), (int) TypedValue.applyDimension(1, i3 + 42, mVarA.o()), (int) TypedValue.applyDimension(1, i4 + 10, mVarA.o()));
        appCompatTextView.setLayoutParams(layoutParams);
        return appCompatTextView;
    }

    public static AppCompatTextView createCountDown(Context context, int i) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_count_down_background));
        appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.oct_text_selector));
        appCompatTextView.setTextSize(2, 12.0f);
        m mVarA = m.a();
        appCompatTextView.setGravity(17);
        appCompatTextView.setText(Integer.toString(i));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 30.0f, mVarA.o()), -2, 53);
        layoutParams.setMargins((int) TypedValue.applyDimension(1, 5.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 10.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 5.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 10.0f, mVarA.o()));
        appCompatTextView.setLayoutParams(layoutParams);
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.utilities.ViewUtil.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        return appCompatTextView;
    }

    public static AppCompatTextView createCountDown(Context context, int i, int i2, int i3, int i4, int i5) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_count_down_background));
        appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.oct_text_selector));
        appCompatTextView.setTextSize(2, 12.0f);
        m mVarA = m.a();
        appCompatTextView.setMinimumWidth((int) TypedValue.applyDimension(1, 30.0f, mVarA.o()));
        appCompatTextView.setGravity(17);
        appCompatTextView.setText(Integer.toString(i));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 53);
        layoutParams.setMargins((int) TypedValue.applyDimension(1, i2 + 5, mVarA.o()), (int) TypedValue.applyDimension(1, i3 + 10, mVarA.o()), (int) TypedValue.applyDimension(1, i4 + 5, mVarA.o()), (int) TypedValue.applyDimension(1, i5 + 10, mVarA.o()));
        appCompatTextView.setLayoutParams(layoutParams);
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.utilities.ViewUtil.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        return appCompatTextView;
    }

    public static ImageView createImageCloseButton(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(R.drawable.oct_banner_close);
        m mVarA = m.a();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getValueInPixel(context, 18), getValueInPixel(context, 18), 8388661);
        layoutParams.setMargins((int) TypedValue.applyDimension(1, 5.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 0.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 0.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 5.0f, mVarA.o()));
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public static AppCompatTextView createInterstitialCountDown(Context context, int i) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_count_down_interstitial_background));
        appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.oct_text_selector));
        appCompatTextView.setTextSize(2, 12.0f);
        m mVarA = m.a();
        appCompatTextView.setGravity(17);
        appCompatTextView.setText(Integer.toString(i));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 30.0f, mVarA.o()), -2, 53);
        layoutParams.setMargins((int) TypedValue.applyDimension(1, 0.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 0.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 0.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 0.0f, mVarA.o()));
        appCompatTextView.setLayoutParams(layoutParams);
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.utilities.ViewUtil.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        return appCompatTextView;
    }

    public static FrameLayout createLogoImageView(Context context, ServerResponse.AdLogoInfo adLogoInfo) {
        View view;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setVisibility(4);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        if (adLogoInfo != null) {
            if (adLogoInfo.getType() == ServerResponse.AdLogoInfo.TYPE_PIC) {
                ImageView imageView = new ImageView(context);
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(42, 42, 85);
                layoutParams.setMargins(0, 0, 0, 0);
                imageView.setLayoutParams(layoutParams);
                imageView.setVisibility(0);
                ImageManager.with(context).load(adLogoInfo.getAdurl()).into(imageView);
                view = imageView;
            } else if (adLogoInfo.getType() == ServerResponse.AdLogoInfo.TYPE_TEXT) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_count_down_background));
                appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.oct_text_selector));
                appCompatTextView.setTextSize(2, 12.0f);
                appCompatTextView.setGravity(17);
                appCompatTextView.setText(adLogoInfo.getAdurl());
                new FrameLayout.LayoutParams(42, 42, 85).setMargins(0, 0, 0, 0);
                view = appCompatTextView;
            }
            frameLayout.addView(view);
        }
        return frameLayout;
    }

    public static AppCompatImageView createMuteButton(Context context, boolean z) {
        AppCompatImageView appCompatImageView = new AppCompatImageView(context);
        appCompatImageView.setImageResource(z ? R.drawable.oct_voice_off : R.drawable.oct_voice_on);
        m mVarA = m.a();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388659);
        layoutParams.setMargins((int) TypedValue.applyDimension(1, 5.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 15.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 15.0f, mVarA.o()), (int) TypedValue.applyDimension(1, 15.0f, mVarA.o()));
        appCompatImageView.setLayoutParams(layoutParams);
        return appCompatImageView;
    }

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static float getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float getScreenHeightDp(Context context) {
        return px2dip(context, context.getResources().getDisplayMetrics().heightPixels);
    }

    public static int[] getScreenSizeAsDP(Activity activity) {
        int[] screenSizeAsPixels = getScreenSizeAsPixels(activity);
        convertFromPixelsToDP(activity, screenSizeAsPixels);
        return screenSizeAsPixels;
    }

    public static int[] getScreenSizeAsPixels(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return new int[]{point.x, point.y};
    }

    public static float getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static float getScreenWidthDp(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        float f2 = context.getResources().getDisplayMetrics().widthPixels;
        if (f <= 0.0f) {
            f = 1.0f;
        }
        return (f2 / f) + 0.5f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Context getTopContext(View view) {
        if (view == null) {
            return null;
        }
        ViewParent parent = view.getParent();
        if (parent != null) {
            boolean z = parent instanceof View;
            ViewParent parent2 = parent;
            if (z) {
                while (parent2.getParent() != null && (parent2.getParent() instanceof View)) {
                    parent2 = parent2.getParent();
                }
                return ((View) parent2).getContext();
            }
        }
        boolean z3 = view.getContext() instanceof MutableContextWrapper;
        Context context = view.getContext();
        return z3 ? ((MutableContextWrapper) context).getBaseContext() : context;
    }

    public static int getValueInPixel(Context context, int i) {
        return (int) ((i * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2dip(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void removeChildFromParent(View view) {
        if (view == null || view.getParent() == null) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }
}
