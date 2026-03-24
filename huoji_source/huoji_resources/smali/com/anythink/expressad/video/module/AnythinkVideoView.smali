.class public Lcom/anythink/expressad/video/module/AnythinkVideoView;
.super Lcom/anythink/expressad/video/module/AnythinkBaseView;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/f;
.implements Lcom/anythink/expressad/video/signal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/module/AnythinkVideoView$a;,
        Lcom/anythink/expressad/video/module/AnythinkVideoView$b;
    }
.end annotation


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field private static C:I = 0x0

.field private static final D:Ljava/lang/String; = "2"

.field public static final TAG:Ljava/lang/String; = "AnythinkVideoView"

.field private static aw:Z = false

.field private static final t:Ljava/lang/String; = "anythink_reward_videoview_item"

.field private static final u:I = 0x1

.field private static final v:F = 1280.0f

.field private static final w:F = 720.0f

.field private static final x:F = 0.1f

.field private static y:I

.field private static z:I


# instance fields
.field private E:Lcom/anythink/expressad/playercommon/PlayerView;

.field private F:Lcom/anythink/expressad/video/widget/SoundImageView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ProgressBar;

.field private L:Lcom/anythink/expressad/widget/FeedBackButton;

.field private M:Z

.field private N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

.field private O:Lcom/anythink/expressad/video/dynview/f/a;

.field private P:I

.field private Q:Landroid/widget/FrameLayout;

.field private R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

.field private S:Lcom/anythink/expressad/video/signal/factory/b;

.field private T:I

.field private U:Landroid/widget/RelativeLayout;

.field private V:Lcom/anythink/expressad/video/module/a/a;

.field private W:Z

.field private aA:I

.field private aB:I

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:Landroid/view/animation/AlphaAnimation;

.field private aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

.field private aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

.field private aN:Z

.field private aO:Ljava/lang/Runnable;

.field private aa:Z

.field private ab:Ljava/lang/String;

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Lcom/anythink/expressad/widget/a/a;

.field private ah:Lcom/anythink/expressad/widget/a/b;

.field private ai:Ljava/lang/String;

.field private aj:D

.field private ak:D

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:I

.field private av:Z

.field private ax:I

.field private ay:Ljava/lang/String;

.field private az:I

.field public mCampOrderViewData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public mCampaignSize:I

.field public mCurrPlayNum:I

.field public mCurrentPlayProgressTime:I

.field public mMuteSwitch:I

.field public n:Lcom/anythink/expressad/reward/player/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mMuteSwitch:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->P:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrentPlayProgressTime:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->am:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ar:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkVideoView$3;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$3;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mMuteSwitch:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->P:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrentPlayProgressTime:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->am:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ar:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    new-instance p2, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkVideoView$3;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$3;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/dynview/f/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->O:Lcom/anythink/expressad/video/dynview/f/a;

    return-object p0
.end method

