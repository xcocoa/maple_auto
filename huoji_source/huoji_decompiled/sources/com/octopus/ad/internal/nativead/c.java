package com.octopus.ad.internal.nativead;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.GravityCompat;
import com.octopus.ad.AdActivity;
import com.octopus.ad.AdRequest;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.R;
import com.octopus.ad.b.b;
import com.octopus.ad.internal.g;
import com.octopus.ad.internal.h;
import com.octopus.ad.internal.k;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.r;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.ImageManager;
import com.octopus.ad.internal.utilities.JsonUtil;
import com.octopus.ad.internal.utilities.ReportEventUtil;
import com.octopus.ad.internal.utilities.SPUtils;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.UrlUtil;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.utilities.WebviewUtil;
import com.octopus.ad.internal.view.AdViewImpl;
import com.octopus.ad.utils.b.d;
import com.octopus.ad.utils.b.f;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements NativeAdResponse {
    private ServerResponse.AdLogoInfo E;
    private ServerResponse.AdLogoInfo F;
    private ServerResponse G;
    private List<? extends View> H;
    private View J;
    private List<View> K;
    private NativeAdEventListener L;
    private View.OnClickListener M;
    private r N;
    private ArrayList<k> O;
    private long Q;
    private int R;
    private String S;
    private String T;
    private String U;
    private String V;
    private b.i W;
    private b.C0191b.a X;
    private b.C0191b Y;
    private NativeAdResponse.b a;
    private String b;
    private String c;
    private String d;
    private String e;
    private Bitmap f;
    private Bitmap g;
    private String h;
    private String i;
    private String j;
    private double k;
    private String l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean s;
    private String w;
    private HashMap<String, Object> x;
    private boolean r = false;
    private int t = 0;
    private int u = 0;
    private boolean v = true;
    private boolean y = false;
    private ArrayList<String> z = new ArrayList<>();
    private ArrayList<String> A = new ArrayList<>();
    private ArrayList<String> B = new ArrayList<>();
    private ArrayList<String> C = new ArrayList<>();
    private ArrayList<String> D = new ArrayList<>();
    private Runnable I = new Runnable() { // from class: com.octopus.ad.internal.nativead.c.1
        @Override // java.lang.Runnable
        public void run() {
            Log.e("expireRunnable", "expireRunnable");
            c.this.y = true;
            c.this.J = null;
            c.this.K = null;
            if (c.this.N != null) {
                c.this.N.d();
                c.this.N = null;
            }
            c.this.O = null;
            c.this.L = null;
            if (c.this.g != null) {
                c.this.g.recycle();
                c.this.g = null;
            }
            if (c.this.f != null) {
                c.this.f.recycle();
                c.this.f = null;
            }
        }
    };
    private String P = "";
    private boolean Z = false;

    public static c a(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        ArrayList<String> stringArrayList = JsonUtil.getStringArrayList(JsonUtil.getJSONArray(jSONObject, "ImpressionTrackers"));
        c cVar = new c();
        if (stringArrayList != null) {
            cVar.C = stringArrayList;
        }
        cVar.b = JsonUtil.getJSONString(jSONObject, "Headline");
        cVar.c = JsonUtil.getJSONString(jSONObject, "Body");
        cVar.d = JsonUtil.getJSONString(jSONObject, "Image");
        cVar.t = JsonUtil.getJSONInt(jSONObject, "LayoutType");
        cVar.s = JsonUtil.getJSONBoolean(jSONObject, "IsShowClose");
        JSONArray jSONArray = JsonUtil.getJSONArray(jSONObject, "Images");
        JSONArray jSONArray2 = JsonUtil.getJSONArray(jSONObject, "Videos");
        JSONArray jSONArray3 = JsonUtil.getJSONArray(jSONObject, "Texts");
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                cVar.z.add((String) jSONArray.get(i));
            }
        }
        if (jSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                cVar.A.add((String) jSONArray2.get(i2));
            }
        }
        if (jSONArray3 != null) {
            for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                cVar.B.add((String) jSONArray3.get(i3));
            }
        }
        if (jSONObject.has("AppIcon")) {
            cVar.a = NativeAdResponse.b.APP_INSTALL;
            cVar.e = JsonUtil.getJSONString(jSONObject, "AppIcon");
            cVar.j = JsonUtil.getJSONString(jSONObject, "Action");
            cVar.k = JsonUtil.getJSONDouble(jSONObject, "Star");
            cVar.l = JsonUtil.getJSONString(jSONObject, "Store");
            cVar.m = JsonUtil.getJSONInt(jSONObject, "Price");
        } else {
            cVar.a = NativeAdResponse.b.CONTENT;
            cVar.e = JsonUtil.getJSONString(jSONObject, "Logo");
            cVar.j = JsonUtil.getJSONString(jSONObject, "Action");
            cVar.w = JsonUtil.getJSONString(jSONObject, "Advertiser");
        }
        ArrayList<String> stringArrayList2 = JsonUtil.getStringArrayList(JsonUtil.getJSONArray(jSONObject, "ClickTrackers"));
        if (stringArrayList2 != null) {
            cVar.D = stringArrayList2;
        }
        cVar.x = JsonUtil.getStringObjectHashMap(JsonUtil.getJSONObject(jSONObject, "Custom"));
        new Handler(Looper.getMainLooper()).postDelayed(cVar.I, 3600000L);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        StringBuilder sb;
        this.p = true;
        ArrayList<String> arrayList = this.D;
        if (arrayList != null) {
            for (String string : arrayList) {
                f.a("octopus", "setClickListener:" + string);
                if (string.startsWith("http://v.adintl.cn/clk")) {
                    if (this.r) {
                        sb = new StringBuilder();
                        sb.append(string);
                        sb.append("&opt=1");
                    } else if (this.u != 0) {
                        sb = new StringBuilder();
                        sb.append(string);
                        sb.append("&opt=");
                        sb.append(this.u);
                    }
                    string = sb.toString();
                }
                new h(string).execute(new Void[0]);
            }
        }
        NativeAdEventListener nativeAdEventListener = this.L;
        if (nativeAdEventListener != null && this.v && !this.q) {
            nativeAdEventListener.onAdClick();
        }
        if (!a(this.i, this.h, context)) {
            HaoboLog.d(HaoboLog.nativeLogTag, "Unable to handle click.");
        }
        this.D = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, NativeAdShownListener nativeAdShownListener) {
        if (this.y || view == null) {
            return;
        }
        r rVar = this.N;
        if (rVar != null) {
            rVar.d();
        }
        Object tag = view.getTag(55449210);
        if (tag instanceof r) {
            ((r) tag).d();
        }
        r rVarA = r.a(view);
        this.N = rVarA;
        view.setTag(55449210, rVarA);
        g.a(view, nativeAdShownListener);
        this.O = new ArrayList<>();
        Iterator<String> it = this.C.iterator();
        while (it.hasNext()) {
            this.O.add(k.a(this.P, it.next(), this.N, view.getContext(), this.C));
        }
        this.J = view;
        new Handler(Looper.getMainLooper()).removeCallbacks(this.I);
        if (this.G != null) {
            AdViewImpl.setAutoClickStrategy(view.getContext(), this.G, new AdViewImpl.d() { // from class: com.octopus.ad.internal.nativead.c.2
                @Override // com.octopus.ad.internal.view.AdViewImpl.d
                public void a(int i) {
                    if (c.this.o || c.this.p || c.this.J == null || c.this.G == null) {
                        return;
                    }
                    SPUtils.putFrequency(c.this.J.getContext(), "frequency" + c.this.G.getTagId(), i);
                    if (AdViewImpl.isAoClickCallBack(c.this.G)) {
                        c.this.q = false;
                        c.this.v = true;
                        c.this.u = 0;
                    } else {
                        c.this.q = true;
                        c.this.u = 9;
                    }
                    c cVar = c.this;
                    cVar.a(cVar.J.getContext());
                }
            });
            boolean zIsCallBackClick = AdViewImpl.isCallBackClick(this.G);
            this.v = zIsCallBackClick;
            if (zIsCallBackClick) {
                return;
            }
            this.u = 8;
        }
    }

    private void a(View view, List<View> list) {
        if (a(view)) {
            if (list != null && !list.isEmpty()) {
                view.setOnClickListener(null);
                Iterator<View> it = list.iterator();
                while (it.hasNext()) {
                    it.next().setOnClickListener(this.M);
                }
            }
            this.K = list;
        }
    }

    private void a(final ViewGroup viewGroup, int i) {
        final View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, (ViewGroup) null);
        final ImageView imageView = (ImageView) viewInflate.findViewById(R.id.ad_image);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.ad_logo);
        ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.ad_logo_text);
        ImageView imageView4 = (ImageView) viewInflate.findViewById(R.id.ad_close);
        TextView textView = (TextView) viewInflate.findViewById(R.id.ad_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.ad_action);
        if (!TextUtils.isEmpty(getTitle())) {
            textView.setText(getTitle());
        }
        if (!TextUtils.isEmpty(getButtonText())) {
            textView2.setText(getButtonText());
        }
        if (!TextUtils.isEmpty(getImageUrl())) {
            ImageManager.with(null).getBitmap(getImageUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.octopus.ad.internal.nativead.c.14
                @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
                public void onBitmapLoadFailed() {
                    c.this.L.onAdRenderFailed(AdRequest.ERROR_CODE_RENDER_FAIL);
                }

                @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
                public void onBitmapLoaded(Bitmap bitmap) {
                    imageView.setImageBitmap(bitmap);
                    viewGroup.removeAllViews();
                    viewGroup.addView(viewInflate);
                    c.this.a((View) viewGroup);
                    c.this.a(viewGroup, new NativeAdShownListener() { // from class: com.octopus.ad.internal.nativead.c.14.1
                        @Override // com.octopus.ad.internal.nativead.NativeAdShownListener
                        public void onAdShown() {
                            if (c.this.L != null) {
                                c.this.L.onADExposed();
                            }
                        }
                    });
                }
            });
        }
        if (!TextUtils.isEmpty(getLogoUrl())) {
            ImageManager.with(null).load(getLogoUrl()).into(imageView2);
        }
        if (!TextUtils.isEmpty(getTextLogoUrl())) {
            ImageManager.with(null).load(getTextLogoUrl()).into(imageView3);
        }
        if (!this.s) {
            imageView4.setVisibility(8);
        } else {
            imageView4.setVisibility(0);
            imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.nativead.c.15
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    c.this.L.onAdClose();
                }
            });
        }
    }

    private void a(final ImageManager.BitmapLoadedListener bitmapLoadedListener) {
        int i;
        boolean z;
        boolean z3;
        ArrayList<String> imageUrls = getImageUrls();
        final Bitmap[] bitmapArr = new Bitmap[3];
        if (imageUrls == null || imageUrls.size() <= 0) {
            return;
        }
        final ServerResponse.AdLogoInfo textLogoInfo = getTextLogoInfo();
        if (textLogoInfo.getType() == ServerResponse.AdLogoInfo.TYPE_PIC) {
            i = 1;
            z = true;
        } else {
            i = 0;
            z = false;
        }
        final ServerResponse.AdLogoInfo logoInfo = getLogoInfo();
        if (logoInfo.getType() == ServerResponse.AdLogoInfo.TYPE_PIC) {
            i++;
            z3 = true;
        } else {
            z3 = false;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(i + 1);
        boolean z4 = z3;
        new Thread(new Runnable() { // from class: com.octopus.ad.internal.nativead.c.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    countDownLatch.await();
                    Handler handler = new Handler(Looper.getMainLooper());
                    Bitmap[] bitmapArr2 = bitmapArr;
                    if (bitmapArr2[0] == null) {
                        handler.post(new Runnable() { // from class: com.octopus.ad.internal.nativead.c.9.1
                            @Override // java.lang.Runnable
                            public void run() {
                                bitmapLoadedListener.onBitmapLoadFailed();
                            }
                        });
                        return;
                    }
                    final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapArr2[0].getWidth(), bitmapArr[0].getHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    Paint paint = new Paint();
                    paint.setShadowLayer(5.0f, 0.0f, 0.0f, -16777216);
                    paint.setColor(-1);
                    paint.setTextSize(ViewUtil.dip2px(m.a().g(), 8.0f));
                    canvas.drawBitmap(bitmapArr[0], 0.0f, 0.0f, paint);
                    Bitmap[] bitmapArr3 = bitmapArr;
                    if (bitmapArr3[1] != null) {
                        canvas.drawBitmap(Bitmap.createScaledBitmap(bitmapArr3[1], 85, 42, false), 10.0f, (canvas.getHeight() - r5.getHeight()) - 5, paint);
                    } else if (textLogoInfo.getType() == ServerResponse.AdLogoInfo.TYPE_TEXT && !TextUtils.isEmpty(textLogoInfo.getAdurl())) {
                        paint.getTextBounds(textLogoInfo.getAdurl(), 0, textLogoInfo.getAdurl().length(), new Rect());
                        canvas.drawText(textLogoInfo.getAdurl(), 15.0f, (canvas.getHeight() - (r5.height() / 2.0f)) - 5.0f, paint);
                    }
                    Bitmap[] bitmapArr4 = bitmapArr;
                    if (bitmapArr4[2] != null) {
                        canvas.drawBitmap(Bitmap.createScaledBitmap(bitmapArr4[2], 42, 42, false), (canvas.getWidth() - r2.getWidth()) - 10, (canvas.getHeight() - r2.getHeight()) - 10, paint);
                    } else if (logoInfo.getType() == ServerResponse.AdLogoInfo.TYPE_TEXT && !TextUtils.isEmpty(logoInfo.getAdurl())) {
                        paint.getTextBounds(logoInfo.getAdurl(), 0, logoInfo.getAdurl().length(), new Rect());
                        canvas.drawText(logoInfo.getAdurl(), (canvas.getWidth() - r5.width()) - 13, (canvas.getHeight() - (r5.height() / 2.0f)) - 5.0f, paint);
                    }
                    handler.post(new Runnable() { // from class: com.octopus.ad.internal.nativead.c.9.2
                        @Override // java.lang.Runnable
                        public void run() {
                            bitmapLoadedListener.onBitmapLoaded(bitmapCreateBitmap);
                        }
                    });
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }).start();
        ImageManager.with(null).getBitmap(imageUrls.get(0), new ImageManager.BitmapLoadedListener() { // from class: com.octopus.ad.internal.nativead.c.10
            @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
                countDownLatch.countDown();
            }

            @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                countDownLatch.countDown();
                bitmapArr[0] = bitmap;
            }
        });
        if (z) {
            ImageManager.with(null).getBitmap(textLogoInfo.getAdurl(), new ImageManager.BitmapLoadedListener() { // from class: com.octopus.ad.internal.nativead.c.11
                @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
                public void onBitmapLoadFailed() {
                    countDownLatch.countDown();
                }

                @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
                public void onBitmapLoaded(Bitmap bitmap) {
                    countDownLatch.countDown();
                    bitmapArr[1] = bitmap;
                }
            });
        }
        if (z4) {
            ImageManager.with(null).getBitmap(logoInfo.getAdurl(), new ImageManager.BitmapLoadedListener() { // from class: com.octopus.ad.internal.nativead.c.12
                @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
                public void onBitmapLoadFailed() {
                    countDownLatch.countDown();
                }

                @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
                public void onBitmapLoaded(Bitmap bitmap) {
                    countDownLatch.countDown();
                    bitmapArr[2] = bitmap;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(final View view) {
        if (this.y || view == null) {
            return false;
        }
        r rVar = this.N;
        if (rVar != null) {
            rVar.d();
        }
        Object tag = view.getTag(55449210);
        if (tag instanceof r) {
            ((r) tag).d();
        }
        r rVarA = r.a(view);
        this.N = rVarA;
        view.setTag(55449210, rVarA);
        if (this.N == null) {
            return false;
        }
        this.O = new ArrayList<>();
        Iterator<String> it = this.C.iterator();
        while (it.hasNext()) {
            this.O.add(k.a(this.P, it.next(), this.N, view.getContext(), this.C));
        }
        this.J = view;
        final GestureDetector gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.octopus.ad.internal.nativead.c.5
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                c.this.Q = System.currentTimeMillis();
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (c.this.D != null) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    float rawX = motionEvent.getRawX();
                    float rawY = motionEvent.getRawY();
                    for (String str : c.this.D) {
                        String strReplaceToTouchEventUrl = UrlUtil.replaceToTouchEventUrl(str, x + "", y + "", rawX + "", rawY + "", String.valueOf(c.this.Q), String.valueOf(System.currentTimeMillis()), "");
                        if (!TextUtils.isEmpty(c.this.P)) {
                            strReplaceToTouchEventUrl = strReplaceToTouchEventUrl.replace("__REQUESTUUID__", c.this.P);
                        }
                        f.a("octopus", "setClickListener:" + str);
                        if (c.this.u != 0 && strReplaceToTouchEventUrl.startsWith("http://v.adintl.cn/clk")) {
                            strReplaceToTouchEventUrl = strReplaceToTouchEventUrl + "&opt=" + c.this.u;
                        }
                        new h(StringUtil.replaceClick(view, strReplaceToTouchEventUrl)).execute(new Void[0]);
                    }
                }
                c.this.D = null;
                return false;
            }
        });
        e();
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.octopus.ad.internal.nativead.c.6
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                return gestureDetector.onTouchEvent(motionEvent);
            }
        });
        view.setOnClickListener(this.M);
        new Handler(Looper.getMainLooper()).removeCallbacks(this.I);
        return true;
    }

    private boolean a(String str, Context context) {
        if (str != null && !str.isEmpty()) {
            if (!this.Z) {
                return b(str, context);
            }
            Class clsA = AdActivity.a();
            try {
                WebView webView = new WebView(new MutableContextWrapper(context));
                WebviewUtil.setWebViewSettings(webView);
                webView.loadUrl(str);
                com.octopus.ad.internal.a.a.a.add(webView);
                Intent intent = new Intent(context, (Class<?>) clsA);
                intent.setFlags(268435456);
                intent.putExtra("ACTIVITY_TYPE", "DOWNLOADBROWSER");
                context.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException unused) {
                HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(R.string.adactivity_missing, clsA.getName()));
                com.octopus.ad.internal.a.a.a.remove();
            } catch (Exception e) {
                HaoboLog.e(HaoboLog.baseLogTag, "Exception initializing the redirect webview: " + e.getMessage());
                return false;
            }
        }
        return false;
    }

    private boolean a(String str, String str2, Context context) {
        int i;
        if (TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(this.V) || this.R != 2) {
                return a(str2, context);
            }
            if (d.a(context, this.T)) {
                d.b(context, this.T);
                b.C0191b.a aVar = this.X;
                if (aVar != null) {
                    ReportEventUtil.report(aVar.a());
                }
            } else {
                File fileA = d.a(context);
                String absolutePath = fileA != null ? fileA.getAbsolutePath() : "";
                com.octopus.ad.utils.b.a(context).b(context).a(this.W).a(this.r || (i = this.u) == 8 || i == 9).a(new com.octopus.ad.utils.a(this.V, this.T + com.anythink.china.common.a.a.g, this.T, absolutePath, this.S, this.U, context.getPackageName() + ".fileprovider", this.X)).b();
            }
            return true;
        }
        try {
            if (this.X != null) {
                ReportEventUtil.report(d.a(context, this.T) ? this.X.h() : this.X.i());
            }
            Uri uri = Uri.parse(str);
            if (uri.getScheme() == null || !uri.getScheme().equals("bzopen") || TextUtils.isEmpty(uri.getHost()) || uri.getPathSegments().size() <= 0) {
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                intent.setFlags(268435456);
                if (context != null) {
                    context.startActivity(intent);
                }
            } else {
                Intent intent2 = new Intent();
                intent2.setAction("android.intent.action.MAIN");
                intent2.addCategory("android.intent.category.LAUNCHER");
                String queryParameter = uri.getQueryParameter("flags");
                if (!TextUtils.isEmpty(queryParameter)) {
                    try {
                        intent2.setFlags((queryParameter.startsWith("0x") || queryParameter.startsWith("0X")) ? Integer.parseInt(queryParameter.substring(2), 16) : Integer.parseInt(queryParameter));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                intent2.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
                String queryParameter2 = uri.getQueryParameter("rect");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    try {
                        String[] strArrSplit = queryParameter2.split(":");
                        if (strArrSplit.length == 4) {
                            Rect rect = new Rect();
                            rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                            intent2.setSourceBounds(rect);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                if (context != null) {
                    context.startActivity(intent2);
                }
            }
            f();
            b.C0191b.a aVar2 = this.X;
            if (aVar2 != null) {
                ReportEventUtil.report(aVar2.f());
            }
            return true;
        } catch (Exception unused) {
            b.C0191b.a aVar3 = this.X;
            if (aVar3 != null) {
                ReportEventUtil.report(aVar3.g());
            }
            return a(str2, context);
        }
    }

    private boolean b(String str, Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(268435456);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(R.string.opening_url_failed, str));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.G == null) {
            return;
        }
        this.q = true;
        this.r = true;
        d();
        if (com.octopus.ad.utils.g.a(this.G.getAcRatio())) {
            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.nativead.c.4
                @Override // java.lang.Runnable
                public void run() {
                    c.this.a(m.a().g());
                }
            }, new Random().nextInt(com.anythink.expressad.d.b.b) + com.anythink.expressad.d.b.b);
        }
    }

    private void d() {
        Iterator<String> it = this.C.iterator();
        while (it.hasNext()) {
            new h(it.next() + "&opt=1").executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
        }
    }

    private void e() {
        this.M = new View.OnClickListener() { // from class: com.octopus.ad.internal.nativead.c.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.a(view.getContext());
            }
        };
    }

    private void f() {
        List<b.j> listM;
        StringBuilder sb;
        b.C0191b c0191b = this.Y;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i = 0; i < listM.size(); i++) {
            b.j jVar = listM.get(i);
            if (jVar != null && !TextUtils.isEmpty(jVar.c())) {
                String strC = jVar.c();
                if (strC.startsWith("http://v.adintl.cn/deepLink")) {
                    if (this.r) {
                        sb = new StringBuilder();
                        sb.append(strC);
                        sb.append("&opt=1");
                    } else if (this.u != 0) {
                        sb = new StringBuilder();
                        sb.append(strC);
                        sb.append("&opt=");
                        sb.append(this.u);
                    }
                    strC = sb.toString();
                }
                new h(strC).execute(new Void[0]);
            }
        }
    }

    public int a() {
        return this.n;
    }

    public void a(int i) {
        this.n = i;
    }

    public void a(int i, String str, String str2) {
        List<b.j> listM;
        b.C0191b c0191b = this.Y;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listM.size(); i2++) {
            b.j jVar = listM.get(i2);
            if (jVar != null && !TextUtils.isEmpty(jVar.e())) {
                new h(UrlUtil.replaceLossUrl(jVar.e(), i, str, str2)).execute(new Void[0]);
            }
        }
    }

    public void a(final ViewGroup viewGroup) {
        a(new ImageManager.BitmapLoadedListener() { // from class: com.octopus.ad.internal.nativead.c.13
            @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
                c.this.L.onAdRenderFailed(AdRequest.ERROR_CODE_RENDER_FAIL);
            }

            @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                if (viewGroup == null) {
                    c.this.L.onAdRenderFailed(AdRequest.ERROR_CODE_RENDER_FAIL);
                    return;
                }
                FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
                frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
                ImageView imageView = new ImageView(viewGroup.getContext());
                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                imageView.setImageBitmap(bitmap);
                frameLayout.addView(imageView);
                if (c.this.s) {
                    ImageView imageView2 = new ImageView(viewGroup.getContext());
                    imageView2.setImageResource(R.drawable.oct_ic_close);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, GravityCompat.END);
                    layoutParams.setMargins(0, 5, 5, 0);
                    frameLayout.addView(imageView2, layoutParams);
                    imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.nativead.c.13.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            c.this.L.onAdClose();
                        }
                    });
                }
                viewGroup.removeAllViews();
                viewGroup.addView(frameLayout);
                c.this.a((View) viewGroup);
                c.this.a(viewGroup, new NativeAdShownListener() { // from class: com.octopus.ad.internal.nativead.c.13.2
                    @Override // com.octopus.ad.internal.nativead.NativeAdShownListener
                    public void onAdShown() {
                        if (c.this.L != null) {
                            c.this.L.onADExposed();
                        }
                    }
                });
            }
        });
    }

    public void a(b.C0191b c0191b) {
        this.Y = c0191b;
        this.X = c0191b.k();
        this.R = c0191b.c();
        this.S = c0191b.d();
        this.T = c0191b.e();
        this.U = c0191b.f();
        this.V = c0191b.g();
        this.W = c0191b.h();
        if (TextUtils.isEmpty(this.T)) {
            this.T = "octopus";
        }
        if (TextUtils.isEmpty(this.S)) {
            this.S = "Octopus";
        }
        if (TextUtils.isEmpty(this.U)) {
            this.U = "Ad Download";
        }
    }

    public void a(ServerResponse.AdLogoInfo adLogoInfo) {
        this.E = adLogoInfo;
    }

    public void a(ServerResponse serverResponse) {
        this.G = serverResponse;
    }

    public void a(String str) {
        this.P = str;
    }

    public void a(boolean z) {
        this.Z = z;
    }

    public void b() {
        if (this.G == null) {
            return;
        }
        AdViewImpl.setDpUpStrategy(m.a().g(), this.G, new AdViewImpl.d() { // from class: com.octopus.ad.internal.nativead.c.3
            @Override // com.octopus.ad.internal.view.AdViewImpl.d
            public void a(int i) {
                if (c.this.o || c.this.p || c.this.q || c.this.r || c.this.G == null) {
                    return;
                }
                SPUtils.putFrequency(m.a().g(), "liftUpfrequency" + c.this.G.getTagId(), i);
                c.this.c();
            }
        });
    }

    public void b(int i) {
        List<b.j> listM;
        b.C0191b c0191b = this.Y;
        if (c0191b == null || (listM = c0191b.m()) == null) {
            return;
        }
        for (int i2 = 0; i2 < listM.size(); i2++) {
            b.j jVar = listM.get(i2);
            if (jVar != null && !TextUtils.isEmpty(jVar.d())) {
                new h(UrlUtil.replaceWinUrl(jVar.d(), i)).execute(new Void[0]);
            }
        }
    }

    public void b(ServerResponse.AdLogoInfo adLogoInfo) {
        this.F = adLogoInfo;
    }

    public void b(String str) {
        this.h = str;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void bindUnifiedView(ViewGroup viewGroup, List<View> list, NativeAdEventListener nativeAdEventListener) {
        try {
            this.L = nativeAdEventListener;
            if (nativeAdEventListener == null) {
                return;
            }
            if (viewGroup != null) {
                a(viewGroup, list);
                a(viewGroup, new NativeAdShownListener() { // from class: com.octopus.ad.internal.nativead.c.8
                    @Override // com.octopus.ad.internal.nativead.NativeAdShownListener
                    public void onAdShown() {
                        if (c.this.L != null) {
                            c.this.L.onADExposed();
                        }
                    }
                });
            } else {
                nativeAdEventListener.onAdRenderFailed(AdRequest.ERROR_CODE_RENDER_FAIL);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            NativeAdEventListener nativeAdEventListener2 = this.L;
            if (nativeAdEventListener2 != null) {
                nativeAdEventListener2.onAdRenderFailed(AdRequest.ERROR_CODE_RENDER_FAIL);
            }
        }
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void bindView(ViewGroup viewGroup, NativeAdEventListener nativeAdEventListener) {
        int i;
        this.L = nativeAdEventListener;
        int i2 = this.t;
        if (i2 == 1) {
            i = R.layout.oct_native_text_above_img;
        } else if (i2 == 2) {
            i = R.layout.oct_native_text_below_img;
        } else if (i2 == 3) {
            i = R.layout.oct_native_text_right_img;
        } else {
            if (i2 != 4) {
                a(viewGroup);
                return;
            }
            i = R.layout.oct_native_text_left_img;
        }
        a(viewGroup, i);
    }

    public void c(String str) {
        this.i = str;
    }

    public void d(String str) {
        this.C.add(str);
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void destroy() {
        this.o = true;
        Handler handler = new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.I);
        handler.post(this.I);
    }

    public void e(String str) {
        this.D.add(str);
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getAdvertiser() {
        return this.w;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getButtonText() {
        return TextUtils.isEmpty(this.j) ? "查看详情" : this.j;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getDescription() {
        return this.c;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public Bitmap getIcon() {
        return this.g;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getIconUrl() {
        return this.e;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public Bitmap getImage() {
        return this.f;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getImageUrl() {
        return this.d;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ArrayList<String> getImageUrls() {
        return this.z;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getLandingPageUrl() {
        return this.h;
    }

    @Override // com.octopus.ad.NativeAdResponse
    @NonNull
    public Bitmap getLogo(@NonNull Context context) {
        return BitmapFactory.decodeResource(context.getResources(), R.drawable.oct_logo);
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ServerResponse.AdLogoInfo getLogoInfo() {
        return this.F;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getLogoUrl() {
        ServerResponse.AdLogoInfo adLogoInfo = this.F;
        if (adLogoInfo == null || adLogoInfo.getType() != ServerResponse.AdLogoInfo.TYPE_PIC) {
            return null;
        }
        return this.F.getAdurl();
    }

    @Override // com.octopus.ad.NativeAdResponse
    public NativeAdResponse.b getNativeAdType() {
        return this.a;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public HashMap<String, Object> getNativeElements() {
        return this.x;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public List<? extends View> getNativeInfoListView() {
        return this.H;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public NativeAdResponse.a getNetworkIdentifier() {
        return NativeAdResponse.a.OCTOPUS;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public int getPrice() {
        return this.m;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public double getStarRating() {
        return this.k;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getStore() {
        return this.l;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ArrayList<String> getTextList() {
        return this.B;
    }

    @Override // com.octopus.ad.NativeAdResponse
    @NonNull
    public Bitmap getTextLogo(@NonNull Context context) {
        return BitmapFactory.decodeResource(context.getResources(), R.drawable.oct_logo_text);
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ServerResponse.AdLogoInfo getTextLogoInfo() {
        return this.E;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getTextLogoUrl() {
        ServerResponse.AdLogoInfo adLogoInfo = this.E;
        if (adLogoInfo == null || adLogoInfo.getType() != ServerResponse.AdLogoInfo.TYPE_PIC) {
            return null;
        }
        return this.E.getAdurl();
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getTitle() {
        return this.b;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ArrayList<String> getVideoUrls() {
        return this.A;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public boolean hasExpired() {
        return this.y;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setIcon(Bitmap bitmap) {
        this.g = bitmap;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setImage(Bitmap bitmap) {
        this.f = bitmap;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setNativeInfoListView(List<? extends View> list) {
        this.H = list;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setTag(String str) {
        if ("OctopusGroup".equals(str)) {
            c();
        }
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void unregisterViews() {
        View view = this.J;
        if (view != null) {
            view.setOnClickListener(null);
        }
        List<View> list = this.K;
        if (list != null && !list.isEmpty()) {
            Iterator<View> it = this.K.iterator();
            while (it.hasNext()) {
                it.next().setOnClickListener(null);
            }
        }
        destroy();
    }
}
