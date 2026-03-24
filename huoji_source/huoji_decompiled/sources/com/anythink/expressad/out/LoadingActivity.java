package com.anythink.expressad.out;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.expressad.widget.ATImageView;

/* JADX INFO: loaded from: classes.dex */
public class LoadingActivity extends Activity {
    private RelativeLayout b;
    private ImageView c;
    private Bitmap d;
    private a e;
    private String f;
    private Drawable h;
    private RelativeLayout i;
    private com.anythink.expressad.foundation.g.d.c g = new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.out.LoadingActivity.1
        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            if (LoadingActivity.this.c == null || bitmap == null || bitmap.isRecycled() || !((String) LoadingActivity.this.c.getTag()).equals(str)) {
                return;
            }
            LoadingActivity.this.c.setImageBitmap(bitmap);
            LoadingActivity.this.d = bitmap;
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
        }
    };
    public BroadcastReceiver a = new BroadcastReceiver() { // from class: com.anythink.expressad.out.LoadingActivity.2
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            LoadingActivity.this.finish();
        }
    };

    public interface a {
        void a();
    }

    private View a() {
        if (this.b == null) {
            this.b = new RelativeLayout(this);
            this.i = new RelativeLayout(this);
            int iB = com.anythink.expressad.foundation.h.t.b(this, 15.0f);
            this.i.setPadding(iB, iB, iB, iB);
            this.i.setBackgroundResource(com.anythink.expressad.foundation.h.i.a(this, "anythink_native_bg_loading_camera", com.anythink.expressad.foundation.h.i.c));
            this.i.addView(new TextView(this), new RelativeLayout.LayoutParams(com.anythink.expressad.foundation.h.t.b(this, 140.0f), com.anythink.expressad.foundation.h.t.b(this, 31.5f)));
            ATImageView aTImageView = new ATImageView(this);
            this.c = aTImageView;
            aTImageView.setId(com.anythink.expressad.foundation.h.t.a());
            this.c.setTag(this.f);
            if (!TextUtils.isEmpty(this.f)) {
                com.anythink.expressad.foundation.g.d.b.a(getApplicationContext()).a(this.f, this.g);
            }
            int iB2 = com.anythink.expressad.foundation.h.t.b(this, 64.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iB2, iB2);
            layoutParams.addRule(13, -1);
            this.i.addView(this.c, layoutParams);
            TextView textView = new TextView(this);
            textView.setSingleLine();
            textView.setTextColor(-1);
            textView.setTextSize(16.0f);
            textView.setText("Relax while loading....");
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(3, this.c.getId());
            layoutParams2.addRule(14, -1);
            this.i.addView(textView, layoutParams2);
            this.b.addView(this.i, new RelativeLayout.LayoutParams(-1, -1));
        }
        return this.b;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent().hasExtra("icon_url")) {
            this.f = getIntent().getStringExtra("icon_url");
        }
        if (this.b == null) {
            this.b = new RelativeLayout(this);
            this.i = new RelativeLayout(this);
            int iB = com.anythink.expressad.foundation.h.t.b(this, 15.0f);
            this.i.setPadding(iB, iB, iB, iB);
            this.i.setBackgroundResource(com.anythink.expressad.foundation.h.i.a(this, "anythink_native_bg_loading_camera", com.anythink.expressad.foundation.h.i.c));
            this.i.addView(new TextView(this), new RelativeLayout.LayoutParams(com.anythink.expressad.foundation.h.t.b(this, 140.0f), com.anythink.expressad.foundation.h.t.b(this, 31.5f)));
            ATImageView aTImageView = new ATImageView(this);
            this.c = aTImageView;
            aTImageView.setId(com.anythink.expressad.foundation.h.t.a());
            this.c.setTag(this.f);
            if (!TextUtils.isEmpty(this.f)) {
                com.anythink.expressad.foundation.g.d.b.a(getApplicationContext()).a(this.f, this.g);
            }
            int iB2 = com.anythink.expressad.foundation.h.t.b(this, 64.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iB2, iB2);
            layoutParams.addRule(13, -1);
            this.i.addView(this.c, layoutParams);
            TextView textView = new TextView(this);
            textView.setSingleLine();
            textView.setTextColor(-1);
            textView.setTextSize(16.0f);
            textView.setText("Relax while loading....");
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(3, this.c.getId());
            layoutParams2.addRule(14, -1);
            this.i.addView(textView, layoutParams2);
            this.b.addView(this.i, new RelativeLayout.LayoutParams(-1, -1));
        }
        setContentView(this.b);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.a != null) {
            com.anythink.core.common.b.k.a(this).a(this.a);
        }
        ImageView imageView = this.c;
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
        this.c = null;
        this.b = null;
        this.g = null;
        this.h = null;
        RelativeLayout relativeLayout = this.i;
        if (relativeLayout != null) {
            relativeLayout.setBackgroundDrawable(null);
        }
        this.i = null;
        Bitmap bitmap = this.d;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.d = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("ExitApp");
        if (this.a != null) {
            com.anythink.core.common.b.k.a(this).a(this.a, intentFilter);
        }
    }
}
