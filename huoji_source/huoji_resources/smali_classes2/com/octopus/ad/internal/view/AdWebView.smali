.class public Lcom/octopus/ad/internal/view/AdWebView;
.super Landroid/webkit/WebView;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/view/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/view/AdWebView$c;,
        Lcom/octopus/ad/internal/view/AdWebView$b;,
        Lcom/octopus/ad/internal/view/AdWebView$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:J

.field private I:F

.field private J:F

.field private K:Z

.field private final L:Ljava/lang/Runnable;

.field public a:Z

.field public ad:Lcom/octopus/ad/internal/network/ServerResponse;

.field public adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/octopus/ad/internal/view/e;

.field private f:I

.field private g:I

.field public gestureDetector:Landroid/view/GestureDetector;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field public mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Z

.field private r:I

.field private s:Landroid/app/ProgressDialog;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 2

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->a:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->n:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->o:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->p:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->q:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->t:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->u:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->x:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->y:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->z:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->A:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->B:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->C:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->D:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->E:Z

    iput v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->F:I

    iput v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->G:I

    new-instance v1, Lcom/octopus/ad/internal/view/AdWebView$5;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdWebView$5;-><init>(Lcom/octopus/ad/internal/view/AdWebView;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->L:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    sget-object p1, Lcom/octopus/ad/internal/view/e;->a:[Ljava/lang/String;

    sget-object v0, Lcom/octopus/ad/internal/view/e$b;->a:Lcom/octopus/ad/internal/view/e$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->a()V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->b()V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdWebView(Lcom/octopus/ad/internal/view/AdWebView;)V

    return-void
.end method

.method private static a(F)F
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->o()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    return p0
.end method

.method private static a(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Lcom/octopus/ad/internal/view/AdWebView;->a(F)F

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(II)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->onResume(Landroid/webkit/WebView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->o:Z

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->d:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->h:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->i()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->onPause(Landroid/webkit/WebView;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->o:Z

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->j()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/e;->b()V

    :cond_2
    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 5

    invoke-static {}, Lcom/octopus/ad/AdActivity;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "ACTIVITY_TYPE"

    const-string v3, "BROWSER"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getBrowserStyle()Lcom/octopus/ad/internal/view/AdViewImpl$c;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "bridgeid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/octopus/ad/internal/view/AdViewImpl$c;->a:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v4}, Lcom/octopus/ad/internal/view/AdViewImpl;->getBrowserStyle()Lcom/octopus/ad/internal/view/AdViewImpl$c;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->k()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->adactivity_missing:I

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private a(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    instance-of v1, v0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getResizeAdToFitContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdWebView;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MRAID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->d:Z

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->d:Z

    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->E:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/view/AdWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->u:Z

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/view/AdWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->h:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/view/AdWebView;)Lcom/octopus/ad/internal/view/e;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    return-object p0
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body style=\'padding:0;margin:0;\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/view/AdWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->E:Z

    return p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/view/AdWebView;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->G:I

    return p0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<html><head><script>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    sget-object v0, Lcom/octopus/ad/internal/utilities/StringUtil;->octopusJSStr:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->appendLocalStr(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/octopus/ad/internal/utilities/StringUtil;->octopusStr:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->appendLocalStr(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/octopus/ad/internal/utilities/StringUtil;->mraidjsStr:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/octopus/ad/internal/utilities/StringUtil;->appendLocalStr(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "</script></head>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<html>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v1, "Error reading SDK\'s raw resources."

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<head><link rel=\"icon\" href=\"data:;base64,=\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0,user-scalable=no\"/>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<head>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/view/AdWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->h:Z

    return p0
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->i()V

    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    nop

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->opening_url_failed:I

    invoke-static {v1, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/octopus/ad/R$string;->action_cant_be_completed:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return v0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->c:Z

    return-void
.end method

.method public static synthetic h(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->h()V

    return-void
.end method

.method private h(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "aHR0cDovL2Fib3V0OmJsYW5r"

    invoke-static {v0}, Lcom/octopus/ad/utils/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "://play.google.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->opening_app_store:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private i()V
    .locals 2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->q:Z

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic i(Lcom/octopus/ad/internal/view/AdWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->q:Z

    return p0
.end method

.method public static synthetic j(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->p:Landroid/os/Handler;

    return-object p0
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->q:Z

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic k(Lcom/octopus/ad/internal/view/AdWebView;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->s:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->g()V

    :cond_0
    return-void
.end method

.method public static synthetic l(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->k()V

    return-void
.end method

.method private setCreativeHeight(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->l:I

    return-void
.end method

.method private setCreativeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->k:I

    return-void
.end method


# virtual methods
.method public IsVideoWifiOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->D:Z

    return v0
.end method

.method public a()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/m;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    const/16 v4, 0x13

    if-lt v0, v4, :cond_2

    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_2
    const/16 v5, 0xb

    if-lt v0, v5, :cond_3

    if-ge v0, v4, :cond_3

    const-string v4, "searchBoxJavaBridge_"

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v4, "accessibilityTraversal"

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/16 v4, 0x10

    if-lt v0, v4, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_4
    if-lt v0, v3, :cond_6

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v1, "Failed to set Webview to accept 3rd party cookie"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->A:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_7
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    return-void
.end method

.method public a(IIZLcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/AdActivity$b;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    iget-boolean v5, v5, Lcom/octopus/ad/internal/view/e;->d:Z

    if-nez v5, :cond_0

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v0, Lcom/octopus/ad/internal/view/AdWebView;->f:I

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v0, Lcom/octopus/ad/internal/view/AdWebView;->g:I

    :cond_0
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    if-ne v1, v5, :cond_1

    iget-object v6, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/octopus/ad/internal/view/AdWebView;->a:Z

    :cond_1
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-eq v2, v5, :cond_2

    int-to-float v2, v2

    iget v8, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v8

    float-to-double v8, v2

    add-double/2addr v8, v6

    double-to-int v2, v8

    :cond_2
    move v10, v2

    if-eq v1, v5, :cond_3

    int-to-float v1, v1

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v6

    double-to-int v1, v1

    :cond_3
    move v9, v1

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iget-boolean v2, v0, Lcom/octopus/ad/internal/view/AdWebView;->a:Z

    if-eqz v2, :cond_4

    new-instance v1, Lcom/octopus/ad/internal/view/AdWebView$4;

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v5, p6

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/octopus/ad/internal/view/AdWebView$4;-><init>(Lcom/octopus/ad/internal/view/AdWebView;Lcom/octopus/ad/internal/view/e;ZLcom/octopus/ad/AdActivity$b;)V

    goto :goto_0

    :cond_4
    move-object/from16 v2, p4

    :goto_0
    move-object v13, v1

    iget-object v8, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v8, :cond_5

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(IIZLcom/octopus/ad/internal/view/e;Lcom/octopus/ad/internal/view/AdWebView$b;)V

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->f()V

    :cond_5
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/app/Activity;ZLcom/octopus/ad/AdActivity$b;)V
    .locals 1

    sget-object v0, Lcom/octopus/ad/AdActivity$b;->c:Lcom/octopus/ad/AdActivity$b;

    if-eq p3, v0, :cond_0

    invoke-static {p1, p3}, Lcom/octopus/ad/AdActivity;->a(Landroid/app/Activity;Lcom/octopus/ad/AdActivity$b;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/octopus/ad/AdActivity;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    if-ne p3, v0, :cond_2

    invoke-static {p1}, Lcom/octopus/ad/AdActivity;->a(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/octopus/ad/internal/view/AdWebView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/octopus/ad/internal/view/AdWebView$1;-><init>(Lcom/octopus/ad/internal/view/AdWebView;ZLjava/lang/String;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    new-instance v0, Lcom/octopus/ad/internal/view/e;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/view/e;-><init>(Lcom/octopus/ad/internal/view/AdWebView;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    new-instance v0, Lcom/octopus/ad/internal/view/h;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/view/h;-><init>(Lcom/octopus/ad/internal/view/AdWebView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/octopus/ad/internal/view/AdWebView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/octopus/ad/internal/view/AdWebView$a;-><init>(Lcom/octopus/ad/internal/view/AdWebView;Lcom/octopus/ad/internal/view/AdWebView$1;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getOpensNativeBrowser()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->opening_inapp:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getLoadsInBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/octopus/ad/internal/view/AdWebView$c;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/octopus/ad/internal/view/AdWebView$c;-><init>(Lcom/octopus/ad/internal/view/AdWebView;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getShowLoadingIndicator()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->s:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->s:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/octopus/ad/internal/view/AdWebView$2;

    invoke-direct {v1, p0, v0}, Lcom/octopus/ad/internal/view/AdWebView$2;-><init>(Lcom/octopus/ad/internal/view/AdWebView;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->s:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/octopus/ad/R$string;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->s:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->s:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    new-instance v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->setWebViewSettings(Landroid/webkit/WebView;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception initializing the redirect webview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->opening_native:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->g(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->k()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->f()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->c()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->j()V

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->f:I

    iget v2, p0, Lcom/octopus/ad/internal/view/AdWebView;->g:I

    iget-object v3, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(IILcom/octopus/ad/internal/view/e;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 7

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    aget v3, v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenSizeAsPixels(Landroid/app/Activity;)[I

    move-result-object v6

    if-lez v3, :cond_1

    aget v3, v6, v1

    if-ge v2, v3, :cond_1

    if-lez v0, :cond_1

    aget v0, v6, v4

    if-ge v5, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->n:Z

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/e;->b()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v5, v1, v3}, Lcom/octopus/ad/internal/view/e;->a(IIII)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/view/e;->a(I)V

    :cond_2
    return-void
.end method

.method public failed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->c:Z

    return v0
.end method

.method public fireMRAIDEnabled()V
    .locals 2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->d:Z

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/octopus/ad/internal/view/e;->a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->i()V

    :cond_1
    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAdExtras()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getExtras()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAutoCloseTime()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->w:I

    return v0
.end method

.method public getContextFromMutableContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeHeight()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->l:I

    return v0
.end method

.method public getCreativeLeft()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->i:I

    return v0
.end method

.method public getCreativeTop()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->j:I

    return v0
.end method

.method public getCreativeWidth()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->k:I

    return v0
.end method

.method public getMRAIDImplementation()Lcom/octopus/ad/internal/view/e;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->r:I

    return v0
.end method

.method public getRealDisplayable()Lcom/octopus/ad/internal/view/b;
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getRefreshInterval()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->m:I

    return v0
.end method

.method public getShowCloseBtnTime()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->v:I

    return v0
.end method

.method public getUserInteraction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->u:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleClickView(Landroid/view/MotionEvent;JJI)V
    .locals 13

    move-object v11, p0

    iget-object v0, v11, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v11, Lcom/octopus/ad/internal/view/AdWebView;->F:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v11, Lcom/octopus/ad/internal/view/AdWebView;->F:I

    iget-object v0, v11, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->d()V

    iget-object v0, v11, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v1, v11, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getOpensNativeBrowser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/network/ServerResponse;->setOpenInNativeBrowser(Z)V

    iget-object v0, v11, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    if-nez p1, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v11, Lcom/octopus/ad/internal/view/AdWebView;->E:Z

    iget-object v1, v11, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v9

    const-string v2, "100"

    const-string v3, "200"

    const-string v4, "105"

    const-string v5, "206"

    move-object v1, p0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, v11, Lcom/octopus/ad/internal/view/AdWebView;->E:Z

    iget-object v1, v11, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    :goto_0
    move/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/octopus/ad/internal/network/ServerResponse;->handleClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    iput-boolean v12, v11, Lcom/octopus/ad/internal/view/AdWebView;->E:Z

    :cond_1
    return-void
.end method

.method public handleClickView(Lcom/octopus/ad/b/c;JJII)V
    .locals 11

    move-object v9, p0

    iget-object v0, v9, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isRewardVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v9, Lcom/octopus/ad/internal/view/AdWebView;->F:I

    const/4 v10, 0x1

    add-int/2addr v0, v10

    iput v0, v9, Lcom/octopus/ad/internal/view/AdWebView;->F:I

    iget-object v0, v9, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->d()V

    iget-object v0, v9, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v1, v9, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getOpensNativeBrowser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/network/ServerResponse;->setOpenInNativeBrowser(Z)V

    iget-object v0, v9, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v9, Lcom/octopus/ad/internal/view/AdWebView;->E:Z

    iget-object v1, v9, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/octopus/ad/internal/network/ServerResponse;->handleClick(Landroid/view/View;Lcom/octopus/ad/b/c;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    iput-boolean v10, v9, Lcom/octopus/ad/internal/view/AdWebView;->E:Z

    :cond_0
    return-void
.end method

.method public isAutoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->y:Z

    return v0
.end method

.method public isBackgroundDim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->B:Z

    return v0
.end method

.method public isMRAIDUseCustomClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->t:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->z:Z

    return v0
.end method

.method public isVideoFullScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->A:Z

    return v0
.end method

.method public loadAd(Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->setCreativeHeight(I)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->setCreativeWidth(I)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->setCreativeLeft(I)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->setCreativeTop(I)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getRefreshInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->setRefreshInterval(I)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->isManualClose()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getMinTimer()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->v:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->v:I

    :goto_0
    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->isAutoClose()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getMaxTimer()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getMaxTimer()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->w:I

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->w:I

    :goto_1
    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->v:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->w:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    sget-object v3, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    if-eq v0, v3, :cond_3

    iput v2, p0, Lcom/octopus/ad/internal/view/AdWebView;->v:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->v:I

    if-eq v0, v1, :cond_4

    iget v3, p0, Lcom/octopus/ad/internal/view/AdWebView;->w:I

    if-eq v3, v1, :cond_4

    if-le v0, v3, :cond_4

    iput v3, p0, Lcom/octopus/ad/internal/view/AdWebView;->v:I

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->isAutoPlay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->y:Z

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->z:Z

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->isFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->A:Z

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->isBackgroundDim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->B:Z

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdOrientation()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->r:I

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->isWifiOnly()Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->D:Z

    iput v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->x:I

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/m;->n()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/view/AdWebView;->loadAdAt(I)Z

    return-void
.end method

.method public loadAdAt(I)Z
    .locals 12

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget v2, p0, Lcom/octopus/ad/internal/view/AdWebView;->x:I

    if-ne v2, p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getCreatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getCreatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getCreatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->h()V

    return v1

    :cond_2
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v3, Lcom/octopus/ad/internal/i;->a:Lcom/octopus/ad/internal/i;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

    if-nez v1, :cond_3

    new-instance v1, Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/video/AdVideoView;-><init>(Lcom/octopus/ad/internal/view/AdWebView;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

    :cond_3
    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->mAdVideoView:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->transferAd(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/octopus/ad/internal/view/AdWebView;->C:Z

    const-string v0, "aHR0cDovL2Fib3V0OmJsYW5r"

    invoke-static {v0}, Lcom/octopus/ad/utils/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    sget-object v2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->webview_loading:I

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/network/ServerResponse;->getExtras()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/octopus/ad/internal/view/AdWebView;->a(Ljava/util/HashMap;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->l()F

    move-result v0

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/m;->m()F

    move-result v2

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/internal/m;->n()F

    move-result v3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeWidth()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v8, -0x1

    if-ne v5, v8, :cond_5

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeHeight()I

    move-result v5

    if-ne v5, v8, :cond_5

    const/4 v3, -0x1

    const/4 v5, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v3

    add-float/2addr v9, v6

    float-to-int v3, v9

    :goto_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeLeft()I

    move-result v9

    const/16 v10, 0x11

    if-nez v9, :cond_8

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeTop()I

    move-result v9

    if-nez v9, :cond_8

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v5, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v2, v2, Lcom/octopus/ad/internal/network/ServerResponse;->mMediaType:Lcom/octopus/ad/internal/l;

    sget-object v3, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    if-ne v2, v3, :cond_6

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    if-ne v2, v3, :cond_7

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :cond_7
    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->a(Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_2

    :cond_8
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const v11, 0x800033

    invoke-direct {v9, v3, v5, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeTop()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr v3, v6

    float-to-int v2, v3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeLeft()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v3, v6

    float-to-int v0, v3

    invoke-virtual {v9, v0, v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v0, v0, Lcom/octopus/ad/internal/network/ServerResponse;->mMediaType:Lcom/octopus/ad/internal/l;

    sget-object v2, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    if-ne v0, v2, :cond_9

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, v9}, Lcom/octopus/ad/internal/view/AdWebView;->a(Landroid/widget/FrameLayout$LayoutParams;)V

    :goto_2
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->i()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->C:Z

    :cond_a
    :goto_3
    iput p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->x:I

    return v4

    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/octopus/ad/internal/view/AdWebView;->h()V

    :cond_c
    :goto_5
    return v1
.end method

.method public loadAdBy(I)Z
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->x:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/AdWebView;->loadAdAt(I)Z

    move-result p1

    return p1
.end method

.method public onAdShow()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/octopus/ad/internal/view/AdWebView$3;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdWebView$3;-><init>(Lcom/octopus/ad/internal/view/AdWebView;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->f()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->destroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->s:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->u:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->K:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->I:F

    iget v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->J:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/octopus/ad/internal/view/AdWebView;->a(FFFF)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v3, p0, Lcom/octopus/ad/internal/view/AdWebView;->H:J

    sub-long v0, v5, v3

    const-wide/16 v7, 0x3e8

    cmp-long v2, v0, v7

    if-gez v2, :cond_3

    iget-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->K:Z

    if-eqz v0, :cond_3

    iget v7, p0, Lcom/octopus/ad/internal/view/AdWebView;->G:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/octopus/ad/internal/view/AdWebView;->handleClickView(Landroid/view/MotionEvent;JJI)V

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->H:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->J:F

    :goto_0
    iput-boolean v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->K:Z

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/view/AdWebView;->a(II)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/octopus/ad/internal/view/AdWebView;->a(II)V

    return-void
.end method

.method public resize(IIIILcom/octopus/ad/internal/view/e$a;Z)V
    .locals 12

    move-object v0, p0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v0, Lcom/octopus/ad/internal/view/AdWebView;->e:Lcom/octopus/ad/internal/view/e;

    iget-boolean v3, v11, Lcom/octopus/ad/internal/view/e;->d:Z

    if-nez v3, :cond_0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v0, Lcom/octopus/ad/internal/view/AdWebView;->f:I

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v0, Lcom/octopus/ad/internal/view/AdWebView;->g:I

    :cond_0
    move v3, p2

    int-to-float v3, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    move v4, p1

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-double v7, v4

    add-double/2addr v7, v5

    double-to-int v5, v7

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v4, :cond_1

    move v6, v3

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(IIIILcom/octopus/ad/internal/view/e$a;ZLcom/octopus/ad/internal/view/e;)V

    :cond_1
    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->f()V

    :cond_2
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1, p1}, Landroid/webkit/WebView;->scrollTo(II)V

    return-void
.end method

.method public setCreativeLeft(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->i:I

    return-void
.end method

.method public setCreativeTop(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->j:I

    return-void
.end method

.method public setMRAIDUseCustomClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->t:Z

    return-void
.end method

.method public setOpt(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->G:I

    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->m:I

    return-void
.end method

.method public shouldDisplayButton()Z
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getCreatives()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->x:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v1, Lcom/octopus/ad/internal/i;->a:Lcom/octopus/ad/internal/i;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->x:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public visible()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->showAdLogo(Landroid/view/View;)V

    sget-object v1, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v2}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->showBannerCloseBtn(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->shouldDisplayButton()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getShowCloseBtnTime()I

    move-result v2

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getAutoCloseTime()I

    move-result v3

    iget-object v4, p0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v4}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v4

    sget-object v5, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->addInterstitialCloseButton(IILandroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isLoadToShow(Lcom/octopus/ad/internal/view/AdWebView;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->onAdShow()V

    :cond_4
    return-void
.end method
