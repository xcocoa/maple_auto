package com.anythink.basead.ui.d;

import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final String a = "TouchEventClickTrigger";
    private static final int b = -1;
    private static final int c = 10;
    private int e;
    private int f;
    private com.anythink.basead.ui.c.a h;
    private boolean i;
    private int d = -1;
    private boolean g = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        com.anythink.basead.ui.c.a aVar = this.h;
        if (aVar != null) {
            aVar.a(i, 13);
        }
    }

    private void a(final View view) {
        if (this.i) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.anythink.basead.ui.d.b.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    try {
                        if (Build.VERSION.SDK_INT >= 16) {
                            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        }
                        View view2 = view;
                        while (view2.getParent() != null) {
                            Object parent = view2.getParent();
                            if (!(parent instanceof View)) {
                                break;
                            } else {
                                view2 = (View) parent;
                            }
                        }
                        View view3 = view;
                        if (view2 == view3) {
                            return;
                        }
                        final int[] iArr = new int[2];
                        view3.getLocationOnScreen(iArr);
                        final int width = view.getWidth();
                        final int height = view.getHeight();
                        final boolean[] zArr = {false};
                        view2.setOnTouchListener(new View.OnTouchListener() { // from class: com.anythink.basead.ui.d.b.1.1
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view4, MotionEvent motionEvent) {
                                int rawX = (int) motionEvent.getRawX();
                                int rawY = (int) motionEvent.getRawY();
                                int[] iArr2 = iArr;
                                int i = iArr2[0];
                                int i2 = iArr2[1];
                                int action = motionEvent.getAction();
                                if (action == 0) {
                                    zArr[0] = false;
                                } else if (action != 1) {
                                    if (action == 2 && rawX > i && rawX < i + width && rawY > i2 && rawY < i2 + height) {
                                        zArr[0] = true;
                                    }
                                } else if (zArr[0]) {
                                    b.this.a(12);
                                }
                                return false;
                            }
                        });
                    } catch (Exception e) {
                        new StringBuilder("setDecorViewTouchListener() failed: ").append(e.getMessage());
                    }
                }
            });
        }
    }

    public final b a(com.anythink.basead.ui.c.a aVar) {
        this.h = aVar;
        return this;
    }

    public final b a(boolean z) {
        this.i = z;
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.e = (int) motionEvent.getY();
            this.f = (int) motionEvent.getX();
            StringBuilder sb = new StringBuilder("onInterceptTouchEvent() >>> ACTION_DOWN: mLastMotionX = ");
            sb.append(this.f);
            sb.append(" mLastMotionY = ");
            sb.append(this.e);
            this.d = motionEvent.getPointerId(0);
            this.g = false;
        } else if (action == 1) {
            if (this.g) {
                a(13);
            }
            int iFindPointerIndex = motionEvent.findPointerIndex(this.d);
            this.f = (int) motionEvent.getX(iFindPointerIndex);
            this.e = (int) motionEvent.getY(iFindPointerIndex);
            this.g = false;
            this.d = -1;
        } else if (action == 2) {
            int i = this.d;
            if (i != -1) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(i);
                if (iFindPointerIndex2 == -1) {
                    StringBuilder sb2 = new StringBuilder("Invalid pointerId=");
                    sb2.append(i);
                    sb2.append(" in onInterceptTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(iFindPointerIndex2);
                    int x = (int) motionEvent.getX(iFindPointerIndex2);
                    int iAbs = Math.abs(y - this.e);
                    int iAbs2 = Math.abs(x - this.f);
                    StringBuilder sb3 = new StringBuilder("onInterceptTouchEvent() >>> ACTION_MOVE: xDiff = ");
                    sb3.append(iAbs2);
                    sb3.append(" yDiff = ");
                    sb3.append(iAbs);
                    if (iAbs > 10 || iAbs2 > 10) {
                        this.g = true;
                    }
                }
            }
        } else if (action == 3) {
        }
        return this.g;
    }

    public final boolean a(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.e = (int) motionEvent.getY();
            this.f = (int) motionEvent.getX();
            this.d = motionEvent.getPointerId(0);
            this.g = false;
        } else if (action == 1) {
            new StringBuilder("onTouchEvent() >>> ACTION_UP mIsBeingDragged = ").append(this.g);
            if (this.g) {
                a(13);
            }
            int iFindPointerIndex = motionEvent.findPointerIndex(this.d);
            this.f = (int) motionEvent.getX(iFindPointerIndex);
            this.e = (int) motionEvent.getY(iFindPointerIndex);
            this.g = false;
            this.d = -1;
        } else if (action == 2) {
            int iFindPointerIndex2 = motionEvent.findPointerIndex(this.d);
            if (iFindPointerIndex2 == -1) {
                StringBuilder sb = new StringBuilder("Invalid pointerId=");
                sb.append(this.d);
                sb.append(" in onTouchEvent");
            } else {
                int x = (int) motionEvent.getX(iFindPointerIndex2);
                int y = (int) motionEvent.getY(iFindPointerIndex2);
                int iAbs = Math.abs(x - this.f);
                int iAbs2 = Math.abs(y - this.e);
                StringBuilder sb2 = new StringBuilder("onTouchEvent() >>> ACTION_MOVE: xDiff = ");
                sb2.append(iAbs);
                sb2.append(" yDiff = ");
                sb2.append(iAbs2);
                if (iAbs2 > 10 || iAbs > 10) {
                    this.g = true;
                    ViewParent parent = view.getParent();
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
            }
        }
        return true;
    }
}
