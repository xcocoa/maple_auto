package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;

/* JADX INFO: loaded from: classes2.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int OooOO0O = 0;
    public static final int OooOO0o = 1;
    public static final int OooOOO = 0;
    public static final int OooOOO0 = 2;
    public static final int OooOOOO = 1;
    public static final int OooOOOo = 2;
    private static final float OooOOo = 0.0f;
    private static final float OooOOo0 = 0.5f;
    private static final float OooOOoo = 0.5f;
    public ViewDragHelper OooO00o;
    public OooO0O0 OooO0O0;
    private boolean OooO0OO;
    private boolean OooO0o0;
    private float OooO0Oo = 0.0f;
    public int OooO0o = 2;
    public float OooO0oO = 0.5f;
    public float OooO0oo = 0.0f;
    public float OooO = 0.5f;
    private final ViewDragHelper.Callback OooOO0 = new OooO00o();

    public class OooO00o extends ViewDragHelper.Callback {
        private static final int OooO0Oo = -1;
        private int OooO00o;
        private int OooO0O0 = -1;

        public OooO00o() {
        }

        private boolean OooO00o(View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.OooO00o) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.OooO0oO);
            }
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i = SwipeDismissBehavior.this.OooO0o;
            if (i == 2) {
                return true;
            }
            if (i == 0) {
                if (z) {
                    if (f >= 0.0f) {
                        return false;
                    }
                } else if (f <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i != 1) {
                return false;
            }
            if (z) {
                if (f <= 0.0f) {
                    return false;
                }
            } else if (f >= 0.0f) {
                return false;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int width;
            int width2;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i3 = SwipeDismissBehavior.this.OooO0o;
            if (i3 == 0) {
                if (z) {
                    width = this.OooO00o - view.getWidth();
                    width2 = this.OooO00o;
                } else {
                    width = this.OooO00o;
                    width2 = view.getWidth() + width;
                }
            } else if (i3 != 1) {
                width = this.OooO00o - view.getWidth();
                width2 = view.getWidth() + this.OooO00o;
            } else if (z) {
            }
            return SwipeDismissBehavior.OooO0OO(width, i, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            this.OooO0O0 = i;
            this.OooO00o = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            OooO0O0 oooO0O0 = SwipeDismissBehavior.this.OooO0O0;
            if (oooO0O0 != null) {
                oooO0O0.OooO0O0(i);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = this.OooO00o + (view.getWidth() * SwipeDismissBehavior.this.OooO0oo);
            float width2 = this.OooO00o + (view.getWidth() * SwipeDismissBehavior.this.OooO);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.OooO0O0(0.0f, 1.0f - SwipeDismissBehavior.OooO0o0(width, width2, f), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int i;
            boolean z;
            OooO0O0 oooO0O0;
            this.OooO0O0 = -1;
            int width = view.getWidth();
            if (OooO00o(view, f)) {
                int left = view.getLeft();
                int i2 = this.OooO00o;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.OooO00o;
                z = false;
            }
            if (SwipeDismissBehavior.this.OooO00o.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new OooO0OO(view, z));
            } else {
                if (!z || (oooO0O0 = SwipeDismissBehavior.this.OooO0O0) == null) {
                    return;
                }
                oooO0O0.OooO00o(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return this.OooO0O0 == -1 && SwipeDismissBehavior.this.OooO00o(view);
        }
    }

    public interface OooO0O0 {
        void OooO00o(View view);

        void OooO0O0(int i);
    }

    public class OooO0OO implements Runnable {
        private final View OoooOoO;
        private final boolean OoooOoo;

        public OooO0OO(View view, boolean z) {
            this.OoooOoO = view;
            this.OoooOoo = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OooO0O0 oooO0O0;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.OooO00o;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.OoooOoO, this);
            } else {
                if (!this.OoooOoo || (oooO0O0 = SwipeDismissBehavior.this.OooO0O0) == null) {
                    return;
                }
                oooO0O0.OooO00o(this.OoooOoO);
            }
        }
    }

    public static float OooO0O0(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    public static int OooO0OO(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    private void OooO0Oo(ViewGroup viewGroup) {
        if (this.OooO00o == null) {
            this.OooO00o = this.OooO0o0 ? ViewDragHelper.create(viewGroup, this.OooO0Oo, this.OooOO0) : ViewDragHelper.create(viewGroup, this.OooOO0);
        }
    }

    public static float OooO0o0(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    public void OooO(OooO0O0 oooO0O0) {
        this.OooO0O0 = oooO0O0;
    }

    public boolean OooO00o(@NonNull View view) {
        return true;
    }

    public int OooO0o() {
        ViewDragHelper viewDragHelper = this.OooO00o;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }

    public void OooO0oO(float f) {
        this.OooO0oO = OooO0O0(0.0f, f, 1.0f);
    }

    public void OooO0oo(float f) {
        this.OooO = OooO0O0(0.0f, f, 1.0f);
    }

    public void OooOO0(float f) {
        this.OooO0Oo = f;
        this.OooO0o0 = true;
    }

    public void OooOO0O(float f) {
        this.OooO0oo = OooO0O0(0.0f, f, 1.0f);
    }

    public void OooOO0o(int i) {
        this.OooO0o = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.OooO0OO;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.OooO0OO = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.OooO0OO = false;
        }
        if (!zIsPointInChildBounds) {
            return false;
        }
        OooO0Oo(coordinatorLayout);
        return this.OooO00o.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.OooO00o;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }
}
