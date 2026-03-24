package com.anythink.china.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.l;
import com.anythink.core.common.g.a;
import com.anythink.core.common.o.b.b;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.n;
import com.anythink.core.common.o.x;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class ApkConfirmDialogActivity extends Activity {
    public static l a;
    private static a b;
    private Dialog c;

    /* JADX INFO: renamed from: com.anythink.china.activity.ApkConfirmDialogActivity$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b.a().a(new Runnable() { // from class: com.anythink.china.activity.ApkConfirmDialogActivity.2.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (ApkConfirmDialogActivity.b != null) {
                        ApkConfirmDialogActivity.b.a(false);
                    }
                }
            }, 2, true);
            ApkConfirmDialogActivity.this.finish();
        }
    }

    /* JADX INFO: renamed from: com.anythink.china.activity.ApkConfirmDialogActivity$3, reason: invalid class name */
    public class AnonymousClass3 implements View.OnClickListener {
        public AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b.a().a(new Runnable() { // from class: com.anythink.china.activity.ApkConfirmDialogActivity.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (ApkConfirmDialogActivity.b != null) {
                        ApkConfirmDialogActivity.b.a(true);
                    }
                }
            }, 2, true);
            ApkConfirmDialogActivity.this.finish();
        }
    }

    /* JADX INFO: renamed from: com.anythink.china.activity.ApkConfirmDialogActivity$4, reason: invalid class name */
    public class AnonymousClass4 implements b.a {
        public final /* synthetic */ String a;
        public final /* synthetic */ RoundImageView b;

        public AnonymousClass4(String str, RoundImageView roundImageView) {
            this.a = str;
            this.b = roundImageView;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, this.a)) {
                this.b.setImageBitmap(bitmap);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.china.activity.ApkConfirmDialogActivity$5, reason: invalid class name */
    public class AnonymousClass5 implements View.OnClickListener {
        public final /* synthetic */ l a;

        public AnonymousClass5(l lVar) {
            this.a = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(ApkConfirmDialogActivity.this, this.a.M());
        }
    }

    /* JADX INFO: renamed from: com.anythink.china.activity.ApkConfirmDialogActivity$6, reason: invalid class name */
    public class AnonymousClass6 implements View.OnClickListener {
        public final /* synthetic */ l a;

        public AnonymousClass6(l lVar) {
            this.a = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(ApkConfirmDialogActivity.this, this.a.L());
        }
    }

    /* JADX INFO: renamed from: com.anythink.china.activity.ApkConfirmDialogActivity$7, reason: invalid class name */
    public class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.china.activity.ApkConfirmDialogActivity.7.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (ApkConfirmDialogActivity.b != null) {
                        ApkConfirmDialogActivity.b.a(true);
                    }
                }
            }, 2, true);
            ApkConfirmDialogActivity.this.finish();
        }
    }

    /* JADX INFO: renamed from: com.anythink.china.activity.ApkConfirmDialogActivity$8, reason: invalid class name */
    public class AnonymousClass8 implements View.OnClickListener {
        public AnonymousClass8() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.china.activity.ApkConfirmDialogActivity.8.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (ApkConfirmDialogActivity.b != null) {
                        ApkConfirmDialogActivity.b.a(false);
                    }
                }
            }, 2, true);
            ApkConfirmDialogActivity.this.finish();
        }
    }

    public static void a(final Context context, final l lVar, final a aVar) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.china.activity.ApkConfirmDialogActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                if (com.anythink.china.common.a.a(context).a(lVar)) {
                    aVar.a(true);
                } else if (com.anythink.china.common.c.a.a(context, lVar.F())) {
                    aVar.a(true);
                } else {
                    com.anythink.core.common.b.n.a().b(new Runnable() { // from class: com.anythink.china.activity.ApkConfirmDialogActivity.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            ApkConfirmDialogActivity.a = lVar;
                            a unused = ApkConfirmDialogActivity.b = aVar;
                            Intent intent = new Intent(context, (Class<?>) ApkConfirmDialogActivity.class);
                            intent.addFlags(268435456);
                            context.startActivity(intent);
                        }
                    });
                }
            }
        }, 2, true);
    }

    private void b() {
        try {
            l lVar = a;
            String strAk = lVar instanceof aj ? ((aj) lVar).ak() : "";
            if (TextUtils.isEmpty(strAk)) {
                strAk = a.v();
            }
            View viewInflate = LayoutInflater.from(this).inflate(i.a(this, "myoffer_confirm_dialog", "layout"), (ViewGroup) null, false);
            TextView textView = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_msg", "id"));
            TextView textView2 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_give_up", "id"));
            TextView textView3 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_continue", "id"));
            textView.setText("立即下载\"" + strAk + "\"?");
            textView2.setText("取 消");
            textView3.setText("确 定");
            textView2.setOnClickListener(new AnonymousClass2());
            textView3.setOnClickListener(new AnonymousClass3());
            Dialog dialog = new Dialog(this, i.a(this, "style_full_screen_translucent_dialog", com.anythink.expressad.foundation.h.i.e));
            this.c = dialog;
            dialog.setContentView(viewInflate);
            this.c.setCancelable(false);
            this.c.show();
        } catch (Throwable unused) {
            finish();
        }
    }

    private void c() {
        TextView textView;
        View view;
        TextView textView2;
        try {
            l lVar = a;
            View viewInflate = LayoutInflater.from(this).inflate(i.a(this, "confirm", "layout"), (ViewGroup) null, false);
            RoundImageView roundImageView = (RoundImageView) viewInflate.findViewById(i.a(this, "confirm_dialog_icon", "id"));
            TextView textView3 = (TextView) viewInflate.findViewById(i.a(this, "confirm_dialog_title", "id"));
            TextView textView4 = (TextView) viewInflate.findViewById(i.a(this, "confirm_dialog_version_name", "id"));
            TextView textView5 = (TextView) viewInflate.findViewById(i.a(this, "confirm_dialog_publisher_name", "id"));
            TextView textView6 = (TextView) viewInflate.findViewById(i.a(this, "confirm_dialog_permission_manage", "id"));
            TextView textView7 = (TextView) viewInflate.findViewById(i.a(this, "confirm_dialog_privacy_agreement", "id"));
            TextView textView8 = (TextView) viewInflate.findViewById(i.a(this, "confirm_dialog_download_now", "id"));
            TextView textView9 = (TextView) viewInflate.findViewById(i.a(this, "confirm_dialog_give_up", "id"));
            String strX = lVar.x();
            if (TextUtils.isEmpty(strX)) {
                textView = textView9;
                view = viewInflate;
                textView2 = textView8;
                ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.height = 0;
                roundImageView.setLayoutParams(layoutParams);
            } else {
                roundImageView.setNeedRadiu(true);
                roundImageView.setRadiusInDip(4);
                ViewGroup.LayoutParams layoutParams2 = roundImageView.getLayoutParams();
                view = viewInflate;
                textView = textView9;
                textView2 = textView8;
                com.anythink.core.common.res.b.a(this).a(new e(1, strX), layoutParams2.width, layoutParams2.height, new AnonymousClass4(strX, roundImageView));
            }
            String strAk = lVar instanceof aj ? ((aj) lVar).ak() : "";
            if (TextUtils.isEmpty(strAk)) {
                strAk = lVar.v();
            }
            textView3.setText(strAk);
            textView4.setText(getResources().getString(i.a(this, "confirm_dialog_version", com.anythink.expressad.foundation.h.i.g), lVar.K()));
            textView5.setText(getResources().getString(i.a(this, "confirm_dialog_publisher", com.anythink.expressad.foundation.h.i.g), lVar.J()));
            String string = getResources().getString(i.a(this, "confirm_dialog_privacy_agreement", com.anythink.expressad.foundation.h.i.g));
            String string2 = getResources().getString(i.a(this, "confirm_dialog_application_permission", com.anythink.expressad.foundation.h.i.g));
            int length = string.length();
            int length2 = string2.length();
            if (length != length2) {
                int iAbs = Math.abs(length2 - length);
                StringBuilder sb = new StringBuilder(string);
                for (int i = 0; i < iAbs; i++) {
                    sb.append(o4.OooO00o.OooO0Oo);
                }
                string = sb.toString();
            }
            textView7.setText(string);
            textView6.setOnClickListener(new AnonymousClass5(lVar));
            textView7.setOnClickListener(new AnonymousClass6(lVar));
            textView2.setOnClickListener(new AnonymousClass7());
            textView.setOnClickListener(new AnonymousClass8());
            Dialog dialog = new Dialog(this, i.a(this, "style_full_screen_translucent_dialog", com.anythink.expressad.foundation.h.i.e));
            this.c = dialog;
            dialog.setContentView(view);
            this.c.setCancelable(false);
            Window window = this.c.getWindow();
            if (window != null) {
                int dimensionPixelSize = getResources().getDimensionPixelSize(i.a(this, "confirm_dialog_margin", "dimen"));
                int i2 = getResources().getDisplayMetrics().widthPixels;
                int i3 = getResources().getDisplayMetrics().heightPixels;
                int i4 = dimensionPixelSize * 2;
                if (i2 > i3) {
                    window.setLayout((int) Math.ceil(r4 * 0.98859316f), i3 - i4);
                } else {
                    window.setLayout(i2 - i4, (int) Math.ceil(r3 / 0.98859316f));
                }
            }
            this.c.show();
        } catch (Throwable unused) {
            finish();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCreate(Bundle bundle) {
        boolean z;
        TextView textView;
        String str;
        String str2;
        View view;
        TextView textView2;
        super.onCreate(bundle);
        l lVar = a;
        if (lVar == null) {
            finish();
            return;
        }
        if (TextUtils.isEmpty(lVar.v())) {
            l lVar2 = a;
            z = (lVar2 instanceof aj) && !TextUtils.isEmpty(((aj) lVar2).ak());
        }
        if (!z || TextUtils.isEmpty(a.K()) || TextUtils.isEmpty(a.J()) || TextUtils.isEmpty(a.L()) || TextUtils.isEmpty(a.M())) {
            try {
                l lVar3 = a;
                String strAk = lVar3 instanceof aj ? ((aj) lVar3).ak() : "";
                if (TextUtils.isEmpty(strAk)) {
                    strAk = a.v();
                }
                View viewInflate = LayoutInflater.from(this).inflate(i.a(this, "myoffer_confirm_dialog", "layout"), (ViewGroup) null, false);
                TextView textView3 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_msg", "id"));
                TextView textView4 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_give_up", "id"));
                TextView textView5 = (TextView) viewInflate.findViewById(i.a(this, "myoffer_confirm_continue", "id"));
                textView3.setText("立即下载\"" + strAk + "\"?");
                textView4.setText("取 消");
                textView5.setText("确 定");
                textView4.setOnClickListener(new AnonymousClass2());
                textView5.setOnClickListener(new AnonymousClass3());
                Dialog dialog = new Dialog(this, i.a(this, "style_full_screen_translucent_dialog", com.anythink.expressad.foundation.h.i.e));
                this.c = dialog;
                dialog.setContentView(viewInflate);
                this.c.setCancelable(false);
                this.c.show();
                return;
            } catch (Throwable unused) {
                finish();
                return;
            }
        }
        try {
            l lVar4 = a;
            View viewInflate2 = LayoutInflater.from(this).inflate(i.a(this, "confirm", "layout"), (ViewGroup) null, false);
            RoundImageView roundImageView = (RoundImageView) viewInflate2.findViewById(i.a(this, "confirm_dialog_icon", "id"));
            TextView textView6 = (TextView) viewInflate2.findViewById(i.a(this, "confirm_dialog_title", "id"));
            TextView textView7 = (TextView) viewInflate2.findViewById(i.a(this, "confirm_dialog_version_name", "id"));
            TextView textView8 = (TextView) viewInflate2.findViewById(i.a(this, "confirm_dialog_publisher_name", "id"));
            TextView textView9 = (TextView) viewInflate2.findViewById(i.a(this, "confirm_dialog_permission_manage", "id"));
            TextView textView10 = (TextView) viewInflate2.findViewById(i.a(this, "confirm_dialog_privacy_agreement", "id"));
            TextView textView11 = (TextView) viewInflate2.findViewById(i.a(this, "confirm_dialog_download_now", "id"));
            TextView textView12 = (TextView) viewInflate2.findViewById(i.a(this, "confirm_dialog_give_up", "id"));
            String strX = lVar4.x();
            if (TextUtils.isEmpty(strX)) {
                textView = textView11;
                str = com.anythink.expressad.foundation.h.i.e;
                str2 = "style_full_screen_translucent_dialog";
                view = viewInflate2;
                textView2 = textView12;
                ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.height = 0;
                roundImageView.setLayoutParams(layoutParams);
            } else {
                view = viewInflate2;
                roundImageView.setNeedRadiu(true);
                roundImageView.setRadiusInDip(4);
                ViewGroup.LayoutParams layoutParams2 = roundImageView.getLayoutParams();
                str = com.anythink.expressad.foundation.h.i.e;
                str2 = "style_full_screen_translucent_dialog";
                textView2 = textView12;
                textView = textView11;
                com.anythink.core.common.res.b.a(this).a(new e(1, strX), layoutParams2.width, layoutParams2.height, new AnonymousClass4(strX, roundImageView));
            }
            String strAk2 = lVar4 instanceof aj ? ((aj) lVar4).ak() : "";
            if (TextUtils.isEmpty(strAk2)) {
                strAk2 = lVar4.v();
            }
            textView6.setText(strAk2);
            textView7.setText(getResources().getString(i.a(this, "confirm_dialog_version", com.anythink.expressad.foundation.h.i.g), lVar4.K()));
            textView8.setText(getResources().getString(i.a(this, "confirm_dialog_publisher", com.anythink.expressad.foundation.h.i.g), lVar4.J()));
            String string = getResources().getString(i.a(this, "confirm_dialog_privacy_agreement", com.anythink.expressad.foundation.h.i.g));
            String string2 = getResources().getString(i.a(this, "confirm_dialog_application_permission", com.anythink.expressad.foundation.h.i.g));
            int length = string.length();
            int length2 = string2.length();
            if (length != length2) {
                int iAbs = Math.abs(length2 - length);
                StringBuilder sb = new StringBuilder(string);
                for (int i = 0; i < iAbs; i++) {
                    sb.append(o4.OooO00o.OooO0Oo);
                }
                string = sb.toString();
            }
            textView10.setText(string);
            textView9.setOnClickListener(new AnonymousClass5(lVar4));
            textView10.setOnClickListener(new AnonymousClass6(lVar4));
            textView.setOnClickListener(new AnonymousClass7());
            textView2.setOnClickListener(new AnonymousClass8());
            Dialog dialog2 = new Dialog(this, i.a(this, str2, str));
            this.c = dialog2;
            dialog2.setContentView(view);
            this.c.setCancelable(false);
            Window window = this.c.getWindow();
            if (window != null) {
                int dimensionPixelSize = getResources().getDimensionPixelSize(i.a(this, "confirm_dialog_margin", "dimen"));
                int i2 = getResources().getDisplayMetrics().widthPixels;
                int i3 = getResources().getDisplayMetrics().heightPixels;
                int i4 = dimensionPixelSize * 2;
                if (i2 > i3) {
                    window.setLayout((int) Math.ceil(r4 * 0.98859316f), i3 - i4);
                } else {
                    window.setLayout(i2 - i4, (int) Math.ceil(r3 / 0.98859316f));
                }
            }
            this.c.show();
        } catch (Throwable unused2) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        x.a(false);
        Dialog dialog = this.c;
        if (dialog != null) {
            dialog.dismiss();
            this.c = null;
        }
        a = null;
        b = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (4 == i) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        x.a(true);
    }
}
