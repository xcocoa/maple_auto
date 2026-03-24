.class public Lcom/anythink/expressad/splash/view/ATSplashView;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "webviewshow"

.field public static final b:Ljava/lang/String; = "updateCountdown"

.field private static c:Ljava/lang/String; = "ATSplashView"


# instance fields
.field private d:I

.field private e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/view/ViewGroup;

.field private m:Z

.field private n:Landroid/view/View;

.field private o:Z

.field private p:Z

.field private q:Landroid/widget/RelativeLayout$LayoutParams;

.field private r:Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

.field private s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/splash/view/ATSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/splash/view/ATSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->s:Z

    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/splash/view/ATSplashView;)Lcom/anythink/expressad/splash/view/ATSplashWebview;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/splash/view/ATSplashView;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->d:I

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->s:Z

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->h:Landroid/view/View;

    const/16 v1, 0xb

    const/4 v2, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->d()V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    const v3, 0x7ffffc17

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setId(I)V

    :cond_4
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->d:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->i:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-static {v3}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    :cond_5
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->d()V

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->i:I

    div-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_8

    div-int/lit8 v0, v3, 0x4

    :cond_8
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->h:Landroid/view/View;

    invoke-virtual {v3, v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xd

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->i:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-static {v3}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    :cond_a
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->d()V

    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->i:I

    div-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_d

    div-int/lit8 v0, v3, 0x4

    :cond_d
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->h:Landroid/view/View;

    invoke-virtual {v3, v4, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->r:Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashView$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashView$1;-><init>(Lcom/anythink/expressad/splash/view/ATSplashView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static transInfoForMraid(Landroid/webkit/WebView;IIII)V
    .locals 16

    move-object/from16 v6, p0

    const-string v0, "true"

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "orientation"

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const-string v1, "landscape"

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const-string v1, "portrait"

    goto :goto_0

    :cond_1
    const-string v1, "undefined"

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "locked"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/k;->e(Landroid/content/Context;)I

    move-result v1

    int-to-float v7, v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/k;->f(Landroid/content/Context;)I

    move-result v1

    int-to-float v8, v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/k;->g(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "width"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v3, "height"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placementType"

    const-string v3, "Interstitial"

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    const-string v3, "default"

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewable"

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currentAppOrientation"

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    move/from16 v1, p1

    int-to-float v12, v1

    move/from16 v1, p2

    int-to-float v13, v1

    move/from16 v1, p3

    int-to-float v14, v1

    move/from16 v1, p4

    int-to-float v15, v1

    move-object/from16 v1, p0

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireSetDefaultPosition(Landroid/webkit/WebView;FFFF)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    move-object/from16 v1, p0

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireSetCurrentPosition(Landroid/webkit/WebView;FFFF)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v8}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireSetScreenSize(Landroid/webkit/WebView;FF)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    int-to-float v1, v9

    int-to-float v2, v10

    invoke-virtual {v0, v6, v1, v2}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireSetMaxSize(Landroid/webkit/WebView;FF)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    invoke-virtual {v0, v6, v11}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireChangeEventForPropertys(Landroid/webkit/WebView;Ljava/util/Map;)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireReadyEvent(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public changeCloseBtnState(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public checkSkipViewLocation()V
    .locals 6

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/i;->b(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    if-lez v1, :cond_1

    iput-boolean v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->s:Z

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v4, v3

    if-ge v5, v2, :cond_2

    aget v3, v4, v3

    sub-int/2addr v2, v3

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/2addr v1, v2

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public clearResState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->m:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->k:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->j:Z

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    const-string v1, "onSystemDestory"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/splash/js/SplashJsUtils;->sendEventToH5(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    return-object v0
.end method

.method public getDevContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->l:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getIconVg()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->h:Landroid/view/View;

    return-object v0
.end method

.method public getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->r:Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    return-object v0
.end method

.method public getSplashWebview()Lcom/anythink/expressad/splash/view/ATSplashWebview;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    return-object v0
.end method

.method public isAttach()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->p:Z

    return v0
.end method

.method public isDynamicView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    return v0
.end method

.method public isH5Ready()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->j:Z

    return v0
.end method

.method public isImageReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->m:Z

    return v0
.end method

.method public isVideoReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->k:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->p:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->b()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->checkSkipViewLocation()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->setIsPause(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->setIsPause(Z)V

    :cond_0
    return-void
.end method

.method public resetLoadState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->k:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->j:Z

    return-void
.end method

.method public setCloseView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const-string v0, "closeButton"

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDevContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->l:Landroid/view/ViewGroup;

    return-void
.end method

.method public setDynamicView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    return-void
.end method

.method public setH5Ready(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->j:Z

    return-void
.end method

.method public setIconVg(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->h:Landroid/view/View;

    iput-object p2, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->q:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public setImageReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->m:Z

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->setNotchPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setSplashJSBridgeImpl(Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->r:Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSplashNativeView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setSplashWebview(Lcom/anythink/expressad/splash/view/ATSplashWebview;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->r:Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVideoReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->k:Z

    return-void
.end method

.method public show()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->r:Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->r:Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->updateContext(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->h:Landroid/view/View;

    const/16 v1, 0xb

    const/4 v2, -0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->d()V

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    const v3, 0x7ffffc17

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setId(I)V

    :cond_5
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->d:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->i:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-static {v3}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    :cond_6
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->d()V

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->i:I

    div-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_9

    div-int/lit8 v0, v3, 0x4

    :cond_9
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->h:Landroid/view/View;

    invoke-virtual {v3, v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xd

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->i:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-static {v3}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    :cond_b
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_c
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->d()V

    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->q:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->i:I

    div-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_e

    div-int/lit8 v0, v3, 0x4

    :cond_e
    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->h:Landroid/view/View;

    invoke-virtual {v3, v4, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->f:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_11
    :goto_5
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashView;->clearResState()V

    return-void
.end method

.method public updateCountdown(I)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "countdown"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->e:Lcom/anythink/expressad/splash/view/ATSplashWebview;

    const-string v2, "updateCountdown"

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->updateCountDown(I)V

    :cond_0
    return-void
.end method
