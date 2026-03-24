.class public final Lcom/anythink/expressad/splash/c/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/splash/c/e$c;,
        Lcom/anythink/expressad/splash/c/e$b;,
        Lcom/anythink/expressad/splash/c/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "WebViewRenderManager"


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/e;->b:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/e;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/splash/c/e;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/splash/c/e;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/e;->c:Z

    return v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/splash/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/c/e;->b:Z

    return p1
.end method

.method private static b()Lcom/anythink/expressad/splash/c/e;
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/splash/c/e$a;->a()Lcom/anythink/expressad/splash/c/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/e;->b:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/c/e;->c:Z

    return-void
.end method

.method public final a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/c/e$c;Lcom/anythink/expressad/splash/c/e$b;)V
    .locals 8

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/anythink/expressad/splash/c/e$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/anythink/expressad/splash/c/e$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/anythink/expressad/splash/c/e$c;->d()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v2

    invoke-virtual {p2}, Lcom/anythink/expressad/splash/c/e$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/anythink/expressad/splash/c/e$c;->e()Z

    move-result v4

    invoke-virtual {p2}, Lcom/anythink/expressad/splash/c/e$c;->f()I

    move-result p2

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashWebview()Lcom/anythink/expressad/splash/view/ATSplashWebview;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    new-instance v6, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v1, v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->setCampaignList(Ljava/util/List;)V

    invoke-virtual {v6, v4}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->setAllowSkip(I)V

    invoke-virtual {v6, p2}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->setCountdownS(I)V

    invoke-virtual {p1, v6}, Lcom/anythink/expressad/splash/view/ATSplashView;->setSplashJSBridgeImpl(Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;)V

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v5}, Lcom/anythink/expressad/splash/view/ATSplashWebview;->getRequestId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CampaignEx RequestId = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WebView RequestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/c/e;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/c/e;->c:Z

    if-eqz v0, :cond_4

    :cond_2
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    if-eqz p3, :cond_3

    invoke-interface {p3, p2}, Lcom/anythink/expressad/splash/c/e$b;->a(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/c/e;->a()V

    invoke-virtual {v5, p2}, Lcom/anythink/expressad/splash/view/ATSplashWebview;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p2, Lcom/anythink/expressad/splash/c/e$1;

    invoke-direct {p2, p0, p3, p1, v2}, Lcom/anythink/expressad/splash/c/e$1;-><init>(Lcom/anythink/expressad/splash/c/e;Lcom/anythink/expressad/splash/c/e$b;Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v5, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    invoke-virtual {v5}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v5, v3}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setH5Ready(Z)V

    :cond_6
    return-void
.end method
