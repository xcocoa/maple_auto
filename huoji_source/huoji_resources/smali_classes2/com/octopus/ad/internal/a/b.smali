.class public Lcom/octopus/ad/internal/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/AdActivity$a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/octopus/ad/internal/view/AdWebView;

.field private c:Lcom/octopus/ad/internal/view/b;

.field private d:Landroid/widget/FrameLayout;

.field private e:J

.field private f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    return-void
.end method

.method private a(Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;)V
    .locals 6

    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->setAdImplementation(Lcom/octopus/ad/AdActivity$a;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdQueue()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/internal/view/d;

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/octopus/ad/internal/a/b;->e:J

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/d;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x41eb0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    iget-wide v0, p0, Lcom/octopus/ad/internal/a/b;->e:J

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/d;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->too_old:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/d;->c()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/octopus/ad/internal/view/AdWebView;

    if-nez v0, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-interface {p1}, Lcom/octopus/ad/internal/view/d;->c()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/internal/view/AdWebView;

    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/content/MutableContextWrapper;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdWebView;->mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeWidth()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeHeight()I

    move-result p1

    if-eq p1, v0, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/16 v1, 0x1a

    if-le p1, v1, :cond_7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_7

    const-string p1, "octopus"

    const-string v1, "Only fullscreen activities can request orientation"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdWebView;->getOrientation()I

    move-result v1

    invoke-static {p1, v1}, Lcom/octopus/ad/AdActivity;->a(Landroid/app/Activity;I)V

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getRealDisplayable()Lcom/octopus/ad/internal/view/b;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/view/b;

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, p1, Lcom/octopus/ad/internal/view/AdWebView;->mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

    const/16 v2, 0x11

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getRealDisplayable()Lcom/octopus/ad/internal/view/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_9
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getRealDisplayable()Lcom/octopus/ad/internal/view/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v3}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v4

    iget v4, v4, Lcom/octopus/ad/internal/m;->i:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v4}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v5

    iget v5, v5, Lcom/octopus/ad/internal/m;->j:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getRealDisplayable()Lcom/octopus/ad/internal/view/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v3}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v4

    iget v4, v4, Lcom/octopus/ad/internal/m;->i:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v4}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v5

    iget v5, v5, Lcom/octopus/ad/internal/m;->j:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getRealDisplayable()Lcom/octopus/ad/internal/view/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v3}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v4

    iget v4, v4, Lcom/octopus/ad/internal/m;->i:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v4}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v5

    iget v5, v5, Lcom/octopus/ad/internal/m;->j:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/view/b;

    invoke-interface {p1}, Lcom/octopus/ad/internal/view/b;->visible()V

    :cond_c
    :goto_5
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/d;

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/d;->c()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/octopus/ad/internal/view/AdWebView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/d;

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/d;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->isBackgroundDim()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    sget v3, Lcom/octopus/ad/R$style;->OctopusDialogStyle:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    sget v3, Lcom/octopus/ad/R$style;->OctopusDialogStyleTran:I

    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->isVideoFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    sget v1, Lcom/octopus/ad/R$style;->OctopusTheme_Transparent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/a/b;->e:J

    sget-object v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/a/b;->a(Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isRewardVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->destroy()V

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/video/AdVideoView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->setAdImplementation(Lcom/octopus/ad/AdActivity$a;)V

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->f:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->shouldDismissOnClick()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/octopus/ad/internal/a/b;->h()V

    :cond_0
    return-void
.end method

.method public f()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    return-object v0
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/view/AdWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getRealDisplayable()Lcom/octopus/ad/internal/view/b;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/view/b;

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    invoke-interface {v1}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    instance-of v1, v0, Lcom/octopus/ad/internal/video/AdVideoView;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->d:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/view/b;

    invoke-interface {v0}, Lcom/octopus/ad/internal/view/b;->visible()V

    :cond_2
    return-void
.end method
