package com.anythink.expressad.video.dynview.j;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.video.dynview.widget.AnyThinkFramLayout;
import com.anythink.expressad.video.dynview.widget.AnyThinkLevelLayoutView;
import com.anythink.expressad.video.dynview.widget.AnyThinkRelativeLayout;
import com.anythink.expressad.video.dynview.widget.AnyThinkTextView;
import com.anythink.expressad.video.module.AnythinkClickCTAView;
import com.anythink.expressad.video.widget.SoundImageView;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private String a = "anythink_top_play_bg";
    private String b = "anythink_top_finger_bg";
    private String c = "anythink_bottom_play_bg";
    private String d = "anythink_bottom_finger_bg";
    private String e = "anythink_tv_count";
    private String f = "anythink_sound_switch";
    private String g = "anythink_top_control";
    private String h = "anythink_tv_title";
    private String i = "anythink_tv_desc";
    private String j = "anythink_tv_install";
    private String k = "anythink_sv_starlevel";
    private String l = "anythink_sv_heat_count_level";
    private String m = "anythink_tv_cta";
    private String n = "anythink_native_ec_controller";
    private String o = "anythink_reward_shape_choice_rl";
    private String p = "#FFFFFF";
    private String q = "#FF000000";
    private String r = "#40000000";
    private String s = "#CAEF79";
    private String t = "#2196F3";
    private String u = "#402196F3";
    private String v = "#8FC31F";
    private String w = "#03A9F4";
    private boolean x = false;

    private static int a(String str) {
        return i.a(n.a().f(), str, "id");
    }

    private static void a() {
    }

    private void a(Context context, View view, com.anythink.expressad.video.dynview.c cVar) {
        SoundImageView soundImageView = (SoundImageView) view.findViewById(a(this.f));
        int iB = t.b(context, 60.0f);
        int iB2 = t.b(context, 10.0f);
        if (soundImageView != null) {
            cVar.e();
            ((FrameLayout.LayoutParams) soundImageView.getLayoutParams()).setMargins(iB2, 0, 0, iB);
        }
    }

    private static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    private void b(View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(a(this.g));
        if (relativeLayout != null) {
            if (com.anythink.expressad.video.dynview.a.b.a == 0 && com.anythink.expressad.video.dynview.a.b.b == 0 && com.anythink.expressad.video.dynview.a.b.c == 0 && com.anythink.expressad.video.dynview.a.b.d == 0) {
                return;
            }
            relativeLayout.setVisibility(4);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
            alphaAnimation.setDuration(200L);
            relativeLayout.startAnimation(alphaAnimation);
            relativeLayout.setVisibility(0);
        }
    }

    private void d(View view, com.anythink.expressad.video.dynview.c cVar) {
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(a(this.n));
        if (relativeLayout != null) {
            if (cVar.e() == 1) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.setMargins(layoutParams.leftMargin + com.anythink.expressad.video.dynview.a.b.a, layoutParams.topMargin + com.anythink.expressad.video.dynview.a.b.c, layoutParams.rightMargin + com.anythink.expressad.video.dynview.a.b.b, layoutParams.bottomMargin + com.anythink.expressad.video.dynview.a.b.d);
                relativeLayout.setLayoutParams(layoutParams);
                return;
            }
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.setMargins(layoutParams2.leftMargin + com.anythink.expressad.video.dynview.a.b.a, layoutParams2.topMargin + com.anythink.expressad.video.dynview.a.b.c, layoutParams2.rightMargin + com.anythink.expressad.video.dynview.a.b.b, layoutParams2.bottomMargin + com.anythink.expressad.video.dynview.a.b.d);
            relativeLayout.setLayoutParams(layoutParams2);
        }
    }

    public final void a(View view) {
        ObjectAnimator objectAnimatorA;
        ObjectAnimator objectAnimatorB;
        ObjectAnimator objectAnimatorA2;
        if (view == null || !(view instanceof AnyThinkFramLayout)) {
            return;
        }
        AnyThinkFramLayout anyThinkFramLayout = (AnyThinkFramLayout) view;
        AnimatorSet animatorSet = new AnimatorSet();
        if (view.getContext() != null) {
            this.x = false;
            ImageView imageView = (ImageView) view.findViewById(a(this.a));
            ImageView imageView2 = (ImageView) view.findViewById(a(this.b));
            ImageView imageView3 = (ImageView) view.findViewById(a(this.c));
            ImageView imageView4 = (ImageView) view.findViewById(a(this.d));
            ObjectAnimator objectAnimatorB2 = null;
            if (imageView != null) {
                new com.anythink.expressad.video.dynview.h.b();
                objectAnimatorA = com.anythink.expressad.video.dynview.h.b.a(imageView);
            } else {
                objectAnimatorA = null;
            }
            if (imageView2 != null) {
                new com.anythink.expressad.video.dynview.h.b();
                objectAnimatorB = com.anythink.expressad.video.dynview.h.b.b(imageView2);
            } else {
                objectAnimatorB = null;
            }
            if (imageView3 != null) {
                new com.anythink.expressad.video.dynview.h.b();
                objectAnimatorA2 = com.anythink.expressad.video.dynview.h.b.a(imageView3);
            } else {
                objectAnimatorA2 = null;
            }
            if (imageView4 != null) {
                new com.anythink.expressad.video.dynview.h.b();
                objectAnimatorB2 = com.anythink.expressad.video.dynview.h.b.b(imageView4);
            }
            if (objectAnimatorA == null || objectAnimatorA2 == null || objectAnimatorB == null || objectAnimatorB2 == null) {
                return;
            }
            animatorSet.playTogether(objectAnimatorA, objectAnimatorA2, objectAnimatorB, objectAnimatorB2);
            anyThinkFramLayout.setAnimatorSet(animatorSet);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(View view, com.anythink.expressad.video.dynview.c cVar) {
        String str;
        String str2;
        String str3;
        float f;
        float f2;
        RelativeLayout relativeLayout;
        Context context = view != null ? view.getContext() : null;
        if (context == null || cVar == null) {
            return;
        }
        this.x = false;
        TextView textView = (TextView) view.findViewById(a(this.e));
        TextView textView2 = (TextView) view.findViewById(a("anythink_reward_click_tv"));
        if (textView != null) {
            textView.setBackgroundResource(i.a(context, "anythink_reward_shape_progress", i.c));
            textView.setTextColor(Color.parseColor(this.p));
            textView.setTextSize(11.0f);
        }
        if (textView2 != null) {
            textView2.setTextSize(20.0f);
            if (textView2 instanceof AnyThinkTextView) {
                new com.anythink.expressad.video.dynview.h.b();
                ((AnyThinkTextView) textView2).setObjectAnimator(com.anythink.expressad.video.dynview.h.b.c(textView2));
            }
        }
        if (cVar == null) {
            return;
        }
        String str4 = this.q;
        String str5 = this.s;
        int i = cVar.i();
        if (i == 302) {
            str = this.t;
            str2 = this.w;
            str4 = this.p;
            str3 = this.u;
            f = 10.0f;
        } else {
            if (i == 802) {
                str = this.p;
                str4 = this.q;
                str3 = this.r;
                str2 = str;
                f = 25.0f;
                f2 = 0.5f;
                if (textView2 != null) {
                    textView2.setTextColor(Color.parseColor(str4));
                    com.anythink.expressad.video.dynview.i.b.a.a(textView2, f2, f, str3, new String[]{str, str2}, GradientDrawable.Orientation.LEFT_RIGHT);
                }
                if (cVar.f() != null) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) cVar.f().getLayoutParams();
                    layoutParams.setMargins(0, 0, 0, 0);
                    cVar.f().setLayoutParams(layoutParams);
                }
                relativeLayout = (RelativeLayout) view.findViewById(a(this.g));
                if (relativeLayout == null) {
                    if (com.anythink.expressad.video.dynview.a.b.a == 0 && com.anythink.expressad.video.dynview.a.b.b == 0 && com.anythink.expressad.video.dynview.a.b.c == 0 && com.anythink.expressad.video.dynview.a.b.d == 0) {
                        return;
                    }
                    relativeLayout.setVisibility(4);
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
                    alphaAnimation.setDuration(200L);
                    relativeLayout.startAnimation(alphaAnimation);
                    relativeLayout.setVisibility(0);
                    return;
                }
                return;
            }
            str = this.v;
            str2 = this.s;
            str3 = str5;
            f = 5.0f;
        }
        f2 = 1.0f;
        if (textView2 != null) {
        }
        if (cVar.f() != null) {
        }
        relativeLayout = (RelativeLayout) view.findViewById(a(this.g));
        if (relativeLayout == null) {
        }
    }

    public final void b(View view, com.anythink.expressad.video.dynview.c cVar) {
        Context context;
        int iB;
        if (view == null || cVar == null || (context = view.getContext()) == null) {
            return;
        }
        if (cVar.e() == 1) {
            view.setBackgroundDrawable(context.getResources().getDrawable(i.a(context, this.o, i.c)));
            TextView textView = (TextView) view.findViewById(a(this.h));
            if (textView != null) {
                textView.setTextColor(Color.parseColor(this.q));
            }
            TextView textView2 = (TextView) view.findViewById(a(this.i));
            if (textView2 != null) {
                textView2.setTextColor(Color.parseColor(this.q));
            }
            iB = t.b(context, 2.0f);
        } else {
            iB = t.b(context, 10.0f);
            view.getBackground().setAlpha(100);
        }
        int iB2 = t.b(context, 8.0f);
        View viewFindViewById = view.findViewById(a(this.j));
        if (viewFindViewById != null) {
            if (cVar.f() != null && (cVar.f() instanceof AnythinkClickCTAView)) {
                new com.anythink.expressad.video.dynview.h.b();
                ((AnythinkClickCTAView) cVar.f()).setObjectAnimator(com.anythink.expressad.video.dynview.h.b.c(viewFindViewById));
            }
            if (viewFindViewById instanceof TextView) {
                TextView textView3 = (TextView) viewFindViewById;
                textView3.setTextColor(Color.parseColor(this.p));
                textView3.setTextSize(15.0f);
                String str = this.s;
                com.anythink.expressad.video.dynview.i.b.a.a(textView3, 1.0f, 5.0f, str, new String[]{this.v, str}, GradientDrawable.Orientation.LEFT_RIGHT);
            }
        }
        if (view.getLayoutParams() == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(iB, iB, iB, iB2);
            layoutParams.height = t.b(context, 60.0f);
            view.setLayoutParams(layoutParams);
        }
    }

    public final void c(View view, com.anythink.expressad.video.dynview.c cVar) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || cVar == null) {
            return;
        }
        if (view.getContext() != null) {
            this.x = false;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(a(this.k));
            View viewFindViewById = view.findViewById(a(this.m));
            if (linearLayout != null && (linearLayout instanceof AnyThinkLevelLayoutView)) {
                if (cVar.e() == 1) {
                    linearLayout.setOrientation(1);
                } else {
                    linearLayout.setOrientation(0);
                }
            }
            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(a(this.n));
            if (relativeLayout != null) {
                if (cVar.e() == 1) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams2.setMargins(layoutParams2.leftMargin + com.anythink.expressad.video.dynview.a.b.a, layoutParams2.topMargin + com.anythink.expressad.video.dynview.a.b.c, layoutParams2.rightMargin + com.anythink.expressad.video.dynview.a.b.b, layoutParams2.bottomMargin + com.anythink.expressad.video.dynview.a.b.d);
                    layoutParams = layoutParams2;
                } else {
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams3.setMargins(layoutParams3.leftMargin + com.anythink.expressad.video.dynview.a.b.a, layoutParams3.topMargin + com.anythink.expressad.video.dynview.a.b.c, layoutParams3.rightMargin + com.anythink.expressad.video.dynview.a.b.b, layoutParams3.bottomMargin + com.anythink.expressad.video.dynview.a.b.d);
                    layoutParams = layoutParams3;
                }
                relativeLayout.setLayoutParams(layoutParams);
            }
            if (viewFindViewById != null) {
                if (viewFindViewById instanceof TextView) {
                    TextView textView = (TextView) viewFindViewById;
                    textView.setTextColor(Color.parseColor(this.p));
                    textView.setTextSize(25.0f);
                    String str = this.s;
                    com.anythink.expressad.video.dynview.i.b.a.a(viewFindViewById, 1.0f, 5.0f, str, new String[]{this.v, str}, GradientDrawable.Orientation.LEFT_RIGHT);
                }
                AnimatorSet animatorSet = new AnimatorSet();
                new com.anythink.expressad.video.dynview.h.b();
                animatorSet.playTogether(com.anythink.expressad.video.dynview.h.b.c(viewFindViewById));
                if (view instanceof AnyThinkFramLayout) {
                    ((AnyThinkFramLayout) view).setAnimatorSet(animatorSet);
                }
                if (view instanceof AnyThinkRelativeLayout) {
                    ((AnyThinkRelativeLayout) view).setAnimatorSet(animatorSet);
                }
            }
        }
        new com.anythink.expressad.video.dynview.h.b();
        com.anythink.expressad.video.dynview.h.b.e(view);
    }
}
