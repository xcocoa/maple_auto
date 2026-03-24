.class public Lcom/octopus/ad/internal/video/AdVideoView;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/octopus/ad/internal/view/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/video/AdVideoView$a;
    }
.end annotation


# instance fields
.field public a:Landroid/media/MediaPlayer;

.field public b:Lcom/octopus/ad/internal/video/a$b;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field public mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

.field private n:Z

.field private o:Lcom/octopus/ad/a/a;

.field private p:Lcom/octopus/ad/internal/video/AdVideoView$a;

.field private q:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:J

.field private s:F

.field private t:F

.field private u:Z

.field private v:I


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdWebView;)V
    .locals 2

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getContextFromMutableContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->c:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->d:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->e:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->f:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->l:I

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->m:Z

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->n:Z

    sget-object v1, Lcom/octopus/ad/internal/video/AdVideoView$a;->a:Lcom/octopus/ad/internal/video/AdVideoView$a;

    iput-object v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->p:Lcom/octopus/ad/internal/video/AdVideoView$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->q:Landroid/util/Pair;

    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->d:Lcom/octopus/ad/internal/video/a$b;

    iput-object v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->b:Lcom/octopus/ad/internal/video/a$b;

    iput v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->v:I

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

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

    invoke-static {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->a(F)F

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/video/AdVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->l:I

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/video/AdVideoView;Lcom/octopus/ad/internal/video/AdVideoView$a;)Lcom/octopus/ad/internal/video/AdVideoView$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->p:Lcom/octopus/ad/internal/video/AdVideoView$a;

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->reset()V

    :goto_0
    return-void
.end method

.method private a(II)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/video/a$c;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/internal/video/a$c;-><init>(II)V

    new-instance v1, Lcom/octopus/ad/internal/video/a$c;

    invoke-direct {v1, p1, p2}, Lcom/octopus/ad/internal/video/a$c;-><init>(II)V

    new-instance p1, Lcom/octopus/ad/internal/video/a;

    invoke-direct {p1, v0, v1}, Lcom/octopus/ad/internal/video/a;-><init>(Lcom/octopus/ad/internal/video/a$c;Lcom/octopus/ad/internal/video/a$c;)V

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView;->b:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/video/a;->a(Lcom/octopus/ad/internal/video/a$b;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 5

    const-string v0, "coin"

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "SCALE"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_1a

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "FIT_XY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "CENTER"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "LEFT_BOTTOM_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "CENTER_INSIDE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "CENTER_TOP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "CENTER_BOTTOM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "RIGHT_TOP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "FIT_CENTER"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "FIT_START"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "RIGHT_BOTTOM_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "START_INSIDE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "FIT_END"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "LEFT_CENTER_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "CENTER_TOP_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "CENTER_BOTTOM_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "CENTER_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "LEFT_CENTER"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "LEFT_BOTTOM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_12
    const-string v4, "END_INSIDE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_13
    const-string v4, "LEFT_TOP_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_14
    const-string v4, "RIGHT_CENTER_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_15
    const-string v4, "LEFT_TOP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_16
    const-string v4, "RIGHT_CENTER"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_17
    const-string v4, "RIGHT_BOTTOM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_18
    const-string v4, "RIGHT_TOP_CROP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->b:Lcom/octopus/ad/internal/video/a$b;

    :goto_1
    iput-object v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->b:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_3

    :pswitch_1
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->j:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->q:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->y:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->i:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->k:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->l:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :goto_2
    :pswitch_7
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->d:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_8
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->c:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_9
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->w:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_a
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->x:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_b
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->e:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_c
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->p:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_d
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->r:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_e
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->t:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_f
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->s:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_10
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->g:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_11
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->h:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_12
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->z:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_13
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->o:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_14
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->v:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_15
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->f:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_16
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->m:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_17
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->n:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :pswitch_18
    sget-object v1, Lcom/octopus/ad/internal/video/a$b;->u:Lcom/octopus/ad/internal/video/a$b;

    goto :goto_1

    :cond_1a
    :goto_3
    const-string v1, "REWARD_ITEM"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "amount"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->q:Landroid/util/Pair;

    goto :goto_5

    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object v1, Lcom/octopus/ad/internal/utilities/HaoboLog;->jsonLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parse reward item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->q:Landroid/util/Pair;

    :cond_1c
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cb5fdc3 -> :sswitch_18
        -0x73d13232 -> :sswitch_17
        -0x72ac0008 -> :sswitch_16
        -0x6ad94f03 -> :sswitch_15
        -0x61205989 -> :sswitch_14
        -0x43642f6e -> :sswitch_13
        -0x41170400 -> :sswitch_12
        -0x3d25d29d -> :sswitch_11
        -0x3c00a073 -> :sswitch_10
        -0x1a4767c6 -> :sswitch_f
        -0x1a29b8c6 -> :sswitch_e
        -0xb38dffc -> :sswitch_d
        -0xa4643fe -> :sswitch_c
        -0x7ae1493 -> :sswitch_b
        0x168b0699 -> :sswitch_a
        0x16ea0e61 -> :sswitch_9
        0x2c4cc674 -> :sswitch_8
        0x41310c63 -> :sswitch_7
        0x48a4e072 -> :sswitch_6
        0x5816b155 -> :sswitch_5
        0x6240024b -> :sswitch_4
        0x63f9e726 -> :sswitch_3
        0x6dc423ec -> :sswitch_2
        0x7645c055 -> :sswitch_1
        0x7b9f8e0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/video/AdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->d:Z

    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/video/AdVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/video/AdVideoView;)Lcom/octopus/ad/a/a;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->o:Lcom/octopus/ad/a/a;

    return-object p0
