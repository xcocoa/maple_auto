.class public Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;
.super Lcom/anythink/expressad/video/bt/module/BTBaseView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;
    }
.end annotation


# static fields
.field private static H:Z = false

.field private static final N:Ljava/lang/String; = "2"

.field private static final p:Ljava/lang/String; = "anythink_reward_videoview_item"


# instance fields
.field private A:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;

.field private B:I

.field private C:I

.field private D:Z

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Landroid/widget/RelativeLayout;

.field private M:Landroid/widget/ProgressBar;

.field private q:Lcom/anythink/expressad/playercommon/PlayerView;

.field private r:Lcom/anythink/expressad/video/widget/SoundImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Lcom/anythink/expressad/widget/FeedBackButton;

.field private v:Landroid/webkit/WebView;

.field private w:Lcom/anythink/expressad/videocommon/b/c;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->x:I

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->y:I

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->z:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->B:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->D:Z

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->E:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->F:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->I:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->J:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->K:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->x:I

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->y:I

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->z:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->B:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->D:Z

    iput p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->E:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->F:I

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->I:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->J:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->K:Z

    return-void
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

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result p1

    :goto_0
    return p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Lcom/anythink/expressad/playercommon/PlayerView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    return-object p0
.end method

.method public static synthetic a(II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->H:Z

    return p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    return-object p0
.end method

.method private static b(II)Ljava/lang/String;
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

.method private b()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "anythink_vfpv"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/playercommon/PlayerView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    const-string v1, "anythink_sound_switch"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/widget/SoundImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    const-string v1, "anythink_tv_count"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    const-string v1, "anythink_rl_playing_close"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->t:Landroid/view/View;

    const-string v1, "anythink_top_control"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->L:Landroid/widget/RelativeLayout;

    const-string v1, "anythink_video_progress_bar"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->M:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsBTVideo(Z)V

    const-string v1, "anythink_native_endcard_feed_btn"

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/widget/FeedBackButton;

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->u:Lcom/anythink/expressad/widget/FeedBackButton;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    aput-object v3, v1, v0

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->t:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->B:I

    return p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x11f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->B()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/videocommon/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->w:Lcom/anythink/expressad/videocommon/b/c;

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->M:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->w:Lcom/anythink/expressad/videocommon/b/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/b/c;->k()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->w:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/b/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static e()I
    .locals 2

    const/4 v0, 0x5

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/c;->b()Lcom/anythink/expressad/videocommon/e/a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->c()Lcom/anythink/expressad/videocommon/e/a;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/a;->g()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method private f()I
    .locals 4

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->x()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a()V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$1;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->t:Landroid/view/View;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$2;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$3;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$3;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public getMute()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->B:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string p1, "anythink_reward_videoview_item"

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->findLayout(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->f:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->h:Z

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->a()V

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->H:Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->K:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/a/c;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->E:I

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->t:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->y:I

    if-nez v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz v0, :cond_4

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->z:I

    if-nez v3, :cond_3

    const/16 v3, 0x8

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->x:I

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->u:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    :cond_6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->release()V

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->t:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->isPlayIng()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->J:Z

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsBTVideoPlaying(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setDesk(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->pause()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerPause"

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public play()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->K:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "onPlayerPlay"

    if-nez v0, :cond_3

    :try_start_1
    iget v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->E:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->playMute()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->playUnMute()Z

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->playVideo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->A:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;

    if-eqz v0, :cond_1

    const-string v3, "play video failed"

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;->onPlayError(Ljava/lang/String;)V

    :cond_1
    iput-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->K:Z

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->D:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/playercommon/PlayerView;->playVideo(I)Z

    iput-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->D:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/playercommon/PlayerView;->start(Z)V

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public playMute()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/playercommon/PlayerView;->closeSound()V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/widget/SoundImageView;->setSoundStatus(Z)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->B:I

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    const-string v3, "onPlayerMute"

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    return v0
.end method

.method public playUnMute()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->openSound()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/widget/SoundImageView;->setSoundStatus(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->B:I

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    const-string v2, "onUnmute"

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preLoadData()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x11f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->B()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/videocommon/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->w:Lcom/anythink/expressad/videocommon/b/c;

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->e()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->C:I

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->G:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;-><init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->A:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v4

    if-eq v4, v3, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v1

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v2}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result v1

    :goto_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v4

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/e/d;->x()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;->a(II)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/playercommon/PlayerView;->setDesk(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->C:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->initBufferIngParam(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->G:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v5

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->A:Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView$a;

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/anythink/expressad/playercommon/PlayerView;->initVFPData(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/expressad/playercommon/VideoPlayerStatusListener;)Z

    iget v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->B:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->soundOperate(IILjava/lang/String;)V

    :cond_4
    sput-boolean v2, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->H:Z

    return-void
.end method

.method public resume()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->D:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->playVideo(I)Z

    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->D:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->onResume()V

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const-string v1, "onPlayerResume"

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setCampaign(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    const/high16 v0, 0x41f00000    # 30.0f

    const-string v1, "drawable"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_reward_video_time_count_num_bg"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_reward_shape_progress"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setWidth(I)V

    return-void
.end method

.method public setCloseViewVisable(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->t:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setCountDownTextViewVisable(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->s:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setCreateWebView(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 4

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result p1

    :cond_0
    if-gtz p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result p2

    :cond_1
    if-gtz p3, :cond_2

    iget-object p3, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result p3

    :cond_2
    if-gtz p4, :cond_3

    iget-object p4, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result p4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTCH BTVideoView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%1s-%2s-%3s-%4s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->F:I

    return-void
.end method

.method public setPlaybackParams(F)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->setPlaybackParams(F)V

    :cond_0
    return-void
.end method

.method public setProgressBarState(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->M:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setShowClose(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->y:I

    return-void
.end method

.method public setShowMute(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->z:I

    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->x:I

    return-void
.end method

.method public setSoundImageViewVisble(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/playercommon/PlayerView;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public soundOperate(IILjava/lang/String;)V
    .locals 2

    iget-boolean p3, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->h:Z

    if-eqz p3, :cond_3

    iput p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->B:I

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    invoke-virtual {p1, p3}, Lcom/anythink/expressad/video/widget/SoundImageView;->setSoundStatus(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p1}, Lcom/anythink/expressad/playercommon/PlayerView;->closeSound()V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/video/widget/SoundImageView;->setSoundStatus(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p1}, Lcom/anythink/expressad/playercommon/PlayerView;->openSound()V

    :cond_1
    :goto_0
    if-ne p2, v1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->r:Lcom/anythink/expressad/video/widget/SoundImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public stop()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->pause()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->prepare()V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->q:Lcom/anythink/expressad/playercommon/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->justSeekTo(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTVideoView;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerStop"

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method
