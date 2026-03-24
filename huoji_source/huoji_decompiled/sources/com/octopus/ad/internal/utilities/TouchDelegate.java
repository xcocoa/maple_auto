package com.octopus.ad.internal.utilities;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.octopus.ad.utils.b.f;

/* JADX INFO: loaded from: classes2.dex */
public class TouchDelegate extends android.view.TouchDelegate {
    public static final int ABOVE = 1;
    public static final int BELOW = 2;
    public static final int TO_LEFT = 4;
    public static final int TO_RIGHT = 8;
    private Rect mBounds;
    private boolean mDelegateTargeted;
    private View mDelegateView;
    private int mSlop;
    private Rect mSlopBounds;

    public TouchDelegate(Rect rect, View view) {
        super(rect, view);
        this.mBounds = rect;
        this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        Rect rect2 = new Rect(rect);
        this.mSlopBounds = rect2;
        int i = this.mSlop;
        rect2.inset(-i, -i);
        this.mDelegateView = view;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0027  */
    @Override // android.view.TouchDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            f.c("OctopusAd", "TouchDelegate mBounds = " + this.mBounds + ",x = " + x + ",y = " + y);
            this.mDelegateTargeted = this.mBounds.contains(x, y);
            StringBuilder sb = new StringBuilder();
            sb.append("TouchDelegate onTouchEvent mDelegateTargeted = ");
            sb.append(this.mDelegateTargeted);
            f.c("OctopusAd", sb.toString());
            z = this.mDelegateTargeted;
        } else if (actionMasked == 1 || actionMasked == 2) {
            boolean z3 = this.mDelegateTargeted;
            zContains = z3 ? this.mSlopBounds.contains(x, y) : true;
            z = z3;
        } else if (actionMasked == 3) {
            z = this.mDelegateTargeted;
            this.mDelegateTargeted = false;
        } else if (actionMasked != 5 && actionMasked != 6) {
            z = false;
        }
        if (!z) {
            return false;
        }
        View view = this.mDelegateView;
        if (zContains) {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        } else {
            float f = -(this.mSlop * 2);
            motionEvent.setLocation(f, f);
        }
        return view.dispatchTouchEvent(motionEvent);
    }
}
