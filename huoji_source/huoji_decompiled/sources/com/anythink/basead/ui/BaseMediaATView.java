package com.anythink.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMediaATView extends FrameLayout {
    public l a;
    public n b;
    public m c;
    public a d;
    public boolean e;
    public FrameLayout f;
    private int g;
    private int h;
    private CloseImageView i;

    /* JADX INFO: renamed from: com.anythink.basead.ui.BaseMediaATView$1, reason: invalid class name */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a aVar = BaseMediaATView.this.d;
            if (aVar != null) {
                aVar.onClickCloseView();
            }
        }
    }

    public interface a {
        void onClickCloseView();
    }

    public BaseMediaATView(Context context) {
        super(context);
        this.g = 0;
        this.h = 0;
    }

    public BaseMediaATView(Context context, l lVar, m mVar, boolean z, a aVar) {
        super(context);
        this.g = 0;
        this.h = 0;
        this.a = lVar;
        this.b = mVar.n;
        this.e = z;
        this.d = aVar;
        this.c = mVar;
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "base_myoffer_media_ad_view", "layout"), this);
        this.f = (FrameLayout) findViewById(i.a(getContext(), "base_media_view_content", "id"));
        this.i = (CloseImageView) findViewById(i.a(getContext(), "base_media_ad_close", "id"));
    }

    private void a() {
        CloseImageView closeImageView = this.i;
        if (closeImageView == null) {
            return;
        }
        closeImageView.setVisibility(this.e ? 0 : 8);
        a(this.i, this.b.n());
        this.i.setOnClickListener(new AnonymousClass1());
    }

    private static void a(com.anythink.basead.ui.a aVar, int i) {
        if (aVar != null) {
            aVar.setClickAreaScaleFactor(i != 2 ? i != 3 ? i != 4 ? 1.0f : 0.5f : 0.75f : 1.5f);
        }
    }

    public void destroy() {
    }

    public List<View> getClickViews() {
        return new ArrayList();
    }

    public int getMediaViewHeight() {
        return this.h;
    }

    public int getMediaViewWidth() {
        return this.g;
    }

    public View getMonitorClickView() {
        return null;
    }

    public void init(int i, int i2) {
        this.g = i;
        this.h = i2;
        CloseImageView closeImageView = this.i;
        if (closeImageView != null) {
            closeImageView.setVisibility(this.e ? 0 : 8);
            a(this.i, this.b.n());
            this.i.setOnClickListener(new AnonymousClass1());
        }
    }

    public void notifyClick() {
        n nVar;
        CloseImageView closeImageView = this.i;
        if (closeImageView == null || (nVar = this.b) == null) {
            return;
        }
        a(closeImageView, nVar.m());
    }
}
