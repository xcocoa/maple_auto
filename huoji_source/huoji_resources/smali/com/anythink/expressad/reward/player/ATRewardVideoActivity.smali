.class public Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;
.super Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "unitId"

.field public static b:Ljava/lang/String; = "userId"

.field public static c:Ljava/lang/String; = "reward"

.field public static d:Ljava/lang/String; = "mute"

.field public static e:Ljava/lang/String; = "isIV"

.field public static f:Ljava/lang/String; = "isBid"

.field public static g:Ljava/lang/String; = "isBigOffer"

.field public static h:Ljava/lang/String; = "hasRelease"

.field public static i:Ljava/lang/String; = "ivRewardMode"

.field public static j:Ljava/lang/String; = "ivRewardValueType"

.field public static k:Ljava/lang/String; = "ivRewardValue"

.field public static l:Ljava/lang/String; = "extraData"

.field public static m:Ljava/lang/String; = "baserequestInfo"

.field private static final v:Ljava/lang/String; = "ATRewardVideoActivity"


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Lcom/anythink/expressad/video/bt/module/b/h;

.field private J:Lcom/anythink/expressad/videocommon/e/d;

.field private K:Z

.field private L:Z

.field private M:Lcom/anythink/expressad/videocommon/b/c;

.field private N:Lcom/anythink/expressad/foundation/d/c;

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/videocommon/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

.field private R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

.field private S:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

.field private T:Lcom/anythink/expressad/video/bt/module/a/a;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Z

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:Lcom/anythink/expressad/video/dynview/f/a;

.field private af:Lcom/anythink/expressad/video/dynview/f/d;

.field public n:Lcom/anythink/core/common/f/m;

.field public o:Lcom/anythink/expressad/foundation/d/c;

.field public p:J

.field public q:J

.field public r:J

.field public s:Lcom/anythink/expressad/reward/player/b;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/anythink/expressad/videocommon/c/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->A:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->B:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->C:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->G:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->H:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->K:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->L:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    iput v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Y:I

    iput v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Z:I

    iput v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->aa:I

    iput v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ab:I

    iput v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ac:I

    iput v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ad:I

    new-instance v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;-><init>(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)V

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ae:Lcom/anythink/expressad/video/dynview/f/a;

    new-instance v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$2;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$2;-><init>(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)V

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->af:Lcom/anythink/expressad/video/dynview/f/d;

    new-instance v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;-><init>(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)V

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->s:Lcom/anythink/expressad/reward/player/b;

    return-void
.end method

