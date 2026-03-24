package com.anythink.basead.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class RewardExitConfirmDialogActivity extends Activity {
    public static final int a = 1;
    public static final int b = 2;
    private static Runnable c = null;
    private static String d = null;
    private static int e = 1;
    private Dialog f;

    /* JADX INFO: renamed from: com.anythink.basead.ui.RewardExitConfirmDialogActivity$1, reason: invalid class name */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            RewardExitConfirmDialogActivity.this.finish();
            if (RewardExitConfirmDialogActivity.c != null) {
                RewardExitConfirmDialogActivity.c.run();
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.RewardExitConfirmDialogActivity$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            RewardExitConfirmDialogActivity.this.finish();
        }
    }

    public static void a(Context context, String str, Runnable runnable, int i) {
        d = str;
        c = runnable;
        e = i;
        Intent intent = new Intent(context, (Class<?>) RewardExitConfirmDialogActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    private void b() {
        Resources resources;
        int iA;
        try {
            View viewInflate = LayoutInflater.from(this).inflate(i.a(this, "myoffer_confirm_dialog", "layout"), (ViewGroup) null, false);
            TextView textView = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_msg", "id"));
            TextView textView2 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_give_up", "id"));
            TextView textView3 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_continue", "id"));
            textView2.setText(getResources().getString(i.a(this, "myoffer_reward_exit_confirm_give_up", com.anythink.expressad.foundation.h.i.g)));
            if (e != 2) {
                textView.setText(getResources().getString(i.a(this, "myoffer_reward_exit_confirm_msg", com.anythink.expressad.foundation.h.i.g), d));
                resources = getResources();
                iA = i.a(this, "myoffer_reward_exit_confirm_continue", com.anythink.expressad.foundation.h.i.g);
            } else {
                textView.setText(getResources().getString(i.a(this, "myoffer_anim_reward_exit_confirm_msg", com.anythink.expressad.foundation.h.i.g), d));
                resources = getResources();
                iA = i.a(this, "myoffer_anim_reward_exit_confirm_continue", com.anythink.expressad.foundation.h.i.g);
            }
            textView3.setText(resources.getString(iA));
            textView2.setOnClickListener(new AnonymousClass1());
            textView3.setOnClickListener(new AnonymousClass2());
            Dialog dialog = new Dialog(this, i.a(this, "style_full_screen_translucent_dialog", com.anythink.expressad.foundation.h.i.e));
            this.f = dialog;
            dialog.setContentView(viewInflate);
            this.f.setCancelable(false);
            this.f.show();
        } catch (Throwable unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Resources resources;
        int iA;
        super.onCreate(bundle);
        try {
            View viewInflate = LayoutInflater.from(this).inflate(i.a(this, "myoffer_confirm_dialog", "layout"), (ViewGroup) null, false);
            TextView textView = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_msg", "id"));
            TextView textView2 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_give_up", "id"));
            TextView textView3 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_continue", "id"));
            textView2.setText(getResources().getString(i.a(this, "myoffer_reward_exit_confirm_give_up", com.anythink.expressad.foundation.h.i.g)));
            if (e != 2) {
                textView.setText(getResources().getString(i.a(this, "myoffer_reward_exit_confirm_msg", com.anythink.expressad.foundation.h.i.g), d));
                resources = getResources();
                iA = i.a(this, "myoffer_reward_exit_confirm_continue", com.anythink.expressad.foundation.h.i.g);
            } else {
                textView.setText(getResources().getString(i.a(this, "myoffer_anim_reward_exit_confirm_msg", com.anythink.expressad.foundation.h.i.g), d));
                resources = getResources();
                iA = i.a(this, "myoffer_anim_reward_exit_confirm_continue", com.anythink.expressad.foundation.h.i.g);
            }
            textView3.setText(resources.getString(iA));
            textView2.setOnClickListener(new AnonymousClass1());
            textView3.setOnClickListener(new AnonymousClass2());
            Dialog dialog = new Dialog(this, i.a(this, "style_full_screen_translucent_dialog", com.anythink.expressad.foundation.h.i.e));
            this.f = dialog;
            dialog.setContentView(viewInflate);
            this.f.setCancelable(false);
            this.f.show();
        } catch (Throwable unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        Dialog dialog = this.f;
        if (dialog != null) {
            dialog.dismiss();
            this.f = null;
        }
        c = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (4 == i) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
