.class public Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;
.super Lcom/anythink/expressad/video/bt/module/BTBaseView;
.source ""

# interfaces
.implements Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;


# static fields
.field private static final s:Ljava/lang/String; = "portrait"

.field private static final t:Ljava/lang/String; = "landscape"


# instance fields
.field private A:Lcom/anythink/expressad/video/signal/a/j;

.field private B:Landroid/webkit/WebView;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private u:Z

.field private v:Landroid/widget/ImageView;

.field private w:Z

.field private x:Lcom/anythink/expressad/videocommon/e/d;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->u:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->w:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->u:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->w:Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->B:Landroid/webkit/WebView;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;)Lcom/anythink/expressad/video/signal/a/j;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->p:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/anythink/expressad/atsignalcommon/base/c;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setFilter(Lcom/anythink/expressad/atsignalcommon/base/a;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->B:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->q:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->getMraidCampaign()Lcom/anythink/expressad/foundation/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->r:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public broadcast(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "broadcast"

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    sget v3, Lcom/anythink/expressad/video/bt/module/BTBaseView;->n:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "id"

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/anythink/expressad/video/bt/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->B:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    const-string v2, "onPlayerCloseBtnClicked"

    invoke-static {v0, v2, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public expand(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public getCampaigns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->y:Ljava/util/List;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getFileURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getMraidCampaign()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    return-object v0
.end method

.method public getRewardUnitSetting()Lcom/anythink/expressad/videocommon/e/d;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->x:Lcom/anythink/expressad/videocommon/e/d;

    return-object v0
.end method

.method public getWebView()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance p1, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->y:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/signal/a/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1, p0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setMraidObject(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    new-instance v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$1;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;)V

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$2;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$2;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->v:Landroid/widget/ImageView;

    const-string v0, "anythink_reward_close"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findDrawable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x60

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800035

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->v:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->u:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->v:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->v:Landroid/widget/ImageView;

    new-instance v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$3;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$3;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public notifyEvent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    const-string v2, "onSystemBackPressed"

    invoke-static {v0, v2, v1}, Lcom/anythink/expressad/video/bt/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    const-string v2, "orientation"

    if-ne p1, v1, :cond_0

    :try_start_1
    const-string p1, "landscape"

    :goto_0
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string p1, "portrait"

    goto :goto_0

    :goto_1
    const-string p1, "instanceId"

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {v0, v2, p1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public onDestory()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->w:Z

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const-string v1, "onSystemDestory"

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/bt/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$4;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$4;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/foundation/d/c;->p(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->getMraidCampaign()Lcom/anythink/expressad/foundation/d/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    new-instance p1, Lcom/anythink/expressad/a/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/anythink/expressad/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->p(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public preload()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->r:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v2, ""

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setCampaigns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->y:Ljava/util/List;

    return-void
.end method

.method public setCreateWebView(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->B:Landroid/webkit/WebView;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->q:Ljava/lang/String;

    return-void
.end method

.method public setFileURL(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "play.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->setWebviewClickable(Z)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/anythink/expressad/atsignalcommon/base/c;

    invoke-direct {p1}, Lcom/anythink/expressad/atsignalcommon/base/c;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->setFilter(Lcom/anythink/expressad/atsignalcommon/base/a;)V

    :cond_0
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->r:Ljava/lang/String;

    return-void
.end method

.method public setRewardUnitSetting(Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->x:Lcom/anythink/expressad/videocommon/e/d;

    return-void
.end method

.method public setWebViewRid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setRid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWebviewClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public unload()V
    .locals 0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->close()V

    return-void
.end method

.method public useCustomClose(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->v:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public webviewGoBack()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public webviewGoForward()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public webviewLoad(I)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/signal/a/j;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->y:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/video/signal/a/j;->a(Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->y:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->y:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/a/j;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->y:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/a/j;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->x:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/video/signal/a/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/a/j;->c(Ljava/lang/String;)V

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/signal/a/j;->q()V

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->A:Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->v:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->preload()V

    return-void
.end method

.method public webviewReload()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->z:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->reload()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