.method private a(II)I
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v3

    :cond_2
    iget-object v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->bi()I

    move-result v4

    add-int/2addr v2, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x2d

    const/4 v4, 0x1

    if-ne p2, v4, :cond_7

    if-nez p1, :cond_5

    if-lt v2, v1, :cond_6

    const/16 p1, 0x2d

    goto :goto_2

    :cond_5
    if-le v2, p1, :cond_6

    if-le p1, v1, :cond_b

    return v1

    :cond_6
    move p1, v2

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, p2, -0x1

    if-ge p1, v2, :cond_9

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->bi()I

    move-result v2

    add-int/2addr v1, v2

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_9
    if-le v3, v1, :cond_a

    sub-int p1, v3, v1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :cond_b
    :goto_2
    return p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->A:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(II)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;
    .locals 0

    invoke-static {p0}, Lcom/anythink/expressad/videocommon/a;->a(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/videocommon/a$a;->a()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/foundation/d/c;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    return-object p0
.end method

.method private a(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {p0, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42d00000    # 104.0f

    invoke-static {p0, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v4

    if-nez v4, :cond_1

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    iget v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(II)I

    move-result v0

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->m()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->b(I)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/foundation/d/c;)V

    return-void

    :cond_0
    const-string p1, "campaign is less"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 17

    move-object/from16 v0, p0

    :try_start_0
    iget-object v1, v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->n:Lcom/anythink/core/common/f/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v3, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object v7, v2

    :goto_2
    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->n:Lcom/anythink/core/common/f/m;

    iget v3, v3, Lcom/anythink/core/common/f/m;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, v2

    :goto_3
    iget-object v1, v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->n:Lcom/anythink/core/common/f/m;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->n:Lcom/anythink/core/common/f/m;

    iget v3, v3, Lcom/anythink/core/common/f/m;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object v9, v2

    :goto_4
    const/4 v10, 0x2

    const/4 v11, 0x1

    iget-object v1, v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->o:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object v12, v2

    :goto_5
    const-string v13, "20"

    iget-object v1, v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->o:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_6
    move-object/from16 v4, p1

    move-wide/from16 v15, p2

    invoke-static/range {v4 .. v16}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "no available campaign"

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c()V

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Y:I

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->bi()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Y:I

    goto :goto_1

    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    iget v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(II)I

    move-result v0

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->m()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->b(I)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/foundation/d/c;)V

    return-void

    :cond_6
    const-string p1, "campaign is less"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    return v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;I)I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Y:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Y:I

    return v0
.end method

.method private b()V
    .locals 6

    const-string v0, "anythink_temp_container"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "no id anythink_bt_container in anythink_more_offer_activity layout"

    invoke-direct {p0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-nez v0, :cond_1

    const-string v0, "env error"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/h/b;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(I)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-boolean v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->C:Z

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setBidCampaign(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-boolean v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->G:Z

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setBigOffer(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    const-string v0, "anythink_reward_root_container"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    iget v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Y:I

    invoke-virtual {v0, v2, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setCampOrderViewData(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ae:Lcom/anythink/expressad/video/dynview/f/a;

    iget v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    invoke-virtual {v0, v2, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;I)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setCampaignDownLoadTask(Lcom/anythink/expressad/videocommon/b/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-boolean v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->B:Z

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setIV(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0, v1, v1, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setIVRewardEnable(III)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->D:I

    iget v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->E:I

    iget v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->F:I

    invoke-virtual {v0, v2, v4, v5}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setIVRewardEnable(III)V

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->A:I

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setMute(I)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->V:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/c;->aH:Lcom/anythink/expressad/foundation/d/p;

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/c;->aH:Lcom/anythink/expressad/foundation/d/p;

    if-eqz v0, :cond_9

    :cond_7
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/p;->a()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/p;->a()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/anythink/expressad/videocommon/c/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/c/c;->b()I

    move-result v0

    if-gez v0, :cond_8

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    :cond_8
    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setReward(Lcom/anythink/expressad/videocommon/c/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->J:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setRewardUnitSetting(Lcom/anythink/expressad/videocommon/e/d;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setPlacementId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->I:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setShowRewardListener(Lcom/anythink/expressad/video/bt/module/b/h;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->s:Lcom/anythink/expressad/reward/player/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onCreate()V

    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->G:Z

    invoke-direct {p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ad:I

    iget v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Z:I

    iget v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ab:I

    iget v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->aa:I

    iget v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ac:I

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setNotchPadding(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const-string p1, "more offer to one offer exception"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/foundation/d/c;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->I:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->finish()V

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static synthetic c(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Lcom/anythink/expressad/foundation/d/c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    return-object p0
.end method

.method private c()V
    .locals 4

    const-string v0, "anythink_bt_container"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "no anythink_webview_framelayout in anythink_more_offer_activity layout"

    invoke-direct {p0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-nez v0, :cond_1

    const-string v0, "env error"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->d()Lcom/anythink/expressad/video/bt/module/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->T:Lcom/anythink/expressad/video/bt/module/a/a;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->setBTContainerCallback(Lcom/anythink/expressad/video/bt/module/a/a;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->I:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->setShowRewardVideoListener(Lcom/anythink/expressad/video/bt/module/b/h;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->af:Lcom/anythink/expressad/video/dynview/f/d;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->setChoiceOneCallback(Lcom/anythink/expressad/video/dynview/f/d;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->setCampaigns(Ljava/util/List;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->setCampaignDownLoadTasks(Ljava/util/List;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->J:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setRewardUnitSetting(Lcom/anythink/expressad/videocommon/e/d;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setPlacementId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->V:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/c;->aH:Lcom/anythink/expressad/foundation/d/p;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/c;->aH:Lcom/anythink/expressad/foundation/d/p;

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/p;->a()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/p;->a()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/anythink/expressad/videocommon/c/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/c/c;->b()I

    move-result v0

    if-gez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    :cond_4
    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setReward(Lcom/anythink/expressad/videocommon/c/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->D:I

    iget v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->E:I

    iget v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->F:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setIVRewardEnable(III)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-boolean v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->B:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setIV(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->A:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->setMute(I)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    check-cast v1, Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->setJSFactory(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onCreate()V

    return-void
.end method

.method private static c(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/g/d/b;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/foundation/g/d/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->X:I

    return p0
.end method

.method private d(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private d()Lcom/anythink/expressad/video/bt/module/a/a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->T:Lcom/anythink/expressad/video/bt/module/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$4;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$4;-><init>(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)V

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->T:Lcom/anythink/expressad/video/bt/module/a/a;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->T:Lcom/anythink/expressad/video/bt/module/a/a;

    return-object v0
.end method

.method public static synthetic e(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    return-object p0
.end method

.method private e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic f(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->G:Z

    return v0
.end method

.method public static synthetic g(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b()V

    return-void
.end method

.method public static synthetic h(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Lcom/anythink/expressad/video/bt/module/ATTempContainer;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ad:I

    return p0
.end method

.method public static synthetic j(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Z:I

    return p0
.end method

.method public static synthetic k(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ab:I

    return p0
.end method

.method public static synthetic l(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->aa:I

    return p0
.end method

.method public static synthetic m(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ac:I

    return p0
.end method

.method public static synthetic n(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Lcom/anythink/expressad/video/bt/module/b/h;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->I:Lcom/anythink/expressad/video/bt/module/b/h;

    return-object p0
.end method


# virtual methods
.method public final a(IIIII)V
    .locals 7

    iput p2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Z:I

    iput p3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ab:I

    iput p4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->aa:I

    iput p5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ac:I

    iput p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ad:I

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setNotchPadding(IIIII)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v1, :cond_1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->setNotchPadding(IIIII)V

    :cond_1
    sput p1, Lcom/anythink/expressad/video/dynview/a/b;->e:I

    sput p2, Lcom/anythink/expressad/video/dynview/a/b;->a:I

    sput p3, Lcom/anythink/expressad/video/dynview/a/b;->b:I

    sput p4, Lcom/anythink/expressad/video/dynview/a/b;->c:I

    sput p5, Lcom/anythink/expressad/video/dynview/a/b;->d:I

    return-void
.end method

.method public finish()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "anythink_reward_activity_close"

    const-string v1, "anim"

    invoke-static {p0, v0, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v2, "anythink_reward_activity_stay"

    invoke-static {p0, v2, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onDestroy()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onDestroy()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onBackPressed()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(I)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "_"

    const-string v1, ""

    const-string v2, "anim"

    invoke-super {p0, p1}, Lcom/anythink/expressad/activity/ATBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/anythink/expressad/a;->x:Z

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/anythink/expressad/foundation/b/a;->b(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    :try_start_1
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v5

    iget-object v8, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/foundation/d/c;

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->o:Lcom/anythink/expressad/foundation/d/c;

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    instance-of v8, v5, Lcom/anythink/core/common/f/m;

    if-eqz v8, :cond_2

    check-cast v5, Lcom/anythink/core/common/f/m;

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->n:Lcom/anythink/core/common/f/m;

    const-string v5, "1"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v5, v8, v9}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v5, "anythink_more_offer_activity"

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout"

    invoke-static {v8, v5, v9}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    const-string p1, "no anythink_more_offer_activity layout"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    iget-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v8, "data empty error"

    if-eqz v5, :cond_4

    :try_start_3
    invoke-direct {p0, v8}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v5, Lcom/anythink/expressad/reward/b/a;->c:Ljava/util/Map;

    iget-object v9, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/video/bt/module/b/h;

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->I:Lcom/anythink/expressad/video/bt/module/b/h;

    sget-object v5, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->x:Ljava/lang/String;

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/expressad/videocommon/c/c;->b(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/c/c;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->y:Ljava/lang/String;

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->d:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->A:I

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->B:Z

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->C:Z

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->V:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->B:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->D:I

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->j:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->E:I

    sget-object v5, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->k:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->F:I

    :cond_5
    new-instance v5, Lcom/anythink/expressad/video/signal/factory/b;

    invoke-direct {v5, p0}, Lcom/anythink/expressad/video/signal/factory/b;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    invoke-virtual {p0, v5}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->a(Lcom/anythink/expressad/video/signal/factory/IJSFactory;)V

    iget-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->I:Lcom/anythink/expressad/video/bt/module/b/h;

    if-nez v5, :cond_6

    const-string p1, "showRewardListener is null"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/anythink/expressad/reward/a/e;->a()Lcom/anythink/expressad/reward/a/e;

    move-result-object v5

    iget-object v9, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->x:Ljava/lang/String;

    iget-object v10, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/anythink/expressad/reward/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->J:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v5, :cond_7

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v5

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->J:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v5, :cond_7

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v5

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->B:Z

    invoke-virtual {v5, v9, v10, v11}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v5

    iput-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->J:Lcom/anythink/expressad/videocommon/e/d;

    :cond_7
    iget-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->J:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v5, :cond_8

    iget-object v9, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/e/d;->m()I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    iget-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v9, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->J:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v9}, Lcom/anythink/expressad/videocommon/e/d;->n()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/anythink/expressad/videocommon/c/c;->a(Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/c/c;->b()I

    move-result v5

    if-gtz v5, :cond_9

    iget-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v5, v3}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    :cond_9
    const-string v5, "anythink_reward_activity_open"

    invoke-static {p0, v5, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v9, "anythink_reward_activity_stay"

    invoke-static {p0, v9, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-le v5, v3, :cond_a

    if-le v2, v3, :cond_a

    invoke-virtual {p0, v5, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_a
    if-eqz p1, :cond_b

    :try_start_4
    sget-object v2, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->L:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_3
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/videocommon/b/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    sget-object p1, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->g:Ljava/lang/String;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->G:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/videocommon/b/c;

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    :cond_c
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/videocommon/b/c;->a(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {p1, v7}, Lcom/anythink/expressad/videocommon/b/c;->b(Z)V

    :cond_d
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    if-nez p1, :cond_f

    :cond_e
    invoke-direct {p0, v8}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    :cond_f
    invoke-direct {p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b()V

    return-void

    :cond_10
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->U:Ljava/lang/String;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_11

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->U:Ljava/lang/String;

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->U:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/a;->a(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/a$a;->a()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    goto :goto_4

    :cond_12
    move-object p1, v6

    :goto_4
    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->S:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/videocommon/b/c;

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    :cond_13
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    if-nez p1, :cond_16

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->B:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x11f

    goto :goto_5

    :cond_14
    const/16 v0, 0x5e

    :goto_5
    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->C:Z

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/videocommon/b/e;->c(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/b/n;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1, v0, v2}, Lcom/anythink/expressad/videocommon/b/n;->b(IZ)Lcom/anythink/expressad/videocommon/b/c;

    move-result-object v6

    :cond_15
    iput-object v6, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    :cond_16
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/b/c;->n()Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/videocommon/b/c;->a(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {p1, v7}, Lcom/anythink/expressad/videocommon/b/c;->b(Z)V

    :cond_17
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->M:Lcom/anythink/expressad/videocommon/b/c;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->z:Lcom/anythink/expressad/videocommon/c/c;

    if-nez p1, :cond_19

    :cond_18
    invoke-direct {p0, v8}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    :cond_19
    iput-boolean v7, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->G:Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/a/a;->a()Lcom/anythink/expressad/videocommon/a/a;

    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v0, "no available campaign"

    if-nez p1, :cond_1a

    :try_start_6
    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1b

    invoke-direct {p0, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_1b
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-ne v1, v3, :cond_1d

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->m()V

    :cond_1c
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/foundation/d/c;)V

    return-void

    :cond_1d
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Ljava/util/List;)V

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b()V

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 6

    :try_start_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onDestroy()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onDestroy()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    :cond_3
    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->ae:Lcom/anythink/expressad/video/dynview/f/a;

    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->af:Lcom/anythink/expressad/video/dynview/f/d;

    invoke-static {}, Lcom/anythink/expressad/foundation/g/h/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$a;

    iget-object v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->O:Ljava/util/List;

    iget-object v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->U:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$a;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/a/l;->b()V

    :cond_6
    iput-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->s:Lcom/anythink/expressad/reward/player/b;

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->n:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/anythink/core/common/n/a;->a()Lcom/anythink/core/common/n/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->n:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->n:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/n/a;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onPause()V
    .locals 5

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->onPause()V

    iget-wide v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->r:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->r:J

    const-wide/16 v2, 0x5

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "3-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->s:Lcom/anythink/expressad/reward/player/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/anythink/expressad/reward/player/b;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->p:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Ljava/lang/String;J)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onPause()V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onPause()V

    :cond_3
    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onRestart()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onRestart()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->onResume()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->p:J

    iget-wide v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->q:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->q:J

    const-wide/16 v2, 0x5

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->s:Lcom/anythink/expressad/reward/player/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/anythink/expressad/reward/player/b;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Ljava/lang/String;J)V

    :cond_1
    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/foundation/b/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onResume()V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onResume()V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->h:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->L:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$5;-><init>(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)V

    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    const-string v1, "_1"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onStart()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->N:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onStart()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->P:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_2
    iget-boolean v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->W:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->b(Ljava/lang/String;I)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->W:Z

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/expressad/a;->x:Z

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->Q:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->onStop()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->R:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;->onStop()V

    :cond_1
    return-void
.end method

.method public setTheme(I)V
    .locals 1

    const-string p1, "anythink_transparent_theme"

    const-string v0, "style"

    invoke-static {p0, p1, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
