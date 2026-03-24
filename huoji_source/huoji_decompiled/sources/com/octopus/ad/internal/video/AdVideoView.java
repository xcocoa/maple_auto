package com.octopus.ad.internal.video;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.res.AssetFileDescriptor;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.octopus.ad.AdRequest;
import com.octopus.ad.R;
import com.octopus.ad.b.e;
import com.octopus.ad.internal.b.f;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.LoadingDialogUtil;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.UserEnvInfoUtil;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.video.a;
import com.octopus.ad.internal.view.AdViewImpl;
import com.octopus.ad.internal.view.AdWebView;
import com.octopus.ad.internal.view.InterstitialAdViewImpl;
import com.octopus.ad.internal.view.b;
import com.umeng.commonsdk.proguard.bg;
import java.io.FileDescriptor;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdVideoView extends TextureView implements MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener, b {
    public MediaPlayer a;
    public a.b b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private boolean m;
    public AdWebView mAdWebView;
    private boolean n;
    private com.octopus.ad.a.a o;
    private a p;
    private Pair<String, Integer> q;
    private long r;
    private float s;
    private float t;
    private boolean u;
    private int v;

    public enum a {
        NRF_NONE,
        NRF_START,
        NRF_PAUSE
    }

    public AdVideoView(AdWebView adWebView) {
        super(new MutableContextWrapper(adWebView.getContextFromMutableContext()));
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = false;
        this.l = -1;
        this.m = false;
        this.n = false;
        this.p = a.NRF_NONE;
        this.q = null;
        this.b = a.b.FIT_CENTER;
        this.v = 0;
        this.mAdWebView = adWebView;
    }

    private static float a(float f) {
        return f / m.a().o().density;
    }

    private static float a(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return a((float) Math.sqrt((f5 * f5) + (f6 * f6)));
    }

    private void a() {
        if (this.a != null) {
            reset();
            return;
        }
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.a = mediaPlayer;
        mediaPlayer.setOnVideoSizeChangedListener(this);
        setSurfaceTextureListener(this);
    }

    private void a(int i, int i2) {
        Matrix matrixA;
        if (i == 0 || i2 == 0 || (matrixA = new com.octopus.ad.internal.video.a(new a.c(getWidth(), getHeight()), new a.c(i, i2)).a(this.b)) == null) {
            return;
        }
        setTransform(matrixA);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void a(HashMap map) {
        a.b bVar;
        if (map.isEmpty()) {
            return;
        }
        if (map.containsKey(ServerResponse.EXTRAS_KEY_SCALE)) {
            String str = (String) map.get(ServerResponse.EXTRAS_KEY_SCALE);
            str.hashCode();
            byte b = -1;
            switch (str.hashCode()) {
                case -2092301763:
                    if (str.equals("RIGHT_TOP_CROP")) {
                        b = 0;
                    }
                    break;
                case -1943089714:
                    if (str.equals("RIGHT_BOTTOM")) {
                        b = 1;
                    }
                    break;
                case -1923874824:
                    if (str.equals("RIGHT_CENTER")) {
                        b = 2;
                    }
                    break;
                case -1792626435:
                    if (str.equals("LEFT_TOP")) {
                        b = 3;
                    }
                    break;
                case -1629510025:
                    if (str.equals("RIGHT_CENTER_CROP")) {
                        b = 4;
                    }
                    break;
                case -1130639214:
                    if (str.equals("LEFT_TOP_CROP")) {
                        b = 5;
                    }
                    break;
                case -1092027392:
                    if (str.equals("END_INSIDE")) {
                        b = 6;
                    }
                    break;
                case -1025888925:
                    if (str.equals("LEFT_BOTTOM")) {
                        b = 7;
                    }
                    break;
                case -1006674035:
                    if (str.equals("LEFT_CENTER")) {
                        b = 8;
                    }
                    break;
                case -440887238:
                    if (str.equals("CENTER_CROP")) {
                        b = 9;
                    }
                    break;
                case -438941894:
                    if (str.equals("CENTER_BOTTOM_CROP")) {
                        b = 10;
                    }
                    break;
                case -188276732:
                    if (str.equals("CENTER_TOP_CROP")) {
                        b = 11;
                    }
                    break;
                case -172377086:
                    if (str.equals("LEFT_CENTER_CROP")) {
                        b = 12;
                    }
                    break;
                case -128849043:
                    if (str.equals("FIT_END")) {
                        b = bg.k;
                    }
                    break;
                case 378209945:
                    if (str.equals("START_INSIDE")) {
                        b = bg.l;
                    }
                    break;
                case 384437857:
                    if (str.equals("RIGHT_BOTTOM_CROP")) {
                        b = bg.m;
                    }
                    break;
                case 743229044:
                    if (str.equals("FIT_START")) {
                        b = bg.n;
                    }
                    break;
                case 1093733475:
                    if (str.equals("FIT_CENTER")) {
                        b = 17;
                    }
                    break;
                case 1218764914:
                    if (str.equals("RIGHT_TOP")) {
                        b = 18;
                    }
                    break;
                case 1477882197:
                    if (str.equals("CENTER_BOTTOM")) {
                        b = 19;
                    }
                    break;
                case 1648362059:
                    if (str.equals("CENTER_TOP")) {
                        b = 20;
                    }
                    break;
                case 1677322022:
                    if (str.equals("CENTER_INSIDE")) {
                        b = 21;
                    }
                    break;
                case 1841570796:
                    if (str.equals("LEFT_BOTTOM_CROP")) {
                        b = 22;
                    }
                    break;
                case 1984282709:
                    if (str.equals("CENTER")) {
                        b = 23;
                    }
                    break;
                case 2074054159:
                    if (str.equals("FIT_XY")) {
                        b = 24;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    bVar = a.b.RIGHT_TOP_CROP;
                    break;
                case 1:
                    bVar = a.b.RIGHT_BOTTOM;
                    break;
                case 2:
                    bVar = a.b.RIGHT_CENTER;
                    break;
                case 3:
                    bVar = a.b.LEFT_TOP;
                    break;
                case 4:
                    bVar = a.b.RIGHT_CENTER_CROP;
                    break;
                case 5:
                    bVar = a.b.LEFT_TOP_CROP;
                    break;
                case 6:
                    bVar = a.b.END_INSIDE;
                    break;
                case 7:
                    bVar = a.b.LEFT_BOTTOM;
                    break;
                case 8:
                    bVar = a.b.LEFT_CENTER;
                    break;
                case 9:
                    bVar = a.b.CENTER_CROP;
                    break;
                case 10:
                    bVar = a.b.CENTER_BOTTOM_CROP;
                    break;
                case 11:
                    bVar = a.b.CENTER_TOP_CROP;
                    break;
                case 12:
                    bVar = a.b.LEFT_CENTER_CROP;
                    break;
                case 13:
                    bVar = a.b.FIT_END;
                    break;
                case 14:
                    bVar = a.b.START_INSIDE;
                    break;
                case 15:
                    bVar = a.b.RIGHT_BOTTOM_CROP;
                    break;
                case 16:
                    bVar = a.b.FIT_START;
                    break;
                case 17:
                default:
                    bVar = a.b.FIT_CENTER;
                    break;
                case 18:
                    bVar = a.b.RIGHT_TOP;
                    break;
                case 19:
                    bVar = a.b.CENTER_BOTTOM;
                    break;
                case 20:
                    bVar = a.b.CENTER_TOP;
                    break;
                case 21:
                    bVar = a.b.CENTER_INSIDE;
                    break;
                case 22:
                    bVar = a.b.LEFT_BOTTOM_CROP;
                    break;
                case 23:
                    bVar = a.b.CENTER;
                    break;
                case 24:
                    bVar = a.b.FIT_XY;
                    break;
            }
            this.b = bVar;
        }
        if (map.containsKey(ServerResponse.EXTRAS_KEY_REWARD_ITEM)) {
            String str2 = (String) map.get(ServerResponse.EXTRAS_KEY_REWARD_ITEM);
            try {
                JSONObject jSONObject = new JSONObject(str2);
                String strOptString = jSONObject.optString("type");
                this.q = !TextUtils.isEmpty(strOptString) ? Pair.create(strOptString, Integer.valueOf(jSONObject.optInt("amount"))) : Pair.create("coin", 10);
            } catch (JSONException unused) {
                HaoboLog.e(HaoboLog.jsonLogTag, "Error parse reward item: " + str2);
                this.q = Pair.create("coin", 10);
            }
        }
    }

    private void b(int i, int i2) {
        boolean z;
        if (i == 0 && i2 == 0) {
            onResume();
            z = true;
        } else {
            onPause();
            z = false;
        }
        this.m = z;
    }

    private void setDataSource(@NonNull AssetFileDescriptor assetFileDescriptor) throws IOException {
        setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        assetFileDescriptor.close();
    }

    @Override // com.octopus.ad.internal.view.b
    public void destroy() {
        stop();
        ViewUtil.removeChildFromParent(this);
    }

    @Override // com.octopus.ad.internal.view.b
    public boolean failed() {
        return this.c;
    }

    public void finishActivity() {
        AdViewImpl adViewImpl;
        AdWebView adWebView = this.mAdWebView;
        if (adWebView == null || (adViewImpl = adWebView.adViewImpl) == null) {
            return;
        }
        adViewImpl.getAdDispatcher().b();
        AdWebView adWebView2 = this.mAdWebView;
        Activity activity = adWebView2.adViewImpl.getActivity(adWebView2);
        if (activity == null || activity.isFinishing()) {
            return;
        }
        activity.finish();
    }

    public AdWebView getAdWebView() {
        return this.mAdWebView;
    }

    @Override // com.octopus.ad.internal.view.b
    public int getCreativeHeight() {
        return this.j;
    }

    public int getCreativeLeft() {
        return this.g;
    }

    public int getCreativeTop() {
        return this.h;
    }

    @Override // com.octopus.ad.internal.view.b
    public int getCreativeWidth() {
        return this.i;
    }

    public int getCurrentPosition() {
        return this.a.getCurrentPosition();
    }

    public int getDuration() {
        return this.a.getDuration();
    }

    @Override // com.octopus.ad.internal.view.b
    public int getRefreshInterval() {
        return this.k;
    }

    public int getVideoHeight() {
        return this.a.getVideoHeight();
    }

    public int getVideoWidth() {
        return this.a.getVideoWidth();
    }

    @Override // com.octopus.ad.internal.view.b
    public View getView() {
        return this;
    }

    public boolean isLooping() {
        return this.a.isLooping();
    }

    public boolean isPlaying() {
        return this.a.isPlaying();
    }

    @Override // com.octopus.ad.internal.view.b
    public void onDestroy() {
        destroy();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.a == null) {
            return;
        }
        if (isPlaying()) {
            stop();
        }
        release();
    }

    @Override // com.octopus.ad.internal.view.b
    public void onPause() {
        if (this.e || this.p != a.NRF_START) {
            return;
        }
        pause();
        com.octopus.ad.a.a aVar = this.o;
        if (aVar != null) {
            aVar.b();
        }
        this.p = a.NRF_PAUSE;
    }

    @Override // com.octopus.ad.internal.view.b
    public void onResume() {
        if (this.e || this.p != a.NRF_PAUSE) {
            return;
        }
        start(1);
        com.octopus.ad.a.a aVar = this.o;
        if (aVar != null) {
            aVar.c();
        }
        this.p = a.NRF_START;
    }

    public void onRewardVideoAdComplete() {
        AdViewImpl adViewImpl = this.mAdWebView.adViewImpl;
        if (adViewImpl == null || adViewImpl.getRewaredVideoAdListener() == null) {
            return;
        }
        this.mAdWebView.adViewImpl.getRewaredVideoAdListener().onRewardVideoAdComplete();
    }

    public void onRewardVideoAdFailedToLoad(int i) {
        AdViewImpl adViewImpl = this.mAdWebView.adViewImpl;
        if (adViewImpl != null && adViewImpl.getRewaredVideoAdListener() != null) {
            this.mAdWebView.adViewImpl.getRewaredVideoAdListener().onRewardVideoAdFailedToLoad(i);
        }
        finishActivity();
    }

    public void onRewardVideoAdReward() {
        if (this.f || this.q == null) {
            return;
        }
        this.f = true;
        com.octopus.ad.internal.b adDispatcher = this.mAdWebView.adViewImpl.getAdDispatcher();
        Pair<String, Integer> pair = this.q;
        adDispatcher.a((String) pair.first, ((Integer) pair.second).intValue());
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = new Surface(surfaceTexture);
        MediaPlayer mediaPlayer = this.a;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(surface);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        AdWebView adWebView;
        AdViewImpl adViewImpl;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = jCurrentTimeMillis - this.r;
                Log.d("octopus", "ACTION_UP:" + j);
                if (j < 1000 && this.u && (adWebView = this.mAdWebView) != null && (adViewImpl = adWebView.adViewImpl) != null && adViewImpl.getAdDispatcher() != null) {
                    AdViewImpl adViewImpl2 = this.mAdWebView.adViewImpl;
                    adViewImpl2.clickCount++;
                    adViewImpl2.getAdDispatcher().d();
                    AdWebView adWebView2 = this.mAdWebView;
                    AdViewImpl adViewImpl3 = adWebView2.adViewImpl;
                    boolean z3 = adViewImpl3.clickCount > adViewImpl3.loadCount;
                    adWebView2.ad.setOpenInNativeBrowser(adViewImpl3.getOpensNativeBrowser());
                    this.mAdWebView.ad.handleClick(this, motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "", String.valueOf(this.r), String.valueOf(jCurrentTimeMillis), z3, this.mAdWebView.adViewImpl.getAdParameters().a(), this.v);
                }
            } else if (action == 2 && this.u && a(this.s, this.t, motionEvent.getX(), motionEvent.getY()) > 15.0f) {
                this.u = false;
            }
            z = false;
        } else {
            this.r = System.currentTimeMillis();
            this.s = motionEvent.getX();
            this.t = motionEvent.getY();
            this.u = true;
            Log.d("octopus", "ACTION_DOWN");
            z = true;
        }
        return super.onTouchEvent(motionEvent) || z;
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
    }

    @Override // android.view.TextureView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        b(getWindowVisibility(), i);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        b(i, getVisibility());
    }

    public void pause() {
        MediaPlayer mediaPlayer = this.a;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
            this.mAdWebView.ad.handleOnPause(this);
        }
    }

    public void prepare() throws IllegalStateException, IOException {
        prepare(null);
    }

    public void prepare(@Nullable MediaPlayer.OnPreparedListener onPreparedListener) throws IllegalStateException, IOException {
        this.a.setOnPreparedListener(onPreparedListener);
        this.a.prepare();
    }

    public void prepareAsync() throws IllegalStateException {
        prepareAsync(null);
    }

    public void prepareAsync(@Nullable MediaPlayer.OnPreparedListener onPreparedListener) throws IllegalStateException {
        this.a.setOnPreparedListener(onPreparedListener);
        this.a.prepareAsync();
    }

    public void release() {
        reset();
        this.a.release();
        this.a = null;
    }

    public void reset() {
        this.a.reset();
    }

    public void seekTo(int i) {
        MediaPlayer mediaPlayer = this.a;
        if (mediaPlayer != null) {
            mediaPlayer.seekTo(i);
        }
    }

    public void setAssetData(@NonNull String str) throws IOException {
        setDataSource(getContext().getAssets().openFd(str));
    }

    public void setCountDownTimer(com.octopus.ad.a.a aVar) {
        this.o = aVar;
    }

    public void setCreativeLeft(int i) {
        this.g = i;
    }

    public void setCreativeTop(int i) {
        this.h = i;
    }

    public void setDataSource(@NonNull Context context, @NonNull Uri uri) throws IOException {
        a();
        this.a.setDataSource(context, uri);
    }

    public void setDataSource(@NonNull Context context, @NonNull Uri uri, @Nullable Map<String, String> map) throws IOException {
        a();
        this.a.setDataSource(context, uri, map);
    }

    public void setDataSource(@NonNull FileDescriptor fileDescriptor) throws IOException {
        a();
        this.a.setDataSource(fileDescriptor);
    }

    public void setDataSource(@NonNull FileDescriptor fileDescriptor, long j, long j2) throws IOException {
        a();
        this.a.setDataSource(fileDescriptor, j, j2);
    }

    public void setDataSource(@NonNull String str) throws IOException {
        a();
        this.a.setDataSource(str);
    }

    public void setHasFail() {
        this.c = true;
    }

    public void setLooping(boolean z) {
        MediaPlayer mediaPlayer = this.a;
        if (mediaPlayer != null) {
            mediaPlayer.setLooping(z);
        }
    }

    public void setOnCompletionListener(@Nullable MediaPlayer.OnCompletionListener onCompletionListener) {
        this.a.setOnCompletionListener(onCompletionListener);
    }

    public void setOnErrorListener(@Nullable MediaPlayer.OnErrorListener onErrorListener) {
        this.a.setOnErrorListener(onErrorListener);
    }

    public void setOnInfoListener(@Nullable MediaPlayer.OnInfoListener onInfoListener) {
        this.a.setOnInfoListener(onInfoListener);
    }

    public void setOpt(int i) {
        this.v = i;
    }

    public void setRawData(@RawRes int i) throws IOException {
        setDataSource(getResources().openRawResourceFd(i));
    }

    public void setRefreshInterval(int i) {
        this.k = i;
    }

    public void setScalableType(a.b bVar) {
        this.b = bVar;
        a(getVideoWidth(), getVideoHeight());
    }

    public void setVolume(float f, float f2) {
        MediaPlayer mediaPlayer = this.a;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f2);
        }
    }

    public void start(int i) {
        MediaPlayer mediaPlayer = this.a;
        if (mediaPlayer != null) {
            mediaPlayer.start();
            this.mAdWebView.ad.handleOnStart(this, i);
        }
    }

    public void stop() {
        MediaPlayer mediaPlayer = this.a;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
        }
    }

    public boolean toggleMute() {
        boolean z = !this.n;
        this.n = z;
        float f = z ? 0.0f : 1.0f;
        setVolume(f, f);
        return this.n;
    }

    public void transferAd(final AdWebView adWebView, String str) {
        int creativeWidth;
        if (StringUtil.isEmpty(str)) {
            return;
        }
        this.j = adWebView.getCreativeHeight();
        this.i = adWebView.getCreativeWidth();
        this.h = adWebView.getCreativeTop();
        this.g = adWebView.getCreativeLeft();
        this.k = adWebView.getRefreshInterval();
        try {
            new URI(str);
            this.b = a.b.FIT_CENTER;
            HaoboLog.v(HaoboLog.videoLogTag, HaoboLog.getString(R.string.videoview_loading, str));
            a(adWebView.getAdExtras());
            try {
                f fVarB = m.a().b();
                if (!UserEnvInfoUtil.isUsingWifi(m.a().g()) && this.mAdWebView.IsVideoWifiOnly() && !fVarB.b(str)) {
                    HaoboLog.e(HaoboLog.videoLogTag, HaoboLog.getString(R.string.wifi_video_load, str));
                    setHasFail();
                    return;
                }
                setDataSource(fVarB.a(str));
                boolean zIsMuted = adWebView.isMuted();
                this.n = zIsMuted;
                float f = zIsMuted ? 0.0f : 1.0f;
                setVolume(f, f);
                float fL = m.a().l();
                float fM = m.a().m();
                int creativeHeight = -1;
                if (getCreativeWidth() == 1 && getCreativeHeight() == 1) {
                    creativeWidth = -1;
                } else {
                    creativeHeight = (int) ((getCreativeHeight() * fM) + 0.5f);
                    creativeWidth = (int) ((getCreativeWidth() * fL) + 0.5f);
                }
                if (getCreativeLeft() == 0 && getCreativeTop() == 0) {
                    setLayoutParams(new FrameLayout.LayoutParams(creativeWidth, creativeHeight, 17));
                } else {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(creativeWidth, creativeHeight, 8388659);
                    layoutParams.setMargins((int) ((getCreativeLeft() * fL) + 0.5f), (int) ((getCreativeTop() * fM) + 0.5f), 0, 0);
                    setLayoutParams(layoutParams);
                    setScalableType(a.b.FIT_START);
                }
                setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.octopus.ad.internal.video.AdVideoView.1
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        String str2;
                        AdVideoView.this.e = true;
                        AdVideoView.this.mAdWebView.ad.handleOnCompletion();
                        if (AdVideoView.this.d) {
                            AdVideoView.this.onRewardVideoAdReward();
                            AdVideoView.this.onRewardVideoAdComplete();
                        }
                        if (AdVideoView.this.mAdWebView.loadAdBy(1)) {
                            AdViewImpl adViewImpl = adWebView.adViewImpl;
                            if (!(adViewImpl instanceof InterstitialAdViewImpl)) {
                                return;
                            }
                            if (((InterstitialAdViewImpl) adViewImpl).getAdImplementation() != null) {
                                ((com.octopus.ad.internal.a.b) ((InterstitialAdViewImpl) adWebView.adViewImpl).getAdImplementation()).g();
                                return;
                            }
                            str2 = "Error in incentive video ad adaptation model !";
                        } else {
                            str2 = "We can't go next, just stand here";
                        }
                        Log.d("octopus", str2);
                    }
                });
                setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.octopus.ad.internal.video.AdVideoView.2
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // android.media.MediaPlayer.OnInfoListener
                    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                        AdViewImpl adViewImpl;
                        if (i == 3) {
                            AdWebView adWebView2 = AdVideoView.this.mAdWebView;
                            if (adWebView2 != null && (adViewImpl = adWebView2.adViewImpl) != null && adViewImpl.getAdDispatcher() != null) {
                                if (!AdVideoView.this.d) {
                                    AdVideoView.this.d = true;
                                    if (AdVideoView.this.o == null) {
                                        AdVideoView adVideoView = AdVideoView.this;
                                        AdViewImpl adViewImpl2 = adVideoView.mAdWebView.adViewImpl;
                                        int i3 = adVideoView.l;
                                        int showCloseBtnTime = AdVideoView.this.mAdWebView.getShowCloseBtnTime();
                                        int autoCloseTime = AdVideoView.this.mAdWebView.getAutoCloseTime();
                                        AdVideoView adVideoView2 = AdVideoView.this;
                                        adViewImpl2.addCloseButton(i3, showCloseBtnTime, autoCloseTime, adVideoView2, adVideoView2.mAdWebView.ad.getAdType() == e.a.ADP_IVIDEO);
                                    }
                                    AdVideoView.this.mAdWebView.adViewImpl.getAdDispatcher().a();
                                    AdVideoView adVideoView3 = AdVideoView.this;
                                    AdWebView adWebView3 = adVideoView3.mAdWebView;
                                    adWebView3.ad.handleView(adVideoView3, adWebView3.adViewImpl.getAdParameters().a());
                                }
                                LoadingDialogUtil.getInstance().dismissLoadingDialog();
                                AdVideoView.this.mAdWebView.adViewImpl.getAdDispatcher().f();
                            }
                            if (AdVideoView.this.o != null) {
                                AdVideoView.this.o.c();
                            }
                        }
                        return false;
                    }
                });
                prepareAsync(new MediaPlayer.OnPreparedListener() { // from class: com.octopus.ad.internal.video.AdVideoView.3
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        AdVideoView adVideoView;
                        a aVar;
                        AdVideoView.this.l = mediaPlayer.getDuration() / 1000;
                        Log.d("octopus", "mPlayTime:" + AdVideoView.this.l);
                        if (AdVideoView.this.m) {
                            HaoboLog.e(HaoboLog.baseLogTag, "Video start called!");
                            AdVideoView.this.start(0);
                            adVideoView = AdVideoView.this;
                            aVar = a.NRF_START;
                        } else {
                            adVideoView = AdVideoView.this;
                            aVar = a.NRF_PAUSE;
                        }
                        adVideoView.p = aVar;
                        if (AdVideoView.this.l <= 0) {
                            AdVideoView.this.onRewardVideoAdFailedToLoad(AdRequest.ERROR_CODE_VIDEO_PLAY_FAIL);
                        }
                    }
                });
                setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.octopus.ad.internal.video.AdVideoView.4
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                        AdVideoView.this.onRewardVideoAdFailedToLoad(AdRequest.ERROR_CODE_VIDEO_PLAY_FAIL);
                        return false;
                    }
                });
            } catch (IOException | NullPointerException e) {
                HaoboLog.e(HaoboLog.videoLogTag, HaoboLog.getString(R.string.failed_video_load, str, e.getMessage()));
                setHasFail();
            }
        } catch (NullPointerException | URISyntaxException unused) {
            HaoboLog.e(HaoboLog.videoLogTag, HaoboLog.getString(R.string.invalid_video_url, str));
            setHasFail();
        }
    }

    @Override // com.octopus.ad.internal.view.b
    public void visible() {
        this.mAdWebView.setVisibility(0);
        this.mAdWebView.adViewImpl.showAdLogo(this);
        AdWebView adWebView = this.mAdWebView;
        if (adWebView == null || !adWebView.shouldDisplayButton()) {
            return;
        }
        AdWebView adWebView2 = this.mAdWebView;
        if (adWebView2.adViewImpl != null) {
            int autoCloseTime = adWebView2.getAutoCloseTime();
            int i = this.l;
            if (autoCloseTime > i) {
                AdWebView adWebView3 = this.mAdWebView;
                adWebView3.adViewImpl.addCloseButton(i, adWebView3.getShowCloseBtnTime(), this.l, this, this.mAdWebView.ad.getAdType() == e.a.ADP_IVIDEO);
            } else {
                AdWebView adWebView4 = this.mAdWebView;
                adWebView4.adViewImpl.addCloseButton(i, adWebView4.getShowCloseBtnTime(), this.mAdWebView.getAutoCloseTime(), this, this.mAdWebView.ad.getAdType() == e.a.ADP_IVIDEO);
                this.mAdWebView.adViewImpl.addMuteButton(this, this.n);
            }
        }
        AdViewImpl adViewImpl = this.mAdWebView.adViewImpl;
        if (adViewImpl != null && adViewImpl.getAdDispatcher() != null && !this.mAdWebView.adViewImpl.isRewardVideo()) {
            this.mAdWebView.adViewImpl.getAdDispatcher().a();
            AdWebView adWebView5 = this.mAdWebView;
            adWebView5.ad.handleView(this, adWebView5.adViewImpl.getAdParameters().a());
        }
        AdWebView adWebView6 = this.mAdWebView;
        AdViewImpl adViewImpl2 = adWebView6.adViewImpl;
        if (adViewImpl2 != null) {
            adViewImpl2.setAdWebView(adWebView6);
        }
    }
}
