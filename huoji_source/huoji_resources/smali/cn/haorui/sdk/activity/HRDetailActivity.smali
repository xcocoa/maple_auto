.class public Lcn/haorui/sdk/activity/HRDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# static fields
.field public static final EXTRA_APP_NAME:Ljava/lang/String; = "EXTRA_APP_NAME"

.field public static final EXTRA_COMMENTS:Ljava/lang/String; = "EXTRA_COMMENTS"

.field public static final EXTRA_CONTENT:Ljava/lang/String; = "EXTRA_CONTENT"

.field public static final EXTRA_DOWN_NUM:Ljava/lang/String; = "EXTRA_DOWN_NUM"

.field public static final EXTRA_DURL:Ljava/lang/String; = "EXTRA_DURL"

.field public static final EXTRA_ICON_URL:Ljava/lang/String; = "EXTRA_ICON_URL"

.field public static final EXTRA_INTERACTION_TYPE:Ljava/lang/String; = "EXTRA_INTERACTION_TYPE"

.field public static final EXTRA_SCORE:Ljava/lang/String; = "EXTRA_SCORE"

.field public static final EXTRA_VIDEO_HEIGHT:Ljava/lang/String; = "EXTRA_VIDEO_HEIGHT"

.field public static final EXTRA_VIDEO_WIDTH:Ljava/lang/String; = "EXTRA_VIDEO_WIDTH"

.field private static normalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aQuery:Lz2/o000;

.field private isFinished:Z

.field private onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private textureHeight:I

.field private textureWidth:I

.field private thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lz2/o000;

    invoke-direct {v0, p0}, Lz2/o000;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    new-instance v0, Lcn/haorui/sdk/activity/HRDetailActivity$4;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/activity/HRDetailActivity$4;-><init>(Lcn/haorui/sdk/activity/HRDetailActivity;)V

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/activity/HRDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDetailActivity;->gotoFinish()V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/activity/HRDetailActivity;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->textureWidth:I

    return p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/activity/HRDetailActivity;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->textureWidth:I

    return p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/activity/HRDetailActivity;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->textureHeight:I

    return p0
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/activity/HRDetailActivity;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->textureHeight:I

    return p1
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/activity/HRDetailActivity;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/activity/HRDetailActivity;)Lz2/o000;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    return-object p0
.end method

.method private gotoFinish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->isFinished:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private loadAppDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FII)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_text_title:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0, p1}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_text_content:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1, p2}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget p2, Lcn/haorui/sdk/R$id;->adsail_text_content:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget p2, Lcn/haorui/sdk/R$id;->adsail_img_icon:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1, p3}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_text_rank:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    aput-object p4, v1, p2

    const-string p4, "\u8bc4\u5206: %.1f"

    invoke-static {v0, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget p4, Lcn/haorui/sdk/R$id;->adsail_text_rank:I

    invoke-virtual {p1, p4}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    :goto_1
    if-lez p5, :cond_3

    new-instance p1, Ljava/text/DecimalFormat;

    const-string p4, "#,###"

    invoke-direct {p1, p4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_text_download_count:I

    invoke-virtual {p4, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p4

    check-cast p4, Lz2/o000;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v1, p3, [Ljava/lang/Object;

    int-to-long v2, p5

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "\u4e0b\u8f7d\u91cf: %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget p4, Lcn/haorui/sdk/R$id;->adsail_text_download_count:I

    invoke-virtual {p1, p4}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    :goto_2
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    if-lez p6, :cond_4

    sget p4, Lcn/haorui/sdk/R$id;->adsail_text_comments:I

    invoke-virtual {p1, p4}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    sget-object p4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p2

    const-string p2, "\u8bc4\u8bba\u6570: %d"

    invoke-static {p4, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    goto :goto_4

    :cond_4
    sget p2, Lcn/haorui/sdk/R$id;->adsail_text_comments:I

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget p2, Lcn/haorui/sdk/R$id;->adsail_layout_app_detail_info:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget p2, Lcn/haorui/sdk/R$id;->adsail_img_icon:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1, p3}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget p2, Lcn/haorui/sdk/R$id;->adsail_img_icon:I

    :goto_3
    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    :goto_4
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget p2, Lcn/haorui/sdk/R$id;->adsail_button_download:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    new-instance p2, Lcn/haorui/sdk/activity/HRDetailActivity$6;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/activity/HRDetailActivity$6;-><init>(Lcn/haorui/sdk/activity/HRDetailActivity;)V

    invoke-virtual {p1, p2}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    return-void
.end method

.method private loadWeb(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_layout_app_detail:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_web_view:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o00Oo0()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcn/haorui/sdk/activity/HRDetailActivity$5;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/activity/HRDetailActivity$5;-><init>(Lcn/haorui/sdk/activity/HRDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static setVideoView(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 1

    sget-object v0, Lcn/haorui/sdk/activity/HRDetailActivity;->normalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/haorui/sdk/activity/HRDetailActivity;->normalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    sput-object p0, Lcn/haorui/sdk/activity/HRDetailActivity;->normalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcn/haorui/sdk/R$layout;->adsail_activity_detail:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget-object p1, Lcn/haorui/sdk/activity/HRDetailActivity;->normalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->seekTo(I)V

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iget-object v1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_INTERACTION_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "\u53c2\u6570 EXTRA_INTERACTION_TYPE \u9519\u8bef"

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDetailActivity;->gotoFinish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_DURL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_APP_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_CONTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_ICON_URL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "EXTRA_SCORE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_DOWN_NUM"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_COMMENTS"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_VIDEO_WIDTH"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_VIDEO_HEIGHT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    if-nez p1, :cond_2

    aget-object p1, v1, v0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/activity/HRDetailActivity;->loadWeb(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcn/haorui/sdk/activity/HRDetailActivity;->loadAppDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FII)V

    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_img_close:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    new-instance v0, Lcn/haorui/sdk/activity/HRDetailActivity$1;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/activity/HRDetailActivity$1;-><init>(Lcn/haorui/sdk/activity/HRDetailActivity;)V

    invoke-virtual {p1, v0}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_progress_loading:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->aQuery:Lz2/o000;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_texture_view:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00O0O()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    const v2, 0x3fe38e39

    div-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    new-instance v0, Lcn/haorui/sdk/activity/HRDetailActivity$2;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/activity/HRDetailActivity$2;-><init>(Lcn/haorui/sdk/activity/HRDetailActivity;Landroid/view/TextureView;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/activity/HRDetailActivity$3;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/activity/HRDetailActivity$3;-><init>(Lcn/haorui/sdk/activity/HRDetailActivity;Landroid/view/TextureView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "\u4e0d\u652f\u6301\u7684 InteractionType"

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDetailActivity;->gotoFinish()V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "\u53c2\u6570 EXTRA_DURL \u9519\u8bef"

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDetailActivity;->gotoFinish()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcn/haorui/sdk/activity/HRDetailActivity;->gotoFinish()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onDetailReturn()V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->resumeSurface()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    sput-object v0, Lcn/haorui/sdk/activity/HRDetailActivity;->normalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->pause()V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onMute()V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getAdSailVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->resume()V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->thisNormalMediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->onUnmute()V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/activity/HRDetailActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_1
    return-void
.end method
