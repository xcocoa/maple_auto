package com.octopus.ad.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.widget.RegionClickView;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    private static String c;
    private static String d;
    private static String e;
    private static String f;
    private Context a;
    private a b;

    public interface a {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public h(Context context) {
        this.a = context;
    }

    @NonNull
    private ViewGroup.MarginLayoutParams a(int i, int i2) {
        int i3;
        int i4;
        float screenHeightDp = ViewUtil.getScreenHeightDp(this.a);
        TextUtils.isEmpty("50%");
        String str = "85%";
        if (TextUtils.isEmpty("85%")) {
            com.octopus.ad.utils.b.f.a("OctopusAd", "screenHeightDp = " + screenHeightDp + ",adHeightDp = " + i2);
            str = screenHeightDp > ((float) i2) ? "63" : "188";
        }
        String str2 = TextUtils.isEmpty("250") ? "325" : "250";
        String str3 = TextUtils.isEmpty("40") ? "65" : "40";
        float screenWidthDp = ViewUtil.getScreenWidthDp(this.a);
        int i5 = "50%".endsWith("%") ? (Integer.parseInt("50%".substring(0, "50%".indexOf("%"))) * i) / 100 : Integer.parseInt("50%");
        if (str.endsWith("%")) {
            i3 = (Integer.parseInt(str.substring(0, str.indexOf("%"))) * i2) / 100;
        } else {
            i3 = i2 - Integer.parseInt(str);
            com.octopus.ad.utils.b.f.a("OctopusAd", "adHeightDp = " + i2 + ", centerYInt = " + i3);
        }
        int i6 = 400;
        if (str2.endsWith("%")) {
            int i7 = Integer.parseInt(str2.substring(0, str2.indexOf("%")));
            if (screenWidthDp >= 400.0f) {
                i4 = (i7 * 400) / 100;
                i6 = i4;
            } else {
                i6 = (((int) screenWidthDp) * i7) / 100;
            }
        } else {
            i4 = Integer.parseInt(str2);
            if (i4 < 400) {
                i6 = i4;
            }
        }
        int i8 = str3.endsWith("%") ? (Integer.parseInt(str3.substring(0, str3.indexOf("%"))) * i6) / 100 : Integer.parseInt(str3);
        int iDip2px = ViewUtil.dip2px(this.a, i6);
        int iDip2px2 = ViewUtil.dip2px(this.a, i8);
        int iDip2px3 = ViewUtil.dip2px(this.a, i5);
        int iDip2px4 = ViewUtil.dip2px(this.a, i3);
        com.octopus.ad.utils.b.f.a("OctopusAd", "widthInt = " + iDip2px + ",heightInt = " + iDip2px2);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iDip2px, iDip2px2);
        com.octopus.ad.utils.b.f.a("OctopusAd", "centerYInt = " + iDip2px4 + ",centerXInt = " + iDip2px3 + ",adWidthDp = " + i + ",adHeightDp = " + i2);
        marginLayoutParams.topMargin = iDip2px4 - (iDip2px2 / 2);
        marginLayoutParams.leftMargin = iDip2px3 - (iDip2px / 2);
        return marginLayoutParams;
    }

    public View a(int i, int i2, boolean z) {
        if (this.a == null) {
            return null;
        }
        com.octopus.ad.utils.b.f.c("OctopusAd", "adWidthDp = " + i + ",adHeightDp = " + i2);
        RegionClickView regionClickView = new RegionClickView(this.a);
        regionClickView.setRegionalClickViewBean();
        regionClickView.setLayoutParams(a(i, i2));
        if (z) {
            regionClickView.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.utils.h.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (h.this.b != null) {
                        h.this.b.a(h.c, h.d, h.e, h.f, h.c, h.d, h.e, h.f);
                    }
                }
            });
            regionClickView.setOnTouchListener(new View.OnTouchListener() { // from class: com.octopus.ad.utils.h.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    try {
                        if (motionEvent.getAction() != 0) {
                            return false;
                        }
                        String unused = h.c = motionEvent.getX() + "";
                        String unused2 = h.d = motionEvent.getY() + "";
                        String unused3 = h.e = motionEvent.getRawX() + "";
                        String unused4 = h.f = motionEvent.getRawY() + "";
                        return false;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return false;
                    }
                }
            });
        }
        return regionClickView;
    }

    public void a() {
        this.a = null;
        this.b = null;
    }

    public void a(a aVar) {
        this.b = aVar;
    }
}
