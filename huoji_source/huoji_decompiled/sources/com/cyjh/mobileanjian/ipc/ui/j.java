package com.cyjh.mobileanjian.ipc.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mqsdk.R;
import z2.xe;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends RelativeLayout {
    private Context OoooOoO;
    private xe OoooOoo;
    public WindowManager Ooooo00;
    public WindowManager.LayoutParams Ooooo0o;
    public RelativeLayout OooooO0;
    public boolean OooooOO;
    public boolean OooooOo;
    private float Oooooo;
    private int Oooooo0;
    public int OoooooO;
    public String Ooooooo;
    private Handler o0OoOo0;

    public class OooO00o implements View.OnTouchListener {
        public int OoooOoO;
        public int OoooOoo;
        public int Ooooo00;
        public int Ooooo0o;
        public long OooooO0;
        public long OooooOO;
        public Runnable OooooOo = new RunnableC0179OooO00o();
        public final /* synthetic */ String Oooooo0;

        /* JADX INFO: renamed from: com.cyjh.mobileanjian.ipc.ui.j$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0179OooO00o implements Runnable {
            public RunnableC0179OooO00o() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                j.OooO0oO(OooO00o.this.Oooooo0, UiMessage.ControlEvent.Event_Type.ON_TOUCH);
            }
        }

        public OooO00o(String str) {
            this.Oooooo0 = str;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            String str;
            UiMessage.ControlEvent.Event_Type event_Type;
            int action = motionEvent.getAction();
            if (action == 0) {
                this.OoooOoO = (int) motionEvent.getRawX();
                this.OoooOoo = (int) motionEvent.getRawY();
                this.Ooooo00 = j.this.Ooooo0o.x;
                this.Ooooo0o = j.this.Ooooo0o.y;
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.OooooO0 = jCurrentTimeMillis;
                this.OooooOO = jCurrentTimeMillis;
                j.OooO0oO(this.Oooooo0, UiMessage.ControlEvent.Event_Type.ON_TOUCH_DOWN);
                new StringBuilder("ACTION_DOWN ").append(System.currentTimeMillis());
                j.this.o0OoOo0.postDelayed(this.OooooOo, 501L);
            } else if (action == 1) {
                if (this.OooooOo != null) {
                    j.this.o0OoOo0.removeCallbacks(this.OooooOo);
                }
                new StringBuilder("ACTION_UP ").append(System.currentTimeMillis());
                if (Math.abs(motionEvent.getRawX() - this.OoooOoO) >= 30.0f || Math.abs(motionEvent.getRawY() - this.OoooOoo) >= 30.0f || System.currentTimeMillis() - this.OooooO0 >= 500) {
                    str = this.Oooooo0;
                    event_Type = UiMessage.ControlEvent.Event_Type.ON_TOUCH_UP;
                } else {
                    str = this.Oooooo0;
                    event_Type = UiMessage.ControlEvent.Event_Type.ON_CLICK;
                }
                j.OooO0oO(str, event_Type);
            } else if (action == 2) {
                new StringBuilder("ACTION_MOVE ").append(System.currentTimeMillis());
                if (j.this.OooooOo) {
                    int rawX = ((int) motionEvent.getRawX()) - this.OoooOoO;
                    int rawY = ((int) motionEvent.getRawY()) - this.OoooOoo;
                    j.this.Ooooo0o.x = this.Ooooo00 + rawX;
                    j.this.Ooooo0o.y = this.Ooooo0o + rawY;
                    j.this.Ooooo00.updateViewLayout(j.this.OooooO0, j.this.Ooooo0o);
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if ((Math.abs(motionEvent.getRawX() - this.OoooOoO) != 5.0f || Math.abs(motionEvent.getRawY() - this.OoooOoo) != 5.0f) && jCurrentTimeMillis2 - this.OooooOO > 50) {
                    j.OooO0oO(this.Oooooo0, UiMessage.ControlEvent.Event_Type.ON_TOUCH_MOVE);
                    this.OooooOO = jCurrentTimeMillis2;
                }
            }
            return true;
        }
    }

    public class OooO0O0 implements View.OnTouchListener {
        public int OoooOoO;
        public int OoooOoo;
        public int Ooooo00;
        public int Ooooo0o;
        public long OooooO0;
        public long OooooOO;
        public Runnable OooooOo = new OooO00o();
        public final /* synthetic */ String Oooooo0;

        public class OooO00o implements Runnable {
            public OooO00o() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                j.OooO0oO(OooO0O0.this.Oooooo0, UiMessage.ControlEvent.Event_Type.ON_TOUCH);
            }
        }

        public OooO0O0(String str) {
            this.Oooooo0 = str;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            String str;
            UiMessage.ControlEvent.Event_Type event_Type;
            int action = motionEvent.getAction();
            if (action == 0) {
                this.OoooOoO = (int) motionEvent.getRawX();
                this.OoooOoo = (int) motionEvent.getRawY();
                this.Ooooo00 = j.this.Ooooo0o.x;
                this.Ooooo0o = j.this.Ooooo0o.y;
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.OooooO0 = jCurrentTimeMillis;
                this.OooooOO = jCurrentTimeMillis;
                j.OooO0oO(this.Oooooo0, UiMessage.ControlEvent.Event_Type.ON_TOUCH_DOWN);
                new StringBuilder("ACTION_DOWN ").append(System.currentTimeMillis());
                j.this.o0OoOo0.postDelayed(this.OooooOo, 501L);
            } else if (action == 1) {
                j.this.o0OoOo0.removeCallbacks(this.OooooOo);
                new StringBuilder("ACTION_UP ").append(System.currentTimeMillis());
                if (Math.abs(motionEvent.getRawX() - this.OoooOoO) >= 30.0f || Math.abs(motionEvent.getRawY() - this.OoooOoo) >= 30.0f || System.currentTimeMillis() - this.OooooO0 >= 500) {
                    str = this.Oooooo0;
                    event_Type = UiMessage.ControlEvent.Event_Type.ON_TOUCH_UP;
                } else {
                    str = this.Oooooo0;
                    event_Type = UiMessage.ControlEvent.Event_Type.ON_CLICK;
                }
                j.OooO0oO(str, event_Type);
            } else if (action == 2) {
                new StringBuilder("ACTION_MOVE ").append(System.currentTimeMillis());
                if (j.this.OooooOo) {
                    int rawX = ((int) motionEvent.getRawX()) - this.OoooOoO;
                    int rawY = ((int) motionEvent.getRawY()) - this.OoooOoo;
                    j.this.Ooooo0o.x = this.Ooooo00 + rawX;
                    j.this.Ooooo0o.y = this.Ooooo0o + rawY;
                    j.this.Ooooo00.updateViewLayout(j.this.OooooO0, j.this.Ooooo0o);
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (jCurrentTimeMillis2 - this.OooooO0 > 501) {
                    j.OooO0oO(this.Oooooo0, UiMessage.ControlEvent.Event_Type.ON_TOUCH);
                }
                if ((Math.abs(motionEvent.getRawX() - this.OoooOoO) != 5.0f || Math.abs(motionEvent.getRawY() - this.OoooOoo) != 5.0f) && jCurrentTimeMillis2 - this.OooooOO > 50) {
                    j.OooO0oO(this.Oooooo0, UiMessage.ControlEvent.Event_Type.ON_TOUCH_MOVE);
                    this.OooooOO = jCurrentTimeMillis2;
                }
            }
            return true;
        }
    }

    public j(Context context, String str, int i, int i2, int i3, int i4) {
        super(context);
        this.OooooOO = false;
        this.OooooOo = false;
        this.Oooooo0 = Color.parseColor("#FFFFFF");
        this.Oooooo = 0.0f;
        this.OoooooO = 100;
        this.Ooooooo = "";
        this.o0OoOo0 = new Handler();
        this.OoooOoO = context;
        this.OoooOoo = xe.OooOO0o(context);
        this.Ooooo00 = (WindowManager) this.OoooOoO.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.Ooooo0o = layoutParams;
        int i5 = Build.VERSION.SDK_INT;
        layoutParams.type = i5 >= 26 ? 2038 : (i5 < 19 || i5 >= 24) ? 2002 : 2005;
        layoutParams.format = 1;
        layoutParams.flags = 1320;
        layoutParams.systemUiVisibility = 2;
        layoutParams.gravity = 51;
        layoutParams.x = i;
        layoutParams.y = i2;
        layoutParams.alpha = 1.0f;
        this.OoooOoO.getResources().getDisplayMetrics();
        this.OooooO0 = (RelativeLayout) LayoutInflater.from(this.OoooOoO).inflate(R.layout.ui_show_float, (ViewGroup) null);
        WindowManager.LayoutParams layoutParams2 = this.Ooooo0o;
        layoutParams2.width = i3;
        layoutParams2.height = i4;
        setTag(str);
    }

    private void OooO0o0(int i, int i2) {
        this.Ooooo00 = (WindowManager) this.OoooOoO.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.Ooooo0o = layoutParams;
        int i3 = Build.VERSION.SDK_INT;
        layoutParams.type = i3 >= 26 ? 2038 : (i3 < 19 || i3 >= 24) ? 2002 : 2005;
        layoutParams.format = 1;
        layoutParams.flags = 1320;
        layoutParams.systemUiVisibility = 2;
        layoutParams.gravity = 51;
        layoutParams.x = i;
        layoutParams.y = i2;
        layoutParams.alpha = 1.0f;
    }

    public static /* synthetic */ void OooO0oO(String str, UiMessage.ControlEvent.Event_Type event_Type) {
        MqRunner.getInstance().OooO0O0(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(event_Type).build()).setIsSuccess(true).build().toByteString());
    }

    private void OooO0oo(boolean z) {
        this.OooooOo = z;
    }

    private void OooOO0o(int i, int i2) {
        this.OoooOoO.getResources().getDisplayMetrics();
        this.OooooO0 = (RelativeLayout) LayoutInflater.from(this.OoooOoO).inflate(R.layout.ui_show_float, (ViewGroup) null);
        WindowManager.LayoutParams layoutParams = this.Ooooo0o;
        layoutParams.width = i;
        layoutParams.height = i2;
    }

    private static void OooOOO(String str, UiMessage.ControlEvent.Event_Type event_Type) {
        MqRunner.getInstance().OooO0O0(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(event_Type).build()).setIsSuccess(true).build().toByteString());
    }

    private void OooOOO0(String str) {
        this.Ooooooo = str;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        if (Build.VERSION.SDK_INT >= 16) {
            this.OooooO0.setBackground(new BitmapDrawable(bitmapDecodeFile));
        }
        this.OooooO0.getBackground().setAlpha((this.OoooooO * 255) / 100);
    }

    private int OooOOOO(int i) {
        return (int) (i * (this.OoooOoO.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }

    private boolean OooOo0() {
        return this.OooooOo;
    }

    private boolean OooOo00() {
        return this.OooooOO;
    }

    private void OooOo0O() {
        RelativeLayout relativeLayout = this.OooooO0;
        if (relativeLayout == null || !this.OooooOO) {
            return;
        }
        this.Ooooo00.removeView(relativeLayout);
        this.Ooooo00.addView(this.OooooO0, this.Ooooo0o);
    }

    public final View OooO00o(String str) {
        return this.OooooO0.findViewWithTag(str);
    }

    public final void OooO0OO() {
        int i = Build.VERSION.SDK_INT;
        String str = (String) getTag();
        String str2 = this.Ooooooo;
        if (str2 == null || str2.length() <= 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            float f = this.Oooooo;
            gradientDrawable.setCornerRadii(new float[]{f, f, f, f, f, f, f, f});
            try {
                gradientDrawable.setColor(this.Oooooo0);
            } catch (Exception unused) {
            }
            if (i >= 16) {
                this.OooooO0.setBackground(gradientDrawable);
            }
        } else {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(this.Ooooooo);
            if (i >= 16) {
                this.OooooO0.setBackground(new BitmapDrawable(bitmapDecodeFile));
            }
        }
        this.OooooOO = true;
        this.OooooO0.setOnTouchListener(new OooO00o(str));
        this.Ooooo00.addView(this.OooooO0, this.Ooooo0o);
        this.OooooO0.getBackground().setAlpha((this.OoooooO * 255) / 100);
    }

    public final void OooO0Oo(int i) {
        this.Oooooo = i;
        GradientDrawable gradientDrawable = new GradientDrawable();
        float f = this.Oooooo;
        gradientDrawable.setCornerRadii(new float[]{f, f, f, f, f, f, f, f});
        try {
            gradientDrawable.setColor(this.Oooooo0);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.OooooO0.setBackground(gradientDrawable);
        }
        this.OooooO0.getBackground().setAlpha((this.OoooooO * 255) / 100);
    }

    public final void OooO0o(View view) {
        String str = (String) view.getTag();
        if (!(view instanceof Button)) {
            view.setOnTouchListener(new OooO0O0(str));
        }
        this.OooooO0.addView(view);
    }

    public final void OooOO0() {
        this.OooooOO = false;
        try {
            this.Ooooo00.removeView(this.OooooO0);
        } catch (Exception unused) {
        }
    }

    public final void OooOO0O(int i) {
        this.Oooooo0 = i;
        GradientDrawable gradientDrawable = new GradientDrawable();
        float f = this.Oooooo;
        gradientDrawable.setCornerRadii(new float[]{f, f, f, f, f, f, f, f});
        try {
            gradientDrawable.setColor(this.Oooooo0);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.OooooO0.setBackground(gradientDrawable);
        }
        this.OooooO0.getBackground().setAlpha((this.OoooooO * 255) / 100);
    }

    public final void OooOOo0() {
        if (this.OooooOO) {
            OooOO0();
        }
    }

    public final void OooOOoo() {
        RelativeLayout relativeLayout = this.OooooO0;
        if (relativeLayout == null || !this.OooooOO) {
            return;
        }
        this.Ooooo00.updateViewLayout(relativeLayout, this.Ooooo0o);
    }

    public final int getOpacity() {
        return this.OoooooO;
    }

    public final WindowManager.LayoutParams getParams() {
        return this.Ooooo0o;
    }

    public final void setFloatHeight(int i) {
        WindowManager.LayoutParams params = getParams();
        StringBuilder sb = new StringBuilder("setFloatHeight wLayoutParams[ ");
        sb.append(params.width);
        sb.append(",");
        sb.append(params.height);
        sb.append("]");
        WindowManager.LayoutParams layoutParams = this.Ooooo0o;
        layoutParams.width = params.width;
        layoutParams.height = i;
        if (this.OooooOO) {
            this.Ooooo00.updateViewLayout(this.OooooO0, layoutParams);
        }
    }

    public final void setFloatLeft(int i) {
        WindowManager.LayoutParams params = getParams();
        StringBuilder sb = new StringBuilder("setFloatLeft wLayoutParams[ ");
        sb.append(params.x);
        sb.append(",");
        sb.append(params.y);
        sb.append("]");
        params.x = i;
        if (this.OooooOO) {
            this.Ooooo00.updateViewLayout(this.OooooO0, params);
        }
    }

    public final void setFloatTop(int i) {
        WindowManager.LayoutParams params = getParams();
        StringBuilder sb = new StringBuilder("setFloatTop wLayoutParams[ ");
        sb.append(params.x);
        sb.append(",");
        sb.append(params.y);
        sb.append("]");
        params.y = i;
        if (this.OooooOO) {
            this.Ooooo00.updateViewLayout(this.OooooO0, params);
        }
    }

    public final void setFloatWidth(int i) {
        WindowManager.LayoutParams params = getParams();
        StringBuilder sb = new StringBuilder("setFloatWidth wLayoutParams[ ");
        sb.append(params.width);
        sb.append(",");
        sb.append(params.height);
        sb.append("]");
        WindowManager.LayoutParams layoutParams = this.Ooooo0o;
        layoutParams.width = i;
        layoutParams.height = params.height;
        if (this.OooooOO) {
            this.Ooooo00.updateViewLayout(this.OooooO0, layoutParams);
        }
    }

    public final void setOpacity(int i) {
        this.OooooO0.getBackground().setAlpha((i * 255) / 100);
        this.OoooooO = i;
    }
}
