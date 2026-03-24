package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.anythink.basead.ui.animplayerview.BasePlayerView;
import com.anythink.core.common.a.l;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.m;
import com.anythink.core.common.n.e;
import com.anythink.expressad.exoplayer.ad;
import com.anythink.expressad.exoplayer.d;
import com.anythink.expressad.exoplayer.f;
import com.anythink.expressad.exoplayer.h.o;
import com.anythink.expressad.exoplayer.h.s;
import com.anythink.expressad.exoplayer.i;
import com.anythink.expressad.exoplayer.i.c;
import com.anythink.expressad.exoplayer.j.q;
import com.anythink.expressad.exoplayer.l.g;
import com.anythink.expressad.exoplayer.w;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PlayerView extends BasePlayerView {
    public static final String TAG = PlayerView.class.getSimpleName();
    private String A;
    private String B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private boolean O;
    private Handler P;
    private boolean Q;
    private Thread R;
    private boolean S;
    private boolean T;
    private View U;
    private w.c V;
    private g W;
    public int a;
    private final long aa;
    private long ab;
    public int b;
    public int c;
    public boolean d;
    public String e;
    public String f;
    private ad g;
    private s y;
    private TextureView z;

    /* JADX INFO: renamed from: com.anythink.basead.ui.PlayerView$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PlayerView.this.v != null) {
                PlayerView.this.v.d();
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.PlayerView$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            while (PlayerView.this.K) {
                if (PlayerView.this.M || !PlayerView.this.isPlaying() || PlayerView.this.P == null) {
                    if (PlayerView.this.ab == 0) {
                        PlayerView.this.ab = SystemClock.elapsedRealtime();
                    }
                    try {
                        Thread.sleep(10L);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    if (SystemClock.elapsedRealtime() - PlayerView.this.ab > f.a) {
                        if (PlayerView.this.v != null) {
                            n.a().b(new Runnable() { // from class: com.anythink.basead.ui.PlayerView.3.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    PlayerView.this.a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, "Video player error!Buffer timeout"));
                                }
                            });
                        }
                        PlayerView.this.d();
                    }
                } else {
                    PlayerView.this.ab = 0L;
                    try {
                        PlayerView.this.P.sendEmptyMessage((int) PlayerView.this.g.t());
                    } catch (Throwable unused) {
                    }
                    try {
                        Thread.sleep(200L);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.PlayerView$4, reason: invalid class name */
    public class AnonymousClass4 extends w.a {
        public AnonymousClass4() {
        }

        @Override // com.anythink.expressad.exoplayer.w.a, com.anythink.expressad.exoplayer.w.c
        public final void onPlayerError(com.anythink.expressad.exoplayer.g gVar) {
            boolean z;
            long jT;
            StringBuilder sb;
            super.onPlayerError(gVar);
            String str = "Play error and ExoPlayer have not message.";
            if (gVar != null) {
                int i = gVar.d;
                z = true;
                if (i != 0) {
                    if (i == 1) {
                        str = "Play error, because have a RendererException.";
                    } else if (i == 2) {
                        str = "Play error, because have a UnexpectedException.";
                    }
                    z = false;
                } else {
                    str = "Play error, because have a SourceException.";
                }
                if (gVar.getCause() != null && !TextUtils.isEmpty(gVar.getCause().getMessage())) {
                    str = str + ",eception:" + gVar.getCause().getMessage();
                }
            } else {
                z = false;
            }
            PlayerView playerView = PlayerView.this;
            if (playerView.d && z) {
                playerView.f = str;
                String str2 = PlayerView.TAG;
                StringBuilder sb2 = new StringBuilder("ExoPlayer onPlayerError()...error:");
                sb2.append(str);
                sb2.append(",and rePrepareVideoSourceAgain");
                PlayerView playerView2 = PlayerView.this;
                playerView2.d = false;
                PlayerView.J(playerView2);
                return;
            }
            String str3 = PlayerView.TAG;
            playerView.d();
            if (PlayerView.this.v != null) {
                try {
                    jT = PlayerView.this.g.t();
                } catch (Throwable unused) {
                    jT = 0;
                }
                String str4 = jT <= 0 ? com.anythink.basead.c.f.p : com.anythink.basead.c.f.k;
                String str5 = "videoUrl:" + PlayerView.this.B + ",readyRate:" + PlayerView.this.c + ",cdRate:" + PlayerView.this.b + ",play process:" + jT;
                if (TextUtils.isEmpty(PlayerView.this.f)) {
                    sb = new StringBuilder();
                    sb.append(str5);
                    sb.append(",localFileErrorMsg:");
                } else {
                    sb = new StringBuilder();
                    sb.append(str5);
                    sb.append(",localFileErrorMsg:");
                    sb.append(PlayerView.this.f);
                    sb.append(",errorMsg:");
                }
                sb.append(str);
                String string = sb.toString();
                if (PlayerView.this.N) {
                    PlayerView.this.a(com.anythink.basead.c.f.a(str4, com.anythink.basead.c.f.D.concat(String.valueOf(string))));
                } else {
                    PlayerView.this.a(com.anythink.basead.c.f.a(str4, com.anythink.basead.c.f.L.concat(String.valueOf(string))));
                }
            }
        }

        @Override // com.anythink.expressad.exoplayer.w.a, com.anythink.expressad.exoplayer.w.c
        public final void onPlayerStateChanged(boolean z, int i) {
            super.onPlayerStateChanged(z, i);
            String str = PlayerView.TAG;
            if (i == 2) {
                if (PlayerView.this.O) {
                    return;
                }
                PlayerView.this.O = true;
                PlayerView.O(PlayerView.this);
                return;
            }
            if (i != 3) {
                if (i != 4) {
                    return;
                }
                PlayerView.this.d();
                if (PlayerView.this.M) {
                    return;
                }
                PlayerView.T(PlayerView.this);
                PlayerView playerView = PlayerView.this;
                playerView.C = playerView.D;
                if (PlayerView.this.v != null) {
                    PlayerView.this.v.c();
                }
                PlayerView.this.i();
                return;
            }
            if (!PlayerView.this.N) {
                PlayerView.P(PlayerView.this);
                PlayerView.this.O = false;
                PlayerView playerView2 = PlayerView.this;
                playerView2.D = (int) playerView2.g.s();
                if (PlayerView.this.v != null) {
                    PlayerView.this.v.b(PlayerView.this.D);
                }
                PlayerView.this.E = Math.round(r6.D * 0.25f);
                PlayerView.this.F = Math.round(r6.D * 0.5f);
                PlayerView.this.G = Math.round(r6.D * 0.75f);
                PlayerView playerView3 = PlayerView.this;
                int i2 = playerView3.c;
                if (i2 <= 0 || i2 >= 100) {
                    playerView3.T = false;
                } else {
                    if (playerView3.b > i2) {
                        playerView3.b = i2 / 2;
                    }
                    playerView3.a = Math.round(((playerView3.b * 1.0f) / 100.0f) * playerView3.D);
                    r6.a -= 2000;
                    PlayerView.this.T = true;
                }
            }
            if (PlayerView.this.C <= 0 || Math.abs(((long) PlayerView.this.C) - PlayerView.this.g.t()) <= 500) {
                return;
            }
            PlayerView.this.g.a(PlayerView.this.C);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.PlayerView$5, reason: invalid class name */
    public class AnonymousClass5 implements g {
        public AnonymousClass5() {
        }

        @Override // com.anythink.expressad.exoplayer.l.g
        public final void a() {
        }

        @Override // com.anythink.expressad.exoplayer.l.g
        public final void a(int i, int i2) {
            PlayerView playerView = PlayerView.this;
            playerView.autoFitVideoSize(i, i2, playerView.z);
        }
    }

    public static class a extends View.BaseSavedState {
        public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.anythink.basead.ui.PlayerView.a.1
            private static a a(Parcel parcel) {
                return new a(parcel);
            }

            private static a[] a(int i) {
                return new a[i];
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ a createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ a[] newArray(int i) {
                return new a[i];
            }
        };
        public int a;
        public boolean b;
        public boolean c;
        public boolean d;
        public boolean e;
        public boolean f;
        public boolean g;
        public boolean h;

        public a(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt();
            boolean[] zArr = new boolean[7];
            parcel.readBooleanArray(zArr);
            this.b = zArr[0];
            this.c = zArr[1];
            this.d = zArr[2];
            this.e = zArr[3];
            this.f = zArr[4];
            this.g = zArr[5];
            this.h = zArr[6];
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        public final String a() {
            return "SavedState(\nsavePosition - " + this.a + "\nsaveVideoPlay25 - " + this.b + "\nsaveVideoPlay50 - " + this.c + "\nsaveVideoPlay75 - " + this.d + "\nsaveIsVideoStart - " + this.e + "\nsaveIsVideoPlayCompletion - " + this.f + "\nsaveIsMute - " + this.g + "\nsaveVideoNeedResumeByCdRate - " + this.h + "\n)";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeBooleanArray(new boolean[]{this.b, this.c, this.d, this.e, this.f, this.g, this.h});
        }
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A = "";
        this.B = "";
        this.C = -1;
        this.K = false;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = false;
        this.b = 0;
        this.c = 0;
        this.d = false;
        this.e = "";
        this.f = "";
        this.aa = f.a;
        this.ab = 0L;
        setSaveEnabled(true);
        this.P = new Handler(Looper.getMainLooper()) { // from class: com.anythink.basead.ui.PlayerView.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                BasePlayerView.a aVar;
                int i;
                if (PlayerView.this.v == null) {
                    return;
                }
                PlayerView.this.C = message.what;
                if (!PlayerView.this.L && !PlayerView.this.M) {
                    PlayerView.d(PlayerView.this);
                    if (PlayerView.this.v != null) {
                        PlayerView.this.v.a();
                    }
                }
                if (PlayerView.this.v != null) {
                    PlayerView.this.v.a(PlayerView.this.C);
                }
                if (!PlayerView.this.H && PlayerView.this.C >= PlayerView.this.E) {
                    PlayerView.l(PlayerView.this);
                    if (PlayerView.this.v != null) {
                        aVar = PlayerView.this.v;
                        i = 25;
                        aVar.a(i);
                    }
                } else if (!PlayerView.this.I && PlayerView.this.C >= PlayerView.this.F) {
                    PlayerView.q(PlayerView.this);
                    if (PlayerView.this.v != null) {
                        aVar = PlayerView.this.v;
                        i = 50;
                        aVar.a(i);
                    }
                } else if (!PlayerView.this.J && PlayerView.this.C >= PlayerView.this.G) {
                    PlayerView.v(PlayerView.this);
                    if (PlayerView.this.v != null) {
                        aVar = PlayerView.this.v;
                        i = 75;
                        aVar.a(i);
                    }
                }
                if (PlayerView.this.T) {
                    int i2 = PlayerView.this.C;
                    PlayerView playerView = PlayerView.this;
                    if (i2 < playerView.a || playerView.v == null) {
                        return;
                    }
                    PlayerView.this.T = false;
                    PlayerView.this.v.g();
                }
            }
        };
        setBackgroundColor(-16777216);
    }

    public static /* synthetic */ void J(PlayerView playerView) {
        BasePlayerView.a aVar = playerView.v;
        if (aVar != null) {
            aVar.g();
        }
        playerView.g.a(playerView.y);
    }

    public static /* synthetic */ void O(PlayerView playerView) {
        View view = playerView.U;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public static /* synthetic */ boolean P(PlayerView playerView) {
        playerView.N = true;
        return true;
    }

    public static /* synthetic */ boolean T(PlayerView playerView) {
        playerView.M = true;
        return true;
    }

    private void a() {
        View view = this.U;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private void a(String str, boolean z) {
        String str2;
        String strQ;
        while (true) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (this.g == null) {
                    a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, "Player show fail with some internal error"));
                    return;
                }
                this.d = TextUtils.equals(str, this.A);
                if (TextUtils.equals(str, this.B) && this.c > 0) {
                    if (z) {
                        str2 = "AdxPlayer videoUrl:" + str + ",readyRate:" + this.c + ",maxVideoCacheSize:" + l.a().c() + ",lastRecycleCheckDownloadedFileSize:" + l.a().d() + ",isChaoDi:true,ChaoDiThrowableMsg:" + this.e;
                        strQ = n.a().q();
                    } else {
                        str2 = "AdxPlayer videoUrl:" + str + ",readyRate:" + this.c + ",maxVideoCacheSize:" + l.a().c() + ",lastRecycleCheckDownloadedFileSize:" + l.a().d();
                        strQ = n.a().q();
                    }
                    e.a("Video Play Fail:Play Network Url", str2, strQ);
                }
                Uri uri = Uri.parse(str);
                this.y = str.toLowerCase().startsWith("http") ? new o.c(new q("Anythink_ExoPlayer")).b(uri) : new o.c(new com.anythink.expressad.exoplayer.j.o(getContext(), "Anythink_ExoPlayer")).b(uri);
                this.g.a(this.z);
                this.g.a(this.y);
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                if (TextUtils.equals(str, this.B) || z) {
                    a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, th.getMessage()));
                } else {
                    this.e = th.getMessage();
                    str = this.B;
                    z = true;
                }
            }
        }
        a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, th.getMessage()));
    }

    private void a(boolean z) {
        boolean z3;
        if (new File(this.A).exists() || !TextUtils.isEmpty(this.B)) {
            this.S = true;
            z3 = false;
        } else {
            z3 = true;
        }
        if (z3) {
            a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, com.anythink.basead.c.f.K));
            return;
        }
        if (this.z == null) {
            TextureView textureView = new TextureView(getContext());
            this.z = textureView;
            textureView.setKeepScreenOn(true);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            removeAllViews();
            addView(this.z, layoutParams);
        }
        if (this.g == null) {
            this.g = i.a(new f(getContext()), new c(), new d());
            AnonymousClass4 anonymousClass4 = new AnonymousClass4();
            this.V = anonymousClass4;
            this.g.a(anonymousClass4);
            AnonymousClass5 anonymousClass5 = new AnonymousClass5();
            this.W = anonymousClass5;
            this.g.a(anonymousClass5);
            this.g.a(this.Q ? 0.0f : 1.0f);
            this.g.a(z);
            a(new File(this.A).exists() ? this.A : this.B, false);
        }
        setOnClickListener(new AnonymousClass2());
    }

    private void b() {
        View view = this.U;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private void b(boolean z) {
        if (this.g == null) {
            this.g = i.a(new f(getContext()), new c(), new d());
            AnonymousClass4 anonymousClass4 = new AnonymousClass4();
            this.V = anonymousClass4;
            this.g.a(anonymousClass4);
            AnonymousClass5 anonymousClass5 = new AnonymousClass5();
            this.W = anonymousClass5;
            this.g.a(anonymousClass5);
            this.g.a(this.Q ? 0.0f : 1.0f);
            this.g.a(z);
            a(new File(this.A).exists() ? this.A : this.B, false);
        }
    }

    private void c() {
        if (this.R != null) {
            return;
        }
        this.K = true;
        this.ab = 0L;
        Thread thread = new Thread(new AnonymousClass3());
        this.R = thread;
        thread.setName("anythink_type_player_progress");
        this.R.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.K = false;
        this.R = null;
    }

    public static /* synthetic */ boolean d(PlayerView playerView) {
        playerView.L = true;
        return true;
    }

    private boolean e() {
        if (!new File(this.A).exists() && TextUtils.isEmpty(this.B)) {
            return true;
        }
        this.S = true;
        return false;
    }

    private String f() {
        return new File(this.A).exists() ? this.A : this.B;
    }

    private void g() {
        if (this.z == null) {
            TextureView textureView = new TextureView(getContext());
            this.z = textureView;
            textureView.setKeepScreenOn(true);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            removeAllViews();
            addView(this.z, layoutParams);
        }
    }

    private void h() {
        BasePlayerView.a aVar = this.v;
        if (aVar != null) {
            aVar.g();
        }
        this.g.a(this.y);
    }

    public static /* synthetic */ boolean l(PlayerView playerView) {
        playerView.H = true;
        return true;
    }

    public static /* synthetic */ boolean q(PlayerView playerView) {
        playerView.I = true;
        return true;
    }

    public static /* synthetic */ boolean v(PlayerView playerView) {
        playerView.J = true;
        return true;
    }

    public void autoFitVideoSize(int i, int i2, View view) {
        float fMax = Math.max(i / view.getMeasuredWidth(), i2 / view.getMeasuredHeight());
        int iCeil = (int) Math.ceil(r4 / fMax);
        int iCeil2 = (int) Math.ceil(r5 / fMax);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = iCeil;
        layoutParams.height = iCeil2;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public long getCurrentPosition() {
        return Math.max(this.C, 0);
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public long getVideoLength() {
        ad adVar = this.g;
        return adVar != null ? adVar.s() : this.D;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public boolean hasVideo() {
        return this.S;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void init(com.anythink.core.common.f.l lVar, m mVar, boolean z, List<Bitmap> list) {
        super.init(lVar, mVar, z, list);
        initMuteStatus(z);
        setVideoRateConfig(lVar.o().W(), lVar.o().X());
        load(lVar.B(), false);
    }

    public void initMuteStatus(boolean z) {
        this.Q = z;
    }

    public boolean isComplete() {
        return this.M;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public boolean isMute() {
        return this.Q;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public boolean isPlaying() {
        ad adVar = this.g;
        return adVar != null && adVar.J();
    }

    public void load(String str, boolean z) {
        boolean z3;
        this.B = str;
        com.anythink.basead.a.e.a();
        this.A = com.anythink.basead.a.e.a(4, str);
        if (new File(this.A).exists() || !TextUtils.isEmpty(this.B)) {
            this.S = true;
            z3 = false;
        } else {
            z3 = true;
        }
        if (z3) {
            a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, com.anythink.basead.c.f.K));
            return;
        }
        if (this.z == null) {
            TextureView textureView = new TextureView(getContext());
            this.z = textureView;
            textureView.setKeepScreenOn(true);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            removeAllViews();
            addView(this.z, layoutParams);
        }
        if (this.g == null) {
            this.g = i.a(new f(getContext()), new c(), new d());
            AnonymousClass4 anonymousClass4 = new AnonymousClass4();
            this.V = anonymousClass4;
            this.g.a(anonymousClass4);
            AnonymousClass5 anonymousClass5 = new AnonymousClass5();
            this.W = anonymousClass5;
            this.g.a(anonymousClass5);
            this.g.a(this.Q ? 0.0f : 1.0f);
            this.g.a(z);
            a(new File(this.A).exists() ? this.A : this.B, false);
        }
        setOnClickListener(new AnonymousClass2());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        a aVar = (a) parcelable;
        new StringBuilder("onRestoreInstanceState...").append(aVar.a());
        super.onRestoreInstanceState(aVar.getSuperState());
        this.C = aVar.a;
        this.H = aVar.b;
        this.I = aVar.c;
        this.J = aVar.d;
        this.L = aVar.e;
        this.M = aVar.f;
        boolean z = aVar.g;
        this.Q = z;
        this.T = aVar.h;
        ad adVar = this.g;
        if (adVar != null) {
            adVar.a(z ? 0.0f : 1.0f);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.a = this.C;
        aVar.b = this.H;
        aVar.c = this.I;
        aVar.d = this.J;
        aVar.e = this.L;
        aVar.f = this.M;
        aVar.g = this.Q;
        aVar.h = this.T;
        new StringBuilder("onSaveInstanceState...").append(aVar.a());
        return aVar;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void pause() {
        d();
        ad adVar = this.g;
        if (adVar != null) {
            adVar.a(false);
        }
    }

    public void release() {
        d();
        i();
        ad adVar = this.g;
        if (adVar != null) {
            if (adVar.J()) {
                this.g.m();
            }
            w.c cVar = this.V;
            if (cVar != null) {
                this.g.b(cVar);
            }
            g gVar = this.W;
            if (gVar != null) {
                this.g.b(gVar);
            }
            this.g.n();
            this.g = null;
        }
        Handler handler = this.P;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.N = false;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void setListener(BasePlayerView.a aVar) {
        this.v = aVar;
    }

    public void setLoadingView(View view) {
        this.U = view;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void setMute(boolean z) {
        this.Q = z;
        if (z) {
            ad adVar = this.g;
            if (adVar != null) {
                adVar.a(0.0f);
            }
            BasePlayerView.a aVar = this.v;
            if (aVar != null) {
                aVar.e();
                return;
            }
            return;
        }
        ad adVar2 = this.g;
        if (adVar2 != null) {
            adVar2.a(1.0f);
        }
        BasePlayerView.a aVar2 = this.v;
        if (aVar2 != null) {
            aVar2.f();
        }
    }

    public void setVideoRateConfig(int i, int i2) {
        this.c = i;
        this.b = i2;
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void start() {
        View view = this.U;
        if (view != null) {
            view.setVisibility(8);
        }
        ad adVar = this.g;
        if (adVar != null) {
            adVar.a(true);
        }
        if (this.R == null) {
            this.K = true;
            this.ab = 0L;
            Thread thread = new Thread(new AnonymousClass3());
            this.R = thread;
            thread.setName("anythink_type_player_progress");
            this.R.start();
        }
    }

    @Override // com.anythink.basead.ui.animplayerview.BasePlayerView
    public void stop() {
        ad adVar = this.g;
        if (adVar != null) {
            adVar.m();
        }
        BasePlayerView.a aVar = this.v;
        if (aVar != null) {
            aVar.b();
        }
        i();
    }
}
