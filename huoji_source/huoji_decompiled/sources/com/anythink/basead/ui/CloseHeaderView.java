package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Color;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class CloseHeaderView extends RelativeLayout {
    private ViewGroup a;
    private CloseImageView b;
    private TextView c;
    private String d;
    private String e;
    private long f;
    private long g;

    public CloseHeaderView(Context context) {
        super(context);
        this.d = "";
        this.e = "";
        a();
    }

    public CloseHeaderView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = "";
        this.e = "";
        a();
    }

    public CloseHeaderView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = "";
        this.e = "";
        a();
    }

    private void a() {
        setBackgroundColor(Color.parseColor("#66000000"));
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_close_header_view", "layout"), this);
        this.a = (ViewGroup) findViewById(i.a(getContext(), "myoffer_feedback_ll_nobg_id", "id"));
        this.b = (CloseImageView) findViewById(i.a(getContext(), "myoffer_btn_close_ch_id", "id"));
        this.c = (TextView) findViewById(i.a(getContext(), "myoffer_tv_countdown_text", "id"));
        this.d = getContext().getString(i.a(getContext(), "myoffer_count_down_to_rewarded", com.anythink.expressad.foundation.h.i.g));
        this.e = getContext().getString(i.a(getContext(), "myoffer_count_down_finish_rewarded", com.anythink.expressad.foundation.h.i.g));
    }

    public CloseImageView getCloseImageView() {
        return this.b;
    }

    public ViewGroup getFeedbackButton() {
        return this.a;
    }

    public void refresh(long j) {
        this.g = j;
        if (j >= this.f) {
            this.c.setText(this.e);
            this.c.setTextColor(-1);
        } else {
            this.c.setText(Html.fromHtml(String.format(this.d, Integer.valueOf((int) Math.ceil((r0 - j) / 1000.0d)))));
        }
    }

    public void setDuration(long j) {
        this.f = j;
    }
}
