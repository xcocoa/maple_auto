package com.anythink.expressad.video.dynview.ordercamp.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.g.d.b;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.video.dynview.widget.ATRotationView;
import com.anythink.expressad.video.dynview.widget.AnyThinkImageView;
import com.anythink.expressad.video.dynview.widget.AnyThinkLevelLayoutView;
import com.anythink.expressad.video.dynview.widget.AnyThinkTextView;
import com.anythink.expressad.videocommon.view.RoundImageView;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class a extends BaseAdapter {
    private static final String a = "OrderCampAdapter";
    private static final String e = "anythink_lv_item_rl";
    private static final String f = "anythink_lv_iv";
    private static final String g = "anythink_lv_icon_iv";
    private static final String h = "anythink_lv_title_tv";
    private static final String i = "anythink_lv_tv_install";
    private static final String j = "anythink_lv_sv_starlevel";
    private static final String k = "anythink_lv_sv_heat_level";
    private static final String l = "anythink_lv_ration";
    private static final String m = "anythink_lv_desc_tv";
    private static final String n = "anythink_iv_flag";
    private static final String o = "anythink_order_viewed_tv";
    private static final String p = "anythink_order_layout_item";
    private static final String q = "anythink_lv_iv_burl";
    private static final String r = "501";
    private static final String s = "\\.xml";
    private static final String t = "\\/xml";
    private static final String u = "_item.xml";
    private boolean b = false;
    private C0152a c;
    private List<c> d;

    /* JADX INFO: renamed from: com.anythink.expressad.video.dynview.ordercamp.a.a$2, reason: invalid class name */
    public class AnonymousClass2 implements com.anythink.expressad.foundation.g.d.c {
        public final /* synthetic */ Context a;

        public AnonymousClass2(Context context) {
            this.a = context;
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            try {
                int iB = t.b(this.a, 12.0f);
                a.this.c.j.getLayoutParams().height = iB;
                a.this.c.j.getLayoutParams().width = (int) (iB * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                a.this.c.j.setImageBitmap(bitmap);
                a.this.c.j.setBackgroundColor(1426063360);
            } catch (Throwable unused) {
            }
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.dynview.ordercamp.a.a$a, reason: collision with other inner class name */
    public static class C0152a {
        public RelativeLayout a;
        public ATRotationView b;
        public AnyThinkImageView c;
        public RoundImageView d;
        public TextView e;
        public TextView f;
        public TextView g;
        public TextView h;
        public AnyThinkLevelLayoutView i;
        public ImageView j;
    }

    public a(List<c> list) {
        this.d = list;
    }

    private static int a(String str) {
        return i.a(n.a().f().getApplicationContext(), str, "layout");
    }

    private View a() {
        View viewInflate = LayoutInflater.from(n.a().f()).inflate(i.a(n.a().f().getApplicationContext(), p, "layout"), (ViewGroup) null);
        C0152a c0152a = new C0152a();
        this.c = c0152a;
        c0152a.c = (AnyThinkImageView) viewInflate.findViewById(b(f));
        this.c.d = (RoundImageView) viewInflate.findViewById(b(g));
        this.c.i = (AnyThinkLevelLayoutView) viewInflate.findViewById(b(j));
        this.c.b = (ATRotationView) viewInflate.findViewById(b(l));
        viewInflate.setTag(this.c);
        return viewInflate;
    }

    private void a(int i2) {
        List<c> list = this.d;
        if (list == null || this.c == null || list.size() == 0) {
            return;
        }
        AnyThinkImageView anyThinkImageView = this.c.c;
        if (anyThinkImageView != null) {
            a(anyThinkImageView, this.d.get(i2).be(), false);
        }
        RoundImageView roundImageView = this.c.d;
        if (roundImageView != null) {
            roundImageView.setBorderRadius(25);
            a(this.c.d, this.d.get(i2).bd(), true);
        }
        double dAX = this.d.get(i2).aX();
        if (dAX <= 0.0d) {
            dAX = 5.0d;
        }
        AnyThinkLevelLayoutView anyThinkLevelLayoutView = this.c.i;
        if (anyThinkLevelLayoutView != null) {
            anyThinkLevelLayoutView.setRatingAndUser(dAX, this.d.get(i2).aY());
            this.c.i.setOrientation(0);
        }
        ATRotationView aTRotationView = this.c.b;
        if (aTRotationView != null) {
            aTRotationView.setWidthRatio(1.0f);
            this.c.b.setHeightRatio(1.0f);
            this.c.b.setAutoscroll(false);
        }
        AnyThinkImageView anyThinkImageView2 = this.c.c;
        if (anyThinkImageView2 != null) {
            anyThinkImageView2.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
        }
    }

    private void a(View view) {
        this.c.a = (RelativeLayout) view.findViewById(d(e));
        this.c.e = (TextView) view.findViewById(d(h));
        this.c.g = (TextView) view.findViewById(d(i));
        this.c.f = (TextView) view.findViewById(d(m));
        this.c.j = (ImageView) view.findViewById(d(n));
        this.c.h = (TextView) view.findViewById(d(o));
    }

    private void a(final ImageView imageView, String str, final boolean z) {
        if (imageView == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            b.a(imageView.getContext()).a(str, new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.video.dynview.ordercamp.a.a.1
                @Override // com.anythink.expressad.foundation.g.d.c
                public final void a(Bitmap bitmap, String str2) {
                    try {
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        imageView.setImageBitmap(bitmap);
                    } catch (Throwable th) {
                        th.getMessage();
                    }
                }

                @Override // com.anythink.expressad.foundation.g.d.c
                public final void a(String str2, String str3) {
                    if (z) {
                        imageView.setVisibility(8);
                    }
                }
            });
        } else if (z) {
            imageView.setVisibility(8);
        }
    }

    private static int b(String str) {
        return i.a(n.a().f().getApplicationContext(), str, "id");
    }

    private View b() {
        View viewInflate = LayoutInflater.from(n.a().f()).inflate(i.a(n.a().f().getApplicationContext(), p, "layout"), (ViewGroup) null);
        C0152a c0152a = new C0152a();
        this.c = c0152a;
        c0152a.c = (AnyThinkImageView) viewInflate.findViewById(b(f));
        this.c.d = (RoundImageView) viewInflate.findViewById(b(g));
        this.c.i = (AnyThinkLevelLayoutView) viewInflate.findViewById(b(j));
        this.c.b = (ATRotationView) viewInflate.findViewById(b(l));
        viewInflate.setTag(this.c);
        return viewInflate;
    }

    private void b(int i2) {
        if (this.c != null) {
            c cVar = this.d.get(i2);
            if (this.c.e != null) {
                this.c.e.setText(cVar.bb());
            }
            if (this.c.f != null) {
                this.c.f.setText(cVar.bc());
            }
            TextView textView = this.c.g;
            if (textView != null) {
                String str = cVar.cU;
                if (textView instanceof AnyThinkTextView) {
                    new com.anythink.expressad.video.dynview.h.b();
                    ((AnyThinkTextView) this.c.g).setObjectAnimator(com.anythink.expressad.video.dynview.h.b.c(this.c.g));
                }
                this.c.g.setText(str);
            }
            if (this.c.j != null) {
                try {
                    Locale.getDefault().getLanguage();
                    Context contextF = n.a().f();
                    b.a(contextF).a(cVar.aE(), new AnonymousClass2(contextF));
                } catch (Exception e2) {
                    e2.getMessage();
                }
            }
            if (this.c.h != null) {
                try {
                    this.c.h.setText(n.a().f().getResources().getString(i.a(n.a().f(), "anythink_reward_viewed_text_str", i.g)));
                    this.c.h.setVisibility(0);
                } catch (Exception e3) {
                    e3.getMessage();
                }
            }
        }
    }

    private static int c(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    private int d(String str) {
        return this.b ? c(str) : b(str);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        List<c> list = this.d;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.d.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        List<c> list = this.d;
        if (list != null) {
            return list.get(i2);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        try {
            if (view == null) {
                View viewInflate = LayoutInflater.from(n.a().f()).inflate(i.a(n.a().f().getApplicationContext(), p, "layout"), (ViewGroup) null);
                C0152a c0152a = new C0152a();
                this.c = c0152a;
                c0152a.c = (AnyThinkImageView) viewInflate.findViewById(b(f));
                this.c.d = (RoundImageView) viewInflate.findViewById(b(g));
                this.c.i = (AnyThinkLevelLayoutView) viewInflate.findViewById(b(j));
                this.c.b = (ATRotationView) viewInflate.findViewById(b(l));
                viewInflate.setTag(this.c);
                view = viewInflate;
            } else {
                this.c = (C0152a) view.getTag();
            }
            this.c.a = (RelativeLayout) view.findViewById(d(e));
            this.c.e = (TextView) view.findViewById(d(h));
            this.c.g = (TextView) view.findViewById(d(i));
            this.c.f = (TextView) view.findViewById(d(m));
            this.c.j = (ImageView) view.findViewById(d(n));
            this.c.h = (TextView) view.findViewById(d(o));
            List<c> list = this.d;
            if (list != null && this.c != null && list.size() != 0) {
                AnyThinkImageView anyThinkImageView = this.c.c;
                if (anyThinkImageView != null) {
                    a(anyThinkImageView, this.d.get(i2).be(), false);
                }
                RoundImageView roundImageView = this.c.d;
                if (roundImageView != null) {
                    roundImageView.setBorderRadius(25);
                    a(this.c.d, this.d.get(i2).bd(), true);
                }
                double dAX = this.d.get(i2).aX();
                if (dAX <= 0.0d) {
                    dAX = 5.0d;
                }
                AnyThinkLevelLayoutView anyThinkLevelLayoutView = this.c.i;
                if (anyThinkLevelLayoutView != null) {
                    anyThinkLevelLayoutView.setRatingAndUser(dAX, this.d.get(i2).aY());
                    this.c.i.setOrientation(0);
                }
                ATRotationView aTRotationView = this.c.b;
                if (aTRotationView != null) {
                    aTRotationView.setWidthRatio(1.0f);
                    this.c.b.setHeightRatio(1.0f);
                    this.c.b.setAutoscroll(false);
                }
                AnyThinkImageView anyThinkImageView2 = this.c.c;
                if (anyThinkImageView2 != null) {
                    anyThinkImageView2.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
                }
            }
            if (this.c != null) {
                c cVar = this.d.get(i2);
                if (this.c.e != null) {
                    this.c.e.setText(cVar.bb());
                }
                if (this.c.f != null) {
                    this.c.f.setText(cVar.bc());
                }
                TextView textView = this.c.g;
                if (textView != null) {
                    String str = cVar.cU;
                    if (textView instanceof AnyThinkTextView) {
                        new com.anythink.expressad.video.dynview.h.b();
                        ((AnyThinkTextView) this.c.g).setObjectAnimator(com.anythink.expressad.video.dynview.h.b.c(this.c.g));
                    }
                    this.c.g.setText(str);
                }
                if (this.c.j != null) {
                    try {
                        Locale.getDefault().getLanguage();
                        Context contextF = n.a().f();
                        b.a(contextF).a(cVar.aE(), new AnonymousClass2(contextF));
                    } catch (Exception e2) {
                        e2.getMessage();
                    }
                }
                if (this.c.h != null) {
                    try {
                        this.c.h.setText(n.a().f().getResources().getString(i.a(n.a().f(), "anythink_reward_viewed_text_str", i.g)));
                        this.c.h.setVisibility(0);
                    } catch (Exception e3) {
                        e3.getMessage();
                    }
                }
            }
        } catch (Exception e4) {
            e4.getMessage();
        }
        return view;
    }
}
