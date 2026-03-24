package com.anythink.expressad.video.bt.module;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.o.n;
import com.anythink.expressad.foundation.g.a;
import com.anythink.expressad.foundation.g.d.b;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.video.bt.a.c;
import com.anythink.expressad.video.module.a.a.e;
import com.anythink.expressad.video.signal.a.j;
import com.anythink.expressad.videocommon.e.d;
import com.anythink.expressad.videocommon.view.RoundImageView;
import com.anythink.expressad.videocommon.view.StarLevelView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AnythinkBTNativeEC extends BTBaseView {
    private static final String p = "anythink_reward_endcard_native_hor";
    private static final String q = "anythink_reward_endcard_native_land";
    private TextView A;
    private TextView B;
    private StarLevelView C;
    private boolean D;
    private boolean E;
    private int F;
    private Runnable G;
    private View H;
    private View I;
    private String J;
    private j K;
    private WebView L;
    private ViewGroup r;
    private ViewGroup s;
    private RelativeLayout t;
    private ImageView u;
    private RoundImageView v;
    private ImageView w;
    private ImageView x;
    private ImageView y;
    private TextView z;

    public AnythinkBTNativeEC(Context context) {
        super(context);
        this.D = false;
        this.E = false;
        this.F = 0;
    }

    public AnythinkBTNativeEC(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.D = false;
        this.E = false;
        this.F = 0;
    }

    private static Bitmap a(Drawable drawable) {
        try {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            th.getMessage();
            return null;
        }
    }

    private void a(float f, float f2) {
        if (this.L != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("code", BTBaseView.n);
                jSONObject.put("id", this.d);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("x", String.valueOf(f));
                jSONObject2.put("y", String.valueOf(f2));
                jSONObject.put("data", jSONObject2);
                com.anythink.expressad.atsignalcommon.windvane.j.a();
                com.anythink.expressad.atsignalcommon.windvane.j.a(this.L, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Exception unused) {
                c.a();
                c.a(this.L, "onClicked", this.d);
            }
        }
    }

    private void a(View view) {
        if (view == null) {
            init(this.a);
            preLoadData();
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        addView(view);
        b(view);
        a();
    }

    public static /* synthetic */ void a(AnythinkBTNativeEC anythinkBTNativeEC, float f, float f2) {
        if (anythinkBTNativeEC.L != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("code", BTBaseView.n);
                jSONObject.put("id", anythinkBTNativeEC.d);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("x", String.valueOf(f));
                jSONObject2.put("y", String.valueOf(f2));
                jSONObject.put("data", jSONObject2);
                com.anythink.expressad.atsignalcommon.windvane.j.a();
                com.anythink.expressad.atsignalcommon.windvane.j.a(anythinkBTNativeEC.L, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Exception unused) {
                c.a();
                c.a(anythinkBTNativeEC.L, "onClicked", anythinkBTNativeEC.d);
            }
        }
    }

    public static /* synthetic */ void a(AnythinkBTNativeEC anythinkBTNativeEC, int i) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            try {
                jSONObject = new JSONObject();
            } catch (Throwable th) {
                th.getMessage();
                return;
            }
        } catch (JSONException e) {
            e = e;
        }
        try {
            jSONObject.put(a.ce, anythinkBTNativeEC.a(i));
        } catch (JSONException e2) {
            e = e2;
            jSONObject2 = jSONObject;
            e.printStackTrace();
            jSONObject = jSONObject2;
        }
        j jVar = anythinkBTNativeEC.K;
        if (jVar != null) {
            jVar.click(1, jSONObject != null ? jSONObject.toString() : "");
        }
    }

    public static /* synthetic */ boolean a(AnythinkBTNativeEC anythinkBTNativeEC) {
        anythinkBTNativeEC.E = true;
        return true;
    }

    private int b() {
        return findLayout(isLandscape() ? q : p);
    }

    private boolean b(int i) {
        View view;
        if (isLandscape()) {
            ViewGroup viewGroup = (ViewGroup) this.f.inflate(i, (ViewGroup) null);
            this.s = viewGroup;
            addView(viewGroup);
            view = this.s;
        } else {
            ViewGroup viewGroup2 = (ViewGroup) this.f.inflate(i, (ViewGroup) null);
            this.r = viewGroup2;
            addView(viewGroup2);
            view = this.r;
        }
        return b(view);
    }

    private boolean b(View view) {
        try {
            this.t = (RelativeLayout) view.findViewById(findID("anythink_native_ec_layout"));
            this.u = (ImageView) view.findViewById(findID("anythink_iv_adbanner_bg"));
            this.v = (RoundImageView) view.findViewById(findID("anythink_iv_adbanner"));
            this.w = (ImageView) view.findViewById(findID("anythink_iv_icon"));
            this.x = (ImageView) view.findViewById(findID("anythink_iv_flag"));
            this.y = (ImageView) view.findViewById(findID("anythink_iv_link"));
            this.z = (TextView) view.findViewById(findID("anythink_tv_apptitle"));
            this.A = (TextView) view.findViewById(findID("anythink_tv_appdesc"));
            this.B = (TextView) view.findViewById(findID("anythink_tv_nuater"));
            this.C = (StarLevelView) view.findViewById(findID("anythink_sv_starlevel"));
            this.H = view.findViewById(findID("anythink_iv_close"));
            View viewFindViewById = view.findViewById(findID("anythink_tv_cta"));
            this.I = viewFindViewById;
            return isNotNULL(this.u, this.v, this.w, this.z, this.A, this.B, this.C, this.H, viewFindViewById);
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
    }

    private void c(int i) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            try {
                jSONObject = new JSONObject();
            } catch (Throwable th) {
                th.getMessage();
                return;
            }
        } catch (JSONException e) {
            e = e;
        }
        try {
            jSONObject.put(a.ce, a(i));
        } catch (JSONException e2) {
            e = e2;
            jSONObject2 = jSONObject;
            e.printStackTrace();
            jSONObject = jSONObject2;
        }
        j jVar = this.K;
        if (jVar != null) {
            jVar.click(1, jSONObject != null ? jSONObject.toString() : "");
        }
    }

    @Override // com.anythink.expressad.video.bt.module.BTBaseView
    public final void a() {
        if (this.h) {
            this.t.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTNativeEC.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (AnythinkBTNativeEC.this.D) {
                        AnythinkBTNativeEC.a(AnythinkBTNativeEC.this, 1);
                        AnythinkBTNativeEC.a(AnythinkBTNativeEC.this, view.getX(), view.getY());
                    }
                }
            });
            this.H.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTNativeEC.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (AnythinkBTNativeEC.this.L != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", AnythinkBTNativeEC.this.d);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("unitId", AnythinkBTNativeEC.this.J);
                            jSONObject.put("data", jSONObject2);
                            new StringBuilder("NativeEC Call H5 onCloseBtnClicked ").append(jSONObject.toString());
                        } catch (JSONException e) {
                            e.getMessage();
                        }
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a(AnythinkBTNativeEC.this.L, "onCloseBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    }
                }
            });
            this.I.setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTNativeEC.6
                @Override // com.anythink.expressad.widget.a
                public final void a(View view) {
                    AnythinkBTNativeEC.a(AnythinkBTNativeEC.this, 0);
                    AnythinkBTNativeEC.a(AnythinkBTNativeEC.this, view.getX(), view.getY());
                }
            });
            this.w.setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTNativeEC.7
                @Override // com.anythink.expressad.widget.a
                public final void a(View view) {
                    AnythinkBTNativeEC.a(AnythinkBTNativeEC.this, 0);
                    AnythinkBTNativeEC.a(AnythinkBTNativeEC.this, view.getX(), view.getY());
                }
            });
            this.v.setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTNativeEC.8
                @Override // com.anythink.expressad.widget.a
                public final void a(View view) {
                    AnythinkBTNativeEC.a(AnythinkBTNativeEC.this, 0);
                    AnythinkBTNativeEC.a(AnythinkBTNativeEC.this, view.getX(), view.getY());
                }
            });
        }
    }

    @TargetApi(17)
    public Bitmap blurBitmap(Bitmap bitmap) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            RenderScript renderScriptCreate = RenderScript.create(this.a.getApplicationContext());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
            Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
            scriptIntrinsicBlurCreate.setRadius(10.0f);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
            allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
            bitmap.recycle();
            renderScriptCreate.destroy();
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.anythink.expressad.video.bt.module.BTBaseView
    public void init(Context context) {
        View view;
        int iFindLayout = findLayout(isLandscape() ? q : p);
        if (iFindLayout > 0) {
            if (isLandscape()) {
                ViewGroup viewGroup = (ViewGroup) this.f.inflate(iFindLayout, (ViewGroup) null);
                this.s = viewGroup;
                addView(viewGroup);
                view = this.s;
            } else {
                ViewGroup viewGroup2 = (ViewGroup) this.f.inflate(iFindLayout, (ViewGroup) null);
                this.r = viewGroup2;
                addView(viewGroup2);
                view = this.r;
            }
            this.h = b(view);
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.G == null) {
            this.G = new Runnable() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTNativeEC.1
                @Override // java.lang.Runnable
                public final void run() {
                    AnythinkBTNativeEC.a(AnythinkBTNativeEC.this);
                    if (AnythinkBTNativeEC.this.H != null) {
                        AnythinkBTNativeEC.this.H.setVisibility(0);
                    }
                }
            };
        }
        Runnable runnable = this.G;
        if (runnable != null) {
            postDelayed(runnable, this.F * 1000);
        }
        if (!this.h && this.L != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("id", this.d);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("unitId", this.J);
                jSONObject.put("data", jSONObject2);
                new StringBuilder("NativeEC Call H5 onCloseBtnClicked ").append(jSONObject.toString());
            } catch (JSONException e) {
                e.getMessage();
            }
            com.anythink.expressad.atsignalcommon.windvane.j.a();
            com.anythink.expressad.atsignalcommon.windvane.j.a(this.L, "onCloseBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        }
        if (this.L != null) {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("id", this.d);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("unitId", this.J);
                jSONObject3.put("data", jSONObject4);
                new StringBuilder("NativeEC Call H5 onEndCardShow ").append(jSONObject3.toString());
            } catch (JSONException e2) {
                e2.getMessage();
            }
            com.anythink.expressad.atsignalcommon.windvane.j.a();
            com.anythink.expressad.atsignalcommon.windvane.j.a(this.L, "onNativeECShow", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
        }
    }

    @Override // com.anythink.expressad.video.bt.module.BTBaseView
    public void onDestory() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.G;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // com.anythink.expressad.video.bt.module.BTBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        ViewGroup viewGroup;
        super.onSelfConfigurationChanged(configuration);
        int i = configuration.orientation;
        this.g = i;
        if (i == 2) {
            removeView(this.r);
            viewGroup = this.s;
        } else {
            removeView(this.s);
            viewGroup = this.r;
        }
        a(viewGroup);
    }

    public void preLoadData() {
        Bitmap bitmapBlurBitmap;
        try {
            if (this.b == null || !this.h) {
                return;
            }
            d dVar = this.e;
            if (dVar != null) {
                this.F = dVar.p();
            }
            b.a(this.a.getApplicationContext()).a(this.b.be(), new e(this.v, this.b, this.J));
            b.a(this.a.getApplicationContext()).a(this.b.bd(), new com.anythink.expressad.video.module.a.a.j(this.w, t.b(com.anythink.expressad.foundation.b.a.c().e(), 8.0f)));
            this.z.setText(this.b.bb());
            this.A.setText(this.b.bc());
            this.B.setText(this.b.aY() + ")");
            this.C.removeAllViews();
            double dAX = this.b.aX();
            if (dAX <= 0.0d) {
                dAX = 5.0d;
            }
            this.C.initScore(dAX);
            if (Build.VERSION.SDK_INT < 17) {
                this.u.setVisibility(8);
                return;
            }
            try {
                Bitmap bitmapA = a(this.v.getDrawable());
                if (bitmapA != null && (bitmapBlurBitmap = blurBitmap(bitmapA)) != null) {
                    this.u.setImageBitmap(bitmapBlurBitmap);
                }
            } catch (Throwable unused) {
                this.u.setVisibility(8);
            }
            if (!TextUtils.isEmpty(this.b.I()) && this.b.I().contains("alecfc=1")) {
                this.D = true;
            }
            b.a(this.a.getApplicationContext()).a(TextUtils.isEmpty(this.b.aE()) ? com.anythink.expressad.a.ab : this.b.aE(), new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTNativeEC.2
                @Override // com.anythink.expressad.foundation.g.d.c
                public final void a(Bitmap bitmap, String str) {
                    if (bitmap == null || bitmap.isRecycled()) {
                        return;
                    }
                    try {
                        int iB = t.b(AnythinkBTNativeEC.this.a, 12.0f);
                        AnythinkBTNativeEC.this.x.getLayoutParams().height = iB;
                        AnythinkBTNativeEC.this.x.getLayoutParams().width = (int) (iB * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                        AnythinkBTNativeEC.this.x.setImageBitmap(bitmap);
                        AnythinkBTNativeEC.this.x.setBackgroundColor(1426063360);
                    } catch (Throwable unused2) {
                    }
                }

                @Override // com.anythink.expressad.foundation.g.d.c
                public final void a(String str, String str2) {
                }
            });
            com.anythink.expressad.foundation.b.a.c().f();
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
            if (aVarB != null) {
                final String strJ = aVarB.J();
                if (TextUtils.isEmpty(strJ)) {
                    this.y.setVisibility(8);
                }
                this.y.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.bt.module.AnythinkBTNativeEC.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        n.a(AnythinkBTNativeEC.this.a, strJ);
                    }
                });
            } else {
                this.y.setVisibility(8);
            }
            if (this.E) {
                return;
            }
            this.H.setVisibility(8);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void setCreateWebView(WebView webView) {
        this.L = webView;
    }

    public void setJSCommon(j jVar) {
        this.K = jVar;
    }

    @Override // com.anythink.expressad.video.bt.module.BTBaseView
    public void setUnitId(String str) {
        this.J = str;
    }
}