.end method

.method private b(II)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->onResume()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->onPause()V

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->m:Z

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/video/AdVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->d:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/video/AdVideoView;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->l:I

    return p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/video/AdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->m:Z

    return p0
.end method

.method private setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .param p1    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/octopus/ad/internal/video/AdVideoView;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->stop()V

    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    return-void
.end method

.method public failed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->c:Z

    return v0
.end method

.method public finishActivity()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public getAdWebView()Lcom/octopus/ad/internal/view/AdWebView;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    return-object v0
.end method

.method public getCreativeHeight()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->j:I

    return v0
.end method

.method public getCreativeLeft()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->g:I

    return v0
.end method

.method public getCreativeTop()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->h:I

    return v0
.end method

.method public getCreativeWidth()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->i:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->k:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isLooping()Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->destroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->stop()V

    :cond_1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->release()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->p:Lcom/octopus/ad/internal/video/AdVideoView$a;

    sget-object v1, Lcom/octopus/ad/internal/video/AdVideoView$a;->b:Lcom/octopus/ad/internal/video/AdVideoView$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->pause()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->o:Lcom/octopus/ad/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/a/a;->b()V

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/video/AdVideoView$a;->c:Lcom/octopus/ad/internal/video/AdVideoView$a;

    iput-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->p:Lcom/octopus/ad/internal/video/AdVideoView$a;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->p:Lcom/octopus/ad/internal/video/AdVideoView$a;

    sget-object v1, Lcom/octopus/ad/internal/video/AdVideoView$a;->c:Lcom/octopus/ad/internal/video/AdVideoView$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->start(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->o:Lcom/octopus/ad/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/a/a;->c()V

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/video/AdVideoView$a;->b:Lcom/octopus/ad/internal/video/AdVideoView$a;

    iput-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->p:Lcom/octopus/ad/internal/video/AdVideoView$a;

    :cond_1
    return-void
.end method

.method public onRewardVideoAdComplete()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getRewaredVideoAdListener()Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getRewaredVideoAdListener()Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdComplete()V

    :cond_0
    return-void
.end method

.method public onRewardVideoAdFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getRewaredVideoAdListener()Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getRewaredVideoAdListener()Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdFailedToLoad(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->finishActivity()V

    return-void
.end method

.method public onRewardVideoAdReward()V
    .locals 3

    iget-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->q:Landroid/util/Pair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->f:Z

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->q:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/octopus/ad/internal/b;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v11, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "octopus"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v13, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->u:Z

    if-eqz v0, :cond_3

    iget v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->s:F

    iget v1, v11, Lcom/octopus/ad/internal/video/AdVideoView;->t:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/octopus/ad/internal/video/AdVideoView;->a(FFFF)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput-boolean v12, v11, Lcom/octopus/ad/internal/video/AdVideoView;->u:Z

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v11, Lcom/octopus/ad/internal/video/AdVideoView;->r:J

    sub-long v4, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    cmp-long v6, v4, v0

    if-gez v6, :cond_3

    iget-boolean v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->clickCount:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->clickCount:I

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->d()V

    iget-object v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget v4, v1, Lcom/octopus/ad/internal/view/AdViewImpl;->clickCount:I

    iget v5, v1, Lcom/octopus/ad/internal/view/AdViewImpl;->loadCount:I

    if-gt v4, v5, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    :goto_0
    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getOpensNativeBrowser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/network/ServerResponse;->setOpenInNativeBrowser(Z)V

    iget-object v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-wide v14, v11, Lcom/octopus/ad/internal/video/AdVideoView;->r:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v11, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v1, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v15

    iget v4, v11, Lcom/octopus/ad/internal/video/AdVideoView;->v:I

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move/from16 v16, v4

    move-object v4, v7

    move-object v5, v9

    move-object v6, v10

    move-object v7, v14

    move-object v9, v15

    move/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Lcom/octopus/ad/internal/network/ServerResponse;->handleClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/octopus/ad/internal/video/AdVideoView;->r:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->s:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v11, Lcom/octopus/ad/internal/video/AdVideoView;->t:F

    iput-boolean v13, v11, Lcom/octopus/ad/internal/video/AdVideoView;->u:Z

    const-string v0, "ACTION_DOWN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    const/4 v12, 0x1

    :cond_6
    return v12
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getWindowVisibility()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/video/AdVideoView;->b(II)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->b(II)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/network/ServerResponse;->handleOnPause(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->prepare(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public prepare(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->reset()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setAssetData(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/video/AdVideoView;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public setCountDownTimer(Lcom/octopus/ad/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->o:Lcom/octopus/ad/a/a;

    return-void
.end method

.method public setCreativeLeft(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->g:I

    return-void
.end method

.method public setCreativeTop(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->h:I

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->a()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->a()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->a()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->a()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->a()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setHasFail()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->c:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOpt(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->v:I

    return-void
.end method

.method public setRawData(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/video/AdVideoView;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->k:I

    return-void
.end method

.method public setScalableType(Lcom/octopus/ad/internal/video/a$b;)V
    .locals 1

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->b:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getVideoWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getVideoHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->a(II)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public start(I)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0, p0, p1}, Lcom/octopus/ad/internal/network/ServerResponse;->handleOnStart(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public toggleMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->n:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->setVolume(FF)V

    iget-boolean v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->n:Z

    return v0
.end method

.method public transferAd(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V
    .locals 7

    invoke-static {p2}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeHeight()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->j:I

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeWidth()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->i:I

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeTop()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->h:I

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getCreativeLeft()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->g:I

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getRefreshInterval()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->k:I

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v0, Lcom/octopus/ad/internal/video/a$b;->d:Lcom/octopus/ad/internal/video/a$b;

    iput-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->b:Lcom/octopus/ad/internal/video/a$b;

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->videoLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->videoview_loading:I

    invoke-static {v1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->getAdExtras()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->a(Ljava/util/HashMap;)V

    :try_start_1
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->b()Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/UserEnvInfoUtil;->isUsingWifi(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/AdWebView;->IsVideoWifiOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/b/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->videoLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->wifi_video_load:I

    invoke-static {v0, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->setHasFail()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->isMuted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/octopus/ad/internal/video/AdVideoView;->n:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, p2, p2}, Lcom/octopus/ad/internal/video/AdVideoView;->setVolume(FF)V

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/octopus/ad/internal/m;->l()F

    move-result p2

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->m()F

    move-result v0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getCreativeWidth()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getCreativeHeight()I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getCreativeWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    add-float/2addr v1, v4

    float-to-int v2, v1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getCreativeHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    move v6, v2

    move v2, v1

    move v1, v6

    :goto_2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getCreativeLeft()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getCreativeTop()I

    move-result v3

    if-nez v3, :cond_5

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p2, v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x800033

    invoke-direct {v3, v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getCreativeTop()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    add-float/2addr v1, v4

    float-to-int v0, v1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->getCreativeLeft()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    add-float/2addr v1, v4

    float-to-int p2, v1

    const/4 v1, 0x0

    invoke-virtual {v3, p2, v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p2, Lcom/octopus/ad/internal/video/a$b;->c:Lcom/octopus/ad/internal/video/a$b;

    invoke-virtual {p0, p2}, Lcom/octopus/ad/internal/video/AdVideoView;->setScalableType(Lcom/octopus/ad/internal/video/a$b;)V

    :goto_3
    new-instance p2, Lcom/octopus/ad/internal/video/AdVideoView$1;

    invoke-direct {p2, p0, p1}, Lcom/octopus/ad/internal/video/AdVideoView$1;-><init>(Lcom/octopus/ad/internal/video/AdVideoView;Lcom/octopus/ad/internal/view/AdWebView;)V

    invoke-virtual {p0, p2}, Lcom/octopus/ad/internal/video/AdVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, Lcom/octopus/ad/internal/video/AdVideoView$2;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/video/AdVideoView$2;-><init>(Lcom/octopus/ad/internal/video/AdVideoView;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/video/AdVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    new-instance p1, Lcom/octopus/ad/internal/video/AdVideoView$3;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/video/AdVideoView$3;-><init>(Lcom/octopus/ad/internal/video/AdVideoView;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/video/AdVideoView;->prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p1, Lcom/octopus/ad/internal/video/AdVideoView$4;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/video/AdVideoView$4;-><init>(Lcom/octopus/ad/internal/video/AdVideoView;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/video/AdVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->videoLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->failed_video_load:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->setHasFail()V

    return-void

    :catch_2
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->videoLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->invalid_video_url:I

    invoke-static {v0, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/video/AdVideoView;->setHasFail()V

    return-void
.end method

.method public visible()V
    .locals 8

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->showAdLogo(Landroid/view/View;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->shouldDisplayButton()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v2, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getAutoCloseTime()I

    move-result v0

    iget v3, p0, Lcom/octopus/ad/internal/video/AdVideoView;->l:I

    const/4 v2, 0x1

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v4, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getShowCloseBtnTime()I

    move-result v0

    iget v5, p0, Lcom/octopus/ad/internal/video/AdVideoView;->l:I

    iget-object v6, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v6, v6, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v6}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move-object v2, v4

    move v4, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/octopus/ad/internal/view/AdViewImpl;->addCloseButton(IIILandroid/view/View;Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v4, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdWebView;->getShowCloseBtnTime()I

    move-result v0

    iget-object v5, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v5}, Lcom/octopus/ad/internal/view/AdWebView;->getAutoCloseTime()I

    move-result v5

    iget-object v6, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v6, v6, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v6}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    if-ne v6, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    move-object v2, v4

    move v4, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/octopus/ad/internal/view/AdViewImpl;->addCloseButton(IIILandroid/view/View;Z)V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-boolean v1, p0, Lcom/octopus/ad/internal/video/AdVideoView;->n:Z

    invoke-virtual {v0, p0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->addMuteButton(Lcom/octopus/ad/internal/video/AdVideoView;Z)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->isRewardVideo()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->a()V

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/octopus/ad/internal/network/ServerResponse;->handleView(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdWebView(Lcom/octopus/ad/internal/view/AdWebView;)V

    :cond_5
    return-void
.end method
