package com.octopus.ad.internal.view;

import android.R;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.octopus.ad.AdActivity;
import com.octopus.ad.AdRequest;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.network.a;
import com.octopus.ad.internal.utilities.HaoboLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class InterstitialAdViewImpl extends AdViewImpl {
    public static final String INTENT_KEY_CLOSE_BUTTON_DELAY = "CLOSE_BUTTON_DELAY";
    public static final String INTENT_KEY_TIME = "TIME";
    public static InterstitialAdViewImpl INTERSTITIALADVIEW_TO_USE = null;
    public static final long MAX_AGE = 270000;
    public boolean m;
    public boolean n;
    private int o;
    private int p;
    private boolean q;
    private Queue<d> r;
    private AdActivity.a s;

    public InterstitialAdViewImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.o = 0;
        this.p = 10000;
        this.r = new LinkedList();
        this.s = null;
        this.m = false;
        this.n = false;
    }

    public InterstitialAdViewImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = 0;
        this.p = 10000;
        this.r = new LinkedList();
        this.s = null;
        this.m = false;
        this.n = false;
    }

    public InterstitialAdViewImpl(Context context, boolean z, boolean z3) {
        super(context);
        int iArgb = 0;
        this.o = 0;
        this.p = 10000;
        this.r = new LinkedList();
        this.s = null;
        this.m = false;
        this.n = false;
        this.j = z;
        this.k = z3;
        if (z) {
            iArgb = -16777216;
        } else if (!z3) {
            iArgb = Color.argb(51, 0, 0, 0);
        }
        this.o = iArgb;
    }

    private boolean a(long j) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        Iterator<d> it = this.r.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            d next = it.next();
            if (next != null && j - next.a() <= MAX_AGE && j - next.a() >= 0 && !next.b()) {
                z = true;
                break;
            }
            arrayList.add(next);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.r.remove((d) it2.next());
        }
        return z;
    }

    private boolean b(b bVar) {
        if (bVar != null && !bVar.failed()) {
            return true;
        }
        HaoboLog.e(HaoboLog.baseLogTag, "Loaded an ad with an invalid displayable");
        return false;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void a(Context context, AttributeSet attributeSet) {
        super.a(context, attributeSet);
        this.mAdFetcher.a(-1);
        this.h.a(l.INTERSTITIAL);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int top = displayMetrics.heightPixels;
        int i = displayMetrics.widthPixels;
        try {
            Activity activity = (Activity) context;
            activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(new Rect());
            top -= activity.getWindow().findViewById(R.id.content).getTop() + 0;
        } catch (ClassCastException unused) {
        }
        m mVarA = m.a();
        int iM = (int) ((top / mVarA.m()) + 0.5f);
        this.h.d((int) ((i / mVarA.l()) + 0.5f));
        this.h.e(iM);
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void a(b bVar) {
        if (!b(bVar)) {
            onAdFailedToLoad(AdRequest.INVALID_DISPLAY);
            return;
        }
        b bVar2 = this.c;
        if (bVar2 != null) {
            bVar2.destroy();
        }
        if (!this.m && !this.n) {
            this.c = bVar;
            this.r.add(new c(bVar, Long.valueOf(System.currentTimeMillis()), false));
        } else if (bVar != null) {
            bVar.destroy();
        }
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void activityOnDestroy() {
        this.m = true;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void activityOnPause() {
        this.n = true;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void activityOnResume() {
        this.n = false;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void b(Context context, AttributeSet attributeSet) {
        String str;
        int i;
        boolean z;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.octopus.ad.R.styleable.AdView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        HaoboLog.v(HaoboLog.xmlLogTag, HaoboLog.getString(com.octopus.ad.R.string.found_n_in_xml, indexCount));
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == com.octopus.ad.R.styleable.AdView_adSlotId) {
                setAdSlotId(typedArrayObtainStyledAttributes.getString(index));
                HaoboLog.d(HaoboLog.xmlLogTag, HaoboLog.getString(com.octopus.ad.R.string.placement_id, typedArrayObtainStyledAttributes.getString(index)));
            } else {
                if (index == com.octopus.ad.R.styleable.AdView_test) {
                    m.a().b = typedArrayObtainStyledAttributes.getBoolean(index, false);
                    str = HaoboLog.xmlLogTag;
                    i = com.octopus.ad.R.string.xml_set_test;
                    z = m.a().b;
                } else if (index == com.octopus.ad.R.styleable.AdView_opens_native_browser) {
                    HaoboLog.d(HaoboLog.xmlLogTag, HaoboLog.getString(com.octopus.ad.R.string.xml_set_opens_native_browser));
                    setOpensNativeBrowser(typedArrayObtainStyledAttributes.getBoolean(index, false));
                } else if (index == com.octopus.ad.R.styleable.AdView_show_loading_indicator) {
                    HaoboLog.d(HaoboLog.xmlLogTag, HaoboLog.getString(com.octopus.ad.R.string.show_loading_indicator_xml));
                    setShowLoadingIndicator(typedArrayObtainStyledAttributes.getBoolean(index, true));
                } else if (index == com.octopus.ad.R.styleable.AdView_load_landing_page_in_background) {
                    setLoadsInBackground(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    str = HaoboLog.xmlLogTag;
                    i = com.octopus.ad.R.string.xml_load_landing_page_in_background;
                    z = this.g;
                }
                HaoboLog.d(str, HaoboLog.getString(i, z));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        com.octopus.ad.internal.c cVar = this.mAdFetcher;
        if (cVar != null) {
            cVar.a();
        }
        INTERSTITIALADVIEW_TO_USE = null;
        this.r.clear();
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public boolean d() {
        return false;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, com.octopus.ad.AdLifeControl
    public void destroy() {
        super.destroy();
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(com.octopus.ad.R.string.destroy_int));
        com.octopus.ad.internal.c cVar = this.mAdFetcher;
        if (cVar != null) {
            cVar.a();
        }
        this.r.clear();
        INTERSTITIALADVIEW_TO_USE = null;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public boolean e() {
        return true;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void f() {
        AdActivity.a aVar = this.s;
        if (aVar != null) {
            aVar.d();
        }
    }

    public void g() {
        AdActivity.a aVar = this.s;
        if (aVar != null) {
            aVar.e();
        }
    }

    public AdActivity.a getAdImplementation() {
        return this.s;
    }

    public Queue<d> getAdQueue() {
        return this.r;
    }

    public int getBackgroundColor() {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(com.octopus.ad.R.string.get_bg));
        return this.o;
    }

    public int getCloseButtonDelay() {
        return this.p;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public int getCreativeHeight() {
        return -1;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public int getCreativeWidth() {
        return -1;
    }

    @Override // com.octopus.ad.internal.a
    public l getMediaType() {
        return l.INTERSTITIAL;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public boolean isLoaded() {
        return a(System.currentTimeMillis());
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public boolean loadAd(a.C0197a c0197a) {
        com.octopus.ad.internal.c cVar;
        getAdParameters().a(false);
        this.i = c0197a;
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(com.octopus.ad.R.string.load_ad_int));
        if (!isReadyToStart() || (cVar = this.mAdFetcher) == null) {
            return false;
        }
        cVar.a();
        this.mAdFetcher.b();
        this.loadCount = 1;
        this.clickCount = 0;
        return true;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        com.octopus.ad.internal.c cVar = this.mAdFetcher;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, com.octopus.ad.AdLifeControl
    public void onPauseLifeCycle() {
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
    }

    public void setAdImplementation(AdActivity.a aVar) {
        this.s = aVar;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(com.octopus.ad.R.string.set_bg));
        this.o = i;
    }

    public void setCloseButtonDelay(int i) {
        this.p = Math.min(i, 10000);
    }

    public void setDismissOnClick(boolean z) {
        this.q = z;
    }

    public boolean shouldDismissOnClick() {
        return this.q;
    }

    public int show(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return this.r.size();
        }
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(com.octopus.ad.R.string.show_int));
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!a(jCurrentTimeMillis) || this.m) {
            HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(com.octopus.ad.R.string.empty_queue));
            return this.r.size();
        }
        Class clsA = AdActivity.a();
        Intent intent = new Intent(activity, (Class<?>) clsA);
        intent.putExtra("ACTIVITY_TYPE", "INTERSTITIAL");
        intent.putExtra(INTENT_KEY_TIME, jCurrentTimeMillis);
        intent.putExtra(INTENT_KEY_CLOSE_BUTTON_DELAY, this.p);
        INTERSTITIALADVIEW_TO_USE = this;
        try {
            activity.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            INTERSTITIALADVIEW_TO_USE = null;
            HaoboLog.e(HaoboLog.baseLogTag, HaoboLog.getString(com.octopus.ad.R.string.adactivity_missing, clsA.getName()));
        }
        return this.r.size() - 1;
    }
}