.method public static synthetic B(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->P:I

    return p0
.end method

.method public static synthetic C(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    return p0
.end method

.method public static synthetic D(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    return p0
.end method

.method public static synthetic E(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    return-object p0
.end method

.method public static synthetic F(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aK:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method public static synthetic G(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->J:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic H(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result p1

    :goto_0
    return p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->T:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/module/a/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    return-object p0
.end method

.method private static a(II)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    int-to-float p0, p0

    int-to-float v0, p1

    div-float/2addr p0, v0

    float-to-double v0, p0

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    const-string v0, "anythink_reward_videoview_item"

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->findLayout(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/video/dynview/j/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/j/c;-><init>()V

    invoke-static {p1, p2}, Lcom/anythink/expressad/video/dynview/j/c;->a(Landroid/view/View;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/dynview/c;

    move-result-object p2

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Landroid/view/ViewGroup;Lcom/anythink/expressad/video/dynview/c;)V

    invoke-static {p2, v0}, Lcom/anythink/expressad/video/dynview/b;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$2;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    return p1
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    return p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/module/AnythinkVideoView;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Z)Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Alert_window_status"

    if-nez v2, :cond_1

    :try_start_1
    sget v2, Lcom/anythink/expressad/foundation/g/a;->cv:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-boolean v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cx:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-boolean v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cw:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string v2, "complete_info"

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private b()V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->c()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aK:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-void
.end method

.method private b(I)V
    .locals 3

    if-lez p1, :cond_1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt p1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b()V

    return-void
.end method

.method private b(II)Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lt v0, p1, :cond_0

    if-lt v1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/playercommon/PlayerView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    return p0
.end method

.method private e()V
    .locals 9

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x8

    const-string v2, ""

    const/4 v3, 0x2

    if-eqz v0, :cond_e

    :try_start_1
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v0, v4, :cond_0

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v4, :cond_e

    :cond_0
    iget-boolean v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    if-eqz v4, :cond_2

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    sget v4, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->getCurPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v4}, Lcom/anythink/expressad/playercommon/PlayerView;->getDuration()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->bi()I

    move-result v4

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v4}, Lcom/anythink/expressad/playercommon/PlayerView;->getDuration()I

    move-result v4

    :goto_0
    int-to-float v5, v0

    int-to-float v4, v4

    div-float/2addr v5, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v5, v4

    float-to-int v4, v5

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v6, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-ne v5, v6, :cond_a

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aA:I

    sget v6, Lcom/anythink/expressad/foundation/g/a;->ct:I

    if-ne v5, v6, :cond_7

    iget v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    if-lt v4, v6, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    sget v6, Lcom/anythink/expressad/foundation/g/a;->cu:I

    if-ne v5, v6, :cond_9

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    if-lt v0, v5, :cond_9

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_8
    return-void

    :cond_9
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v3, :cond_a

    invoke-interface {v3, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_a
    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v5, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v3, v5, :cond_d

    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aA:I

    sget v5, Lcom/anythink/expressad/foundation/g/a;->ct:I

    if-ne v3, v5, :cond_c

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    if-lt v4, v5, :cond_c

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_b

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    sget v4, Lcom/anythink/expressad/foundation/g/a;->cu:I

    if-ne v3, v4, :cond_d

    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    if-lt v0, v3, :cond_d

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_d

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    if-eq v0, v3, :cond_15

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v4}, Lcom/anythink/expressad/playercommon/PlayerView;->getCurPosition()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_10

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    if-le v5, v8, :cond_10

    if-eqz v0, :cond_12

    if-lez v0, :cond_12

    if-ge v4, v0, :cond_12

    :cond_f
    :goto_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_10
    if-lez v0, :cond_11

    if-lt v4, v0, :cond_f

    :cond_11
    if-nez v0, :cond_12

    goto :goto_1

    :cond_12
    :goto_2
    if-eqz v7, :cond_13

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ae:I

    if-ne v0, v8, :cond_13

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_14

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_14

    invoke-interface {v0, v3, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_16

    invoke-interface {v0, v3, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_16
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    return v0
.end method

.method private f()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v2, "anythink_vfpv"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/playercommon/PlayerView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v2, "anythink_sound_switch"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/widget/SoundImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v2, "anythink_tv_count"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v2, "anythink_rl_playing_close"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_top_control"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_videoview_bg"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->J:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_video_progress_bar"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->K:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_native_endcard_feed_btn"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/widget/FeedBackButton;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->L:Lcom/anythink/expressad/widget/FeedBackButton;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_reward_segment_progressbar"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_reward_cta_layout"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_animation_click_view"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_reward_moreoffer_layout"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->U:Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "https://mores.toponad.com/image/default/mintegral_logo.png"

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v3

    new-instance v4, Lcom/anythink/expressad/video/module/AnythinkVideoView$10;

    invoke-direct {v4, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$10;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v3, v1, v4}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-boolean v3, Lcom/anythink/expressad/a;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method

.method public static synthetic f(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    return p0
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->U()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-lez v2, :cond_0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    :cond_0
    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-lez v2, :cond_1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnythinkBaseView mVideoW:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  mVideoH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_2
    iget-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    cmpg-double v2, v0, v3

    if-gtz v2, :cond_3

    const-wide/high16 v0, 0x4094000000000000L    # 1280.0

    iput-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    :cond_3
    iget-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    cmpg-double v2, v0, v3

    if-gtz v2, :cond_4

    const-wide v0, 0x4086800000000000L    # 720.0

    iput-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    :cond_4
    return-void
.end method

.method public static synthetic g(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    return-void
.end method

.method private h()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->onPause()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aw()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ax()V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/n;->m()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v2}, Lcom/anythink/expressad/a/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    return v0
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->am:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->playVideo()Z

    move-result v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_0

    const-string v1, "play video failed"

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->onPlayError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->am:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic i(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    return p0
.end method

.method public static synthetic j(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    return p0
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->M:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    :cond_2
    return-void
.end method

.method private k()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    if-ltz v1, :cond_2

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$11;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$11;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic k(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    return v0
.end method

.method private l()V
    .locals 14

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v5

    if-ne v5, v3, :cond_0

    cmpl-float v5, v0, v1

    if-gtz v5, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v2

    if-ne v2, v4, :cond_2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    :cond_1
    add-float/2addr v0, v1

    sub-float v1, v0, v1

    sub-float/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v2, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42d00000    # 104.0f

    invoke-static {v5, v6}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v6

    if-ne v6, v4, :cond_6

    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v6

    if-ne v6, v3, :cond_3

    mul-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    sub-float/2addr v0, v7

    mul-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    sub-float/2addr v1, v7

    :cond_3
    if-ne v6, v4, :cond_4

    mul-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    sub-float/2addr v0, v7

    mul-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    sub-float/2addr v1, v7

    :cond_4
    if-nez v6, :cond_6

    iget v6, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->d:I

    if-ne v6, v3, :cond_5

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    goto :goto_0

    :cond_5
    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v0, v5

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    :goto_0
    sub-float/2addr v1, v2

    :cond_6
    iget-wide v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    if-lez v2, :cond_11

    iget-wide v8, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    cmpg-double v2, v8, v6

    if-lez v2, :cond_11

    const/4 v2, 0x0

    cmpg-float v6, v0, v2

    if-lez v6, :cond_11

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_7

    goto/16 :goto_5

    :cond_7
    div-double/2addr v4, v8

    div-float v2, v0, v1

    float-to-double v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "videoWHDivide:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "  screenWHDivide:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/Double;)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/Double;)D

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "videoWHDivideFinal:"

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "  screenWHDivideFinal:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x11

    const/4 v11, -0x1

    cmpl-double v12, v8, v6

    if-lez v12, :cond_8

    float-to-double v6, v0

    iget-wide v8, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    mul-double v6, v6, v8

    iget-wide v8, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    div-double/2addr v6, v8

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    double-to-int v6, v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_8
    cmpg-double v12, v8, v6

    if-gez v12, :cond_9

    float-to-double v6, v1

    mul-double v6, v6, v4

    double-to-int v6, v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_9
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_2
    :try_start_0
    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c$c;->b()I

    move-result v6

    iget-object v7, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v7}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v7

    const/16 v8, 0x66

    const/16 v9, 0xca

    if-eq v6, v8, :cond_a

    if-ne v6, v9, :cond_c

    :cond_a
    if-ne v7, v3, :cond_b

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-wide v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    iget-wide v7, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    float-to-double v12, v0

    div-double/2addr v7, v12

    div-double/2addr v3, v7

    double-to-int v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_b
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    float-to-double v7, v1

    mul-double v7, v7, v4

    double-to-int v1, v7

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_c
    :goto_3
    if-ne v6, v9, :cond_d

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(Ljava/lang/String;)V

    :cond_d
    const/16 v1, 0x12e

    if-eq v6, v1, :cond_e

    const/16 v1, 0x322

    if-ne v6, v1, :cond_10

    :cond_e
    iget-wide v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    iget-wide v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    div-double v7, v3, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v7, v9

    if-lez v1, :cond_f

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-double v0, v0

    mul-double v5, v5, v0

    div-double/2addr v5, v3

    double-to-int v0, v5

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    iget-wide v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    int-to-double v5, v0

    mul-double v3, v3, v5

    iget-wide v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    div-double/2addr v3, v5

    double-to-int v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    return-void

    :cond_11
    :goto_5
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->m()V

    return-void
.end method

.method public static synthetic l(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    return v0
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setLayoutParam(IIII)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic m(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    return-void
.end method

.method private n()V
    .locals 4

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->L:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->L:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic n(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    return v0
.end method

.method private o()I
    .locals 4

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->x()I

    move-result v0

    return v0
.end method

.method public static synthetic o(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    return p0
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/i;

    invoke-direct {v2, v0}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->S:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    return v0
.end method

.method public static synthetic q(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->M:Z

    return v0
.end method

.method public static synthetic r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->K:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic s(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic u(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n()V

    return-void
.end method

.method public static synthetic v(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->T:I

    return p0
.end method

.method public static synthetic w(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    return v0
.end method

.method public static synthetic x(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic y(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/widget/FeedBackButton;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->L:Lcom/anythink/expressad/widget/FeedBackButton;

    return-object p0
.end method

.method public static synthetic z(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/widget/SoundImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    return-object p0
.end method


# virtual methods
.method public alertWebViewShowed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingAlertViewCover(Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c()V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/i/c;->a(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/i/c;->a(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$5;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$5;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$6;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$6;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public closeVideoOperate(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    :cond_0
    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->gonePlayingCloseView()V

    return-void

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->M:Z

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    :cond_5
    return-void
.end method

.method public defaultShow()V
    .locals 12

    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->defaultShow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v5

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showVideoLocation(IIIIIIIII)V

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->closeVideoOperate(II)V

    :cond_0
    return-void
.end method

.method public dismissAllAlert()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_1

    const/16 v1, 0x7d

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getBorderViewHeight()I
    .locals 1

    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->C:I

    return v0
.end method

.method public getBorderViewLeft()I
    .locals 1

    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->A:I

    return v0
.end method

.method public getBorderViewRadius()I
    .locals 1

    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->y:I

    return v0
.end method

.method public getBorderViewTop()I
    .locals 1

    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->z:I

    return v0
.end method

.method public getBorderViewWidth()I
    .locals 1

    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->B:I

    return v0
.end method

.method public getCloseAlert()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ae:I

    return v0
.end method

.method public getCurrentProgress()Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->bi()I

    move-result v1

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "progress"

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "time"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "duration"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string v0, "{}"

    return-object v0
.end method

.method public getMute()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    return v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSkipTime()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    return v0
.end method

.method public gonePlayingCloseView()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    if-ltz v1, :cond_3

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    return-void

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$11;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$11;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public hideAlertView(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingAlertViewCover(Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v2

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    const-string v0, ""

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-ne p1, v2, :cond_6

    :cond_0
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_1

    const/16 v2, 0x7c

    invoke-interface {p1, v2, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_1
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->gonePlayingCloseView()V

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    return-void

    :cond_3
    const/4 v1, 0x2

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_6

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isH5Canvas()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInstallDialogShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    return v0
.end method

.method public isMiniCardShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    return v0
.end method

.method public isShowingAlertView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    return v0
.end method

.method public isShowingTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    return v0
.end method

.method public isfront()Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-gt v2, v6, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    :cond_2
    :goto_1
    return v1
.end method

.method public notifyCloseBtn(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ar:Z

    :cond_1
    return-void
.end method

.method public notifyVideoClose()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onBackPress()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ar:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    return-void

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 7

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->S:Lcom/anythink/expressad/video/signal/factory/b;

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ab:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_7

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->U()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->U()Ljava/lang/String;

    move-result-object p1

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_2

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v1

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    :cond_0
    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-lez v2, :cond_1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "AnythinkBaseView mVideoW:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  mVideoH:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_2
    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_3

    const-wide/high16 v1, 0x4094000000000000L    # 1280.0

    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    :cond_3
    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_4

    const-wide v1, 0x4086800000000000L    # 720.0

    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n:Lcom/anythink/expressad/reward/player/c;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/anythink/expressad/reward/player/c;->c()V

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n:Lcom/anythink/expressad/reward/player/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ad:I

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->initBufferIngParam(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/anythink/expressad/playercommon/PlayerView;->initVFPData(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/expressad/playercommon/VideoPlayerStatusListener;)Z

    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(IILjava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_7

    const/16 v1, 0xc

    const-string v2, "AnyThinkVideoView initSuccess false"

    invoke-interface {p1, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_7
    :goto_0
    sput-boolean v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    return-void
.end method

.method public progressBarOperate(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->K:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->K:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public progressOperate(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->bi()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->seekTo(I)V

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n()V

    :cond_4
    return-void
.end method

.method public releasePlayer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->release()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->b()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ad:I

    return-void
.end method

.method public setCTALayoutVisibleOrGone()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->T:I

    const/4 v2, -0x1

    if-ge v1, v2, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    new-instance v3, Lcom/anythink/expressad/video/module/a/a/i;

    invoke-direct {v3, v0}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->S:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_6
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->T:I

    const/4 v1, 0x0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_7
    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_8
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method public setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/video/dynview/f/a;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->O:Lcom/anythink/expressad/video/dynview/f/a;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    iput p3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    iput p4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->P:I

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    iget p3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    const/4 p4, 0x2

    invoke-virtual {p1, p3, p4}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;->init(II)V

    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aF()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    invoke-virtual {p3, p1, p2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;->setProgress(II)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    nop

    :cond_5
    :goto_1
    return-void
.end method

.method public setCampaign(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result p1

    :goto_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v2

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->x()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a(II)V

    :cond_1
    return-void
.end method

.method public setCloseAlert(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ae:I

    return-void
.end method

.method public setContainerViewOnNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    return-void
.end method

.method public setCover(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    :cond_0
    return-void
.end method

.method public setDialogRole(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setIVRewardEnable(III)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aA:I

    iput p3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    return-void
.end method

.method public setInstallDialogState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    return-void
.end method

.method public setIsIV(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a(Z)V

    :cond_0
    return-void
.end method

.method public setMiniEndCardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTCH VideoView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%1s-%2s-%3s-%4s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    new-instance v7, Lcom/anythink/expressad/video/module/AnythinkVideoView$12;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/video/module/AnythinkVideoView$12;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;IIII)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, v7, p1, p2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setPlayURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ab:Ljava/lang/String;

    return-void
.end method

.method public setScaleFitXY(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->au:I

    return-void
.end method

.method public setShowingAlertViewCover(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    return-void
.end method

.method public setShowingTransparent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    return-void
.end method

.method public setSoundState(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    return-void
.end method

.method public setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n:Lcom/anythink/expressad/reward/player/c;

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVideoLayout(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/video/dynview/j/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/j/c;-><init>()V

    invoke-static {p0, p1}, Lcom/anythink/expressad/video/dynview/j/c;->a(Landroid/view/View;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/dynview/c;

    move-result-object p1

    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Landroid/view/ViewGroup;Lcom/anythink/expressad/video/dynview/c;)V

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/dynview/b;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;)V

    return-void

    :cond_1
    const-string p1, "anythink_reward_videoview_item"

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->findLayout(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b()V

    :cond_2
    const/4 p1, 0x0

    sput-boolean p1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    return-void
.end method

.method public setVideoSkipTime(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showAlertView()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ah:Lcom/anythink/expressad/widget/a/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ah:Lcom/anythink/expressad/widget/a/b;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ah:Lcom/anythink/expressad/widget/a/b;

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/widget/a/a;-><init>(Landroid/content/Context;Lcom/anythink/expressad/widget/a/b;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    :cond_2
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/widget/a/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/widget/a/a;->b()V

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/widget/a/a;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingAlertViewCover(Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/d;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ay:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public showBaitClickView()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    :try_start_0
    const-string v1, "bait_click"

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->init(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->startAnimation()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$4;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$4;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public showIVRewardAlertView(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x8

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public showMoreOfferInPlayTemplate()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->U:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_3
    :goto_0
    return-void
.end method

.method public showVideoLocation(IIIIIIIII)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showVideoLocation marginTop:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " marginLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-lez p3, :cond_2

    if-lez p4, :cond_2

    if-lt v0, p3, :cond_2

    if-lt v2, p4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    if-nez v0, :cond_9

    sput p6, Lcom/anythink/expressad/video/module/AnythinkVideoView;->z:I

    sput p7, Lcom/anythink/expressad/video/module/AnythinkVideoView;->A:I

    add-int/lit8 p8, p8, 0x4

    sput p8, Lcom/anythink/expressad/video/module/AnythinkVideoView;->B:I

    add-int/lit8 p9, p9, 0x4

    sput p9, Lcom/anythink/expressad/video/module/AnythinkVideoView;->C:I

    int-to-float p6, p3

    int-to-float p7, p4

    div-float/2addr p6, p7

    const/4 p7, 0x0

    :try_start_0
    iget-wide p8, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    iget-wide v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    div-double/2addr p8, v4

    double-to-float p7, p8

    goto :goto_1

    :catchall_0
    move-exception p8

    invoke-virtual {p8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_1
    if-lez p5, :cond_4

    sput p5, Lcom/anythink/expressad/video/module/AnythinkVideoView;->y:I

    if-lez p5, :cond_4

    new-instance p8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p9

    int-to-float p5, p5

    invoke-static {p9, p5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p8, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p5, -0x1

    invoke-virtual {p8, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p8, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p9, 0x10

    if-lt p5, p9, :cond_3

    invoke-virtual {p0, p8}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p9, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p9, p8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p9, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p9, p8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const/16 p8, 0x15

    if-lt p5, p8, :cond_4

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    iget-object p5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p5, v3}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    :cond_4
    sub-float/2addr p6, p7

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const p6, 0x3dcccccd    # 0.1f

    cmpg-float p5, p5, p6

    if-lez p5, :cond_6

    iget p5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->au:I

    if-ne p5, v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l()V

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    return-void

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l()V

    iget-boolean p5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    if-eqz p5, :cond_8

    invoke-virtual {p0, p3, p4}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setLayoutCenter(II)V

    sget-boolean p1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    const-string p2, ""

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p3, 0x72

    invoke-interface {p1, p3, p2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p3, 0x74

    invoke-interface {p1, p3, p2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void

    :cond_8
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setLayoutParam(IIII)V

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l()V

    :cond_a
    return-void
.end method

.method public soundOperate(II)V
    .locals 1

    const-string v0, "2"

    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(IILjava/lang/String;)V

    return-void
.end method

.method public soundOperate(IILjava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_6

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lcom/anythink/expressad/video/widget/SoundImageView;->setSoundStatus(Z)V

    :cond_0
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v3}, Lcom/anythink/expressad/playercommon/PlayerView;->closeSound()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/video/widget/SoundImageView;->setSoundStatus(Z)V

    :cond_2
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v3}, Lcom/anythink/expressad/playercommon/PlayerView;->openSound()V

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-ne p2, v2, :cond_5

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz p2, :cond_6

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    const-string p2, "2"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p2, :cond_7

    const/4 p3, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public videoOperate(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->f:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isfront()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p1}, Lcom/anythink/expressad/playercommon/PlayerView;->release()V

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    return-void

    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    return-void

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isMiniCardShowing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    :cond_4
    return-void
.end method
