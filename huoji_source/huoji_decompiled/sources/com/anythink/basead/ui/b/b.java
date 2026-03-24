package com.anythink.basead.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public Context a;
    public l b;
    public m c;
    public ViewGroup d;
    public int e;
    public RelativeLayout f;
    public View g;
    public a h;

    public interface a {
        void a(int i, int i2);
    }

    public abstract void a();

    public abstract void a(int i, Map<String, Object> map);

    public void a(Context context, l lVar, m mVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i, a aVar) {
        this.a = context;
        this.b = lVar;
        this.c = mVar;
        this.d = viewGroup;
        this.e = i;
        this.h = aVar;
        this.f = relativeLayout;
        this.g = view;
    }
}
