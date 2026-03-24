.class public Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;
.super Lcom/anythink/expressad/video/module/AnythinkBaseView;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/f;


# static fields
.field private static final n:Ljava/lang/String; = "anythink_reward_endcard_native_hor"

.field private static final o:Ljava/lang/String; = "anythink_reward_endcard_native_land"

.field private static final p:Ljava/lang/String; = "anythink_reward_endcard_native_half_portrait"

.field private static final q:Ljava/lang/String; = "anythink_reward_endcard_native_half_landscape"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/LinearLayout;

.field private F:Lcom/anythink/expressad/widget/FeedBackButton;

.field private G:Ljava/lang/Runnable;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Lcom/anythink/expressad/video/signal/factory/b;

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Landroid/view/animation/AlphaAnimation;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:Landroid/view/View;

.field private W:Landroid/widget/TextView;

.field private aa:Z

.field private ab:Ljava/lang/String;

.field private ac:Lcom/anythink/expressad/foundation/d/d;

.field private ad:Lcom/anythink/expressad/shake/MBShakeView;

.field private ae:Lcom/anythink/expressad/shake/b;

.field private af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

.field private ag:I

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->M:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->M:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZIZII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZIZII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->M:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Lcom/anythink/expressad/shake/b;)Lcom/anythink/expressad/shake/b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    return-object p1
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/anythink/expressad/video/dynview/j/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/j/c;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->j:I

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/dynview/j/c;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;I)Lcom/anythink/expressad/video/dynview/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/dynview/b;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setLayout()V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->I:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c()V

    :goto_0
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/a;->ce:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "camp_position"

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p1, 0x69

    invoke-interface {p0, p1, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    return v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    return p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .locals 6

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    const-string v1, "anythink_reward_endcard_native_half_landscape"

    const-string v2, "anythink_reward_endcard_native_land"

    const-string v3, "anythink_reward_endcard_native_half_portrait"

    const-string v4, "anythink_reward_endcard_native_hor"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    move-object v3, v1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->findLayout(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    :goto_3
    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e()V

    :cond_7
    return-void
.end method

.method private b(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    :goto_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private b(Landroid/view/View;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_native_ec_layout"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_native_ec_layer_layout"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->u:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_adbanner"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_icon"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_flag"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->y:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_link"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_tv_apptitle"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_sv_starlevel"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_close"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_tv_cta"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    :cond_0
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_native_endcard_feed_btn"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/widget/FeedBackButton;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_native_ec_controller"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->H:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_adbanner_bg"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x6

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    const/16 v1, 0xa

    if-eqz p1, :cond_1

    instance-of v8, p1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    if-eqz v8, :cond_1

    check-cast p1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setBorderRadius(I)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    instance-of v8, p1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    if-eqz v8, :cond_2

    check-cast p1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setBorderRadius(I)V

    :cond_2
    new-array p1, v7, [Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    aput-object v1, p1, v6

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    aput-object v1, p1, v4

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    aput-object v1, p1, v3

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    aput-object v1, p1, v2

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_3
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v8, "anythink_tv_appdesc"

    invoke-virtual {p0, v1, v8}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->C:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v8, "anythink_tv_number"

    invoke-virtual {p0, v1, v8}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->D:Landroid/widget/TextView;

    const/16 v1, 0x9

    new-array v1, v1, [Landroid/view/View;

    iget-object v8, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    aput-object v8, v1, v0

    iget-object v8, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    aput-object v8, v1, v6

    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->C:Landroid/widget/TextView;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    aput-object p1, v1, v7

    const/4 p1, 0x7

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    aput-object v2, v1, p1

    const/16 p1, 0x8

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    aput-object v2, v1, p1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    return p1
.end method

.method private c(I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/a;->ce:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "camp_position"

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x69

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c()V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->P:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-void
.end method

.method public static synthetic f(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method private f()V
    .locals 5

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    new-instance v0, Lcom/anythink/expressad/video/module/a/a/j;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a/j;-><init>(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, v1, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->aY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->aX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_3

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    :cond_3
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    instance-of v3, v2, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    invoke-virtual {v2, v0, v1}, Lcom/anythink/expressad/videocommon/view/StarLevelView;->initScore(D)V

    :cond_4
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    instance-of v3, v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/out/j;->aY()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;->setRatingAndUser(DI)V

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alecfc=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "https://mores.toponad.com/image/default/mintegral_logo.png"

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$12;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$12;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;

    invoke-direct {v3, p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_b

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private g()I
    .locals 6

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    const-string v1, "anythink_reward_endcard_native_half_landscape"

    const-string v2, "anythink_reward_endcard_native_land"

    const-string v3, "anythink_reward_endcard_native_half_portrait"

    const-string v4, "anythink_reward_endcard_native_hor"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    move-object v3, v1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->findLayout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic g(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    return p0
.end method

.method public static synthetic h(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->Q:I

    return p0
.end method

.method private h()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->H:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->S:I

    return p0
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$4;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$4;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic j(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->R:I

    return p0
.end method

.method private j()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "1"

    const-string v2, "shake_strength"

    invoke-static {v0, v2}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shake_time"

    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v1, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    new-instance v1, Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/anythink/expressad/shake/MBShakeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v3, v3, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/anythink/expressad/shake/MBShakeView;->initView(Ljava/lang/String;Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "anythink_iv_logo"

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->findID(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_7
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$5;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$5;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0xa

    if-nez v1, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_8

    goto :goto_1

    :cond_8
    move v3, v1

    :cond_9
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x1388

    if-nez v1, :cond_b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_2

    :cond_a
    mul-int/lit16 v0, v0, 0x3e8

    move v2, v0

    :cond_b
    :goto_2
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$6;

    invoke-direct {v0, p0, v3, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$6;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;II)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic k(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->T:I

    return p0
.end method

.method private k()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "bait_click"

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    const/high16 v2, 0x50000000

    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->init(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->startAnimation()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$8;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic l(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->H:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "alac"

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$9;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$9;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic m(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->P:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    return p0
.end method

.method public static synthetic o(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 4

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$4;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$4;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, p0}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic p(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    return p0
.end method

.method public static synthetic q(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    return p0
.end method

.method public static synthetic r(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Lcom/anythink/expressad/shake/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    return-object p0
.end method


# virtual methods
.method public blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$14;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$14;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$15;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$15;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$16;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$16;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$17;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$17;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$2;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public canBackPress()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearMoreOfferBitmap()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ac:Lcom/anythink/expressad/foundation/d/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ac:Lcom/anythink/expressad/foundation/d/d;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/g/d/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isDyXmlSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    return v0
.end method

.method public notifyShowListener()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x6e

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$1;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;

    const-string v1, "1"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v3, "alac"

    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$9;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$9;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_4
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v3, "bait_click"

    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 v3, 0x1

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    const/high16 v4, 0x50000000

    invoke-virtual {v0, v4, v3}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->init(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->startAnimation()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$8;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$8;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_8
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_a
    const-string v3, "shake_strength"

    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shake_time"

    invoke-static {v0, v4}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v1, :cond_c

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_c
    new-instance v1, Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/anythink/expressad/shake/MBShakeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v4, v4, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/anythink/expressad/shake/MBShakeView;->initView(Ljava/lang/String;Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "anythink_iv_logo"

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->findID(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    :cond_d
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_e

    return-void

    :cond_e
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_10
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v2, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$5;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$5;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_11

    goto :goto_4

    :cond_11
    move v2, v1

    :cond_12
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1388

    if-nez v1, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_13

    goto :goto_5

    :cond_13
    mul-int/lit16 v0, v0, 0x3e8

    move v3, v0

    :cond_14
    :goto_5
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$6;

    invoke-direct {v0, p0, v2, v3}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$6;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;II)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_15
    return-void

    :catchall_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    :cond_1
    return-void
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->H:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->d:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " native onSelfConfigurationChanged:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->d:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    :goto_0
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 4

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->I:Lcom/anythink/expressad/video/signal/factory/b;

    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz p1, :cond_b

    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    new-instance p1, Lcom/anythink/expressad/video/module/a/a/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a/j;-><init>(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, v0, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->C:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->bc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->D:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->aY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_3

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    instance-of v2, p1, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/videocommon/view/StarLevelView;->initScore(D)V

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    instance-of v2, p1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->aY()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;->setRatingAndUser(DI)V

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alecfc=1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "https://mores.toponad.com/image/default/mintegral_logo.png"

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$12;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$12;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->J()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    new-instance v2, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge p1, v1, :cond_b

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public release()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->P:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setCloseBtnDelay(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    return-void
.end method

.method public setLayout()V
    .locals 6

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/dynview/j/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/j/c;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->j:I

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/dynview/j/c;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;I)Lcom/anythink/expressad/video/dynview/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/dynview/b;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    const-string v1, "anythink_reward_endcard_native_half_landscape"

    const-string v2, "anythink_reward_endcard_native_land"

    const-string v3, "anythink_reward_endcard_native_half_portrait"

    const-string v4, "anythink_reward_endcard_native_hor"

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    move-object v3, v1

    :cond_6
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->findLayout(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    :goto_3
    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e()V

    :cond_8
    return-void
.end method

.method public setMoreOfferCampaignUnit(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ac:Lcom/anythink/expressad/foundation/d/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTCH NativeEndCard "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%1s-%2s-%3s-%4s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->Q:I

    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->R:I

    iput p3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->S:I

    iput p4, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->T:I

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->h()V

    return-void
.end method

.method public setOnPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    return-void
.end method

.method public setOnResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    return-void
.end method
