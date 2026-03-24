package com.anythink.expressad.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.foundation.h.x;
import com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener;
import com.anythink.expressad.playercommon.PlayerView;
import com.anythink.expressad.video.dynview.f.h;
import com.anythink.expressad.video.dynview.widget.AnyThinkSegmentsProgressBar;
import com.anythink.expressad.video.dynview.widget.AnythinkBaitClickView;
import com.anythink.expressad.video.module.a.a.m;
import com.anythink.expressad.video.signal.f;
import com.anythink.expressad.video.signal.j;
import com.anythink.expressad.video.widget.SoundImageView;
import com.anythink.expressad.videocommon.b.e;
import com.anythink.expressad.videocommon.e.d;
import com.anythink.expressad.widget.FeedBackButton;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.helpers.MessageFormatter;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class AnythinkVideoView extends AnythinkBaseView implements f, j {
    private static int A = 0;
    private static int B = 0;
    private static int C = 0;
    private static final String D = "2";
    public static final String TAG = "AnythinkVideoView";
    private static boolean aw = false;
    private static final String t = "anythink_reward_videoview_item";
    private static final int u = 1;
    private static final float v = 1280.0f;
    private static final float w = 720.0f;
    private static final float x = 0.1f;
    private static int y;
    private static int z;
    private PlayerView E;
    private SoundImageView F;
    private TextView G;
    private View H;
    private RelativeLayout I;
    private ImageView J;
    private ProgressBar K;
    private FeedBackButton L;
    private boolean M;
    private AnyThinkSegmentsProgressBar N;
    private com.anythink.expressad.video.dynview.f.a O;
    private int P;
    private FrameLayout Q;
    private AnythinkClickCTAView R;
    private com.anythink.expressad.video.signal.factory.b S;
    private int T;
    private RelativeLayout U;
    private com.anythink.expressad.video.module.a.a V;
    private boolean W;
    private int aA;
    private int aB;
    private boolean aC;
    private boolean aD;
    private boolean aE;
    private boolean aF;
    private boolean aG;
    private boolean aH;
    private boolean aI;
    private boolean aJ;
    private AlphaAnimation aK;
    private AnythinkBaitClickView aL;
    private b aM;
    private boolean aN;
    private Runnable aO;
    private boolean aa;
    private String ab;
    private int ac;
    private int ad;
    private int ae;
    private int af;
    private com.anythink.expressad.widget.a.a ag;
    private com.anythink.expressad.widget.a.b ah;
    private String ai;
    private double aj;
    private double ak;
    private boolean al;
    private boolean am;
    private boolean an;
    private boolean ao;
    private boolean ap;
    private boolean aq;
    private boolean ar;
    private boolean as;
    private boolean at;
    private int au;
    private boolean av;
    private int ax;
    private String ay;
    private int az;
    public List<c> mCampOrderViewData;
    public int mCampaignSize;
    public int mCurrPlayNum;
    public int mCurrentPlayProgressTime;
    public int mMuteSwitch;
    public com.anythink.expressad.reward.player.c n;

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkVideoView$1, reason: invalid class name */
    public class AnonymousClass1 implements h {
        public final /* synthetic */ ViewGroup a;
        public final /* synthetic */ com.anythink.expressad.video.dynview.c b;

        public AnonymousClass1(ViewGroup viewGroup, com.anythink.expressad.video.dynview.c cVar) {
            this.a = viewGroup;
            this.b = cVar;
        }

        @Override // com.anythink.expressad.video.dynview.f.h
        public final void a(com.anythink.expressad.video.dynview.a aVar) {
            if (this.a != null && aVar.a() != null) {
                aVar.a().setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                this.a.addView(aVar.a());
            }
            if (aVar.b() != null) {
                Iterator<View> it = aVar.b().iterator();
                while (it.hasNext()) {
                    it.next().setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.1.1
                        @Override // com.anythink.expressad.widget.a
                        public final void a(View view) {
                            JSONObject jSONObject;
                            JSONException e;
                            if (AnythinkVideoView.this.V != null) {
                                try {
                                    jSONObject = new JSONObject();
                                } catch (JSONException e2) {
                                    jSONObject = null;
                                    e = e2;
                                }
                                try {
                                    jSONObject.put(com.anythink.expressad.foundation.g.a.ce, AnythinkVideoView.this.a(0));
                                } catch (JSONException e3) {
                                    e = e3;
                                    e.printStackTrace();
                                }
                                AnythinkVideoView.this.V.a(105, jSONObject);
                                n.a().f();
                            }
                        }
                    });
                }
            }
            AnythinkVideoView.this.aJ = aVar.c();
            AnythinkVideoView.this.b();
            boolean unused = AnythinkVideoView.aw = false;
            AnythinkVideoView.this.T = this.b.j();
        }

        @Override // com.anythink.expressad.video.dynview.f.h
        public final void a(com.anythink.expressad.video.dynview.c.b bVar) {
            new StringBuilder("errorMsg:").append(bVar.b());
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkVideoView$11, reason: invalid class name */
    public class AnonymousClass11 implements Runnable {
        public AnonymousClass11() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnythinkVideoView.p(AnythinkVideoView.this);
        }
    }

    public static class a {
        public int a;
        public int b;
        public boolean c;

        public final String toString() {
            return "ProgressData{curPlayPosition=" + this.a + ", allDuration=" + this.b + MessageFormatter.DELIM_STOP;
        }
    }

    public static final class b extends DefaultVideoPlayerStatusListener {
        private AnythinkVideoView a;
        private int b;
        private int c;
        private boolean d;
        private boolean i;
        private String j;
        private c k;
        private int l;
        private int m;
        private a e = new a();
        private boolean f = false;
        private boolean g = false;
        private boolean h = false;
        private boolean n = false;

        public b(AnythinkVideoView anythinkVideoView) {
            this.a = anythinkVideoView;
        }

        private void a(int i) {
            if (i <= 0) {
                this.a.G.setBackgroundResource(i.a(n.a().f(), "anythink_reward_shape_progress", i.c));
                return;
            }
            this.a.G.setBackgroundResource(i.a(n.a().f(), "anythink_reward_video_time_count_num_bg", i.c));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, t.b(n.a().f(), 30.0f));
            int iB = t.b(n.a().f(), 5.0f);
            layoutParams.addRule(1, i.a(n.a().f(), "anythink_native_endcard_feed_btn", "id"));
            layoutParams.setMargins(iB, 0, 0, 0);
            this.a.G.setPadding(iB, 0, iB, 0);
            this.a.G.setLayoutParams(layoutParams);
        }

        private void a(int i, int i2, int i3) {
            AnythinkVideoView anythinkVideoView = this.a;
            if (anythinkVideoView == null) {
                return;
            }
            String strValueOf = (String) anythinkVideoView.getContext().getResources().getText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_complete", i.g));
            String str = (String) this.a.getContext().getResources().getText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_left", i.g));
            if (i >= 0) {
                int i4 = i - i3;
                if (i4 > 0) {
                    strValueOf = i4 + str;
                }
            } else {
                int i5 = i2 - i3;
                if (i5 <= 0) {
                    if (i <= 0) {
                        strValueOf = "0";
                    }
                } else if (i <= 0) {
                    strValueOf = String.valueOf(i5);
                } else {
                    strValueOf = i5 + str;
                }
            }
            this.e.a = i3;
            this.a.G.setText(strValueOf);
            if (this.a.K == null || this.a.K.getVisibility() != 0) {
                return;
            }
            this.a.K.setProgress(i3);
        }

        private void b(int i) {
            AnythinkVideoView anythinkVideoView = this.a;
            if (anythinkVideoView == null || anythinkVideoView.G == null) {
                return;
            }
            String str = "anythink_reward_video_time_count_num_bg";
            if (this.k.k() == 5) {
                AnythinkVideoView anythinkVideoView2 = this.a;
                if (anythinkVideoView2.mCurrPlayNum > 1 && i <= 0) {
                    anythinkVideoView2.G.setBackgroundResource(i.a(n.a().f(), "anythink_reward_video_time_count_num_bg", i.c));
                    d();
                    return;
                }
            }
            if (i > 0) {
                d();
            } else {
                str = "anythink_reward_shape_progress";
            }
            this.a.G.setBackgroundResource(i.a(n.a().f(), str, i.c));
        }

        private void b(int i, int i2, int i3) {
            String strValueOf;
            AnythinkVideoView anythinkVideoView = this.a;
            if (anythinkVideoView == null) {
                return;
            }
            if (i > i2) {
                i = i2;
            }
            int i4 = i <= 0 ? i2 - i3 : i - i3;
            if (i4 <= 0) {
                strValueOf = i <= 0 ? "0" : (String) anythinkVideoView.getContext().getResources().getText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_complete", i.g));
            } else if (i <= 0) {
                strValueOf = String.valueOf(i4);
            } else {
                strValueOf = i4 + ((String) this.a.getContext().getResources().getText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_left", i.g)));
            }
            this.a.G.setText(strValueOf);
            if (this.a.K == null || this.a.K.getVisibility() != 0) {
                return;
            }
            this.a.K.setProgress(i3);
        }

        private c c() {
            return this.k;
        }

        private void d() {
            AnythinkVideoView anythinkVideoView = this.a;
            if (anythinkVideoView == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) anythinkVideoView.G.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = t.b(n.a().f(), 25.0f);
                this.a.G.setLayoutParams(layoutParams);
            }
            int iB = t.b(n.a().f(), 5.0f);
            this.a.G.setPadding(iB, 0, iB, 0);
        }

        public final int a() {
            return this.b;
        }

        public final void a(int i, int i2) {
            this.l = i;
            this.m = i2;
        }

        public final void a(c cVar) {
            this.k = cVar;
        }

        public final void a(String str) {
            this.j = str;
        }

        public final void a(boolean z) {
            this.i = z;
        }

        public final void b() {
            this.a = null;
            boolean unused = AnythinkVideoView.aw = false;
        }

        @Override // com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener, com.anythink.expressad.playercommon.VideoPlayerStatusListener
        public final void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                this.a.e.a(14, "");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener, com.anythink.expressad.playercommon.VideoPlayerStatusListener
        public final void onBufferingStart(String str) {
            try {
                super.onBufferingStart(str);
                this.a.e.a(13, "");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener, com.anythink.expressad.playercommon.VideoPlayerStatusListener
        public final void onPlayCompleted() {
            AnythinkVideoView anythinkVideoView;
            super.onPlayCompleted();
            AnythinkVideoView.w(this.a);
            c cVar = this.k;
            if (cVar != null) {
                if (cVar.i() > 0) {
                    this.a.G.setText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_complete", i.g));
                } else {
                    this.a.G.setText("0");
                }
                this.k.n(100);
                if (this.k.f() == 2) {
                    this.a.H.setVisibility(4);
                    if (this.a.L != null) {
                        this.a.L.setClickable(false);
                    }
                    if (this.a.F != null) {
                        this.a.F.setClickable(false);
                    }
                }
            } else {
                this.a.G.setText("0");
            }
            this.a.E.setClickable(false);
            String strB = this.a.b(true);
            c cVar2 = this.k;
            if (cVar2 != null && cVar2.k() == 5 && (anythinkVideoView = this.a) != null && anythinkVideoView.O != null) {
                AnythinkVideoView anythinkVideoView2 = this.a;
                if (anythinkVideoView2.mCampaignSize > anythinkVideoView2.mCurrPlayNum) {
                    HashMap map = new HashMap();
                    map.put(RequestParameters.POSITION, Integer.valueOf(this.a.mCurrPlayNum));
                    int i = this.a.mMuteSwitch;
                    if (i != 0) {
                        map.put("mute", Integer.valueOf(i));
                    }
                    this.a.O.a(map);
                    return;
                }
            }
            this.a.e.a(com.anythink.expressad.video.module.a.a.L, "");
            this.a.e.a(11, strB);
            int i2 = this.c;
            this.b = i2;
            this.a.mCurrentPlayProgressTime = i2;
            boolean unused = AnythinkVideoView.aw = true;
        }

        @Override // com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener, com.anythink.expressad.playercommon.VideoPlayerStatusListener
        public final void onPlayError(String str) {
            super.onPlayError(str);
            AnythinkVideoView anythinkVideoView = this.a;
            if (anythinkVideoView != null) {
                anythinkVideoView.e.a(12, str);
            }
        }

        @Override // com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener, com.anythink.expressad.playercommon.VideoPlayerStatusListener
        public final void onPlayProgress(int i, int i2) {
            int i3;
            StringBuilder sb;
            String strS;
            c cVar;
            String strValueOf;
            super.onPlayProgress(i, i2);
            if (this.a.f) {
                int i4 = 0;
                c cVar2 = this.k;
                if (cVar2 != null) {
                    i4 = cVar2.i();
                    com.anythink.expressad.foundation.f.b.a().a(this.k.K() + "_1", i);
                }
                String str = "0";
                if (this.k.j() && this.k.k() == 5) {
                    try {
                        int i5 = this.a.P;
                        AnythinkVideoView anythinkVideoView = this.a;
                        if (anythinkVideoView != null) {
                            String strValueOf2 = (String) anythinkVideoView.getContext().getResources().getText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_complete", i.g));
                            String str2 = (String) this.a.getContext().getResources().getText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_left", i.g));
                            if (i4 >= 0) {
                                int i6 = i4 - i;
                                if (i6 > 0) {
                                    strValueOf2 = i6 + str2;
                                }
                            } else {
                                int i7 = i5 - i;
                                if (i7 <= 0) {
                                    if (i4 <= 0) {
                                    }
                                    this.e.a = i;
                                    this.a.G.setText(str);
                                    if (this.a.K != null && this.a.K.getVisibility() == 0) {
                                        this.a.K.setProgress(i);
                                    }
                                } else if (i4 <= 0) {
                                    strValueOf2 = String.valueOf(i7);
                                } else {
                                    strValueOf2 = i7 + str2;
                                }
                            }
                            str = strValueOf2;
                            this.e.a = i;
                            this.a.G.setText(str);
                            if (this.a.K != null) {
                                this.a.K.setProgress(i);
                            }
                        }
                    } catch (Exception e) {
                        e.getMessage();
                    }
                } else {
                    AnythinkVideoView anythinkVideoView2 = this.a;
                    if (anythinkVideoView2 != null) {
                        if (i4 > i2) {
                            i4 = i2;
                        }
                        int i8 = i4 <= 0 ? i2 - i : i4 - i;
                        if (i8 > 0) {
                            if (i4 <= 0) {
                                strValueOf = String.valueOf(i8);
                            } else {
                                strValueOf = i8 + ((String) this.a.getContext().getResources().getText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_left", i.g)));
                            }
                            str = strValueOf;
                        } else if (i4 > 0) {
                            str = (String) anythinkVideoView2.getContext().getResources().getText(i.a(n.a().f(), "anythink_reward_video_view_reward_time_complete", i.g));
                        }
                        this.a.G.setText(str);
                        if (this.a.K != null && this.a.K.getVisibility() == 0) {
                            this.a.K.setProgress(i);
                        }
                    }
                    this.e.a = i;
                }
            }
            this.c = i2;
            AnythinkVideoView anythinkVideoView3 = this.a;
            anythinkVideoView3.mCurrentPlayProgressTime = i;
            a aVar = this.e;
            aVar.a = i;
            aVar.b = i2;
            aVar.c = anythinkVideoView3.aH;
            this.b = i;
            this.a.e.a(15, this.e);
            if (this.a.av && !this.a.aC && this.a.az == com.anythink.expressad.foundation.g.a.cs) {
                this.a.e();
            }
            try {
                AnythinkVideoView anythinkVideoView4 = this.a;
                if (anythinkVideoView4 != null && anythinkVideoView4.N != null) {
                    int i9 = (i * 100) / i2;
                    this.a.N.setProgress(i9, this.a.mCurrPlayNum - 1);
                    this.k.n(i9);
                }
                AnythinkVideoView anythinkVideoView5 = this.a;
                if (anythinkVideoView5 != null && anythinkVideoView5.T != -1 && i == this.a.T && (cVar = this.a.b) != null && cVar.j()) {
                    this.a.setCTALayoutVisibleOrGone();
                }
            } catch (Throwable th) {
                th.getMessage();
            }
            int i10 = this.l;
            if (i10 == 100 || this.n || i10 == 0) {
                return;
            }
            if (this.m > i10) {
                this.m = i10 / 2;
            }
            int i11 = this.m;
            if (i11 < 0 || i < (i3 = (i2 * i11) / 100)) {
                return;
            }
            if (this.k.w() == 94 || this.k.w() == 287) {
                sb = new StringBuilder();
                sb.append(this.k.Z());
                sb.append(this.k.aZ());
                strS = this.k.S();
            } else {
                sb = new StringBuilder();
                sb.append(this.k.aZ());
                sb.append(this.k.S());
                strS = this.k.B();
            }
            sb.append(strS);
            com.anythink.expressad.videocommon.b.c cVarA = e.a().a(this.j, sb.toString());
            if (cVarA != null) {
                cVarA.i();
                this.n = true;
                StringBuilder sb2 = new StringBuilder("CDRate is : ");
                sb2.append(i3);
                sb2.append(" and start download !");
            }
        }

        @Override // com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener, com.anythink.expressad.playercommon.VideoPlayerStatusListener
        public final void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override // com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener, com.anythink.expressad.playercommon.VideoPlayerStatusListener
        public final void onPlayStarted(int i) {
            super.onPlayStarted(i);
            if (!this.d) {
                AnythinkVideoView anythinkVideoView = this.a;
                if (anythinkVideoView != null) {
                    AnythinkVideoView.q(anythinkVideoView);
                }
                this.a.e.a(10, this.e);
                this.d = true;
            }
            c cVar = this.k;
            if (cVar != null) {
                int i2 = cVar.i();
                String str = "anythink_reward_shape_progress";
                if (this.k.j()) {
                    AnythinkVideoView anythinkVideoView2 = this.a;
                    if (anythinkVideoView2 != null && anythinkVideoView2.G != null) {
                        if (this.k.k() == 5) {
                            AnythinkVideoView anythinkVideoView3 = this.a;
                            if (anythinkVideoView3.mCurrPlayNum > 1 && i2 <= 0) {
                                anythinkVideoView3.G.setBackgroundResource(i.a(n.a().f(), "anythink_reward_video_time_count_num_bg", i.c));
                                d();
                            }
                        }
                        if (i2 > 0) {
                            d();
                            str = "anythink_reward_video_time_count_num_bg";
                        }
                        this.a.G.setBackgroundResource(i.a(n.a().f(), str, i.c));
                    }
                } else if (i2 > 0) {
                    this.a.G.setBackgroundResource(i.a(n.a().f(), "anythink_reward_video_time_count_num_bg", i.c));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, t.b(n.a().f(), 30.0f));
                    int iB = t.b(n.a().f(), 5.0f);
                    layoutParams.addRule(1, i.a(n.a().f(), "anythink_native_endcard_feed_btn", "id"));
                    layoutParams.setMargins(iB, 0, 0, 0);
                    this.a.G.setPadding(iB, 0, iB, 0);
                    this.a.G.setLayoutParams(layoutParams);
                } else {
                    this.a.G.setBackgroundResource(i.a(n.a().f(), str, i.c));
                }
            }
            if (this.a.K != null) {
                this.a.K.setMax(i);
            }
            c cVar2 = this.k;
            if (cVar2 != null && cVar2.f() == 2) {
                this.a.I.setVisibility(0);
            }
            if (this.a.G.getVisibility() == 0) {
                this.a.n();
            }
            boolean unused = AnythinkVideoView.aw = false;
            if (this.a.T == 0) {
                this.a.setCTALayoutVisibleOrGone();
            }
            this.a.showMoreOfferInPlayTemplate();
            this.a.showBaitClickView();
        }

        @Override // com.anythink.expressad.playercommon.DefaultVideoPlayerStatusListener, com.anythink.expressad.playercommon.VideoPlayerStatusListener
        public final void onVideoDownloadResume() {
            StringBuilder sb;
            String strS;
            if (this.k.w() == 94 || this.k.w() == 287) {
                sb = new StringBuilder();
                sb.append(this.k.Z());
                sb.append(this.k.aZ());
                strS = this.k.S();
            } else {
                sb = new StringBuilder();
                sb.append(this.k.aZ());
                sb.append(this.k.S());
                strS = this.k.B();
            }
            sb.append(strS);
            com.anythink.expressad.videocommon.b.c cVarA = e.a().a(this.j, sb.toString());
            if (cVarA != null) {
                cVarA.i();
                this.n = true;
            }
        }
    }

    public AnythinkVideoView(Context context) {
        super(context);
        this.mMuteSwitch = 0;
        this.P = 0;
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.W = false;
        this.aa = false;
        this.ai = "";
        this.al = false;
        this.am = false;
        this.an = false;
        this.ao = false;
        this.ap = false;
        this.aq = false;
        this.ar = false;
        this.as = false;
        this.at = false;
        this.av = false;
        this.ax = 2;
        this.aC = false;
        this.aD = false;
        this.aE = false;
        this.aF = true;
        this.aG = false;
        this.aH = false;
        this.aI = false;
        this.aJ = false;
        this.aM = new b(this);
        this.aN = false;
        this.aO = new Runnable() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.3
            @Override // java.lang.Runnable
            public final void run() {
                if (AnythinkVideoView.this.Q != null) {
                    AnythinkVideoView.this.Q.setVisibility(8);
                }
            }
        };
    }

    public AnythinkVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMuteSwitch = 0;
        this.P = 0;
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.W = false;
        this.aa = false;
        this.ai = "";
        this.al = false;
        this.am = false;
        this.an = false;
        this.ao = false;
        this.ap = false;
        this.aq = false;
        this.ar = false;
        this.as = false;
        this.at = false;
        this.av = false;
        this.ax = 2;
        this.aC = false;
        this.aD = false;
        this.aE = false;
        this.aF = true;
        this.aG = false;
        this.aH = false;
        this.aI = false;
        this.aJ = false;
        this.aM = new b(this);
        this.aN = false;
        this.aO = new Runnable() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.3
            @Override // java.lang.Runnable
            public final void run() {
                if (AnythinkVideoView.this.Q != null) {
                    AnythinkVideoView.this.Q.setVisibility(8);
                }
            }
        };
    }

    private int a(c cVar) {
        return (cVar == null || cVar.ao() == -1) ? com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.ai, false).v() : cVar.ao();
    }

    private static String a(int i, int i2) {
        if (i2 != 0) {
            double d = i / i2;
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(t.a(Double.valueOf(d)));
                return sb.toString();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return String.valueOf(i2);
    }

    private void a() {
        int iFindLayout = findLayout(t);
        if (iFindLayout > 0) {
            this.c.inflate(iFindLayout, this);
            b();
        }
        aw = false;
    }

    private void a(ViewGroup viewGroup, c cVar) {
        new com.anythink.expressad.video.dynview.j.c();
        com.anythink.expressad.video.dynview.c cVarA = com.anythink.expressad.video.dynview.j.c.a(viewGroup, cVar);
        com.anythink.expressad.video.dynview.b.a();
        com.anythink.expressad.video.dynview.b.a(cVarA, new AnonymousClass1(viewGroup, cVarA));
    }

    private void a(String str) {
        com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(str, new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.2
            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(Bitmap bitmap, String str2) {
                if (bitmap != null) {
                    try {
                        if (bitmap.isRecycled() || AnythinkVideoView.this.J == null) {
                            return;
                        }
                        AnythinkVideoView.this.J.setVisibility(0);
                        ImageView imageView = AnythinkVideoView.this.J;
                        com.anythink.expressad.video.dynview.i.b.a();
                        imageView.setImageBitmap(com.anythink.expressad.video.dynview.i.b.a(bitmap, 20));
                    } catch (Throwable th) {
                        th.getMessage();
                    }
                }
            }

            @Override // com.anythink.expressad.foundation.g.d.c
            public final void a(String str2, String str3) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(boolean z3) {
        if (!this.av) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (!this.aC) {
                jSONObject.put("Alert_window_status", com.anythink.expressad.foundation.g.a.cv);
            }
            if (this.aE) {
                jSONObject.put("Alert_window_status", com.anythink.expressad.foundation.g.a.cx);
            }
            if (this.aD) {
                jSONObject.put("Alert_window_status", com.anythink.expressad.foundation.g.a.cw);
            }
            jSONObject.put("complete_info", z3 ? 1 : 2);
            return jSONObject.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f = f();
        c();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.aK = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    private void b(int i) {
        if (i > 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(t.b(getContext(), i));
            gradientDrawable.setColor(-1);
            gradientDrawable.setStroke(1, 0);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 16) {
                setBackground(gradientDrawable);
                this.E.setBackground(gradientDrawable);
            } else {
                setBackgroundDrawable(gradientDrawable);
                this.E.setBackgroundDrawable(gradientDrawable);
            }
            if (i2 >= 21) {
                setClipToOutline(true);
                this.E.setClipToOutline(true);
            }
        }
    }

    private boolean b(int i, int i2) {
        return i > 0 && i2 > 0 && t.f(this.a) >= i && t.e(this.a) >= i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int i;
        com.anythink.expressad.video.module.a.a aVar;
        try {
            if (!this.av || ((i = this.az) != com.anythink.expressad.foundation.g.a.cr && i != com.anythink.expressad.foundation.g.a.cs)) {
                c cVar = this.b;
                if (cVar == null || cVar.f() == 2) {
                    com.anythink.expressad.video.module.a.a aVar2 = this.e;
                    if (aVar2 != null) {
                        aVar2.a(2, "");
                        return;
                    }
                    return;
                }
                int i2 = this.b.i();
                int curPosition = this.E.getCurPosition() / 1000;
                boolean z3 = false;
                if (this.b.k() != 5 || this.mCurrPlayNum <= 1 ? !((i2 <= 0 || curPosition >= i2) && i2 != 0) : !(i2 == 0 || i2 <= 0 || curPosition >= i2)) {
                    z3 = true;
                }
                if (!z3 || this.ae != 1 || this.at) {
                    com.anythink.expressad.video.module.a.a aVar3 = this.e;
                    if (aVar3 != null) {
                        aVar3.a(2, "");
                        return;
                    }
                    return;
                }
                h();
                com.anythink.expressad.video.module.a.a aVar4 = this.e;
                if (aVar4 != null) {
                    aVar4.a(8, "");
                    return;
                }
                return;
            }
            if (this.aC) {
                if (i != com.anythink.expressad.foundation.g.a.cs || (aVar = this.e) == null) {
                    return;
                }
                aVar.a(2, b(this.aG));
                return;
            }
            if (i == com.anythink.expressad.foundation.g.a.cs && this.aI) {
                com.anythink.expressad.video.module.a.a aVar5 = this.e;
                if (aVar5 != null) {
                    aVar5.a(2, b(this.aG));
                    return;
                }
                return;
            }
            if (this.aF) {
                int curPosition2 = this.E.getCurPosition() / 1000;
                int iBi = (int) ((curPosition2 / (this.E.getDuration() == 0 ? this.b.bi() : this.E.getDuration())) * 100.0f);
                if (this.az == com.anythink.expressad.foundation.g.a.cr) {
                    h();
                    int i3 = this.aA;
                    if (i3 == com.anythink.expressad.foundation.g.a.ct && iBi >= this.aB) {
                        com.anythink.expressad.video.module.a.a aVar6 = this.e;
                        if (aVar6 != null) {
                            aVar6.a(2, b(this.aG));
                            return;
                        }
                        return;
                    }
                    if (i3 == com.anythink.expressad.foundation.g.a.cu && curPosition2 >= this.aB) {
                        com.anythink.expressad.video.module.a.a aVar7 = this.e;
                        if (aVar7 != null) {
                            aVar7.a(2, b(this.aG));
                            return;
                        }
                        return;
                    }
                    com.anythink.expressad.video.module.a.a aVar8 = this.e;
                    if (aVar8 != null) {
                        aVar8.a(8, "");
                    }
                }
                if (this.az == com.anythink.expressad.foundation.g.a.cs) {
                    int i4 = this.aA;
                    if (i4 == com.anythink.expressad.foundation.g.a.ct && iBi >= this.aB) {
                        h();
                        com.anythink.expressad.video.module.a.a aVar9 = this.e;
                        if (aVar9 != null) {
                            aVar9.a(8, "");
                            return;
                        }
                        return;
                    }
                    if (i4 != com.anythink.expressad.foundation.g.a.cu || curPosition2 < this.aB) {
                        return;
                    }
                    h();
                    com.anythink.expressad.video.module.a.a aVar10 = this.e;
                    if (aVar10 != null) {
                        aVar10.a(8, "");
                    }
                }
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public static /* synthetic */ boolean e(AnythinkVideoView anythinkVideoView) {
        anythinkVideoView.aI = true;
        return true;
    }

    private boolean f() {
        try {
            this.E = (PlayerView) findViewById(filterFindViewId(this.aJ, "anythink_vfpv"));
            this.F = (SoundImageView) findViewById(filterFindViewId(this.aJ, "anythink_sound_switch"));
            this.G = (TextView) findViewById(filterFindViewId(this.aJ, "anythink_tv_count"));
            View viewFindViewById = findViewById(filterFindViewId(this.aJ, "anythink_rl_playing_close"));
            this.H = viewFindViewById;
            viewFindViewById.setVisibility(4);
            this.I = (RelativeLayout) findViewById(filterFindViewId(this.aJ, "anythink_top_control"));
            this.J = (ImageView) findViewById(filterFindViewId(this.aJ, "anythink_videoview_bg"));
            this.K = (ProgressBar) findViewById(filterFindViewId(this.aJ, "anythink_video_progress_bar"));
            this.L = (FeedBackButton) findViewById(filterFindViewId(this.aJ, "anythink_native_endcard_feed_btn"));
            this.N = (AnyThinkSegmentsProgressBar) findViewById(filterFindViewId(this.aJ, "anythink_reward_segment_progressbar"));
            this.Q = (FrameLayout) findViewById(filterFindViewId(this.aJ, "anythink_reward_cta_layout"));
            this.aL = (AnythinkBaitClickView) findViewById(filterFindViewId(this.aJ, "anythink_animation_click_view"));
            this.U = (RelativeLayout) findViewById(filterFindViewId(this.aJ, "anythink_reward_moreoffer_layout"));
            try {
                String strAE = this.b.aE();
                if (TextUtils.isEmpty(strAE)) {
                    strAE = com.anythink.expressad.a.ab;
                }
                if (!TextUtils.isEmpty(strAE)) {
                    com.anythink.expressad.foundation.g.d.b.a(this.a).a(strAE, new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.10
                        @Override // com.anythink.expressad.foundation.g.d.c
                        public final void a(Bitmap bitmap, String str) {
                            int iB = t.b(AnythinkVideoView.this.a, 12.0f);
                            ImageView imageView = new ImageView(AnythinkVideoView.this.a);
                            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                            imageView.setImageBitmap(bitmap);
                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (iB * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight())), iB);
                            layoutParams.addRule(11);
                            layoutParams.addRule(12);
                            layoutParams.bottomMargin = t.b(AnythinkVideoView.this.a, 5.0f);
                            layoutParams.rightMargin = t.b(AnythinkVideoView.this.a, 12.0f);
                            AnythinkVideoView.this.addView(imageView, layoutParams);
                        }

                        @Override // com.anythink.expressad.foundation.g.d.c
                        public final void a(String str, String str2) {
                        }
                    });
                }
            } catch (Exception e) {
                if (com.anythink.expressad.a.a) {
                    e.getLocalizedMessage();
                }
            }
            return isNotNULL(this.E, this.F, this.G, this.H);
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
    }

    private void g() {
        c cVar = this.b;
        if (cVar == null || !w.b(cVar.U())) {
            return;
        }
        String[] strArrSplit = this.b.U().split("x");
        if (strArrSplit.length == 2) {
            if (t.b(strArrSplit[0]) > 0.0d) {
                this.aj = t.b(strArrSplit[0]);
            }
            if (t.b(strArrSplit[1]) > 0.0d) {
                this.ak = t.b(strArrSplit[1]);
            }
            StringBuilder sb = new StringBuilder("AnythinkBaseView mVideoW:");
            sb.append(this.aj);
            sb.append("  mVideoH:");
            sb.append(this.ak);
        }
        if (this.aj <= 0.0d) {
            this.aj = 1280.0d;
        }
        if (this.ak <= 0.0d) {
            this.ak = 720.0d;
        }
    }

    private void h() {
        try {
            PlayerView playerView = this.E;
            if (playerView != null) {
                playerView.setIsCovered(this.aa || this.W);
                this.E.onPause();
                c cVar = this.b;
                if (cVar == null || cVar.L() == null || this.b.aw()) {
                    return;
                }
                this.b.ax();
                Context contextF = n.a().f();
                c cVar2 = this.b;
                com.anythink.expressad.a.a.a(contextF, cVar2, this.ai, cVar2.L().m(), false);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static /* synthetic */ boolean h(AnythinkVideoView anythinkVideoView) {
        anythinkVideoView.W = false;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        b bVar;
        try {
            if (this.am) {
                if (this.aa || this.W) {
                    return;
                }
                this.E.setIsCovered(false);
                this.E.onResume();
                return;
            }
            boolean zPlayVideo = this.E.playVideo();
            c cVar = this.b;
            if (cVar != null && cVar.J() != 2 && !zPlayVideo && (bVar = this.aM) != null) {
                bVar.onPlayError("play video failed");
            }
            this.am = true;
        } catch (Exception e) {
            e.getMessage();
        }
    }

    private void j() {
        if (!this.f || this.H.getVisibility() == 0) {
            return;
        }
        if (!this.i || this.M) {
            this.H.setVisibility(0);
        }
        this.ap = true;
    }

    private void k() {
        if (this.aN || this.as || this.aq) {
            return;
        }
        this.aN = true;
        int i = this.ac;
        if (i >= 0) {
            if (i == 0) {
                this.as = true;
            } else {
                new Handler().postDelayed(new AnonymousClass11(), this.ac * 1000);
            }
        }
    }

    public static /* synthetic */ boolean k(AnythinkVideoView anythinkVideoView) {
        anythinkVideoView.aD = true;
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:37|(1:39)(2:41|(1:43)(6:44|74|45|(5:49|(1:(1:53)(1:54))|(1:58)|59|(2:63|(1:65)(1:66)))|70|71))|40|74|45|(3:47|49|(4:(0)(0)|(2:56|58)|59|(3:61|63|(0)(0))(0))(0))|70|71) */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0191, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0192, code lost:
    
        r0.getMessage();
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012b A[Catch: all -> 0x0191, TryCatch #0 {all -> 0x0191, blocks: (B:45:0x0103, B:47:0x0107, B:49:0x010d, B:56:0x0146, B:58:0x0152, B:63:0x0163, B:65:0x016f, B:66:0x0179, B:53:0x012b, B:54:0x013a), top: B:74:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013a A[Catch: all -> 0x0191, TryCatch #0 {all -> 0x0191, blocks: (B:45:0x0103, B:47:0x0107, B:49:0x010d, B:56:0x0146, B:58:0x0152, B:63:0x0163, B:65:0x016f, B:66:0x0179, B:53:0x012b, B:54:0x013a), top: B:74:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0163 A[Catch: all -> 0x0191, TryCatch #0 {all -> 0x0191, blocks: (B:45:0x0103, B:47:0x0107, B:49:0x010d, B:56:0x0146, B:58:0x0152, B:63:0x0163, B:65:0x016f, B:66:0x0179, B:53:0x012b, B:54:0x013a), top: B:74:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016f A[Catch: all -> 0x0191, TryCatch #0 {all -> 0x0191, blocks: (B:45:0x0103, B:47:0x0107, B:49:0x010d, B:56:0x0146, B:58:0x0152, B:63:0x0163, B:65:0x016f, B:66:0x0179, B:53:0x012b, B:54:0x013a), top: B:74:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0179 A[Catch: all -> 0x0191, TRY_LEAVE, TryCatch #0 {all -> 0x0191, blocks: (B:45:0x0103, B:47:0x0107, B:49:0x010d, B:56:0x0146, B:58:0x0152, B:63:0x0163, B:65:0x016f, B:66:0x0179, B:53:0x012b, B:54:0x013a), top: B:74:0x0103 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void l() {
        c cVar;
        int iB;
        int iC;
        double d;
        double d2;
        float f;
        float f2 = t.f(this.a);
        float fE = t.e(this.a);
        c.C0131c c0131cM = this.b.M();
        if (c0131cM != null && ((c0131cM.c() == 1 && f2 > fE) || (c0131cM.c() == 2 && fE > f2))) {
            float f3 = f2 + fE;
            fE = f3 - fE;
            f2 = f3 - fE;
        }
        int iB2 = t.b(getContext(), 58.0f);
        int iB3 = t.b(getContext(), 104.0f);
        c cVar2 = this.b;
        if (cVar2 != null && cVar2.f() == 2) {
            int iC2 = this.b.M().c();
            if (iC2 == 1) {
                f2 -= iB2 * 2;
                fE -= iB3 * 2;
            }
            if (iC2 == 2) {
                f2 -= iB3 * 2;
                fE -= iB2 * 2;
            }
            if (iC2 == 0) {
                if (this.d == 1) {
                    f2 -= iB2 * 2;
                    f = iB3 * 2;
                } else {
                    f2 -= iB3 * 2;
                    f = iB2 * 2;
                }
                fE -= f;
            }
        }
        double d3 = this.aj;
        if (d3 > 0.0d) {
            double d4 = this.ak;
            if (d4 > 0.0d && f2 > 0.0f && fE > 0.0f) {
                double d5 = d3 / d4;
                double d6 = f2 / fE;
                StringBuilder sb = new StringBuilder("videoWHDivide:");
                sb.append(d5);
                sb.append("  screenWHDivide:");
                sb.append(d6);
                double dA = t.a(Double.valueOf(d5));
                double dA2 = t.a(Double.valueOf(d6));
                StringBuilder sb2 = new StringBuilder("videoWHDivideFinal:");
                sb2.append(dA);
                sb2.append("  screenWHDivideFinal:");
                sb2.append(dA2);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.E.getLayoutParams();
                if (dA > dA2) {
                    double d7 = (((double) f2) * this.ak) / this.aj;
                    layoutParams.width = -1;
                    layoutParams.height = (int) d7;
                } else {
                    if (dA >= dA2) {
                        layoutParams.width = -1;
                        layoutParams.height = -1;
                        cVar = this.b;
                        if (cVar != null && cVar.j()) {
                            iB = this.b.M().b();
                            iC = this.b.M().c();
                            if (iB != 102 || iB == 202) {
                                if (iC != 1) {
                                    layoutParams.width = -1;
                                    layoutParams.gravity = 17;
                                    layoutParams.height = (int) (this.ak / (this.aj / ((double) f2)));
                                } else {
                                    layoutParams.height = -1;
                                    layoutParams.gravity = 17;
                                    layoutParams.width = (int) (((double) fE) * d5);
                                }
                            }
                            if (iB == 202 && !TextUtils.isEmpty(this.b.be())) {
                                a(this.b.be());
                            }
                            if (iB != 302 || iB == 802) {
                                d = this.aj;
                                d2 = this.ak;
                                if (d / d2 <= 1.0d) {
                                    layoutParams.width = -1;
                                    layoutParams.height = (int) ((d2 * ((double) f2)) / d);
                                } else {
                                    int iB4 = t.b(getContext(), 220.0f);
                                    layoutParams.width = (int) ((this.aj * ((double) iB4)) / this.ak);
                                    layoutParams.height = iB4;
                                }
                            }
                        }
                        this.E.setLayoutParams(layoutParams);
                        setMatchParent();
                        return;
                    }
                    layoutParams.width = (int) (((double) fE) * d5);
                    layoutParams.height = -1;
                }
                layoutParams.gravity = 17;
                cVar = this.b;
                if (cVar != null) {
                    iB = this.b.M().b();
                    iC = this.b.M().c();
                    if (iB != 102) {
                        if (iC != 1) {
                        }
                        if (iB == 202) {
                            a(this.b.be());
                        }
                        if (iB != 302) {
                            d = this.aj;
                            d2 = this.ak;
                            if (d / d2 <= 1.0d) {
                            }
                        }
                    }
                }
                this.E.setLayoutParams(layoutParams);
                setMatchParent();
                return;
            }
        }
        m();
    }

    public static /* synthetic */ boolean l(AnythinkVideoView anythinkVideoView) {
        anythinkVideoView.aH = true;
        return true;
    }

    private void m() {
        try {
            setLayoutParam(0, 0, -1, -1);
            if (isLandscape() || !this.f) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.E.getLayoutParams();
            int iF = t.f(this.a);
            layoutParams.width = -1;
            layoutParams.height = (iF * 9) / 16;
            layoutParams.gravity = 17;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (!com.anythink.expressad.foundation.f.b.a().b()) {
            FeedBackButton feedBackButton = this.L;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        this.b.l(this.ai);
        com.anythink.expressad.foundation.f.b.a().a(this.ai + "_1", this.b);
        com.anythink.expressad.foundation.f.b.a().a(this.ai + "_1", this.L);
    }

    public static /* synthetic */ boolean n(AnythinkVideoView anythinkVideoView) {
        anythinkVideoView.aE = true;
        return true;
    }

    private int o() {
        return com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.ai, false).x();
    }

    private void p() {
        if (this.Q == null) {
            return;
        }
        if (this.R == null) {
            AnythinkClickCTAView anythinkClickCTAView = new AnythinkClickCTAView(getContext());
            this.R = anythinkClickCTAView;
            anythinkClickCTAView.setCampaign(this.b);
            this.R.setUnitId(this.ai);
            com.anythink.expressad.video.module.a.a aVar = this.V;
            if (aVar != null) {
                this.R.setNotifyListener(new com.anythink.expressad.video.module.a.a.i(aVar));
            }
            this.R.preLoadData(this.S);
        }
        this.Q.addView(this.R);
    }

    public static /* synthetic */ boolean p(AnythinkVideoView anythinkVideoView) {
        anythinkVideoView.as = true;
        return true;
    }

    public static /* synthetic */ boolean q(AnythinkVideoView anythinkVideoView) {
        anythinkVideoView.M = true;
        return true;
    }

    public static /* synthetic */ boolean w(AnythinkVideoView anythinkVideoView) {
        anythinkVideoView.aG = true;
        return true;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void alertWebViewShowed() {
        this.W = true;
        setShowingAlertViewCover(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        PlayerView playerView;
        View.OnClickListener onClickListener;
        SoundImageView soundImageView;
        super.c();
        if (this.f) {
            if (this.i) {
                if (com.anythink.expressad.video.dynview.i.c.a(this.b) == -1 || com.anythink.expressad.video.dynview.i.c.a(this.b) == 100) {
                    playerView = this.E;
                    onClickListener = new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            com.anythink.expressad.video.module.a.a aVar = AnythinkVideoView.this.e;
                            if (aVar != null) {
                                aVar.a(1, "");
                            }
                            AnythinkVideoView.this.setCTALayoutVisibleOrGone();
                        }
                    };
                }
                soundImageView = this.F;
                if (soundImageView != null) {
                    soundImageView.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Integer num = 2;
                            if (AnythinkVideoView.this.E != null && AnythinkVideoView.this.E.isSilent()) {
                                num = 1;
                            }
                            if (num.intValue() == 1) {
                                AnythinkVideoView.this.mMuteSwitch = 2;
                            } else {
                                AnythinkVideoView.this.mMuteSwitch = 1;
                            }
                            com.anythink.expressad.video.module.a.a aVar = AnythinkVideoView.this.e;
                            if (aVar != null) {
                                aVar.a(5, num);
                            }
                        }
                    });
                }
                this.H.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (!AnythinkVideoView.this.av) {
                            AnythinkVideoView.this.e();
                            return;
                        }
                        AnythinkVideoView.e(AnythinkVideoView.this);
                        if (AnythinkVideoView.this.aF) {
                            AnythinkVideoView.this.e();
                            return;
                        }
                        com.anythink.expressad.video.module.a.a aVar = AnythinkVideoView.this.e;
                        if (aVar != null) {
                            aVar.a(com.anythink.expressad.video.module.a.a.N, "");
                        }
                    }
                });
            }
            playerView = this.E;
            onClickListener = new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    com.anythink.expressad.video.module.a.a aVar = AnythinkVideoView.this.e;
                    if (aVar != null) {
                        aVar.a(1, "");
                    }
                }
            };
            playerView.setOnClickListener(onClickListener);
            soundImageView = this.F;
            if (soundImageView != null) {
            }
            this.H.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (!AnythinkVideoView.this.av) {
                        AnythinkVideoView.this.e();
                        return;
                    }
                    AnythinkVideoView.e(AnythinkVideoView.this);
                    if (AnythinkVideoView.this.aF) {
                        AnythinkVideoView.this.e();
                        return;
                    }
                    com.anythink.expressad.video.module.a.a aVar = AnythinkVideoView.this.e;
                    if (aVar != null) {
                        aVar.a(com.anythink.expressad.video.module.a.a.N, "");
                    }
                }
            });
        }
    }

    @Override // com.anythink.expressad.video.signal.j
    public void closeVideoOperate(int i, int i2) {
        if (i == 1) {
            this.aI = true;
            if (getVisibility() == 0) {
                e();
            }
        }
        if (i2 == 1) {
            gonePlayingCloseView();
            return;
        }
        if (i2 == 2) {
            if ((this.aH && getVisibility() == 0) || !this.f || this.H.getVisibility() == 0) {
                return;
            }
            if (!this.i || this.M) {
                this.H.setVisibility(0);
            }
            this.ap = true;
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void defaultShow() {
        super.defaultShow();
        this.al = true;
        showVideoLocation(0, 0, t.f(this.a), t.e(this.a), 0, 0, 0, 0, 0);
        videoOperate(1);
        if (this.ac == 0) {
            closeVideoOperate(-1, 2);
        }
    }

    @Override // com.anythink.expressad.video.signal.j
    public void dismissAllAlert() {
        com.anythink.expressad.widget.a.a aVar = this.ag;
        if (aVar != null) {
            aVar.dismiss();
        }
        com.anythink.expressad.video.module.a.a aVar2 = this.e;
        if (aVar2 != null) {
            aVar2.a(125, "");
        }
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewHeight() {
        return C;
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewLeft() {
        return A;
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewRadius() {
        return y;
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewTop() {
        return z;
    }

    @Override // com.anythink.expressad.video.signal.j
    public int getBorderViewWidth() {
        return B;
    }

    public int getCloseAlert() {
        return this.ae;
    }

    @Override // com.anythink.expressad.video.signal.j
    public String getCurrentProgress() {
        try {
            int iA = this.aM.a();
            c cVar = this.b;
            int iBi = cVar != null ? cVar.bi() : 0;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_PROGRESS, a(iA, iBi));
            jSONObject.put("time", iA);
            jSONObject.put("duration", String.valueOf(iBi));
            return jSONObject.toString();
        } catch (Throwable th) {
            th.getMessage();
            return MessageFormatter.DELIM_STR;
        }
    }

    public int getMute() {
        return this.ax;
    }

    public String getUnitId() {
        return this.ai;
    }

    public int getVideoSkipTime() {
        return this.ac;
    }

    public void gonePlayingCloseView() {
        if (this.f && this.H.getVisibility() != 8) {
            this.H.setVisibility(8);
            this.ap = false;
        }
        if (this.aN || this.as || this.aq) {
            return;
        }
        this.aN = true;
        int i = this.ac;
        if (i >= 0) {
            if (i == 0) {
                this.as = true;
            } else {
                new Handler().postDelayed(new AnonymousClass11(), this.ac * 1000);
            }
        }
    }

    @Override // com.anythink.expressad.video.signal.j
    public void hideAlertView(int i) {
        if (this.W) {
            this.W = false;
            this.aC = true;
            setShowingAlertViewCover(false);
            com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.ai, false);
            if (i == 0) {
                i();
                if (this.av) {
                    int i2 = this.az;
                    if (i2 == com.anythink.expressad.foundation.g.a.cs || i2 == com.anythink.expressad.foundation.g.a.cr) {
                        this.aD = true;
                        com.anythink.expressad.video.module.a.a aVar = this.e;
                        if (aVar != null) {
                            aVar.a(com.anythink.expressad.video.module.a.a.O, "");
                        }
                        this.aH = true;
                        gonePlayingCloseView();
                        return;
                    }
                    return;
                }
                return;
            }
            this.aE = true;
            boolean z3 = this.av;
            if (z3 && this.az == com.anythink.expressad.foundation.g.a.cs) {
                i();
                return;
            }
            if (z3 && this.az == com.anythink.expressad.foundation.g.a.cr) {
                com.anythink.expressad.video.module.a.a aVar2 = this.e;
                if (aVar2 != null) {
                    aVar2.a(2, b(this.aG));
                    return;
                }
                return;
            }
            com.anythink.expressad.video.module.a.a aVar3 = this.e;
            if (aVar3 != null) {
                aVar3.a(2, "");
            }
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void init(Context context) {
    }

    @Override // com.anythink.expressad.video.signal.j
    public boolean isH5Canvas() {
        return getLayoutParams().height < t.e(this.a.getApplicationContext());
    }

    public boolean isInstallDialogShowing() {
        return this.aa;
    }

    public boolean isMiniCardShowing() {
        return this.ao;
    }

    public boolean isShowingAlertView() {
        return this.W;
    }

    public boolean isShowingTransparent() {
        return this.at;
    }

    public boolean isfront() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return false;
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int childCount = viewGroup.getChildCount();
        int i = iIndexOfChild + 1;
        boolean z3 = false;
        while (i <= childCount - 1) {
            if (viewGroup.getChildAt(i).getVisibility() == 0 && this.ao) {
                return false;
            }
            i++;
            z3 = true;
        }
        return z3;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void notifyCloseBtn(int i) {
        if (i == 0) {
            this.aq = true;
            this.as = false;
        } else if (i == 1) {
            this.ar = true;
        }
    }

    public void notifyVideoClose() {
        this.e.a(2, "");
    }

    public void onBackPress() {
        if (this.ao || this.W || this.aD) {
            return;
        }
        if (this.ap) {
            e();
            return;
        }
        boolean z3 = this.aq;
        if (z3 && this.ar) {
            e();
        } else {
            if (z3 || !this.as) {
                return;
            }
            e();
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c cVar = this.b;
        if ((cVar == null || !cVar.j()) && this.f && this.al) {
            l();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            if (this.aO != null) {
                getHandler().removeCallbacks(this.aO);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.f
    public void preLoadData(com.anythink.expressad.video.signal.factory.b bVar) {
        c cVar;
        this.S = bVar;
        if (!this.f) {
            com.anythink.expressad.video.module.a.a aVar = this.e;
            if (aVar != null) {
                aVar.a(12, "AnyThinkVideoView initSuccess false");
            }
        } else if (!TextUtils.isEmpty(this.ab) && (cVar = this.b) != null) {
            if (cVar != null && w.b(cVar.U())) {
                String[] strArrSplit = this.b.U().split("x");
                if (strArrSplit.length == 2) {
                    if (t.b(strArrSplit[0]) > 0.0d) {
                        this.aj = t.b(strArrSplit[0]);
                    }
                    if (t.b(strArrSplit[1]) > 0.0d) {
                        this.ak = t.b(strArrSplit[1]);
                    }
                    StringBuilder sb = new StringBuilder("AnythinkBaseView mVideoW:");
                    sb.append(this.aj);
                    sb.append("  mVideoH:");
                    sb.append(this.ak);
                }
                if (this.aj <= 0.0d) {
                    this.aj = 1280.0d;
                }
                if (this.ak <= 0.0d) {
                    this.ak = 720.0d;
                }
            }
            com.anythink.expressad.reward.player.c cVar2 = this.n;
            if (cVar2 != null) {
                cVar2.c();
            }
            this.E.setTempEventListener(this.n);
            this.E.initBufferIngParam(this.ad);
            this.E.initVFPData(this.ab, this.b.S(), this.b.ao(), this.aM);
            soundOperate(this.ax, -1, null);
        }
        aw = false;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void progressBarOperate(int i) {
        ProgressBar progressBar;
        if (this.f) {
            if (i == 1) {
                ProgressBar progressBar2 = this.K;
                if (progressBar2 != null) {
                    progressBar2.setVisibility(8);
                    return;
                }
                return;
            }
            if (i != 2 || (progressBar = this.K) == null) {
                return;
            }
            progressBar.setVisibility(0);
        }
    }

    @Override // com.anythink.expressad.video.signal.j
    public void progressOperate(int i, int i2) {
        PlayerView playerView;
        if (this.f) {
            c cVar = this.b;
            int iBi = cVar != null ? cVar.bi() : 0;
            if (i > 0 && i <= iBi && (playerView = this.E) != null) {
                playerView.seekTo(i * 1000);
            }
            if (i2 == 1) {
                this.G.setVisibility(8);
            } else if (i2 == 2) {
                this.G.setVisibility(0);
            }
            if (this.G.getVisibility() == 0) {
                n();
            }
        }
    }

    public void releasePlayer() {
        try {
            PlayerView playerView = this.E;
            if (playerView != null && !this.an) {
                playerView.release();
            }
            b bVar = this.aM;
            if (bVar != null) {
                bVar.b();
            }
            if (this.V != null) {
                this.V = null;
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void setBufferTimeout(int i) {
        this.ad = i;
    }

    public void setCTALayoutVisibleOrGone() {
        FrameLayout frameLayout;
        c cVar = this.b;
        if (cVar != null && cVar.j() && (frameLayout = this.Q) != null && this.T >= -1) {
            AnythinkClickCTAView anythinkClickCTAView = this.R;
            if (anythinkClickCTAView == null && frameLayout != null) {
                if (anythinkClickCTAView == null) {
                    AnythinkClickCTAView anythinkClickCTAView2 = new AnythinkClickCTAView(getContext());
                    this.R = anythinkClickCTAView2;
                    anythinkClickCTAView2.setCampaign(this.b);
                    this.R.setUnitId(this.ai);
                    com.anythink.expressad.video.module.a.a aVar = this.V;
                    if (aVar != null) {
                        this.R.setNotifyListener(new com.anythink.expressad.video.module.a.a.i(aVar));
                    }
                    this.R.preLoadData(this.S);
                }
                this.Q.addView(this.R);
            }
            int i = this.T;
            if (i >= 0) {
                this.Q.setVisibility(0);
                return;
            }
            if (i == -1) {
                if (this.Q.getVisibility() != 0) {
                    this.Q.setVisibility(0);
                    postDelayed(this.aO, m.ag);
                } else {
                    this.Q.setVisibility(8);
                    getHandler().removeCallbacks(this.aO);
                }
            }
        }
    }

    public void setCamPlayOrderCallback(com.anythink.expressad.video.dynview.f.a aVar, List<c> list, int i, int i2) {
        AnyThinkSegmentsProgressBar anyThinkSegmentsProgressBar;
        this.O = aVar;
        this.mCampaignSize = list.size();
        this.mCurrPlayNum = i;
        this.P = i2;
        this.mCampOrderViewData = list;
        c cVar = this.b;
        if (cVar == null || cVar.k() != 5 || (anyThinkSegmentsProgressBar = this.N) == null || this.mCampOrderViewData == null) {
            return;
        }
        if (this.mCampaignSize <= 1) {
            anyThinkSegmentsProgressBar.setVisibility(8);
            return;
        }
        anyThinkSegmentsProgressBar.setVisibility(0);
        this.N.init(this.mCampaignSize, 2);
        for (int i3 = 0; i3 < this.mCampOrderViewData.size(); i3++) {
            int iAF = this.mCampOrderViewData.get(i3).aF();
            if (iAF > 0) {
                this.N.setProgress(iAF, i3);
            }
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void setCampaign(c cVar) {
        super.setCampaign(cVar);
        b bVar = this.aM;
        if (bVar != null) {
            bVar.a(cVar);
            this.aM.a((cVar == null || cVar.ao() == -1) ? com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.ai, false).v() : cVar.ao(), com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.ai, false).x());
        }
    }

    public void setCloseAlert(int i) {
        this.ae = i;
    }

    public void setContainerViewOnNotifyListener(com.anythink.expressad.video.module.a.a aVar) {
        this.V = aVar;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setCover(boolean z3) {
        if (this.f) {
            this.E.setIsCovered(z3);
        }
    }

    public void setDialogRole(int i) {
        this.aF = i == 1;
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append(o4.OooO00o.OooO0Oo);
        sb.append(this.aF);
    }

    public void setIVRewardEnable(int i, int i2, int i3) {
        this.az = i;
        this.aA = i2;
        this.aB = i3;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setInstallDialogState(boolean z3) {
        this.aa = z3;
        this.E.setIsCovered(z3);
    }

    public void setIsIV(boolean z3) {
        this.av = z3;
        b bVar = this.aM;
        if (bVar != null) {
            bVar.a(z3);
        }
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setMiniEndCardState(boolean z3) {
        this.ao = z3;
    }

    public void setNotchPadding(final int i, final int i2, final int i3, final int i4) {
        RelativeLayout relativeLayout;
        try {
            new StringBuilder("NOTCH VideoView ").append(String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            if (!(Math.max(Math.max(layoutParams.leftMargin, layoutParams.rightMargin), Math.max(layoutParams.topMargin, layoutParams.bottomMargin)) > Math.max(Math.max(i, i2), Math.max(i3, i4))) && (relativeLayout = this.I) != null) {
                relativeLayout.postDelayed(new Runnable() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (AnythinkVideoView.this.I == null) {
                            return;
                        }
                        AnythinkVideoView.this.I.setVisibility(0);
                        c cVar = AnythinkVideoView.this.b;
                        if (cVar != null && !cVar.j() && AnythinkVideoView.this.b.f() != 2) {
                            AnythinkVideoView.this.I.setPadding(i, i3, i2, i4);
                            AnythinkVideoView.this.I.startAnimation(AnythinkVideoView.this.aK);
                        }
                        AnythinkVideoView.this.I.setVisibility(0);
                    }
                }, 200L);
            }
            if (this.G.getVisibility() == 0) {
                n();
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void setPlayURL(String str) {
        this.ab = str;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setScaleFitXY(int i) {
        this.au = i;
    }

    public void setShowingAlertViewCover(boolean z3) {
        this.E.setIsCovered(z3);
    }

    public void setShowingTransparent(boolean z3) {
        this.at = z3;
    }

    public void setSoundState(int i) {
        this.ax = i;
    }

    public void setTempEventListener(com.anythink.expressad.reward.player.c cVar) {
        this.n = cVar;
    }

    public void setUnitId(String str) {
        this.ai = str;
        b bVar = this.aM;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    public void setVideoLayout(c cVar) {
        if (cVar != null) {
            this.b = cVar;
            this.i = cVar.j();
        }
        if (this.i) {
            new com.anythink.expressad.video.dynview.j.c();
            com.anythink.expressad.video.dynview.c cVarA = com.anythink.expressad.video.dynview.j.c.a(this, cVar);
            com.anythink.expressad.video.dynview.b.a();
            com.anythink.expressad.video.dynview.b.a(cVarA, new AnonymousClass1(this, cVarA));
            return;
        }
        int iFindLayout = findLayout(t);
        if (iFindLayout > 0) {
            this.c.inflate(iFindLayout, this);
            b();
        }
        aw = false;
    }

    public void setVideoSkipTime(int i) {
        this.ac = i;
    }

    @Override // com.anythink.expressad.video.signal.j
    public void setVisible(int i) {
        setVisibility(i);
    }

    @Override // com.anythink.expressad.video.signal.j
    public void showAlertView() {
        if (this.ao) {
            return;
        }
        if (this.ah == null) {
            this.ah = new com.anythink.expressad.widget.a.b() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.9
                @Override // com.anythink.expressad.widget.a.b
                public final void a() {
                    AnythinkVideoView.h(AnythinkVideoView.this);
                    AnythinkVideoView anythinkVideoView = AnythinkVideoView.this;
                    anythinkVideoView.setShowingAlertViewCover(anythinkVideoView.W);
                    if (AnythinkVideoView.this.av && (AnythinkVideoView.this.az == com.anythink.expressad.foundation.g.a.cs || AnythinkVideoView.this.az == com.anythink.expressad.foundation.g.a.cr)) {
                        AnythinkVideoView.k(AnythinkVideoView.this);
                        com.anythink.expressad.video.module.a.a aVar = AnythinkVideoView.this.e;
                        if (aVar != null) {
                            aVar.a(com.anythink.expressad.video.module.a.a.O, "");
                        }
                        AnythinkVideoView.l(AnythinkVideoView.this);
                        AnythinkVideoView.this.gonePlayingCloseView();
                    }
                    AnythinkVideoView.this.i();
                }

                @Override // com.anythink.expressad.widget.a.b
                public final void b() {
                    AnythinkVideoView.h(AnythinkVideoView.this);
                    AnythinkVideoView.n(AnythinkVideoView.this);
                    AnythinkVideoView anythinkVideoView = AnythinkVideoView.this;
                    anythinkVideoView.setShowingAlertViewCover(anythinkVideoView.W);
                    if (AnythinkVideoView.this.av && AnythinkVideoView.this.az == com.anythink.expressad.foundation.g.a.cr) {
                        AnythinkVideoView anythinkVideoView2 = AnythinkVideoView.this;
                        com.anythink.expressad.video.module.a.a aVar = anythinkVideoView2.e;
                        if (aVar != null) {
                            aVar.a(2, anythinkVideoView2.b(anythinkVideoView2.aG));
                            return;
                        }
                        return;
                    }
                    if (AnythinkVideoView.this.av && AnythinkVideoView.this.az == com.anythink.expressad.foundation.g.a.cs) {
                        AnythinkVideoView.this.i();
                        return;
                    }
                    com.anythink.expressad.video.module.a.a aVar2 = AnythinkVideoView.this.e;
                    if (aVar2 != null) {
                        aVar2.a(2, "");
                    }
                }

                @Override // com.anythink.expressad.widget.a.b
                public final void c() {
                    a();
                }
            };
        }
        if (this.ag == null) {
            this.ag = new com.anythink.expressad.widget.a.a(getContext(), this.ah);
        }
        if (this.av) {
            this.ag.a(this.az, this.ai);
        } else {
            this.ag.b();
        }
        PlayerView playerView = this.E;
        if (playerView == null || playerView.isComplete()) {
            return;
        }
        this.ag.show();
        this.aC = true;
        this.W = true;
        setShowingAlertViewCover(true);
        com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.ai, false);
        this.ay = d.J();
    }

    public void showBaitClickView() {
        int i;
        AnythinkBaitClickView anythinkBaitClickView;
        c cVar = this.b;
        if (cVar == null || !cVar.j() || this.b.M() == null) {
            return;
        }
        String strE = this.b.M().e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = x.a(strE, "bait_click");
            if (TextUtils.isEmpty(strA) || (i = Integer.parseInt(strA)) == 0 || (anythinkBaitClickView = this.aL) == null) {
                return;
            }
            anythinkBaitClickView.setVisibility(0);
            this.aL.init(i);
            this.aL.startAnimation();
            this.aL.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkVideoView.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    com.anythink.expressad.video.module.a.a aVar = AnythinkVideoView.this.e;
                    if (aVar != null) {
                        aVar.a(1, "");
                    }
                }
            });
        } catch (Exception e) {
            e.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.j
    public void showIVRewardAlertView(String str) {
        this.e.a(8, "");
    }

    public void showMoreOfferInPlayTemplate() {
        c cVar = this.b;
        if (cVar == null || this.U == null || !cVar.j() || this.b.M() == null) {
            return;
        }
        TextUtils.isEmpty(this.b.M().e());
    }

    @Override // com.anythink.expressad.video.signal.j
    public void showVideoLocation(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        StringBuilder sb = new StringBuilder("showVideoLocation marginTop:");
        sb.append(i);
        sb.append(" marginLeft:");
        sb.append(i2);
        sb.append(" width:");
        sb.append(i3);
        sb.append("  height:");
        sb.append(i4);
        sb.append(" radius:");
        sb.append(i5);
        sb.append(" borderTop:");
        sb.append(i6);
        sb.append(" borderLeft:");
        sb.append(i7);
        sb.append(" borderWidth:");
        sb.append(i8);
        sb.append(" borderHeight:");
        sb.append(i9);
        if (this.f) {
            this.I.setPadding(0, 0, 0, 0);
            setVisibility(0);
            if (this.I.getVisibility() != 0) {
                this.I.setVisibility(0);
            }
            if (this.G.getVisibility() == 0) {
                n();
            }
            if (!(i3 > 0 && i4 > 0 && t.f(this.a) >= i3 && t.e(this.a) >= i4) || this.al) {
                l();
                return;
            }
            z = i6;
            A = i7;
            B = i8 + 4;
            C = i9 + 4;
            float f = i3 / i4;
            float f2 = 0.0f;
            try {
                f2 = (float) (this.aj / this.ak);
            } catch (Throwable th) {
                th.getMessage();
            }
            if (i5 > 0) {
                y = i5;
                if (i5 > 0) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(t.b(getContext(), i5));
                    gradientDrawable.setColor(-1);
                    gradientDrawable.setStroke(1, 0);
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 16) {
                        setBackground(gradientDrawable);
                        this.E.setBackground(gradientDrawable);
                    } else {
                        setBackgroundDrawable(gradientDrawable);
                        this.E.setBackgroundDrawable(gradientDrawable);
                    }
                    if (i10 >= 21) {
                        setClipToOutline(true);
                        this.E.setClipToOutline(true);
                    }
                }
            }
            if (Math.abs(f - f2) > 0.1f && this.au != 1) {
                l();
                videoOperate(1);
                return;
            }
            l();
            if (!this.at) {
                setLayoutParam(i2, i, i3, i4);
                return;
            }
            setLayoutCenter(i3, i4);
            if (aw) {
                this.e.a(114, "");
            } else {
                this.e.a(116, "");
            }
        }
    }

    @Override // com.anythink.expressad.video.signal.j
    public void soundOperate(int i, int i2) {
        soundOperate(i, i2, "2");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0034 A[PHI: r6
      0x0034: PHI (r6v6 com.anythink.expressad.video.widget.SoundImageView) = (r6v4 com.anythink.expressad.video.widget.SoundImageView), (r6v7 com.anythink.expressad.video.widget.SoundImageView) binds: [B:28:0x0048, B:20:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.anythink.expressad.video.signal.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void soundOperate(int i, int i2, String str) {
        com.anythink.expressad.video.module.a.a aVar;
        SoundImageView soundImageView;
        if (this.f) {
            this.ax = i;
            if (i == 1) {
                SoundImageView soundImageView2 = this.F;
                if (soundImageView2 != null) {
                    soundImageView2.setSoundStatus(false);
                }
                this.E.closeSound();
            } else if (i == 2) {
                SoundImageView soundImageView3 = this.F;
                if (soundImageView3 != null) {
                    soundImageView3.setSoundStatus(true);
                }
                this.E.openSound();
            }
            c cVar = this.b;
            if (cVar != null && cVar.j()) {
                soundImageView = this.F;
                if (soundImageView != null) {
                }
            } else if (i2 == 1) {
                SoundImageView soundImageView4 = this.F;
                if (soundImageView4 != null) {
                    soundImageView4.setVisibility(8);
                }
            } else if (i2 == 2 && (soundImageView = this.F) != null) {
                soundImageView.setVisibility(0);
            }
        }
        if (str == null || !str.equals("2") || (aVar = this.e) == null) {
            return;
        }
        aVar.a(7, Integer.valueOf(i));
    }

    @Override // com.anythink.expressad.video.signal.j
    public void videoOperate(int i) {
        if (this.f) {
            if (i == 1) {
                if (getVisibility() != 0 || !isfront() || this.W || this.ao || this.aa || com.anythink.expressad.foundation.f.b.c) {
                    return;
                }
                i();
                return;
            }
            if (i == 2) {
                if (getVisibility() == 0) {
                    h();
                    return;
                }
                return;
            }
            if (i == 3) {
                if (this.an) {
                    return;
                }
                this.E.release();
                this.an = true;
                return;
            }
            if (i == 5) {
                this.aa = true;
                if (this.an) {
                    return;
                }
                h();
                return;
            }
            if (i == 4) {
                this.aa = false;
                if (this.an || isMiniCardShowing()) {
                    return;
                }
                i();
            }
        }
    }
}
