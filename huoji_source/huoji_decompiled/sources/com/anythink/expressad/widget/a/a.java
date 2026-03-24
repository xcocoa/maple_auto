package com.anythink.expressad.widget.a;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.v;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Dialog {
    private static final String a = "ATAlertDialog";
    private b b;
    private TextView c;
    private TextView d;
    private Button e;
    private Button f;

    public a(Context context, final b bVar) {
        super(context);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        requestWindowFeature(1);
        View viewInflate = LayoutInflater.from(context).inflate(i.a(context, "anythink_cm_alertview", "layout"), (ViewGroup) null);
        this.b = bVar;
        if (viewInflate != null) {
            setContentView(viewInflate);
            try {
                this.c = (TextView) viewInflate.findViewById(i.a(context, "anythink_video_common_alertview_titleview", "id"));
            } catch (Exception e) {
                e.getMessage();
            }
            try {
                this.d = (TextView) viewInflate.findViewById(i.a(context, "anythink_video_common_alertview_contentview", "id"));
                this.e = (Button) viewInflate.findViewById(i.a(context, "anythink_video_common_alertview_confirm_button", "id"));
                this.f = (Button) viewInflate.findViewById(i.a(context, "anythink_video_common_alertview_cancel_button", "id"));
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
        Button button = this.f;
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.widget.a.a.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a();
                    }
                    a.this.cancel();
                    a.this.a();
                }
            });
        }
        Button button2 = this.e;
        if (button2 != null) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.widget.a.a.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.b();
                    }
                    a.this.cancel();
                    a.this.a();
                }
            });
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    private void a(int i) {
        Context contextF = n.a().f();
        String string = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn", i.g));
        String string2 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn_tips", i.g));
        String string3 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn_close", i.g));
        String string4 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn_continue", i.g));
        String string5 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close", i.g));
        String string6 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_cancel", i.g));
        String string7 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_continue", i.g));
        if (i != com.anythink.expressad.foundation.g.a.cr) {
            string = string2;
        }
        a(string);
        if (i != com.anythink.expressad.foundation.g.a.cr) {
            string3 = string4;
        }
        b(string3);
        if (i != com.anythink.expressad.foundation.g.a.cr) {
            string5 = string6;
        }
        c(string5);
        d(string7);
    }

    private static void a(Window window) {
        View decorView;
        int i;
        if (window != null) {
            window.setFlags(1024, 1024);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 19) {
                window.addFlags(67108864);
                decorView = window.getDecorView();
                i = 4098;
            } else {
                decorView = window.getDecorView();
                i = 2;
            }
            decorView.setSystemUiVisibility(i);
            if (i2 >= 28) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
            window.setGravity(17);
        }
    }

    private void a(String str) {
        TextView textView = this.c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    private void a(String str, String str2, String str3, String str4) {
        a(str);
        b(str2);
        c(str3);
        d(str4);
    }

    private void b(String str) {
        TextView textView = this.d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    private void c() {
        Context contextF = n.a().f();
        String string = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn", i.g));
        String string2 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_desc", i.g));
        String string3 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close", i.g));
        String string4 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_cancel_close", i.g));
        a(string);
        b(string2);
        c(string3);
        d(string4);
    }

    private void c(String str) {
        Button button = this.e;
        if (button != null) {
            button.setText(str);
        }
    }

    private void d() {
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.foundation.b.a.c().f();
        com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
        if (aVarB != null) {
            a(aVarB.C(), aVarB.D(), aVarB.E(), aVarB.F());
            return;
        }
        Context contextF = n.a().f();
        String string = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn", i.g));
        String string2 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_desc", i.g));
        String string3 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close", i.g));
        String string4 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_continue_to_play", i.g));
        a(string);
        b(string2);
        c(string3);
        d(string4);
    }

    private void d(String str) {
        Button button = this.f;
        if (button != null) {
            button.setText(str);
        }
    }

    private void e() {
        Context contextF = n.a().f();
        String string = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn", i.g));
        String string2 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_desc", i.g));
        String string3 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close", i.g));
        String string4 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_continue_to_play", i.g));
        a(string);
        b(string2);
        c(string3);
        d(string4);
    }

    public final void a() {
        if (this.b != null) {
            this.b = null;
        }
    }

    public final void a(int i, String str) {
        try {
            String string = v.b(getContext(), "Anythink_ConfirmTitle".concat(String.valueOf(str)), "").toString();
            String string2 = v.b(getContext(), "Anythink_ConfirmContent".concat(String.valueOf(str)), "").toString();
            String string3 = v.b(getContext(), "Anythink_CancelText".concat(String.valueOf(str)), "").toString();
            String string4 = v.b(getContext(), "Anythink_ConfirmText".concat(String.valueOf(str)), "").toString();
            if (!TextUtils.isEmpty(string) || !TextUtils.isEmpty(string2) || !TextUtils.isEmpty(string3) || !TextUtils.isEmpty(string4)) {
                a(string, string2, string3, string4);
                return;
            }
            Context contextF = n.a().f();
            String string5 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn", i.g));
            String string6 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn_tips", i.g));
            String string7 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn_close", i.g));
            String string8 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn_continue", i.g));
            String string9 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close", i.g));
            String string10 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_cancel", i.g));
            String string11 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_continue", i.g));
            if (i != com.anythink.expressad.foundation.g.a.cr) {
                string5 = string6;
            }
            a(string5);
            if (i != com.anythink.expressad.foundation.g.a.cr) {
                string7 = string8;
            }
            b(string7);
            if (i != com.anythink.expressad.foundation.g.a.cr) {
                string9 = string10;
            }
            c(string9);
            d(string11);
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public final void b() {
        try {
            Context contextF = n.a().f();
            String string = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_warn", i.g));
            String string2 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close_desc", i.g));
            String string3 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_confim_close", i.g));
            String string4 = contextF.getString(i.a(getContext(), "anythink_cm_dialog_alert_cancel_close", i.g));
            a(string);
            b(string2);
            c(string3);
            d(string4);
        } catch (Exception e) {
            e.getMessage();
        }
    }

    @Override // android.app.Dialog
    public final void show() {
        super.show();
        try {
            getWindow().setFlags(8, 8);
            super.show();
            Window window = getWindow();
            if (window != null) {
                window.setFlags(1024, 1024);
                int i = Build.VERSION.SDK_INT;
                if (i >= 19) {
                    window.addFlags(67108864);
                    window.getDecorView().setSystemUiVisibility(4098);
                } else {
                    window.getDecorView().setSystemUiVisibility(2);
                }
                if (i >= 28) {
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    attributes.layoutInDisplayCutoutMode = 1;
                    window.setAttributes(attributes);
                }
                window.setBackgroundDrawable(new ColorDrawable(0));
                window.setLayout(-1, -1);
                window.setGravity(17);
            }
            getWindow().clearFlags(8);
        } catch (Exception e) {
            e.getMessage();
            super.show();
        }
    }
}
