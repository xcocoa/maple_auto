.class public Lz2/bi;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO:Ljava/lang/String; = "a65517da9564af"

.field private static final OooO0oo:Ljava/lang/String; = "YunJingAdManager"

.field public static final OooOO0:Ljava/lang/String; = "79c5beb4fa44a273013b5196ffd1f13a"

.field public static final OooOO0O:Ljava/lang/String; = "b65517e46d465a"

.field private static OooOO0o:Lz2/bi;


# instance fields
.field public OooO00o:Ljava/lang/String;

.field private OooO0O0:Lcom/anythink/splashad/api/ATSplashAd;

.field private OooO0OO:Lcom/anythink/nativead/api/ATNative;

.field private OooO0Oo:Lcom/anythink/nativead/api/NativeAd;

.field private OooO0o:Lcom/anythink/nativead/api/ATNativeAdView;

.field private OooO0o0:Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

.field private OooO0oO:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lz2/bi;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;
    .locals 0

    iget-object p0, p0, Lz2/bi;->OooO0Oo:Lcom/anythink/nativead/api/NativeAd;

    return-object p0
.end method

.method public static synthetic OooO00o(Lz2/bi;)Lcom/anythink/splashad/api/ATSplashAd;
    .locals 0

    iget-object p0, p0, Lz2/bi;->OooO0O0:Lcom/anythink/splashad/api/ATSplashAd;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/bi;Landroid/content/Context;Landroid/view/ViewGroup;Lz2/di;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/bi;->OooOOo(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/di;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lz2/bi;)Lcom/anythink/nativead/api/ATNativeAdView;
    .locals 0

    iget-object p0, p0, Lz2/bi;->OooO0o:Lcom/anythink/nativead/api/ATNativeAdView;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lz2/bi;Lcom/anythink/nativead/api/ATNativeAdView;)Lcom/anythink/nativead/api/ATNativeAdView;
    .locals 0

    iput-object p1, p0, Lz2/bi;->OooO0o:Lcom/anythink/nativead/api/ATNativeAdView;

    return-object p1
.end method

