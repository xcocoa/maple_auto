.class public Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;
.super Lcom/anythink/expressad/video/bt/module/BTBaseView;
.source ""


# static fields
.field private static final p:Ljava/lang/String; = "anythink_reward_endcard_native_hor"

.field private static final q:Ljava/lang/String; = "anythink_reward_endcard_native_land"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Lcom/anythink/expressad/videocommon/view/StarLevelView;

.field private D:Z

.field private E:Z

.field private F:I

.field private G:Ljava/lang/Runnable;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Ljava/lang/String;

.field private K:Lcom/anythink/expressad/video/signal/a/j;

.field private L:Landroid/webkit/WebView;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/ImageView;

.field private v:Lcom/anythink/expressad/videocommon/view/RoundImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->D:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->E:Z

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->D:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->E:Z

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->F:I

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(FF)V
    .locals 4

    const-string v0, "onClicked"

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

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

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "x"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "y"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

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

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/anythink/expressad/video/bt/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->preLoadData()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->b(Landroid/view/View;)Z

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;FF)V
    .locals 4

    const-string v0, "onClicked"

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

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

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "x"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "y"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

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

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/anythink/expressad/video/bt/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/a;->ce:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_1
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->K:Lcom/anythink/expressad/video/signal/a/j;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    const-string v0, ""

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/anythink/expressad/video/signal/a/j;->click(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    return-void

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->E:Z

    return v0
.end method

.method private b()I
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "anythink_reward_endcard_native_land"

    goto :goto_0

    :cond_0
    const-string v0, "anythink_reward_endcard_native_hor"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findLayout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->H:Landroid/view/View;

    return-object p0
.end method

.method private b(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->s:Landroid/view/ViewGroup;

    :goto_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->b(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->r:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private b(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "anythink_native_ec_layout"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->t:Landroid/widget/RelativeLayout;

    const-string v1, "anythink_iv_adbanner_bg"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->u:Landroid/widget/ImageView;

    const-string v1, "anythink_iv_adbanner"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->v:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    const-string v1, "anythink_iv_icon"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->w:Landroid/widget/ImageView;

    const-string v1, "anythink_iv_flag"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->x:Landroid/widget/ImageView;

    const-string v1, "anythink_iv_link"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->y:Landroid/widget/ImageView;

    const-string v1, "anythink_tv_apptitle"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->z:Landroid/widget/TextView;

    const-string v1, "anythink_tv_appdesc"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->A:Landroid/widget/TextView;

    const-string v1, "anythink_tv_nuater"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->B:Landroid/widget/TextView;

    const-string v1, "anythink_sv_starlevel"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->C:Lcom/anythink/expressad/videocommon/view/StarLevelView;

    const-string v1, "anythink_iv_close"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->H:Landroid/view/View;

    const-string v1, "anythink_tv_cta"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->I:Landroid/view/View;

    const/16 v1, 0x9

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->u:Landroid/widget/ImageView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->v:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->w:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->z:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->A:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->B:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->C:Lcom/anythink/expressad/videocommon/view/StarLevelView;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->H:Landroid/view/View;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/a;->ce:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->K:Lcom/anythink/expressad/video/signal/a/j;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_0
    const-string v1, ""

    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/video/signal/a/j;->click(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->D:Z

    return p0
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->J:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->t:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$4;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$4;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->H:Landroid/view/View;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$5;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$5;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->I:Landroid/view/View;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$6;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$6;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->w:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$7;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->v:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$8;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v2, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "anythink_reward_endcard_native_land"

    goto :goto_0

    :cond_0
    const-string p1, "anythink_reward_endcard_native_hor"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findLayout(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->s:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->r:Landroid/view/ViewGroup;

    :goto_1
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->b(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->h:Z

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a()V

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->G:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$1;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->G:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->G:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->F:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->h:Z

    const-string v1, "data"

    const-string v2, "unitId"

    const/4 v3, 0x2

    const-string v4, "id"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->J:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NativeEC Call H5 onCloseBtnClicked "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v6, "onCloseBtnClicked"

    invoke-static {v5, v6, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->J:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeEC Call H5 onEndCardShow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onNativeECShow"

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onDestory()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->G:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->g:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->s:Landroid/view/ViewGroup;

    :goto_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->r:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public preLoadData()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->h:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->e:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->p()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->F:I

    :cond_0
    new-instance v0, Lcom/anythink/expressad/video/module/a/a/e;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->v:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->J:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/video/module/a/a/e;-><init>(Landroid/widget/ImageView;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    new-instance v0, Lcom/anythink/expressad/video/module/a/a/j;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->w:Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/b/a;->e()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a/j;-><init>(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->B:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->aY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->C:Lcom/anythink/expressad/videocommon/view/StarLevelView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->aX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    :cond_1
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->C:Lcom/anythink/expressad/videocommon/view/StarLevelView;

    invoke-virtual {v2, v0, v1}, Lcom/anythink/expressad/videocommon/view/StarLevelView;->initScore(D)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/16 v2, 0x8

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->v:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alecfc=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->D:Z

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "https://mores.toponad.com/image/default/mintegral_logo.png"

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    new-instance v3, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$2;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$2;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V

    invoke-virtual {v1, v0, v3}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->y:Landroid/widget/ImageView;

    new-instance v3, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$3;

    invoke-direct {v3, p0, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$3;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->E:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setCreateWebView(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->L:Landroid/webkit/WebView;

    return-void
.end method

.method public setJSCommon(Lcom/anythink/expressad/video/signal/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->K:Lcom/anythink/expressad/video/signal/a/j;

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->J:Ljava/lang/String;

    return-void
.end method
