package cn.haorui.sdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import cn.haorui.sdk.R;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.LogUtil;
import java.text.DecimalFormat;
import java.util.Locale;
import z2.o000;

/* JADX INFO: loaded from: classes.dex */
public class HRDetailActivity extends AppCompatActivity {
    public static final String EXTRA_APP_NAME = "EXTRA_APP_NAME";
    public static final String EXTRA_COMMENTS = "EXTRA_COMMENTS";
    public static final String EXTRA_CONTENT = "EXTRA_CONTENT";
    public static final String EXTRA_DOWN_NUM = "EXTRA_DOWN_NUM";
    public static final String EXTRA_DURL = "EXTRA_DURL";
    public static final String EXTRA_ICON_URL = "EXTRA_ICON_URL";
    public static final String EXTRA_INTERACTION_TYPE = "EXTRA_INTERACTION_TYPE";
    public static final String EXTRA_SCORE = "EXTRA_SCORE";
    public static final String EXTRA_VIDEO_HEIGHT = "EXTRA_VIDEO_HEIGHT";
    public static final String EXTRA_VIDEO_WIDTH = "EXTRA_VIDEO_WIDTH";
    private static NormalMediaView normalMediaView;
    private boolean isFinished;
    private int textureHeight;
    private int textureWidth;
    private NormalMediaView thisNormalMediaView;
    private WebView webView;
    private final String TAG = getClass().getSimpleName();
    private o000 aQuery = new o000((Activity) this);
    private MediaPlayer.OnInfoListener onInfoListener = new MediaPlayer.OnInfoListener() { // from class: cn.haorui.sdk.activity.HRDetailActivity.4
        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            if (i == 701) {
                HRDetailActivity.this.aQuery.o00oO0o(R.id.adsail_progress_loading).o000o00();
                return true;
            }
            if (i != 702) {
                return true;
            }
            HRDetailActivity.this.aQuery.o00oO0o(R.id.adsail_progress_loading).o00Ooo();
            return true;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoFinish() {
        this.isFinished = true;
        finish();
    }

    private void loadAppDetail(String str, String str2, String str3, float f, int i, int i2) {
        o000 o000Var;
        int i3;
        if (TextUtils.isEmpty(str)) {
            this.aQuery.o00oO0o(R.id.adsail_layout_app_detail_info).o00Ooo();
            if (TextUtils.isEmpty(str3)) {
                o000Var = this.aQuery;
                i3 = R.id.adsail_img_icon;
                o000Var.o00oO0o(i3).o00Ooo();
            } else {
                this.aQuery.o00oO0o(R.id.adsail_img_icon).o000000(str3);
            }
        } else {
            this.aQuery.o00oO0o(R.id.adsail_text_title).o000Oo00(str);
            if (TextUtils.isEmpty(str2)) {
                this.aQuery.o00oO0o(R.id.adsail_text_content).o00Ooo();
            } else {
                this.aQuery.o00oO0o(R.id.adsail_text_content).o000Oo00(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                this.aQuery.o00oO0o(R.id.adsail_img_icon).o000000(str3);
            }
            if (f > 0.0f) {
                this.aQuery.o00oO0o(R.id.adsail_text_rank).o000Oo00(String.format(Locale.CHINA, "评分: %.1f", Float.valueOf(f)));
            } else {
                this.aQuery.o00oO0o(R.id.adsail_text_rank).o00Ooo();
            }
            if (i > 0) {
                this.aQuery.o00oO0o(R.id.adsail_text_download_count).o000Oo00(String.format(Locale.CHINA, "下载量: %s", new DecimalFormat("#,###").format(i)));
            } else {
                this.aQuery.o00oO0o(R.id.adsail_text_download_count).o00Ooo();
            }
            o000Var = this.aQuery;
            if (i2 > 0) {
                o000Var.o00oO0o(R.id.adsail_text_comments).o000Oo00(String.format(Locale.CHINA, "评论数: %d", Integer.valueOf(i)));
            } else {
                i3 = R.id.adsail_text_comments;
                o000Var.o00oO0o(i3).o00Ooo();
            }
        }
        this.aQuery.o00oO0o(R.id.adsail_button_download).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRDetailActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setAction(NormalMediaView.ACTION_DOWNLOAD_CLICKED);
                ClickHandler.setShowDialogActivity(HRDetailActivity.this);
                LocalBroadcastManager.getInstance(view.getContext()).sendBroadcast(intent);
            }
        });
    }

    private void loadWeb(String str) {
        this.aQuery.o00oO0o(R.id.adsail_layout_app_detail).o00Ooo();
        WebView webViewO00Oo0 = this.aQuery.o00oO0o(R.id.adsail_web_view).o00Oo0();
        this.webView = webViewO00Oo0;
        webViewO00Oo0.setVisibility(0);
        this.webView.setScrollBarStyle(0);
        WebSettings settings = this.webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setSavePassword(false);
        settings.setAllowFileAccess(false);
        this.webView.setWebViewClient(new WebViewClient() { // from class: cn.haorui.sdk.activity.HRDetailActivity.5
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                return false;
            }
        });
        this.webView.loadUrl(str);
    }

    public static void setVideoView(NormalMediaView normalMediaView2) {
        NormalMediaView normalMediaView3 = normalMediaView;
        if (normalMediaView3 != null && normalMediaView3.getAdSailVideoView().isPlaying()) {
            normalMediaView.getAdSailVideoView().getMediaPlayer().pause();
        }
        normalMediaView = normalMediaView2;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.adsail_activity_detail);
        NormalMediaView normalMediaView2 = normalMediaView;
        if (normalMediaView2 == null) {
            gotoFinish();
            return;
        }
        this.thisNormalMediaView = normalMediaView2;
        normalMediaView2.getAdSailVideoView().seekTo(0);
        this.thisNormalMediaView.setOnInfoListener(this.onInfoListener);
        int intExtra = getIntent().getIntExtra(EXTRA_INTERACTION_TYPE, -1);
        if (intExtra == -1) {
            LogUtil.d(this.TAG, "参数 EXTRA_INTERACTION_TYPE 错误");
            gotoFinish();
            return;
        }
        String[] stringArrayExtra = getIntent().getStringArrayExtra(EXTRA_DURL);
        if (stringArrayExtra == null || stringArrayExtra.length == 0) {
            LogUtil.d(this.TAG, "参数 EXTRA_DURL 错误");
            gotoFinish();
            return;
        }
        String stringExtra = getIntent().getStringExtra(EXTRA_APP_NAME);
        String stringExtra2 = getIntent().getStringExtra(EXTRA_CONTENT);
        String stringExtra3 = getIntent().getStringExtra(EXTRA_ICON_URL);
        float floatExtra = getIntent().getFloatExtra(EXTRA_SCORE, 0.0f);
        int intExtra2 = getIntent().getIntExtra(EXTRA_DOWN_NUM, 0);
        int intExtra3 = getIntent().getIntExtra(EXTRA_COMMENTS, 0);
        getIntent().getIntExtra(EXTRA_VIDEO_WIDTH, 0);
        getIntent().getIntExtra(EXTRA_VIDEO_HEIGHT, 0);
        if (intExtra == 0) {
            loadWeb(stringArrayExtra[0]);
        } else {
            if (intExtra != 1) {
                LogUtil.d(this.TAG, "不支持的 InteractionType");
                gotoFinish();
                return;
            }
            loadAppDetail(stringExtra, stringExtra2, stringExtra3, floatExtra, intExtra2, intExtra3);
        }
        this.aQuery.o00oO0o(R.id.adsail_img_close).OooOo0o(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRDetailActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HRDetailActivity.this.gotoFinish();
            }
        });
        this.aQuery.o00oO0o(R.id.adsail_progress_loading).o00Ooo();
        final TextureView textureView = (TextureView) this.aQuery.o00oO0o(R.id.adsail_texture_view).o00O0O();
        int i = getResources().getDisplayMetrics().widthPixels;
        textureView.setLayoutParams(new RelativeLayout.LayoutParams(i, (int) (i / 1.7777778f)));
        textureView.requestLayout();
        textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: cn.haorui.sdk.activity.HRDetailActivity.2
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                HRDetailActivity.this.textureWidth = i2;
                HRDetailActivity.this.textureHeight = i3;
                if (HRDetailActivity.this.thisNormalMediaView != null) {
                    HRDetailActivity.this.thisNormalMediaView.getAdSailVideoView().changeSurface(new Surface(surfaceTexture));
                    textureView.setTransform(HRDetailActivity.this.thisNormalMediaView.getAdSailVideoView().adjustVideoRadio(i2, i3));
                    textureView.postInvalidate();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        });
        this.thisNormalMediaView.getAdSailVideoView().setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: cn.haorui.sdk.activity.HRDetailActivity.3
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
                if (HRDetailActivity.this.thisNormalMediaView != null) {
                    textureView.setTransform(HRDetailActivity.this.thisNormalMediaView.getAdSailVideoView().adjustVideoRadio(HRDetailActivity.this.textureWidth, HRDetailActivity.this.textureHeight));
                    textureView.postInvalidate();
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            NormalMediaView normalMediaView2 = this.thisNormalMediaView;
            if (normalMediaView2 != null) {
                normalMediaView2.onDetailReturn();
                this.thisNormalMediaView.getAdSailVideoView().resumeSurface();
                this.thisNormalMediaView = null;
                normalMediaView = null;
            }
            WebView webView = this.webView;
            if (webView != null) {
                webView.destroy();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        NormalMediaView normalMediaView2 = this.thisNormalMediaView;
        if (normalMediaView2 != null && normalMediaView2.getAdSailVideoView() != null) {
            this.thisNormalMediaView.getAdSailVideoView().pause();
            this.thisNormalMediaView.onMute();
        }
        WebView webView = this.webView;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        NormalMediaView normalMediaView2 = this.thisNormalMediaView;
        if (normalMediaView2 != null && normalMediaView2.getAdSailVideoView() != null) {
            this.thisNormalMediaView.getAdSailVideoView().resume();
            this.thisNormalMediaView.onUnmute();
        }
        WebView webView = this.webView;
        if (webView != null) {
            webView.onResume();
        }
    }
}
