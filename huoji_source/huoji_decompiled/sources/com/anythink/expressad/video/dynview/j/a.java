package com.anythink.expressad.video.dynview.j;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.e;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.p;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.x;
import com.anythink.expressad.video.dynview.f.d;
import com.anythink.expressad.video.dynview.g.a;
import com.anythink.expressad.video.dynview.widget.ATRotationView;
import com.anythink.expressad.video.dynview.widget.AnyThinkImageView;
import com.anythink.expressad.video.dynview.widget.AnyThinkLevelLayoutView;
import com.anythink.expressad.videocommon.view.RoundImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final String a = "DataEnergizeWrapper";
    private static boolean k;
    private com.anythink.expressad.video.dynview.i.c.b c;
    private Map<String, Bitmap> d;
    private volatile boolean e;
    private String f = "#FFFFFFFF";
    private String g = "#60000000";
    private String h = "#FF5F5F5F";
    private String i = "#90ECECEC";
    private volatile long j = 0;
    private com.anythink.expressad.video.dynview.i.c.a l = null;
    private boolean m = false;
    private int n = 0;
    public com.anythink.expressad.video.dynview.e.a b = new com.anythink.expressad.video.dynview.e.a() { // from class: com.anythink.expressad.video.dynview.j.a.1
        @Override // com.anythink.expressad.video.dynview.e.a
        public final void a() {
            if (!a.this.m || a.this.c == null) {
                return;
            }
            a.this.c.a(a.this.n * 1000, a.this.l);
            a.this.m = false;
        }

        @Override // com.anythink.expressad.video.dynview.e.a
        public final void b() {
        }

        @Override // com.anythink.expressad.video.dynview.e.a
        public final void c() {
            if (a.this.c != null) {
                a.this.c.c();
                a.this.m = true;
            }
        }
    };

    /* JADX INFO: renamed from: com.anythink.expressad.video.dynview.j.a$5, reason: invalid class name */
    public class AnonymousClass5 extends com.anythink.expressad.widget.a {
        public final /* synthetic */ Map a;

        public AnonymousClass5(Map map) {
            this.a = map;
        }

        @Override // com.anythink.expressad.widget.a
        public final void a(View view) {
            if (a.this.e) {
                return;
            }
            a.f(a.this);
            a.a(a.this, this.a);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.dynview.j.a$6, reason: invalid class name */
    public class AnonymousClass6 implements com.anythink.expressad.video.dynview.i.c.a {
        public final /* synthetic */ TextView a;
        public final /* synthetic */ Map b;

        public AnonymousClass6(TextView textView, Map map) {
            this.a = textView;
            this.b = map;
        }

        @Override // com.anythink.expressad.video.dynview.i.c.a
        public final void a() {
            a.a(a.this, this.b);
        }

        @Override // com.anythink.expressad.video.dynview.i.c.a
        public final void a(long j) {
            String string;
            StringBuilder sb;
            String str;
            a.this.n = (int) (j / 1000);
            long j2 = a.this.n;
            Context context = this.a.getContext();
            String strF = e.f(context);
            if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.Q) || strF.startsWith(com.anythink.expressad.video.dynview.a.a.R)) {
                string = j2 + o4.OooO00o.OooO0Oo + context.getString(i.a(context, "anythink_cm_video_auto_play_after", i.g));
            } else {
                if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.S)) {
                    sb = new StringBuilder(com.anythink.expressad.video.dynview.a.a.G);
                    sb.append(j2);
                    str = " Sekunden";
                } else if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.T)) {
                    sb = new StringBuilder();
                    sb.append(j2);
                    str = com.anythink.expressad.video.dynview.a.a.H;
                } else if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.U)) {
                    sb = new StringBuilder(com.anythink.expressad.video.dynview.a.a.I);
                    sb.append(j2);
                    str = " secondes";
                } else if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.V)) {
                    sb = new StringBuilder(" ثوان");
                    sb.append(j2);
                    str = com.anythink.expressad.video.dynview.a.a.J;
                } else if (strF.startsWith(com.anythink.expressad.video.dynview.a.a.W)) {
                    sb = new StringBuilder(com.anythink.expressad.video.dynview.a.a.K);
                    sb.append(j2);
                    str = " секунд";
                } else {
                    sb = new StringBuilder(com.anythink.expressad.video.dynview.a.a.F);
                    sb.append(j2);
                    str = " s";
                }
                sb.append(str);
                string = sb.toString();
            }
            this.a.setText(string);
            a.this.j++;
        }
    }

    private static int a(String str) {
        return i.a(n.a().f(), str, "id");
    }

    private Bitmap a() {
        Bitmap bitmapCreateBitmap = null;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_4444);
            bitmapCreateBitmap.eraseColor(Color.parseColor(this.i));
            return bitmapCreateBitmap;
        } catch (Exception e) {
            if (!com.anythink.expressad.a.a) {
                return bitmapCreateBitmap;
            }
            e.printStackTrace();
            return bitmapCreateBitmap;
        }
    }

    private void a(final ImageView imageView, String str, final int i) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        com.anythink.expressad.foundation.g.d.b.a(imageView.getContext()).a(str, new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.video.dynview.j.a.10
            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(Bitmap bitmap, String str2) {
                if (bitmap == null || bitmap.isRecycled()) {
                    int iA = i.a(imageView.getContext(), "anythink_icon_play_bg", i.c);
                    imageView.setBackgroundColor(Color.parseColor(a.this.h));
                    imageView.setImageResource(iA);
                    imageView.setScaleType(ImageView.ScaleType.CENTER);
                    return;
                }
                int i2 = i;
                if (i2 != 501 && i2 != 802) {
                    imageView.setImageBitmap(bitmap);
                    return;
                }
                ImageView imageView2 = imageView;
                com.anythink.expressad.video.dynview.i.b.a();
                imageView2.setImageBitmap(com.anythink.expressad.video.dynview.i.b.a(bitmap, 0));
            }

            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(String str2, String str3) {
                try {
                    int iA = i.a(imageView.getContext(), "anythink_icon_play_bg", i.c);
                    imageView.setBackgroundColor(Color.parseColor(a.this.h));
                    imageView.setImageResource(iA);
                    imageView.setScaleType(ImageView.ScaleType.CENTER);
                } catch (Exception e) {
                    e.getMessage();
                }
            }
        });
    }

    private void a(com.anythink.expressad.video.dynview.c cVar, View view) {
        Map<String, Bitmap> map = this.d;
        if (map == null || map.size() <= 1) {
            return;
        }
        new com.anythink.expressad.video.dynview.h.b();
        Map<String, Bitmap> map2 = this.d;
        if (view != null) {
            com.anythink.expressad.video.dynview.i.a.a.a().a(map2, cVar, view);
        }
    }

    public static /* synthetic */ void a(a aVar, com.anythink.expressad.video.dynview.c cVar, View view) {
        Map<String, Bitmap> map = aVar.d;
        if (map == null || map.size() <= 1) {
            return;
        }
        new com.anythink.expressad.video.dynview.h.b();
        Map<String, Bitmap> map2 = aVar.d;
        if (view != null) {
            com.anythink.expressad.video.dynview.i.a.a.a().a(map2, cVar, view);
        }
    }

    public static /* synthetic */ void a(a aVar, Map map) {
        if (map != null) {
            try {
                if (map.containsKey(com.anythink.expressad.video.dynview.a.a.D) && (map.get(com.anythink.expressad.video.dynview.a.a.D) instanceof d)) {
                    ((d) map.get(com.anythink.expressad.video.dynview.a.a.D)).a();
                    aVar.b();
                }
            } catch (Exception e) {
                e.getMessage();
            }
        }
    }

    public static /* synthetic */ void a(a aVar, Map map, List list, int i) {
        if (map == null || list == null || list.size() <= 1) {
            return;
        }
        if (map.containsKey(com.anythink.expressad.video.dynview.a.a.D) && (map.get(com.anythink.expressad.video.dynview.a.a.D) instanceof d)) {
            d dVar = (d) map.get(com.anythink.expressad.video.dynview.a.a.D);
            if (dVar != null) {
                dVar.a((com.anythink.expressad.foundation.d.c) list.get(i));
            }
            aVar.b();
            return;
        }
        if (map.containsKey(com.anythink.expressad.video.dynview.a.a.E) && (map.get(com.anythink.expressad.video.dynview.a.a.E) instanceof com.anythink.expressad.video.dynview.f.c)) {
            com.anythink.expressad.video.dynview.f.c cVar = (com.anythink.expressad.video.dynview.f.c) map.get(com.anythink.expressad.video.dynview.a.a.E);
            if (cVar != null) {
                cVar.a((com.anythink.expressad.foundation.d.c) list.get(i), i);
            }
            aVar.b();
        }
    }

    private void a(String str, Context context, View view, int i, Map map) {
        FrameLayout.LayoutParams layoutParams;
        String strA = x.a(str, "cltp");
        long j = !TextUtils.isEmpty(strA) ? Long.parseLong(strA) : 0L;
        if (j != 0) {
            if (map != null && map.containsKey("is_dy_success")) {
                k = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            k = false;
            TextView textView = (TextView) view.findViewById(a("anythink_choice_one_countdown_tv"));
            textView.setTextSize(11.0f);
            textView.setTextColor(Color.parseColor(this.f));
            String str2 = this.g;
            if (textView != null) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(Color.parseColor(str2));
                gradientDrawable.setCornerRadius(t.b(textView.getContext(), 12.0f));
                gradientDrawable.setStroke(t.b(textView.getContext(), 1.0f), Color.parseColor(str2));
                textView.setBackgroundDrawable(gradientDrawable);
            }
            if (i == 2 && (layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams()) != null) {
                int iD = t.d(context);
                int iB = t.b(context, 10.0f);
                layoutParams.setMargins(iB, iB, iD, iB);
            }
            if (textView != null) {
                textView.setVisibility(0);
                textView.setOnClickListener(new AnonymousClass5(map));
                this.l = new AnonymousClass6(textView, map);
                com.anythink.expressad.video.dynview.i.c.b bVarA = new com.anythink.expressad.video.dynview.i.c.b().a(j * 1000).a().a(this.l);
                this.c = bVarA;
                bVarA.b();
            }
        }
    }

    private void a(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        a(imageView, str, -1);
    }

    private void a(final String str, final ImageView imageView, final com.anythink.expressad.video.dynview.c cVar, final View view) {
        com.anythink.expressad.foundation.g.d.b.a(imageView.getContext()).a(str, new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.video.dynview.j.a.2
            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(Bitmap bitmap, String str2) {
                ImageView imageView2;
                if (bitmap == null || bitmap.isRecycled() || (imageView2 = imageView) == null) {
                    return;
                }
                imageView2.setImageBitmap(bitmap);
                if (a.this.d != null) {
                    a.this.d.put(p.a(str), bitmap);
                    a.a(a.this, cVar, view);
                }
            }

            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(String str2, String str3) {
            }
        });
        if (a() != null) {
            b(cVar, view);
        }
    }

    private void a(Map map) {
        if (map != null) {
            try {
                if (map.containsKey(com.anythink.expressad.video.dynview.a.a.D) && (map.get(com.anythink.expressad.video.dynview.a.a.D) instanceof d)) {
                    ((d) map.get(com.anythink.expressad.video.dynview.a.a.D)).a();
                    b();
                }
            } catch (Exception e) {
                e.getMessage();
            }
        }
    }

    private void a(Map map, List<com.anythink.expressad.foundation.d.c> list, int i) {
        if (map == null || list == null || list.size() <= 1) {
            return;
        }
        if (map.containsKey(com.anythink.expressad.video.dynview.a.a.D) && (map.get(com.anythink.expressad.video.dynview.a.a.D) instanceof d)) {
            d dVar = (d) map.get(com.anythink.expressad.video.dynview.a.a.D);
            if (dVar != null) {
                dVar.a(list.get(i));
            }
            b();
            return;
        }
        if (map.containsKey(com.anythink.expressad.video.dynview.a.a.E) && (map.get(com.anythink.expressad.video.dynview.a.a.E) instanceof com.anythink.expressad.video.dynview.f.c)) {
            com.anythink.expressad.video.dynview.f.c cVar = (com.anythink.expressad.video.dynview.f.c) map.get(com.anythink.expressad.video.dynview.a.a.E);
            if (cVar != null) {
                cVar.a(list.get(i), i);
            }
            b();
        }
    }

    private static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    private void b() {
        com.anythink.expressad.video.dynview.i.a.a.a().b();
        com.anythink.expressad.video.dynview.i.c.b bVar = this.c;
        if (bVar != null) {
            bVar.c();
            this.c = null;
        }
        com.anythink.expressad.video.dynview.b.a.a().a = null;
        if (this.b != null) {
            this.b = null;
        }
        Map<String, Bitmap> map = this.d;
        if (map != null) {
            if (map.entrySet() != null) {
                try {
                    Iterator<Map.Entry<String, Bitmap>> it = this.d.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<String, Bitmap> next = it.next();
                        if (next != null && next.getValue() != null && !next.getValue().isRecycled()) {
                            next.getValue().recycle();
                        }
                        it.remove();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            this.d.clear();
        }
    }

    private static void b(com.anythink.expressad.video.dynview.c cVar, View view) {
        a.b bVarA;
        float fC;
        a.C0151a c0151aA = com.anythink.expressad.video.dynview.g.a.a();
        c0151aA.a(cVar.e()).a();
        if (cVar.e() != 2 || cVar.d() > cVar.c()) {
            bVarA = c0151aA.a(cVar.d());
            fC = cVar.c();
        } else {
            bVarA = c0151aA.a(cVar.c());
            fC = cVar.d();
        }
        bVarA.b(fC);
        if (view.getBackground() == null) {
            view.setBackgroundDrawable(c0151aA.b());
        }
    }

    public static /* synthetic */ void b(a aVar, Map map) {
        if (map != null) {
            try {
                if (map.containsKey(com.anythink.expressad.video.dynview.a.a.E) && (map.get(com.anythink.expressad.video.dynview.a.a.E) instanceof com.anythink.expressad.video.dynview.f.c)) {
                    ((com.anythink.expressad.video.dynview.f.c) map.get(com.anythink.expressad.video.dynview.a.a.E)).a();
                    aVar.b();
                }
            } catch (Exception e) {
                e.getMessage();
            }
        }
    }

    private void b(Map map) {
        if (map != null) {
            try {
                if (map.containsKey(com.anythink.expressad.video.dynview.a.a.E) && (map.get(com.anythink.expressad.video.dynview.a.a.E) instanceof com.anythink.expressad.video.dynview.f.c)) {
                    ((com.anythink.expressad.video.dynview.f.c) map.get(com.anythink.expressad.video.dynview.a.a.E)).a();
                    b();
                }
            } catch (Exception e) {
                e.getMessage();
            }
        }
    }

    public static /* synthetic */ boolean f(a aVar) {
        aVar.e = true;
        return true;
    }

    public final void a(com.anythink.expressad.video.dynview.c cVar, View view, com.anythink.expressad.video.dynview.f.e eVar) {
        if (eVar == null) {
            return;
        }
        if (cVar != null) {
            try {
                ImageView imageView = (ImageView) view.findViewById(a("anythink_iv_adbanner_bg"));
                if (imageView != null) {
                    imageView.setBackgroundColor(Color.parseColor(this.i));
                }
                ImageView imageView2 = (ImageView) view.findViewById(a("anythink_iv_adbanner"));
                if (imageView2 != null) {
                    imageView2.setBackgroundColor(Color.parseColor(this.i));
                }
                eVar.a(view, new ArrayList());
                return;
            } catch (Exception e) {
                e.getMessage();
            }
        }
        eVar.a(com.anythink.expressad.video.dynview.c.b.NOT_FOUND_VIEWOPTION);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [int] */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18, types: [android.widget.ImageView, com.anythink.expressad.videocommon.view.RoundImageView] */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r32v0, types: [com.anythink.expressad.video.dynview.j.a] */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.widget.ImageView, com.anythink.expressad.videocommon.view.RoundImageView] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.anythink.expressad.video.dynview.c cVar, View view, final Map map, com.anythink.expressad.video.dynview.f.e eVar) {
        com.anythink.expressad.foundation.d.c cVar2;
        com.anythink.expressad.foundation.d.c cVar3;
        TextView textView;
        RoundImageView roundImageView;
        TextView textView2;
        ?? r13;
        ?? r4;
        TextView textView3;
        boolean z;
        ?? r14;
        ?? r5;
        TextView textView4;
        long j;
        FrameLayout.LayoutParams layoutParams;
        boolean z3;
        boolean z4;
        com.anythink.expressad.video.dynview.c.b bVar;
        if (this.d == null) {
            this.d = new HashMap();
        }
        final List<com.anythink.expressad.foundation.d.c> listG = cVar.g();
        if (view == null) {
            bVar = com.anythink.expressad.video.dynview.c.b.NOT_FOUND_ROOTVIEW;
        } else {
            Context context = view.getContext();
            if (context == null) {
                bVar = com.anythink.expressad.video.dynview.c.b.NOT_FOUND_CONTEXT;
            } else {
                if (listG == null || listG.size() <= 1) {
                    cVar2 = null;
                    cVar3 = null;
                } else {
                    cVar2 = listG.get(0);
                    cVar3 = listG.get(1);
                }
                if ((cVar2 != null || eVar == null) && (cVar3 != null || eVar == null)) {
                    k = false;
                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(a("anythink_top_item_rl"));
                    AnyThinkImageView anyThinkImageView = (AnyThinkImageView) view.findViewById(a("anythink_top_iv"));
                    ATRotationView aTRotationView = (ATRotationView) view.findViewById(a("anythink_top_ration"));
                    view.findViewById(a("anythink_top_icon_iv"));
                    TextView textView5 = (TextView) view.findViewById(a("anythink_top_title_tv"));
                    RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(a("anythink_bottom_item_rl"));
                    ATRotationView aTRotationView2 = (ATRotationView) view.findViewById(a("anythink_bottom_ration"));
                    AnyThinkImageView anyThinkImageView2 = (AnyThinkImageView) view.findViewById(a("anythink_bottom_iv"));
                    RoundImageView roundImageView2 = (RoundImageView) view.findViewById(a("anythink_bottom_icon_iv"));
                    TextView textView6 = (TextView) view.findViewById(a("anythink_bottom_title_tv"));
                    view.findViewById(a("anythink_reward_choice_one_like_iv"));
                    if (relativeLayout != null) {
                        relativeLayout.setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.dynview.j.a.3
                            @Override // com.anythink.expressad.widget.a
                            public final void a(View view2) {
                                if (a.this.e) {
                                    return;
                                }
                                a.f(a.this);
                                a.a(a.this, map, listG, 0);
                            }
                        });
                    }
                    if (anyThinkImageView != null) {
                        textView = textView5;
                        roundImageView = roundImageView2;
                        textView2 = textView6;
                        anyThinkImageView.setCustomBorder(20, 20, 0, 0, 10, -16777216);
                        a(cVar2.be(), anyThinkImageView, cVar, view);
                        if (aTRotationView != null) {
                            if (!cVar2.aD()) {
                                z4 = false;
                                aTRotationView.setWidthRatio(1.0f);
                                aTRotationView.setHeightRatio(1.0f);
                            } else if (TextUtils.isEmpty(cVar2.bd())) {
                                aTRotationView.setWidthRatio(1.0f);
                                aTRotationView.setHeightRatio(1.0f);
                                z4 = false;
                            } else {
                                ImageView imageView = new ImageView(cVar.a());
                                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, t.b(cVar.a(), 200.0f)));
                                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                aTRotationView.addView(imageView);
                                a(cVar2.bd(), imageView);
                                aTRotationView.setWidthRatio(0.45f);
                                aTRotationView.setHeightRatio(0.9f);
                                aTRotationView.setAutoscroll(true);
                            }
                            aTRotationView.setAutoscroll(z4);
                            r13 = z4;
                        }
                        r4 = (RoundImageView) view.findViewById(a("anythink_top_icon_iv"));
                        if (r4 != 0) {
                            r4.setType(r13);
                            a(cVar2.bd(), r4);
                        }
                        textView3 = textView;
                        if (textView3 != null) {
                            if (TextUtils.isEmpty(cVar2.bb())) {
                                textView3.setVisibility(8);
                            } else {
                                textView3.setText(cVar2.bb());
                            }
                        }
                        if (relativeLayout2 != null) {
                            relativeLayout2.setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.dynview.j.a.4
                                @Override // com.anythink.expressad.widget.a
                                public final void a(View view2) {
                                    if (a.this.e) {
                                        return;
                                    }
                                    a.f(a.this);
                                    a.a(a.this, map, listG, 1);
                                }
                            });
                        }
                        if (anyThinkImageView2 == null) {
                            anyThinkImageView2.setCustomBorder(20, 20, 0, 0, 10, -16777216);
                            a(cVar3.be(), anyThinkImageView2, cVar, view);
                            if (aTRotationView2 != null) {
                                if (!cVar3.aD()) {
                                    z3 = false;
                                    aTRotationView2.setWidthRatio(1.0f);
                                    aTRotationView2.setHeightRatio(1.0f);
                                } else if (TextUtils.isEmpty(cVar3.bd())) {
                                    aTRotationView2.setWidthRatio(1.0f);
                                    aTRotationView2.setHeightRatio(1.0f);
                                    z3 = false;
                                } else {
                                    ImageView imageView2 = new ImageView(cVar.a());
                                    imageView2.setLayoutParams(new FrameLayout.LayoutParams(-1, t.b(cVar.a(), 200.0f)));
                                    imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    aTRotationView2.addView(imageView2);
                                    a(cVar3.bd(), imageView2);
                                    aTRotationView2.setWidthRatio(0.45f);
                                    aTRotationView2.setHeightRatio(0.9f);
                                    aTRotationView2.setAutoscroll(true);
                                    r14 = roundImageView;
                                    r5 = 0;
                                }
                                aTRotationView2.setAutoscroll(z3);
                                z = z3;
                            } else {
                                z = false;
                            }
                            r14 = roundImageView;
                            r5 = z;
                        }
                        if (r14 != 0) {
                            r14.setType(r5);
                            a(cVar3.bd(), r14);
                        }
                        textView4 = textView2;
                        if (textView4 != null) {
                            textView4.setText(cVar3.bb());
                        }
                        String strAr = cVar2.ar();
                        int iE = cVar.e();
                        String strA = x.a(strAr, "cltp");
                        j = TextUtils.isEmpty(strA) ? Long.parseLong(strA) : 0L;
                        if (j != 0) {
                            if (map != null && map.containsKey("is_dy_success")) {
                                k = ((Boolean) map.get("is_dy_success")).booleanValue();
                            }
                            k = false;
                            TextView textView7 = (TextView) view.findViewById(a("anythink_choice_one_countdown_tv"));
                            textView7.setTextSize(11.0f);
                            textView7.setTextColor(Color.parseColor(this.f));
                            String str = this.g;
                            if (textView7 != null) {
                                GradientDrawable gradientDrawable = new GradientDrawable();
                                gradientDrawable.setColor(Color.parseColor(str));
                                gradientDrawable.setCornerRadius(t.b(textView7.getContext(), 12.0f));
                                gradientDrawable.setStroke(t.b(textView7.getContext(), 1.0f), Color.parseColor(str));
                                textView7.setBackgroundDrawable(gradientDrawable);
                            }
                            if (iE == 2 && (layoutParams = (FrameLayout.LayoutParams) textView7.getLayoutParams()) != null) {
                                int iD = t.d(context);
                                int iB = t.b(context, 10.0f);
                                layoutParams.setMargins(iB, iB, iD, iB);
                            }
                            if (textView7 != null) {
                                textView7.setVisibility(0);
                                textView7.setOnClickListener(new AnonymousClass5(map));
                                this.l = new AnonymousClass6(textView7, map);
                                com.anythink.expressad.video.dynview.i.c.b bVarA = new com.anythink.expressad.video.dynview.i.c.b().a(j * 1000).a().a(this.l);
                                this.c = bVarA;
                                bVarA.b();
                            }
                        }
                        if (eVar == null) {
                            eVar.a(view, null);
                            return;
                        }
                        return;
                    }
                    textView = textView5;
                    roundImageView = roundImageView2;
                    textView2 = textView6;
                    r13 = 0;
                    r4 = (RoundImageView) view.findViewById(a("anythink_top_icon_iv"));
                    if (r4 != 0) {
                    }
                    textView3 = textView;
                    if (textView3 != null) {
                    }
                    if (relativeLayout2 != null) {
                    }
                    if (anyThinkImageView2 == null) {
                    }
                    if (r14 != 0) {
                    }
                    textView4 = textView2;
                    if (textView4 != null) {
                    }
                    String strAr2 = cVar2.ar();
                    int iE2 = cVar.e();
                    String strA2 = x.a(strAr2, "cltp");
                    if (TextUtils.isEmpty(strA2)) {
                    }
                    if (j != 0) {
                    }
                    if (eVar == null) {
                    }
                } else {
                    bVar = com.anythink.expressad.video.dynview.c.b.CAMPAIGNEX_IS_NULL;
                }
            }
        }
        eVar.a(bVar);
    }

    public final void b(com.anythink.expressad.video.dynview.c cVar, View view, Map map, com.anythink.expressad.video.dynview.f.e eVar) {
        com.anythink.expressad.video.dynview.c.b bVar;
        com.anythink.expressad.foundation.d.c cVar2;
        if (eVar == null) {
            return;
        }
        if (cVar == null) {
            bVar = com.anythink.expressad.video.dynview.c.b.NOT_FOUND_VIEWOPTION;
        } else {
            if (map != null && map.containsKey("is_dy_success")) {
                k = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            k = false;
            ImageView imageView = (ImageView) view.findViewById(a("anythink_reward_icon_riv"));
            TextView textView = (TextView) view.findViewById(a("anythink_reward_title_tv"));
            LinearLayout linearLayout = (LinearLayout) view.findViewById(a("anythink_reward_stars_mllv"));
            TextView textView2 = (TextView) view.findViewById(a("anythink_reward_click_tv"));
            ImageView imageView2 = (ImageView) view.findViewById(a("anythink_videoview_bg"));
            TextView textView3 = (TextView) view.findViewById(a("anythink_reward_desc_tv"));
            List<View> arrayList = new ArrayList<>();
            List<com.anythink.expressad.foundation.d.c> listG = cVar.g();
            if (listG != null && listG.size() > 0 && (cVar2 = listG.get(0)) != null) {
                if (imageView != null) {
                    ((RoundImageView) imageView).setBorderRadius(10);
                    a(cVar2.bd(), imageView);
                }
                if (textView != null) {
                    textView.setText(cVar2.bb());
                }
                if (textView3 != null) {
                    textView3.setText(cVar2.bc());
                }
                if (linearLayout != null) {
                    double dAX = cVar2.aX();
                    if (dAX <= 0.0d) {
                        dAX = 5.0d;
                    }
                    ((AnyThinkLevelLayoutView) linearLayout).setRatingAndUser(dAX, cVar2.aY());
                }
                if (textView2 != null) {
                    textView2.setText(cVar2.cU);
                }
                int iH = cVar.h();
                if (iH == 102 || iH == 202 || iH == 302) {
                    if (textView2 != null) {
                        arrayList.add(textView2);
                    }
                } else if (iH == 802) {
                    if (imageView != null) {
                        arrayList.add(imageView);
                    }
                    if (textView2 != null) {
                        arrayList.add(textView2);
                    }
                    a(imageView2, cVar2.be(), iH);
                } else if (iH == 904 && cVar.k()) {
                    arrayList.add(view);
                }
                eVar.a(view, arrayList);
                return;
            }
            bVar = com.anythink.expressad.video.dynview.c.b.CAMPAIGNEX_IS_NULL;
        }
        eVar.a(bVar);
    }

    public final void c(com.anythink.expressad.video.dynview.c cVar, View view, final Map map, com.anythink.expressad.video.dynview.f.e eVar) {
        try {
            if (this.d == null) {
                this.d = new HashMap();
            }
            final List<com.anythink.expressad.foundation.d.c> listG = cVar.g();
            if (view.getContext() == null) {
                eVar.a(com.anythink.expressad.video.dynview.c.b.NOT_FOUND_CONTEXT);
                return;
            }
            if (map != null && map.containsKey("is_dy_success")) {
                k = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            k = false;
            ListView listView = (ListView) view.findViewById(a("anythink_order_view_lv"));
            GridView gridView = (GridView) view.findViewById(a("anythink_order_view_h_lv"));
            ImageView imageView = (ImageView) view.findViewById(a("anythink_order_view_iv_close"));
            com.anythink.expressad.video.dynview.ordercamp.a.a aVar = new com.anythink.expressad.video.dynview.ordercamp.a.a(listG);
            if (cVar.e() == 1) {
                if (listView != null) {
                    listView.setAdapter((ListAdapter) aVar);
                    listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.anythink.expressad.video.dynview.j.a.7
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                            a.a(a.this, map, listG, i);
                        }
                    });
                }
            } else if (gridView != null) {
                int iD = (int) cVar.d();
                int size = iD / listG.size();
                int i = size / 9;
                int i2 = i / 2;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) gridView.getLayoutParams();
                layoutParams.width = iD - (i * 2);
                gridView.setLayoutParams(layoutParams);
                gridView.setColumnWidth((size - i) - (i2 / 2));
                gridView.setHorizontalSpacing(i2);
                gridView.setStretchMode(0);
                gridView.setNumColumns(listG.size());
                gridView.setAdapter((ListAdapter) aVar);
                gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.anythink.expressad.video.dynview.j.a.8
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView<?> adapterView, View view2, int i3, long j) {
                        a.a(a.this, map, listG, i3);
                    }
                });
            }
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.dynview.j.a.9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        a.b(a.this, map);
                    }
                });
            }
            if (eVar != null) {
                eVar.a(view, null);
            }
        } catch (Exception unused) {
            if (eVar != null) {
                eVar.a(com.anythink.expressad.video.dynview.c.b.NOT_FOUND_VIEWOPTION);
            }
        }
    }
}
