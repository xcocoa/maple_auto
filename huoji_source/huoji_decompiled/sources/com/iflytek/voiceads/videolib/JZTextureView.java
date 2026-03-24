package com.iflytek.voiceads.videolib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class JZTextureView extends TextureView {
    public int a;
    public int b;

    public JZTextureView(Context context) {
        super(context);
        this.a = 0;
        this.b = 0;
    }

    public JZTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        this.b = 0;
    }

    public void a(int i, int i2) {
        if (this.a == i && this.b == i2) {
            return;
        }
        this.a = i;
        this.b = i2;
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x012c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        int rotation = (int) getRotation();
        int i3 = this.a;
        int i4 = this.b;
        int measuredHeight = ((View) getParent()).getMeasuredHeight();
        int measuredWidth = ((View) getParent()).getMeasuredWidth();
        if (measuredWidth != 0 && measuredHeight != 0 && i3 != 0 && i4 != 0 && JZPlayer.b == 1) {
            if (rotation == 90 || rotation == 270) {
                measuredHeight = measuredWidth;
                measuredWidth = measuredHeight;
            }
            i4 = (i3 * measuredHeight) / measuredWidth;
        }
        if (rotation == 90 || rotation == 270) {
            i = i2;
            i2 = i;
        }
        int defaultSize = getDefaultSize(i3, i);
        int defaultSize2 = getDefaultSize(i4, i2);
        if (i3 > 0 && i4 > 0) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            defaultSize2 = View.MeasureSpec.getSize(i2);
            com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "widthMeasureSpec  [" + View.MeasureSpec.toString(i) + "]");
            com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "heightMeasureSpec [" + View.MeasureSpec.toString(i2) + "]");
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (i3 * defaultSize2 < size * i4) {
                    defaultSize = (defaultSize2 * i3) / i4;
                } else if (i3 * defaultSize2 > size * i4) {
                    defaultSize2 = (size * i4) / i3;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                int i5 = (size * i4) / i3;
                if (mode2 != Integer.MIN_VALUE || i5 <= defaultSize2) {
                    defaultSize2 = i5;
                    defaultSize = size;
                } else {
                    defaultSize = (defaultSize2 * i3) / i4;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (defaultSize2 * i3) / i4;
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize2 = (size * i4) / i3;
                    defaultSize = size;
                }
            } else {
                if (mode2 != Integer.MIN_VALUE || i4 <= defaultSize2) {
                    defaultSize2 = i4;
                    defaultSize = i3;
                } else {
                    defaultSize = (defaultSize2 * i3) / i4;
                }
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize2 = (size * i4) / i3;
                    defaultSize = size;
                }
            }
        }
        if (measuredWidth == 0 || measuredHeight == 0 || i3 == 0 || i4 == 0) {
            measuredHeight = defaultSize2;
            measuredWidth = defaultSize;
        } else if (JZPlayer.b == 3) {
            measuredHeight = i4;
            measuredWidth = i3;
        } else if (JZPlayer.b == 2) {
            if (rotation == 90 || rotation == 270) {
                int i6 = measuredHeight;
                measuredHeight = measuredWidth;
                measuredWidth = i6;
            }
            if (i4 / i3 > measuredHeight / measuredWidth) {
                measuredHeight = (measuredWidth / defaultSize) * defaultSize2;
            } else if (i4 / i3 < measuredHeight / measuredWidth) {
                measuredWidth = (measuredHeight / defaultSize2) * defaultSize;
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public void setRotation(float f) {
        if (f != getRotation()) {
            super.setRotation(f);
            requestLayout();
        }
    }
}
