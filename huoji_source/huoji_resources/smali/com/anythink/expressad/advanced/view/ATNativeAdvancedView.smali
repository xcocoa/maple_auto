.class public Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "webviewshow"

.field private static b:Ljava/lang/String; = "ATNativeAdvancedView"


# instance fields
.field private c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/anythink/expressad/advanced/d/c;

.field private i:Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

.field private j:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->j:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->transInfoForMraid(Landroid/webkit/WebView;IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->i:Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    new-instance v1, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView$1;-><init>(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private c()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->transInfoForMraid(Landroid/webkit/WebView;IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->i:Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    new-instance v1, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView$1;-><init>(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;)V

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

    const-string v3, "inline"

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

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

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

.method public clearResState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->g:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->f:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->e:Z

    return-void
.end method

.method public clearResStateAndRemoveClose()V
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->clearResState()V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    const-string v1, "onSystemDestory"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/advanced/js/NativeAdvancedJsUtils;->sendEventToH5(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->j:Landroid/content/Context;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->j:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public getAdvancedNativeJSBridgeImpl()Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->i:Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

    return-object v0
.end method

.method public getAdvancedNativeWebview()Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    return-object v0
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    return-object v0
.end method

.method public isEndCardReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->g:Z

    return v0
.end method

.method public isH5Ready()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->e:Z

    return v0
.end method

.method public isVideoReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->f:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public resetLoadState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->g:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->f:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->e:Z

    return-void
.end method

.method public setAdvancedNativeJSBridgeImpl(Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->i:Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAdvancedNativeWebview(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->i:Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCloseView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const-string v0, "closeButton"

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndCardReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->g:Z

    return-void
.end method

.method public setH5Ready(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->e:Z

    return-void
.end method

.method public setVideoReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->f:Z

    return-void
.end method

.method public show()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->transInfoForMraid(Landroid/webkit/WebView;IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->i:Lcom/anythink/expressad/advanced/js/NativeAdvancedJSBridgeImpl;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->c:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;

    new-instance v1, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView$1;-><init>(Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->clearResState()V

    return-void
.end method