.method public static synthetic OooO0o(Lz2/bi;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lz2/bi;->OooO0oO:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic OooO0o0(Lz2/bi;)Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;
    .locals 0

    iget-object p0, p0, Lz2/bi;->OooO0o0:Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    return-object p0
.end method

.method public static synthetic OooO0oO(Lz2/bi;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lz2/bi;->OooO0oO:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic OooO0oo(Lz2/bi;)Lcom/anythink/nativead/api/ATNative;
    .locals 0

    iget-object p0, p0, Lz2/bi;->OooO0OO:Lcom/anythink/nativead/api/ATNative;

    return-object p0
.end method

.method public static synthetic OooOO0(Lz2/bi;Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/NativeAd;
    .locals 0

    iput-object p1, p0, Lz2/bi;->OooO0Oo:Lcom/anythink/nativead/api/NativeAd;

    return-object p1
.end method

.method public static OooOO0o()Lz2/bi;
    .locals 2

    sget-object v0, Lz2/bi;->OooOO0o:Lz2/bi;

    if-nez v0, :cond_1

    const-class v0, Lz2/bi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/bi;->OooOO0o:Lz2/bi;

    if-nez v1, :cond_0

    new-instance v1, Lz2/bi;

    invoke-direct {v1}, Lz2/bi;-><init>()V

    sput-object v1, Lz2/bi;->OooOO0o:Lz2/bi;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/bi;->OooOO0o:Lz2/bi;

    return-object v0
.end method

.method private OooOOo(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/di;)V
    .locals 1

    iget-object v0, p0, Lz2/bi;->OooO0OO:Lcom/anythink/nativead/api/ATNative;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lz2/bi;->OooO0o0:Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    invoke-direct {v0, p1}, Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/bi;->OooO0o0:Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p2, p0, Lz2/bi;->OooO0o0:Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    new-instance v0, Lz2/bi$OooO0OO;

    invoke-direct {v0, p0, p1, p3}, Lz2/bi$OooO0OO;-><init>(Lz2/bi;Landroid/content/Context;Lz2/di;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public OooOO0O(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/xh;)V
    .locals 7

    new-instance v6, Lcom/anythink/splashad/api/ATSplashAd;

    new-instance v3, Lz2/bi$OooO00o;

    invoke-direct {v3, p0, p3, p1, p2}, Lz2/bi$OooO00o;-><init>(Lz2/bi;Lz2/xh;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-object v5, p0, Lz2/bi;->OooO00o:Ljava/lang/String;

    const-string v2, "b65517e46d465a"

    const/16 v4, 0x2710

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;ILjava/lang/String;)V

    iput-object v6, p0, Lz2/bi;->OooO0O0:Lcom/anythink/splashad/api/ATSplashAd;

    invoke-virtual {v6}, Lcom/anythink/splashad/api/ATSplashAd;->loadAd()V

    return-void
.end method

.method public OooOOO(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/di;)V
    .locals 2

    iget-object v0, p0, Lz2/bi;->OooO0OO:Lcom/anythink/nativead/api/ATNative;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/nativead/api/ATNative;

    new-instance v1, Lz2/bi$OooO0O0;

    invoke-direct {v1, p0, p3, p1, p2}, Lz2/bi$OooO0O0;-><init>(Lz2/bi;Lz2/di;Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-string p2, "b65517e48a23c7"

    invoke-direct {v0, p1, p2, v1}, Lcom/anythink/nativead/api/ATNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    iput-object v0, p0, Lz2/bi;->OooO0OO:Lcom/anythink/nativead/api/ATNative;

    :cond_0
    iget-object p1, p0, Lz2/bi;->OooO0OO:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNative;->makeAdRequest()V

    return-void
.end method

.method public OooOOO0(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/octopus/ad/Octopus;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orid SDK OK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YunJingAdManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/anythink/core/api/ATSDK;->integrationChecking(Landroid/content/Context;)V

    const-string v0, "a65517da9564af"

    const-string v1, "79c5beb4fa44a273013b5196ffd1f13a"

    invoke-static {p1, v0, v1}, Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OooOOOO()V
    .locals 2

    iget-object v0, p0, Lz2/bi;->OooO0Oo:Lcom/anythink/nativead/api/NativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/api/NativeAd;->destory()V

    iget-object v0, p0, Lz2/bi;->OooO0OO:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNative;->setAdListener(Lcom/anythink/nativead/api/ATNativeNetworkListener;)V

    iget-object v0, p0, Lz2/bi;->OooO0OO:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNative;->setAdSourceStatusListener(Lcom/anythink/core/api/ATAdSourceStatusListener;)V

    iput-object v1, p0, Lz2/bi;->OooO0o0:Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    iput-object v1, p0, Lz2/bi;->OooO0oO:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lz2/bi;->OooO0o:Lcom/anythink/nativead/api/ATNativeAdView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNativeAdView;->destory()V

    iput-object v1, p0, Lz2/bi;->OooO0o:Lcom/anythink/nativead/api/ATNativeAdView;

    :cond_1
    return-void
.end method

.method public OooOOOo()V
    .locals 1

    iget-object v0, p0, Lz2/bi;->OooO0Oo:Lcom/anythink/nativead/api/NativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/api/NativeAd;->onPause()V

    :cond_0
    return-void
.end method

.method public OooOOo0()V
    .locals 1

    iget-object v0, p0, Lz2/bi;->OooO0Oo:Lcom/anythink/nativead/api/NativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/api/NativeAd;->onResume()V

    :cond_0
    return-void
.end method

.method public OooOOoo()V
    .locals 2

    iget-object v0, p0, Lz2/bi;->OooO0O0:Lcom/anythink/splashad/api/ATSplashAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/splashad/api/ATSplashAd;->setAdListener(Lcom/anythink/splashad/api/ATSplashAdListener;)V

    iget-object v0, p0, Lz2/bi;->OooO0O0:Lcom/anythink/splashad/api/ATSplashAd;

    invoke-virtual {v0, v1}, Lcom/anythink/splashad/api/ATSplashAd;->setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    iget-object v0, p0, Lz2/bi;->OooO0O0:Lcom/anythink/splashad/api/ATSplashAd;

    invoke-virtual {v0, v1}, Lcom/anythink/splashad/api/ATSplashAd;->setAdSourceStatusListener(Lcom/anythink/core/api/ATAdSourceStatusListener;)V

    iput-object v1, p0, Lz2/bi;->OooO0O0:Lcom/anythink/splashad/api/ATSplashAd;

    :cond_0
    return-void
.end method
